package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RegisterRequestBean {
    private String reg_id;
    private long times;

    public RegisterRequestBean() {
    }

    public String getReg_id() {
        return this.reg_id;
    }

    public long getTimes() {
        return this.times;
    }

    public void setReg_id(String reg_id) {
        this.reg_id = reg_id;
    }

    public void setTimes(long times) {
        this.times = times;
    }

    public RegisterRequestBean(String reg_id, long times) {
        this.reg_id = reg_id;
        this.times = times;
    }
}
