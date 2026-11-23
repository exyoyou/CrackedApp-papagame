package com.sigmob.sdk.base.network;

import android.util.Base64;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Response;
import com.czhj.volley.toolbox.HttpHeaderParser;
import com.sigmob.sdk.base.models.config.SigmobSdkConfigRequest;
import com.sigmob.sdk.base.models.config.SigmobSdkConfigResponse;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class g extends SigmobRequest<SigmobSdkConfigResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79620a = "g";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f79621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SigmobSdkConfigRequest.Builder f79622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f79623d;

    public interface a extends Response.ErrorListener {
        void a(SigmobSdkConfigResponse sigmobSdkConfigResponse);
    }

    public g(String url, a listener) {
        super(url, 1, listener);
        this.f79621b = listener;
        setRetryPolicy(new DefaultRetryPolicy(5000, 2, 0.0f));
        setShouldCache(false);
        this.f79622c = a();
    }

    public static SigmobSdkConfigRequest.Builder a() {
        SigmobSdkConfigRequest.Builder builder = new SigmobSdkConfigRequest.Builder();
        ClientMetadata clientMetadata = ClientMetadata.getInstance();
        if (clientMetadata != null && clientMetadata.getDeviceLocale() != null) {
            builder.app(com.sigmob.sdk.base.network.a.b().build());
            builder.user(com.sigmob.sdk.base.network.a.c().build());
            builder.privacy(com.sigmob.sdk.base.network.a.d().build());
            DeviceContext deviceContextB = com.sigmob.sdk.b.b();
            builder.network(com.sigmob.sdk.base.utils.l.a(deviceContextB).build());
            builder.device(ModelBuilderCreator.createDevice(deviceContextB).did(ModelBuilderCreator.createDeviceId(deviceContextB).build()).build());
        }
        return builder;
    }

    public a b() {
        return this.f79621b;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f79623d;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/octet-stream";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> headers = super.getHeaders();
        try {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
        } catch (NoSuchMethodError unused) {
            headers.put("e", "1");
        }
        SigmobSdkConfigRequest sigmobSdkConfigRequestBuild = this.f79622c.build();
        try {
            byte[] bArrEncode = sigmobSdkConfigRequestBuild.encode();
            this.f79623d = bArrEncode;
            this.f79623d = c.b(bArrEncode);
            headers.put(com.alipay.sdk.app.statistic.c.f7067m, "1");
        } catch (Throwable unused2) {
            headers.remove(com.alipay.sdk.app.statistic.c.f7067m);
            this.f79623d = sigmobSdkConfigRequestBuild.encode();
        }
        try {
            this.f79623d = AESUtil.Encrypt(this.f79623d, "KGpfzbYsn4T9Jyuq");
        } catch (Exception e10) {
            e10.printStackTrace();
            headers.remove("e");
            headers.remove("agn");
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    protected Response<SigmobSdkConfigResponse> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            if (networkResponse.data == null) {
                return Response.error(new ParseError(networkResponse));
            }
            return Response.success(SigmobSdkConfigResponse.ADAPTER.decode((networkResponse.headers.containsKey(com.alipay.sdk.app.statistic.c.f7067m) && "1".equals(networkResponse.headers.get(com.alipay.sdk.app.statistic.c.f7067m))) ? c.a(networkResponse.data) : networkResponse.data), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return Response.error(new ParseError(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(SigmobSdkConfigResponse sigmobSdkConfigResponse) {
        this.f79621b.a(sigmobSdkConfigResponse);
    }
}
