package com.czhj.volley;

/* JADX INFO: loaded from: classes9.dex */
public class ServerError extends VolleyError {
    public ServerError() {
    }

    public ServerError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public ServerError(String str) {
        super(str);
    }
}
