package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RecomRequestMessage<E> extends BaseDto {
    private E args;
    private ExtBean ext;
    private String modeltype;

    public RecomRequestMessage(String modeltype, E args, ExtBean ext) {
        this.modeltype = modeltype;
        this.args = args;
        this.ext = ext;
    }

    public E getArgs() {
        return this.args;
    }

    public ExtBean getExt() {
        return this.ext;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(E args) {
        this.args = args;
    }

    public void setExt(ExtBean ext) {
        this.ext = ext;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public RecomRequestMessage(String modeltype, E args) {
        this.modeltype = modeltype;
        this.args = args;
    }

    public RecomRequestMessage(E args) {
        this.args = args;
    }
}
