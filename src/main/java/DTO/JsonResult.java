package DTO;

public class JsonResult {
    private String result;
    private Object data;
    private String message;

    private JsonResult() {}

    public static JsonResult success(Object data) {
        JsonResult jsonResult = new JsonResult();

        jsonResult.result = "success";
        jsonResult.data = data;

        return jsonResult;
    }

    public static JsonResult fail(String message) {
        JsonResult jsonResult = new JsonResult();

        jsonResult.result = "fail";
        jsonResult.message = message;

        return jsonResult;
    }

    public String getResult() {
        return result;
    }

    public Object getData() {
        return data;
    }

    public String getMessage() {
        return message;
    }
}
