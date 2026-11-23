package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameWorldResponse<E> {
    private E data;
    private int error;

    public GameWorldResponse() {
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

    public GameWorldResponse(int error, E data) {
        this.error = error;
        this.data = data;
    }
}
