package com.windmill.sdk.strategy;

import android.util.Base64;
import com.czhj.sdk.common.models.Device;
import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.models.Privacy;
import com.czhj.sdk.common.models.User;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Response;
import com.czhj.volley.toolbox.HttpHeaderParser;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.SdkConfigRequest;
import com.windmill.sdk.models.SdkConfigResponse;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class h extends SigmobRequest<SdkConfigResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f87175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SdkConfigRequest.Builder f87176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Device.Builder f87177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f87178d;

    public interface a extends Response.ErrorListener {
        void a(SdkConfigResponse sdkConfigResponse);
    }

    public h(final String url, final a listener) {
        super(url, 1, listener);
        this.f87175a = listener;
        setRetryPolicy(new DefaultRetryPolicy(5000, 2, 0.0f));
        setShouldCache(false);
        this.f87176b = new SdkConfigRequest.Builder();
    }

    public a a() {
        return this.f87175a;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f87178d;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/octet-stream";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> headers = super.getHeaders();
        if (headers == null) {
            headers = new HashMap<>();
        }
        this.f87176b.app(ModelBuilderCreator.createApp().app_id(WindMillAd.sharedAds().getAppId()).build());
        Device.Builder builderCreateDevice = ModelBuilderCreator.createDevice(com.windmill.sdk.utils.d.a().b());
        this.f87177c = builderCreateDevice;
        builderCreateDevice.did(ModelBuilderCreator.createDeviceId(com.windmill.sdk.utils.d.a().b()).build());
        this.f87176b.device(this.f87177c.build());
        this.f87176b.network(ModelBuilderCreator.createNetwork(com.windmill.sdk.utils.d.a().b()).build());
        Privacy.Builder builder = new Privacy.Builder();
        builder.age(Integer.valueOf(com.windmill.sdk.common.c.a().c()));
        builder.child_protection(Integer.valueOf(com.windmill.sdk.common.c.a().d()));
        builder.gdpr_consent(Integer.valueOf(com.windmill.sdk.common.c.h()));
        this.f87176b.privacy(builder.build());
        User.Builder builder2 = new User.Builder();
        builder2.is_minor = Boolean.valueOf(!com.windmill.sdk.common.c.a().e());
        builder2.disable_personalized_recommendation = Boolean.valueOf(!com.windmill.sdk.common.c.a().f());
        builder2.change_recommendation_state = Boolean.valueOf(com.windmill.sdk.common.c.a().g());
        this.f87176b.user(builder2.build());
        SdkConfigRequest sdkConfigRequestBuild = this.f87176b.build();
        WMLogUtil.dd(WMLogUtil.TAG, getUrl() + " send config request:" + sdkConfigRequestBuild.toString());
        try {
            byte[] bArrEncode = sdkConfigRequestBuild.encode();
            this.f87178d = bArrEncode;
            this.f87178d = com.windmill.sdk.utils.c.b(bArrEncode);
            headers.put(com.alipay.sdk.app.statistic.c.f7067m, "1");
        } catch (Throwable unused) {
            headers.remove(com.alipay.sdk.app.statistic.c.f7067m);
            if (this.f87178d != null) {
                this.f87178d = sdkConfigRequestBuild.encode();
            }
        }
        try {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
            this.f87178d = AESUtil.Encrypt(this.f87178d, "KGpfzbYsn4T9Jyuq");
        } catch (Exception e10) {
            e10.printStackTrace();
            headers.remove("agn");
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<SdkConfigResponse> parseNetworkResponse(final NetworkResponse networkResponse) {
        try {
            if (networkResponse.data == null) {
                return Response.error(new ParseError(networkResponse));
            }
            return Response.success(SdkConfigResponse.ADAPTER.decode((networkResponse.headers.containsKey(com.alipay.sdk.app.statistic.c.f7067m) && "1".equals(networkResponse.headers.get(com.alipay.sdk.app.statistic.c.f7067m))) ? com.windmill.sdk.utils.c.a(networkResponse.data) : networkResponse.data), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Throwable th) {
            WMLogUtil.e(th.getMessage());
            return Response.error(new ParseError(th));
        }
    }

    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(final SdkConfigResponse sdkConfigResponse) {
        this.f87175a.a(sdkConfigResponse);
    }
}
