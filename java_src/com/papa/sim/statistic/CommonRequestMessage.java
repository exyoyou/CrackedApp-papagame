package com.papa.sim.statistic;

/* JADX INFO: loaded from: classes2.dex */
public class CommonRequestMessage<E> {
    private E args;
    private String modeltype;

    public CommonRequestMessage(String str, E e10) {
        this.modeltype = str;
        this.args = e10;
    }

    public E getArgs() {
        return this.args;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setArgs(E e10) {
        this.args = e10;
    }

    public void setModeltype(String str) {
        this.modeltype = str;
    }
}
