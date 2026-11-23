package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.AuthFailureError;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public interface AsyncHttpStack$OnRequestComplete {
    void onAuthError(AuthFailureError authFailureError);

    void onError(IOException iOException);

    void onSuccess(g gVar);
}
