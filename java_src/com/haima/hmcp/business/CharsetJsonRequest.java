package com.haima.hmcp.business;

import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.ParseError;
import com.haima.hmcp.volley.Response;
import com.haima.hmcp.volley.toolbox.HttpHeaderParser;
import com.haima.hmcp.volley.toolbox.JsonObjectRequest;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class CharsetJsonRequest extends JsonObjectRequest {
    public CharsetJsonRequest(String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(str, jSONObject, listener, errorListener);
    }

    @Override // com.haima.hmcp.volley.toolbox.JsonObjectRequest, com.haima.hmcp.volley.toolbox.JsonRequest, com.haima.hmcp.volley.Request
    protected Response<JSONObject> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            return Response.success(new JSONObject(new String(networkResponse.data, "UTF-8")), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e10) {
            return Response.error(new ParseError(e10));
        } catch (JSONException e11) {
            return Response.error(new ParseError(e11));
        }
    }

    public CharsetJsonRequest(int i10, String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(i10, str, jSONObject, listener, errorListener);
    }
}
