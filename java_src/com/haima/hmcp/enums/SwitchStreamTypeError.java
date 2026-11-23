package com.haima.hmcp.enums;

/* JADX INFO: loaded from: classes5.dex */
public enum SwitchStreamTypeError {
    UNKNOWN(1000, "Unknown"),
    ALREADY_IN_TYPE(1001, "Already in the type"),
    TARGET_TYPE_IS_NULL(1002, "Target type is null"),
    IN_DEVICE_BLACK_LIST(1003, "In device black list"),
    IN_BACKGROUND(1004, "In background"),
    RESPONSE_ERROR(1005, "Response error"),
    UN_SUPPORT_ERROR(1006, "UnSupport error");

    private final int mErrorCode;
    private final String mErrorMsg;

    SwitchStreamTypeError(int i10, String str) {
        this.mErrorCode = i10;
        this.mErrorMsg = str;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public String getErrorMsg() {
        return this.mErrorMsg;
    }
}
