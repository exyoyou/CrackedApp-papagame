package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RecomRequestBannerAndTableMessage extends BaseDto {
    private List args;
    private String modeltype;

    public RecomRequestBannerAndTableMessage() {
    }

    public List getArgs() {
        return this.args;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(List args) {
        this.args = args;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public RecomRequestBannerAndTableMessage(String modeltype, List args) {
        this.modeltype = modeltype;
        this.args = args;
    }
}
