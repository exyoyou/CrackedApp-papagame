package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveNumDataBean {
    private int code;
    private DataInfoBean data_info;
    private String msg;
    private int succ;

    public static class DataInfoBean {
        private int archiveCoin;
        private int archiveNum;
        private String bgImg;
        private int hasNoComment;
        private int marketNum;
        private int pid;
        private String title;
        private String vipLink;

        public int getArchiveCoin() {
            return this.archiveCoin;
        }

        public int getArchiveNum() {
            return this.archiveNum;
        }

        public String getBgImg() {
            return this.bgImg;
        }

        public int getHasNoComment() {
            return this.hasNoComment;
        }

        public int getMarketNum() {
            return this.marketNum;
        }

        public int getPid() {
            return this.pid;
        }

        public String getTitle() {
            return this.title;
        }

        public String getVipLink() {
            return this.vipLink;
        }

        public void setArchiveCoin(int archiveCoin) {
            this.archiveCoin = archiveCoin;
        }

        public void setArchiveNum(int archiveNum) {
            this.archiveNum = archiveNum;
        }

        public void setBgImg(String bgImg) {
            this.bgImg = bgImg;
        }

        public void setHasNoComment(int hasNoComment) {
            this.hasNoComment = hasNoComment;
        }

        public void setMarketNum(int marketNum) {
            this.marketNum = marketNum;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setVipLink(String vipLink) {
            this.vipLink = vipLink;
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

    public void setCode(int code) {
        this.code = code;
    }

    public void setData_info(DataInfoBean data_info) {
        this.data_info = data_info;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setSucc(int succ) {
        this.succ = succ;
    }
}
