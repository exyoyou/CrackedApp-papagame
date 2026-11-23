package com.windmill.sdk.base;

/* JADX INFO: loaded from: classes8.dex */
public class WMAdapterError {
    int errorCode;
    String externalErrorCode;
    String message;

    public WMAdapterError(int errorCode, String message) {
        this.errorCode = errorCode;
        this.message = message;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getExternalErrorCode() {
        return this.externalErrorCode;
    }

    public String getMessage() {
        return this.message;
    }

    public void setErrorCode(int errorCode) {
        this.errorCode = errorCode;
    }

    public void setExternalErrorCode(String externalErrorCode) {
        this.externalErrorCode = externalErrorCode;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String toString() {
        return String.format("{ \"error_code\":%d,\"externalErrorCode\": \"%s\" , \"message\": \"%s\" }", Integer.valueOf(this.errorCode), this.externalErrorCode, this.message);
    }

    public WMAdapterError(int errorCode, String externalErrorCode, String message) {
        this.errorCode = errorCode;
        this.externalErrorCode = externalErrorCode;
        this.message = message;
    }
}
