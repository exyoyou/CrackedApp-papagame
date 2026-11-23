package com.haima.hmcp.volley.toolbox;

import com.haima.hmcp.volley.AuthFailureError;

/* JADX INFO: loaded from: classes5.dex */
public interface Authenticator {
    String getAuthToken() throws AuthFailureError;

    void invalidateAuthToken(String str);
}
