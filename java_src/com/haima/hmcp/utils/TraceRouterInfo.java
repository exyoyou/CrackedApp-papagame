package com.haima.hmcp.utils;

/* JADX INFO: loaded from: classes5.dex */
public class TraceRouterInfo {
    public String error;
    public int index;
    public String ip;
    public String time;

    public String getError() {
        return this.error;
    }

    public int getIndex() {
        return this.index;
    }

    public String getIp() {
        return this.ip;
    }

    public String getTime() {
        return this.time;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setIndex(int i10) {
        this.index = i10;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public String toString() {
        return "TraceRouterInfo{index=" + this.index + ", ip='" + this.ip + "', time='" + this.time + "', error='" + this.error + "'}";
    }
}
