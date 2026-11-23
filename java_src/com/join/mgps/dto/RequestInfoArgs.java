package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestInfoArgs {
    String info;
    int uid;

    public static class RequestInfoinfo {
        long time;
        int type;
        String uid;

        public long getTime() {
            return this.time;
        }

        public int getType() {
            return this.type;
        }

        public String getUid() {
            return this.uid;
        }

        public void setTime(long time) {
            this.time = time;
        }

        public void setType(int type) {
            this.type = type;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public String getInfo() {
        return this.info;
    }

    public int getUid() {
        return this.uid;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
