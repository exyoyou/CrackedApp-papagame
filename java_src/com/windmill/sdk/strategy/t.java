package com.windmill.sdk.strategy;

import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdSlot;
import com.czhj.sdk.common.models.BidRequest;
import com.czhj.sdk.common.models.Device;
import com.czhj.sdk.common.models.DeviceId;
import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.models.Network;
import com.czhj.sdk.common.models.Privacy;
import com.czhj.sdk.common.models.StrategyReq;
import com.czhj.sdk.common.models.User;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.HttpHeaderParser;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.StrategyRequest;
import com.windmill.sdk.models.WaterfallResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class t extends SigmobRequest<WaterfallResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f87306a = "ad-responses";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f87307b = "adm";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f87308c = "body";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f87309d = "headers";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s.c f87310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f87311f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f87312g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f87313h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Network.Builder f87314i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdSlot.Builder f87315j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Device.Builder f87316k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WindMillAdRequest f87317l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f87318m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f87319n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Map<String, String> f87320o;

    public t(String url, String sign, WindMillAdRequest request, s.c listener) {
        super(url, 1, null);
        Preconditions.NoThrow.checkNotNull(listener);
        this.f87318m = sign;
        this.f87310e = listener;
        this.f87312g = request.getPlacementId();
        this.f87311f = request.getAdType();
        this.f87313h = request.getUserId();
        this.f87317l = request;
        setRetryPolicy(new DefaultRetryPolicy(5000, 0, 0.0f));
        setShouldCache(false);
    }

    public void a(Map<String, String> customGroup) {
        this.f87320o = customGroup;
    }

    public s.c b() {
        return this.f87310e;
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError error) {
        s.c cVar = this.f87310e;
        if (cVar != null) {
            cVar.a((List<a>) null, (a) null, WindMillError.ERROR_NETWORK.getErrorCode(), error.getMessage());
        }
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f87319n;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/octet-stream";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> map;
        Map<String, String> headers = super.getHeaders();
        if (headers == null) {
            headers = new HashMap<>();
        }
        try {
            BidRequest.Builder builderA = a();
            Map<String, String> mapB = d.a().b();
            if (mapB != null && mapB.size() > 0) {
                builderA.ext_options.putAll(mapB);
            }
            WindMillAdRequest windMillAdRequest = this.f87317l;
            if (windMillAdRequest != null && !TextUtils.isEmpty(windMillAdRequest.getLoadId()) && (map = builderA.ext_options) != null) {
                map.put("load_id", this.f87317l.getLoadId());
            }
            builderA.ext_options.put("support_saas_adx", "1");
            WindMillAdRequest windMillAdRequest2 = this.f87317l;
            if (windMillAdRequest2 != null && windMillAdRequest2.getOptions() != null) {
                HashMap map2 = new HashMap();
                for (String str : this.f87317l.getOptions().keySet()) {
                    if (this.f87317l.getOptions().get(str) != null) {
                        map2.put(str, this.f87317l.getOptions().get(str).toString());
                    }
                }
                builderA.options(map2);
            }
            builderA.disable_mediation = Boolean.FALSE;
            StrategyRequest.Builder builderSign = new StrategyRequest.Builder().bidRequest(builderA.build()).sign(this.f87318m);
            WindMillAdRequest windMillAdRequest3 = this.f87317l;
            if (windMillAdRequest3 != null && windMillAdRequest3.getAdType() != 7) {
                builderSign.auto_request(Boolean.valueOf(this.f87317l.isRefreshRequest()));
            }
            Map<String, String> mapA = this.f87320o;
            if (mapA == null || mapA.isEmpty()) {
                mapA = d.a().a(this.f87317l.getPlacementId());
            }
            if (mapA != null) {
                builderSign.slot_group(mapA);
            }
            builderSign.request_n(Integer.valueOf(c.a().b(this.f87317l)));
            StrategyRequest strategyRequestBuild = builderSign.build();
            WMLogUtil.dd(WMLogUtil.TAG, getUrl() + " send strategy request:" + strategyRequestBuild);
            try {
                byte[] bArrEncode = strategyRequestBuild.encode();
                this.f87319n = bArrEncode;
                this.f87319n = com.windmill.sdk.utils.c.b(bArrEncode);
                headers.put(com.alipay.sdk.app.statistic.c.f7067m, "1");
            } catch (Throwable unused) {
                headers.remove(com.alipay.sdk.app.statistic.c.f7067m);
                if (this.f87319n != null) {
                    this.f87319n = strategyRequestBuild.encode();
                }
            }
            this.f87319n = com.windmill.sdk.utils.a.c.a(this.f87317l, this.f87319n, strategyRequestBuild, headers, "KGpfzbYsn4T9Jyuq");
        } catch (Throwable th) {
            WMLogUtil.e("strategry error " + th.getMessage());
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<WaterfallResponse> parseNetworkResponse(final NetworkResponse networkResponse) {
        try {
            byte[] bArr = networkResponse.data;
            if (bArr == null) {
                return Response.error(new ParseError(networkResponse));
            }
            byte[] bArrA = com.windmill.sdk.utils.a.c.a(bArr, this.f87317l, 1);
            if (networkResponse.headers.containsKey(com.alipay.sdk.app.statistic.c.f7067m) && "1".equals(networkResponse.headers.get(com.alipay.sdk.app.statistic.c.f7067m))) {
                bArrA = com.windmill.sdk.utils.c.a(bArrA);
            }
            WaterfallResponse waterfallResponseDecode = WaterfallResponse.ADAPTER.decode(bArrA);
            try {
                ClientMetadata.getInstance().setUid(AESUtil.DecryptStringServer(waterfallResponseDecode.uid, "KGpfzbYsn4T9Jyuq"));
            } catch (Exception e10) {
                e10.printStackTrace();
                SigmobLog.e("strategry error " + e10.getMessage());
            }
            return Response.success(waterfallResponseDecode, HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Throwable th) {
            return Response.error(new ParseError(th));
        }
    }

    public BidRequest.Builder a() {
        BidRequest.Builder builder = new BidRequest.Builder();
        try {
            String strA = com.windmill.sdk.utils.a.c.a();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("--------createBidRequest ischeckCheat: ");
            WindMillAdRequest windMillAdRequest = this.f87317l;
            sb2.append(windMillAdRequest.ischeckCheat(windMillAdRequest.getLoadId()));
            sb2.append(" ");
            sb2.append(strA);
            WMLogUtil.i(sb2.toString());
            builder.app(ModelBuilderCreator.createApp().app_id(WindMillAd.sharedAds().getAppId()).app_sha256(strA).build());
            this.f87316k = ModelBuilderCreator.createDevice(com.windmill.sdk.utils.d.a().b());
            DeviceId.Builder builderCreateDeviceId = ModelBuilderCreator.createDeviceId(com.windmill.sdk.utils.d.a().b());
            if (!TextUtils.isEmpty(this.f87313h)) {
                builderCreateDeviceId.user_id(this.f87313h);
            }
            this.f87316k.did(builderCreateDeviceId.build());
            builder.device(this.f87316k.build());
            Network.Builder builderCreateNetwork = ModelBuilderCreator.createNetwork(com.windmill.sdk.utils.d.a().b());
            this.f87314i = builderCreateNetwork;
            builder.network(builderCreateNetwork.build());
            AdSlot.Builder builderCreateAdSlot = ModelBuilderCreator.createAdSlot();
            this.f87315j = builderCreateAdSlot;
            builderCreateAdSlot.adslot_type.add(Integer.valueOf(this.f87311f));
            if (!TextUtils.isEmpty(this.f87312g)) {
                this.f87315j.adslot_id(this.f87312g);
            }
            builder.slots.add(this.f87315j.build());
            Privacy.Builder builder2 = new Privacy.Builder();
            builder2.age(Integer.valueOf(com.windmill.sdk.common.c.a().c()));
            builder2.child_protection(Integer.valueOf(com.windmill.sdk.common.c.a().d()));
            com.windmill.sdk.common.c.a();
            builder2.gdpr_consent(Integer.valueOf(com.windmill.sdk.common.c.h()));
            builder.privacy(builder2.build());
            User.Builder builder3 = new User.Builder();
            boolean z10 = true;
            builder3.is_minor = Boolean.valueOf(!com.windmill.sdk.common.c.a().e());
            if (com.windmill.sdk.common.c.a().f()) {
                z10 = false;
            }
            builder3.disable_personalized_recommendation = Boolean.valueOf(z10);
            builder3.change_recommendation_state = Boolean.valueOf(com.windmill.sdk.common.c.a().g());
            builder.user(builder3.build());
            StrategyReq.Builder builder4 = new StrategyReq.Builder();
            builder4.strategy_init = Boolean.valueOf(s.f87261b);
            String str = s.f87260a.get(this.f87312g);
            if (!TextUtils.isEmpty(str)) {
                builder4.last_strategy_id = str;
            }
            builder.strategy_req(builder4.build());
            builder.wx_program_req(ModelBuilderCreator.createWXProgramReq());
        } catch (Throwable th) {
            WMLogUtil.e("strategry error " + th.getMessage());
        }
        return builder;
    }

    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(final WaterfallResponse waterfallResponse) {
        try {
            if (waterfallResponse.code.intValue() == 0) {
                if (waterfallResponse.waterfall != null) {
                    b.a().a(waterfallResponse, this.f87317l.getPlacementId());
                    k.a(1, waterfallResponse, this.f87317l, this.f87310e);
                } else {
                    WaterfallResponse waterfallResponseA = b.a().a(waterfallResponse.sign, this.f87317l.getPlacementId());
                    if (waterfallResponseA != null) {
                        k.a(1, waterfallResponseA, this.f87317l, this.f87310e);
                    } else {
                        s.c cVar = this.f87310e;
                        if (cVar != null) {
                            cVar.a((List<a>) null, (a) null, WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), "getCacheStrategy is null");
                        }
                    }
                }
            } else {
                s.c cVar2 = this.f87310e;
                if (cVar2 != null) {
                    cVar2.a((List<a>) null, (a) null, waterfallResponse.code.intValue(), waterfallResponse.error_message);
                }
            }
        } catch (Throwable th) {
            WMLogUtil.e("deliver strategy exception " + th.getMessage());
            s.c cVar3 = this.f87310e;
            if (cVar3 != null) {
                cVar3.a((List<a>) null, (a) null, WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), th.getMessage());
            }
        }
    }
}
