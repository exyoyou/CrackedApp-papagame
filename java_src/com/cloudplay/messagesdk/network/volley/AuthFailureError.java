package com.cloudplay.messagesdk.network.volley;

import android.content.Intent;

/* JADX INFO: loaded from: classes9.dex */
public class AuthFailureError extends VolleyError {
    private Intent mResolutionIntent;

    public AuthFailureError() {
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.mResolutionIntent != null ? "User needs to (re)enter credentials." : super.getMessage();
    }

    public AuthFailureError(f fVar) {
        super(fVar);
    }
}
