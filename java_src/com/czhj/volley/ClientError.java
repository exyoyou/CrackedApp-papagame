package com.czhj.volley;

/* JADX INFO: loaded from: classes9.dex */
public class ClientError extends ServerError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f25727a;

    public ClientError() {
    }

    public String getRequest_id() {
        return this.f25727a;
    }

    public ClientError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public ClientError(String str, String str2) {
        super(str);
        this.f25727a = str2;
    }
}
