package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameMD5ResultInfo {
    private InfoBean info;

    public static class InfoBean {
        private String state;

        public String getState() {
            return this.state;
        }

        public void setState(String state) {
            this.state = state;
        }
    }

    public InfoBean getInfo() {
        return this.info;
    }

    public void setInfo(InfoBean info) {
        this.info = info;
    }
}
