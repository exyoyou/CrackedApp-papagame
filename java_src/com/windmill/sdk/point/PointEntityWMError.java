package com.windmill.sdk.point;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes8.dex */
public final class PointEntityWMError extends PointEntityWind {
    private String error_code;
    private String error_message;
    private String external_error_code;

    public static PointEntityWMError WindError(String category, String event_type, int errorCode, String errorMessage) {
        PointEntityWMError pointEntityWMError = new PointEntityWMError();
        pointEntityWMError.setAc_type(PointType.WIND_MILL_ERROR);
        pointEntityWMError.setCategory(category);
        pointEntityWMError.setEvent_type(event_type);
        pointEntityWMError.setError_code(String.valueOf(errorCode));
        if (!TextUtils.isEmpty(errorMessage)) {
            pointEntityWMError.setError_message(errorMessage);
        }
        return pointEntityWMError;
    }

    public String getError_code() {
        return this.error_code;
    }

    public String getError_message() {
        return this.error_message;
    }

    public String getExternal_error_code() {
        return this.external_error_code;
    }

    public void setError_code(String error_code) {
        this.error_code = error_code;
    }

    public void setError_message(String error_message) {
        this.error_message = error_message;
    }

    public void setExternal_error_code(String external_error_code) {
        this.external_error_code = external_error_code;
    }
}
