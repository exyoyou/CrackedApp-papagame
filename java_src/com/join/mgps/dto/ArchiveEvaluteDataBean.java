package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveEvaluteDataBean {
    private int code;
    private DataInfoBean data_info;
    private String msg;
    private int succ;

    public static class DataInfoBean {
        private String msg;

        public String getMsg() {
            return this.msg;
        }

        public void setMsg(String msg) {
            this.msg = msg;
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
