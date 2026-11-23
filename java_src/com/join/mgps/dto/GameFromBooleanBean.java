package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameFromBooleanBean {
    private DataBean data;
    private int error;

    public static class DataBean {
        private int code;
        private boolean state;

        public int getCode() {
            return this.code;
        }

        public boolean isState() {
            return this.state;
        }

        public void setCode(int code) {
            this.code = code;
        }

        public void setState(boolean state) {
            this.state = state;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(DataBean data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }
}
