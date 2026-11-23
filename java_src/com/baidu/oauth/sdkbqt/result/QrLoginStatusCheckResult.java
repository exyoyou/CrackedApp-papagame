package com.baidu.oauth.sdkbqt.result;

/* JADX INFO: loaded from: classes6.dex */
public class QrLoginStatusCheckResult extends OauthResult {
    public static final int ERROR_CODE_QR_CODE_EXPRIED = -208;
    public static final String ERROR_MSG_QR_CODE_EXPRIED = "二维码过期";
    public static final int QR_LOGIN_STATUS_LOGIN_DONE = 0;
    public static final int QR_LOGIN_STATUS_QR_CODE_expired = 2;
    public static final int QR_LOGIN_STATUS_SCAN_DONE = 1;
    public static final int QR_LOGIN_STATUS_UEER_CANCEL = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f8260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f8261b;
    public int status;

    public QrLoginStatusCheckResult() {
        this.msgMap.put(-208, ERROR_MSG_QR_CODE_EXPRIED);
    }

    public String getCode() {
        return this.f8260a;
    }

    public String getState() {
        return this.f8261b;
    }

    public void setCode(String str) {
        this.f8260a = str;
    }

    public void setState(String str) {
        this.f8261b = str;
    }
}
