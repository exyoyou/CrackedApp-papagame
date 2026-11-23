package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveDataBean {
    private int code;
    private DataInfoBean data_info;
    private boolean isOpenCheck = false;
    private String msg;
    private int succ;

    public static class DataInfoBean {
        private List<CloudListDataBean> cloudList;

        public List<CloudListDataBean> getCloudList() {
            return this.cloudList;
        }

        public void setCloudList(List<CloudListDataBean> cloudList) {
            this.cloudList = cloudList;
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
