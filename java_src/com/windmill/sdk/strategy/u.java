package com.windmill.sdk.strategy;

import android.text.TextUtils;
import android.util.Base64;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.point.PointEntityWMTrack;
import com.windmill.sdk.point.PointType;

/* JADX INFO: loaded from: classes8.dex */
public class u extends SigmobRequest<NetworkResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f87321a;

    public interface a extends Response.ErrorListener {
        void a(NetworkResponse response);
    }

    public u(String url, a mListener) {
        this(url, 5000, mListener);
    }

    public static void a(final String trackingUrl, final String tracking_type, final com.windmill.sdk.strategy.a st, final WindMillAdRequest adRequest) {
        if (TextUtils.isEmpty(trackingUrl)) {
            return;
        }
        u uVar = new u(trackingUrl, new a() { // from class: com.windmill.sdk.strategy.u.1
            @Override // com.windmill.sdk.strategy.u.a
            public void a(NetworkResponse response) {
                WMLogUtil.i("---------sendTracking: url onSuccess");
                u.a(trackingUrl, tracking_type, st, adRequest, response);
            }

            @Override // com.czhj.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                WMLogUtil.i("---------sendTracking: url onErrorResponse");
                u.a(trackingUrl, tracking_type, st, adRequest, error != null ? error.networkResponse : null);
            }
        });
        if (Networking.getRequestQueue() != null) {
            Networking.getRequestQueue().add(uVar);
        }
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError error) {
        WMLogUtil.e("send tracking: " + getUrl() + " fail");
        super.deliverError(error);
    }

    @Override // com.czhj.volley.Request
    public int getMaxLength() {
        return 100;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<NetworkResponse> parseNetworkResponse(NetworkResponse response) {
        return Response.success(response, null);
    }

    public u(String url, int ConnectTimeoutMs, a mListener) {
        super(url, 0, mListener);
        this.f87321a = mListener;
        setShouldRetryServerErrors(true);
        setRetryPolicy(new DefaultRetryPolicy(ConnectTimeoutMs, 5000, 0, 0.0f));
        setShouldCache(false);
    }

    public static void a(String trackingUrl, String tracking_type, com.windmill.sdk.strategy.a st, WindMillAdRequest adRequest, NetworkResponse response) {
        PointEntityWMTrack pointEntityWMTrackWindTracking = PointEntityWMTrack.WindTracking("hb_tracking", PointType.WIND_MILL_COMMON, adRequest.getPlacementId(), String.valueOf(adRequest.getAdType()));
        pointEntityWMTrackWindTracking.setUrl(trackingUrl);
        pointEntityWMTrackWindTracking.setTracking_type(tracking_type);
        if (st != null) {
            pointEntityWMTrackWindTracking.setPlatform(st.aP());
            pointEntityWMTrackWindTracking.setAggr_channel_id(String.valueOf(st.aN()));
            pointEntityWMTrackWindTracking.setAggr_appid(st.aV());
            pointEntityWMTrackWindTracking.setAggr_placement_id(st.aW());
            pointEntityWMTrackWindTracking.setAggr_waterfall_id(String.valueOf(st.aE()));
            pointEntityWMTrackWindTracking.setGroup_id(String.valueOf(st.aY()));
            pointEntityWMTrackWindTracking.setRule_id(st.ag());
            pointEntityWMTrackWindTracking.setAb_test(String.valueOf(st.aZ()));
            pointEntityWMTrackWindTracking.setTraffic_weight(String.valueOf(st.ak()));
            pointEntityWMTrackWindTracking.setExperiment_id(String.valueOf(st.bb()));
            pointEntityWMTrackWindTracking.setSub_experiment_id(String.valueOf(st.bc()));
            pointEntityWMTrackWindTracking.setLoad_id(st.aJ());
            pointEntityWMTrackWindTracking.setIs_pdb(st.f87098h);
            pointEntityWMTrackWindTracking.setPdb_priority(st.f87099i);
            if (!TextUtils.isEmpty(st.f87105p)) {
                pointEntityWMTrackWindTracking.setexpress_ecpm(st.f87105p);
            }
            if (st.af() != null) {
                pointEntityWMTrackWindTracking.setHb_id(st.af().d());
            }
        }
        if (response != null) {
            byte[] bArr = response.data;
            pointEntityWMTrackWindTracking.setResponse(bArr != null ? Base64.encodeToString(bArr, 2) : null);
            pointEntityWMTrackWindTracking.setHttp_code(String.valueOf(response.statusCode));
            pointEntityWMTrackWindTracking.setTime_spend(String.valueOf(response.networkTimeMs));
            pointEntityWMTrackWindTracking.setContent_type(response.headers.get("Content-Type"));
            pointEntityWMTrackWindTracking.setContent_length(response.headers.get("Content-Length"));
        }
        pointEntityWMTrackWindTracking.commit();
    }

    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(NetworkResponse response) {
        a aVar;
        synchronized (this.mLock) {
            aVar = this.f87321a;
        }
        WMLogUtil.i(WMLogUtil.TAG, "send tracking: " + getUrl() + " success");
        if (aVar != null) {
            aVar.a(response);
        }
    }
}
