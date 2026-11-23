package com.haima.hmcp.volley.toolbox;

import androidx.annotation.Nullable;
import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.ParseError;
import com.haima.hmcp.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class JsonObjectRequest extends JsonRequest<JSONObject> {
    public JsonObjectRequest(int i10, String str, @Nullable JSONObject jSONObject, Response.Listener<JSONObject> listener, @Nullable Response.ErrorListener errorListener) {
        super(i10, str, jSONObject == null ? null : jSONObject.toString(), listener, errorListener);
    }

    @Override // com.haima.hmcp.volley.toolbox.JsonRequest, com.haima.hmcp.volley.Request
    protected Response<JSONObject> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            return Response.success(new JSONObject(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers, "utf-8"))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e10) {
            return Response.error(new ParseError(e10));
        } catch (JSONException e11) {
            return Response.error(new ParseError(e11));
        }
    }

    public JsonObjectRequest(String str, @Nullable JSONObject jSONObject, Response.Listener<JSONObject> listener, @Nullable Response.ErrorListener errorListener) {
        this(jSONObject == null ? 0 : 1, str, jSONObject, listener, errorListener);
    }
}
