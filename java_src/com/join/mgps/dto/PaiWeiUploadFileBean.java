package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PaiWeiUploadFileBean {
    private int code;
    private DataBean data;
    private String error;

    public static class DataBean {
        private String code;
        private InfoBean info;
        private String message;

        public static class InfoBean {
            private String coin;
            private String current_rank;
            private String gameid;
            private String head;
            private String md5;
            private String millisecond;
            private String playid;
            private String recplayer;
            private String refresh;
            private String time;
            private String uid;
            private String version;

            public String getCoin() {
                return this.coin;
            }

            public String getCurrent_rank() {
                return this.current_rank;
            }

            public String getGameid() {
                return this.gameid;
            }

            public String getHead() {
                return this.head;
            }

            public String getMd5() {
                return this.md5;
            }

            public String getMillisecond() {
                return this.millisecond;
            }

            public String getPlayid() {
                return this.playid;
            }

            public String getRecplayer() {
                return this.recplayer;
            }

            public String getRefresh() {
                return this.refresh;
            }

            public String getTime() {
                return this.time;
            }

            public String getUid() {
                return this.uid;
            }

            public String getVersion() {
                return this.version;
            }

            public void setCoin(String coin) {
                this.coin = coin;
            }

            public void setCurrent_rank(String current_rank) {
                this.current_rank = current_rank;
            }

            public void setGameid(String gameid) {
                this.gameid = gameid;
            }

            public void setHead(String head) {
                this.head = head;
            }

            public void setMd5(String md5) {
                this.md5 = md5;
            }

            public void setMillisecond(String millisecond) {
                this.millisecond = millisecond;
            }

            public void setPlayid(String playid) {
                this.playid = playid;
            }

            public void setRecplayer(String recplayer) {
                this.recplayer = recplayer;
            }

            public void setRefresh(String refresh) {
                this.refresh = refresh;
            }

            public void setTime(String time) {
                this.time = time;
            }

            public void setUid(String uid) {
                this.uid = uid;
            }

            public void setVersion(String version) {
                this.version = version;
            }
        }

        public String getCode() {
            return this.code;
        }

        public InfoBean getInfo() {
            return this.info;
        }

        public String getMessage() {
            return this.message;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public void setInfo(InfoBean info) {
            this.info = info;
        }

        public void setMessage(String message) {
            this.message = message;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getError() {
        return this.error;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData(DataBean data) {
        this.data = data;
    }

    public void setError(String error) {
        this.error = error;
    }
}
