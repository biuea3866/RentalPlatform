package Lib;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;

public class ImageUploader {
    private static final String basePath = "/home/biuea/Desktop/RentalPlatform/src/main/webapp/";
    private static final String prefixUrl = "resources/upload/";

    public String ImageUploader(
        MultipartFile multipartFile
    ) {
        String url = null;

        if(multipartFile.getOriginalFilename().length() == 0) {
            return "Not Data";
        } else {
            try {
                String originFilename = multipartFile.getOriginalFilename();
                String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
                Long size = multipartFile.getSize();
                String saveFileName = genSaveFileName(extName);

                System.out.println("originFilename : " + originFilename);
                System.out.println("extensionName : " + extName);
                System.out.println("size : " + size);
                System.out.println("saveFileName : " + saveFileName);

                writeFile(multipartFile, saveFileName);

                url = prefixUrl + saveFileName;

            } catch(IOException e) {
                throw new RuntimeException(e);
            }

            return url;
        }

    }

    public String genSaveFileName(String extName) {
        Calendar calendar = Calendar.getInstance();

        return calendar.get(Calendar.YEAR) +
            calendar.get(Calendar.MONTH) +
            calendar.get(Calendar.DATE) +
            calendar.get(Calendar.HOUR) +
            calendar.get(Calendar.MINUTE) +
            calendar.get(Calendar.SECOND) +
            calendar.get(Calendar.MILLISECOND) +
            extName;
    }

    private void writeFile(
        MultipartFile multipartFile,
        String saveFileName
    ) throws IOException {
        File file = new File(basePath + prefixUrl + saveFileName);

        System.out.println("파일 저장 경로 : " + "/home/biuea/Desktop/RentalPlatform/src/main/webapp/");

        multipartFile.transferTo(file);
    }
}
