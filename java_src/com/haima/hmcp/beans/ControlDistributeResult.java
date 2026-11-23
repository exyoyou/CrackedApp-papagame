package com.haima.hmcp.beans;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ControlDistributeResult extends BaseResult {
    private List<ControlInfo> controlInfos;

    public List<ControlInfo> getControlInfos() {
        return this.controlInfos;
    }

    public void setControlInfos(List<ControlInfo> list) {
        this.controlInfos = list;
    }

    @Override // com.haima.hmcp.beans.BaseResult
    public String toString() {
        return "ControlDistributeResult{code=" + this.code + ", msg='" + this.msg + "', errorCode='" + this.errorCode + "', errorMsg='" + this.errorMsg + "', retryRequestCount=" + this.retryRequestCount + ", controlInfos=" + this.controlInfos + '}';
    }
}
