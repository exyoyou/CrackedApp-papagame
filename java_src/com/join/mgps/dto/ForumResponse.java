package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ForumResponse<E> {
    private E data;
    private int error;
    private String error_message;

    public ForumResponse() {
    }

    public E getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public String getError_message() {
        return this.error_message;
    }

    public void setData(E data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }

    public void setError_message(String error_message) {
        this.error_message = error_message;
    }

    public ForumResponse(int error, E data) {
        this.error = error;
        this.data = data;
    }
}
