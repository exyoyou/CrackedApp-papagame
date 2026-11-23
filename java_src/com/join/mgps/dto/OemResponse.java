package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class OemResponse<E> {
    private E data;
    private int error;

    public OemResponse() {
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(E data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }

    public OemResponse(int error, E data) {
        this.error = error;
        this.data = data;
    }
}
