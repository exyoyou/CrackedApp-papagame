package com.haima.hmcp.cloud;

/* JADX INFO: loaded from: classes5.dex */
public class AckOrderBean {
    private static final int FILE_BID_ERROR = 10007;
    private static final int FILE_CID_ERROR = 10008;
    private static final int FILE_COUNT_LIMIT = 10001;
    private static final int FILE_DOWNLOAD_CANCEL = 2;
    private static final int FILE_DOWNLOAD_FINISH = 1;
    private static final int FILE_DOWNLOAD_OFF = -1;
    private static final int FILE_DOWNLOAD_READY = 0;
    private static final int FILE_MD5_ERROR = 10004;
    private static final int FILE_SIZE_ERROR = 10005;
    private static final int FILE_SIZE_LIMIT = 10002;
    private static final int FILE_TYPE_ERROR = 10006;
    private static final int FILE_TYPE_NO_SUPPORT = 10003;
    private static final int FILE_UPLOAD_OFF = -1;
    private static final int FILE_UPLOAD_READY = 0;
    private static final int FILE_UPLOAD_SUCCESS = 1;
    public static final String TYPE_NAME_DOWNLOAD = "download_image";
    public static final String TYPE_NAME_IGNORE = "ignore";
    public static final String TYPE_NAME_UPLOAD = "upload_image";
    public String code;
    public String fileName;
    public int fileSize;
    public String md5sum;
    public String message;
    public String mimeType;
    public String type;
    public int version;

    private int getCode() {
        try {
            return Integer.parseInt(this.code);
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    boolean isDownloadCancel() {
        return getCode() == 2;
    }

    boolean isDownloadError() {
        int code = getCode();
        return (code == 0 || code == 1 || code == 2 || code == -1) ? false : true;
    }

    boolean isDownloadFinish() {
        return getCode() == 1;
    }

    boolean isDownloadReady() {
        return getCode() == 0;
    }

    boolean isUnable() {
        int code = getCode();
        return code == 10007 || code == 10008 || code == -1;
    }

    boolean isUploadError() {
        int code = getCode();
        return (code == 0 || code == 1 || code == -1) ? false : true;
    }

    boolean isUploadReady() {
        return getCode() == 0;
    }

    boolean isUploadSuccess() {
        return getCode() == 1;
    }
}
