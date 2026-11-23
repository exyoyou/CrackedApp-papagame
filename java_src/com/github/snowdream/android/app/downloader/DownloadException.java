package com.github.snowdream.android.app.downloader;

/* JADX INFO: loaded from: classes9.dex */
public class DownloadException extends Exception {
    public static final long CONTEXT_NOT_VALID = 2;
    public static final long DOWNLOAD_TASK_FAILED = 11;
    public static final long DOWNLOAD_TASK_NOT_VALID = 1;
    public static final long OPERATION_NOT_VALID = 10;
    public static final long UNKNOWN = 0;
    private static final long serialVersionUID = -3804737584048978515L;
    private long code;

    public DownloadException() {
        super(generateMessageFromCode(0L));
        this.code = 0L;
    }

    private static String generateMessageFromCode(long code) {
        if (code == 1) {
            return "The DownloadTask is null or not valid!";
        }
        if (code == 1) {
            return "The Context is null or not valid!";
        }
        if (code == 1) {
            return "The operation is not allowed!";
        }
        if (code == 1) {
            return "The Download Task is failed!";
        }
        return code == 1 ? "Unknown Error!" : "";
    }

    public long getCode() {
        return this.code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public DownloadException(long code) {
        super(generateMessageFromCode(code));
        this.code = code;
    }

    public DownloadException(String message) {
        super(message);
        this.code = 0L;
    }

    public DownloadException(long code, String message) {
        super(message);
        this.code = code;
    }
}
