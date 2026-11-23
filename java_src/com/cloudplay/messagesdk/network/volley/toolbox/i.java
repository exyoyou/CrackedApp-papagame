package com.cloudplay.messagesdk.network.volley.toolbox;

import com.cloudplay.messagesdk.network.volley.ParseError;
import com.cloudplay.messagesdk.network.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class i extends j<JSONObject> {
    public i(int i10, String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(i10, str, jSONObject == null ? null : jSONObject.toString(), listener, errorListener);
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request
    protected Response<JSONObject> a(com.cloudplay.messagesdk.network.volley.f fVar) {
        try {
            return Response.a(new JSONObject(new String(fVar.f24046a, f.a(fVar.f24047b, "utf-8"))), f.a(fVar));
        } catch (UnsupportedEncodingException e10) {
            return Response.a(new ParseError(e10));
        } catch (JSONException e11) {
            return Response.a(new ParseError(e11));
        }
    }

    public i(String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        this(jSONObject == null ? 0 : 1, str, jSONObject, listener, errorListener);
    }
}
