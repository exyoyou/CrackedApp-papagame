package com.windmill.sdk.strategy;

import android.text.TextUtils;
import android.util.Base64;
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
import com.windmill.sdk.models.Waterfall;
import com.windmill.sdk.models.WaterfallResponse;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class f extends SigmobRequest<WaterfallResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f87158a = "ad-responses";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f87159b = "adm";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f87160c = "body";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f87161d = "headers";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f87162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f87163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f87164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Network.Builder f87165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AdSlot.Builder f87166i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Device.Builder f87167j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WindMillAdRequest f87168k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f87169l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f87170m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private a f87171n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private byte[] f87172o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private HashMap<String, String> f87173p;

    public interface a {
        void a(int error_code, String error_msg);

        void a(Waterfall waterfall);
    }

    public f(String url, String sign, WindMillAdRequest request, int request_type, a listener) {
        super(url, 1, null);
        this.f87169l = sign;
        this.f87163f = request.getPlacementId();
        this.f87162e = request.getAdType();
        this.f87164g = request.getUserId();
        this.f87168k = request;
        this.f87170m = request_type;
        this.f87171n = listener;
        setRetryPolicy(new DefaultRetryPolicy(5000, 0, 0.0f));
        setShouldCache(false);
    }

    public BidRequest.Builder a() {
        BidRequest.Builder builder = new BidRequest.Builder();
        try {
            builder.app(ModelBuilderCreator.createApp().app_id(WindMillAd.sharedAds().getAppId()).build());
            this.f87167j = ModelBuilderCreator.createDevice(com.windmill.sdk.utils.d.a().b());
            DeviceId.Builder builderCreateDeviceId = ModelBuilderCreator.createDeviceId(com.windmill.sdk.utils.d.a().b());
            if (!TextUtils.isEmpty(this.f87164g)) {
                builderCreateDeviceId.user_id(this.f87164g);
            }
            this.f87167j.did(builderCreateDeviceId.build());
            builder.device(this.f87167j.build());
            Network.Builder builderCreateNetwork = ModelBuilderCreator.createNetwork(com.windmill.sdk.utils.d.a().b());
            this.f87165h = builderCreateNetwork;
            builder.network(builderCreateNetwork.build());
            AdSlot.Builder builderCreateAdSlot = ModelBuilderCreator.createAdSlot();
            this.f87166i = builderCreateAdSlot;
            builderCreateAdSlot.adslot_type.add(Integer.valueOf(this.f87162e));
            if (!TextUtils.isEmpty(this.f87163f)) {
                this.f87166i.adslot_id(this.f87163f);
            }
            builder.slots.add(this.f87166i.build());
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
            String str = s.f87260a.get(this.f87163f);
            if (!TextUtils.isEmpty(str)) {
                builder4.last_strategy_id = str;
            }
            builder.strategy_req(builder4.build());
            builder.wx_program_req(ModelBuilderCreator.createWXProgramReq());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return builder;
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError error) {
        a aVar = this.f87171n;
        if (aVar != null) {
            aVar.a(WindMillError.ERROR_NETWORK.getErrorCode(), error.getMessage());
        }
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f87172o;
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
            WindMillAdRequest windMillAdRequest = this.f87168k;
            if (windMillAdRequest != null && !TextUtils.isEmpty(windMillAdRequest.getLoadId()) && (map = builderA.ext_options) != null) {
                map.put("load_id", this.f87168k.getLoadId());
            }
            WindMillAdRequest windMillAdRequest2 = this.f87168k;
            if (windMillAdRequest2 != null && windMillAdRequest2.getOptions() != null) {
                HashMap map2 = new HashMap();
                for (String str : this.f87168k.getOptions().keySet()) {
                    if (this.f87168k.getOptions().get(str) != null) {
                        map2.put(str, this.f87168k.getOptions().get(str).toString());
                    }
                }
                builderA.options(map2);
            }
            Map<String, String> map3 = builderA.ext_options;
            if (map3 != null) {
                map3.put("support_saas_adx", "1");
            }
            builderA.disable_mediation = Boolean.FALSE;
            StrategyRequest.Builder builderRequest_type = new StrategyRequest.Builder().bidRequest(builderA.build()).sign(this.f87169l).request_type(Integer.valueOf(this.f87170m));
            Map<String, String> mapA = this.f87173p;
            if (mapA == null || mapA.isEmpty()) {
                mapA = d.a().a(this.f87168k.getPlacementId());
            }
            if (mapA != null) {
                builderRequest_type.slot_group(mapA);
            }
            builderRequest_type.request_n(Integer.valueOf(c.a().b(this.f87168k)));
            StrategyRequest strategyRequestBuild = builderRequest_type.build();
            WMLogUtil.dd(WMLogUtil.TAG, getUrl() + " send strategy request:" + strategyRequestBuild);
            try {
                byte[] bArrEncode = strategyRequestBuild.encode();
                this.f87172o = bArrEncode;
                this.f87172o = com.windmill.sdk.utils.c.b(bArrEncode);
                headers.put(com.alipay.sdk.app.statistic.c.f7067m, "1");
            } catch (Throwable unused) {
                headers.remove(com.alipay.sdk.app.statistic.c.f7067m);
                if (this.f87172o != null) {
                    this.f87172o = strategyRequestBuild.encode();
                }
            }
            try {
                this.f87172o = AESUtil.Encrypt(this.f87172o, "KGpfzbYsn4T9Jyuq");
                headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
            } catch (Exception e10) {
                e10.printStackTrace();
                headers.remove("agn");
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<WaterfallResponse> parseNetworkResponse(final NetworkResponse networkResponse) {
        try {
            WMLogUtil.d(WMLogUtil.TAG, "-----------parseNetworkResponse--------" + Thread.currentThread().getName());
            if (networkResponse.data == null) {
                return Response.error(new ParseError(networkResponse));
            }
            WaterfallResponse waterfallResponseDecode = WaterfallResponse.ADAPTER.decode((networkResponse.headers.containsKey(com.alipay.sdk.app.statistic.c.f7067m) && "1".equals(networkResponse.headers.get(com.alipay.sdk.app.statistic.c.f7067m))) ? com.windmill.sdk.utils.c.a(networkResponse.data) : networkResponse.data);
            try {
                ClientMetadata.getInstance().setUid(AESUtil.DecryptStringServer(waterfallResponseDecode.uid, "KGpfzbYsn4T9Jyuq"));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return Response.success(waterfallResponseDecode, HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Throwable th) {
            return Response.error(new ParseError(th));
        }
    }

    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(WaterfallResponse waterfallResponse) {
        try {
            WMLogUtil.d(WMLogUtil.TAG, "----------deliverResponse---------" + Thread.currentThread().getName());
            if (waterfallResponse.code.intValue() == 0) {
                if (waterfallResponse.waterfall != null) {
                    b.a().a(waterfallResponse, this.f87168k.getPlacementId());
                } else {
                    b.a().a(waterfallResponse.sign, this.f87168k.getPlacementId());
                }
                a aVar = this.f87171n;
                if (aVar != null) {
                    aVar.a(waterfallResponse.waterfall);
                    return;
                }
                return;
            }
            a aVar2 = this.f87171n;
            if (aVar2 != null) {
                aVar2.a(waterfallResponse.code.intValue(), waterfallResponse.error_message);
            }
        } catch (Throwable th) {
            WMLogUtil.e("deliver strategy exception " + th.getMessage());
            a aVar3 = this.f87171n;
            if (aVar3 != null) {
                aVar3.a(WindMillError.ERROR_STRATEGY_REQUEST.getErrorCode(), th.getMessage());
            }
        }
    }

    public void a(HashMap<String, String> slotCustomGrop) {
        this.f87173p = slotCustomGrop;
    }
}
