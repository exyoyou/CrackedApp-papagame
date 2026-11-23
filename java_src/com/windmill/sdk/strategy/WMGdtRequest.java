package com.windmill.sdk.strategy;

import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.windmill.sdk.base.WMLogUtil;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMGdtRequest extends SigmobRequest<NetworkResponse> {

    public interface a {
        void a();

        void a(VolleyError error);
    }

    public WMGdtRequest(String url) {
        super(url, 1, null);
        setShouldRetryServerErrors(true);
        setRetryPolicy(new DefaultRetryPolicy(5000, 0, 0.0f));
        setShouldCache(false);
    }

    public void addRequest() {
        Networking.getRequestQueue().add(this);
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError error) {
        WMLogUtil.i("-------WMGDTReq deliverError " + error.getMessage());
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return null;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/json";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        return super.getHeaders();
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<NetworkResponse> parseNetworkResponse(NetworkResponse response) {
        return Response.success(response, null);
    }

    @Override // com.czhj.volley.Request
    public void deliverResponse(NetworkResponse response) {
        try {
            new String(response.data);
        } catch (Exception unused) {
        }
    }
}
