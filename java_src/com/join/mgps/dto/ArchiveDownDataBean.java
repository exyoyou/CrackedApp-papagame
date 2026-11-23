package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveDownDataBean {
    private int code;
    private DataInfoBean data_info;
    private boolean isOpenCheck = false;
    private String msg;
    private int succ;

    public static class DataInfoBean {
        private String archiveFileName = "";
        private String downloadUrl;

        public String getArchiveFileName() {
            return this.archiveFileName;
        }

        public String getDownloadUrl() {
            return this.downloadUrl;
        }

        public void setArchiveFileName(String archiveFileName) {
            this.archiveFileName = archiveFileName;
        }

        public void setDownloadUrl(String downloadUrl) {
            this.downloadUrl = downloadUrl;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataInfoBean getData_info() {
        return this.data_info;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getSucc() {
        return this.succ;
    }

    public boolean isOpenCheck() {
        return this.isOpenCheck;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData_info(DataInfoBean data_info) {
        this.data_info = data_info;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setOpenCheck(boolean openCheck) {
        this.isOpenCheck = openCheck;
    }

    public void setSucc(int succ) {
        this.succ = succ;
    }
}
