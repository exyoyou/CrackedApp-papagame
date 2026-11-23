package com.haima.hmcp.business;

import com.haima.hmcp.volley.AuthFailureError;
import com.haima.hmcp.volley.Response;
import com.haima.hmcp.volley.toolbox.StringRequest;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class CustomStringRequest extends StringRequest {
    private final String eventData;

    public CustomStringRequest(int i10, String str, String str2, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i10, str, listener, errorListener);
        this.eventData = str2;
    }

    @Override // com.haima.hmcp.volley.Request
    public byte[] getBody() throws AuthFailureError {
        try {
            return this.eventData.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }
}
