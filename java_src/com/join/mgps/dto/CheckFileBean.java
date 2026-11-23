package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CheckFileBean implements Serializable {
    private String check;
    private String file;
    private String preCalcBak;
    private String preCalcCheck;

    public String getCheck() {
        return this.check;
    }

    public String getFile() {
        return this.file;
    }

    public String getPreCalcBak() {
        return this.preCalcBak;
    }

    public String getPreCalcCheck() {
        return this.preCalcCheck;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public void setPreCalcBak(String preCalcBak) {
        this.preCalcBak = preCalcBak;
    }

    public void setPreCalcCheck(String preCalcCheck) {
        this.preCalcCheck = preCalcCheck;
    }

    public String toString() {
        return "CheckFileBean{file='" + this.file + "', check='" + this.check + "', preCalcCheck='" + this.preCalcCheck + "', preCalcBak='" + this.preCalcBak + "'}";
    }
}
