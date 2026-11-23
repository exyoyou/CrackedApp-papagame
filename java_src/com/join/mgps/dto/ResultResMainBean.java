package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ResultResMainBean<E> {
    private int code;
    private E data;
    private int error;
    private String message;

    public int getCode() {
        return this.code;
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData(E data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
