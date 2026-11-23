package com.tencent.cos.task;

/* JADX INFO: loaded from: classes2.dex */
public enum TaskType {
    UNKNOW(-1, "unknowTask"),
    CMD_TASK(0, "cmdTask"),
    DOWNLOAD_TASK(1, "downloadTask"),
    UPLOAD_TASK(2, "uploadTask");

    private int code;
    private String desc;

    TaskType(int i10, String str) {
        this.code = i10;
        this.desc = str;
    }

    public int getCode() {
        return this.code;
    }

    public String getDesc() {
        return this.desc;
    }
}
