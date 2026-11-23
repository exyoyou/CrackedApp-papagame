package com.windmill.sdk.strategy;

import android.text.TextUtils;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdSlot;
import com.czhj.sdk.common.models.BidRequest;
import com.czhj.sdk.common.models.Device;
import com.czhj.sdk.common.models.DeviceId;
import com.czhj.sdk.common.models.HeaderBidding;
import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.models.Network;
import com.czhj.sdk.common.models.Privacy;
import com.czhj.sdk.common.models.StrategyReq;
import com.czhj.sdk.common.models.User;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.HttpHeaderParser;
import com.windmill.sdk.WMConstants;
import com.windmill.sdk.WindMillAd;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.Waterfall;
import com.windmill.sdk.models.WaterfallRequest;
import com.windmill.sdk.models.WaterfallResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class v extends SigmobRequest<WaterfallResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f87326a = "ad-responses";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f87327b = "adm";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f87328c = "body";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f87329d = "headers";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final s.c f87330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f87331f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f87332g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f87333h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Network.Builder f87334i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdSlot.Builder f87335j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Device.Builder f87336k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WindMillAdRequest f87337l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Waterfall f87338m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f87339n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private List<HeaderBidding> f87340o;

    public v(final String url, Waterfall waterfall, WindMillAdRequest request, s.c listener) {
        super(url, 1, null);
        Preconditions.NoThrow.checkNotNull(listener);
        this.f87338m = waterfall;
        this.f87330e = listener;
        this.f87332g = request.getPlacementId();
        this.f87331f = request.getAdType();
        this.f87333h = request.getUserId();
        this.f87337l = request;
        setRetryPolicy(new DefaultRetryPolicy(5000, 0, 0.0f));
        setShouldCache(false);
    }

    public void a(List<HeaderBidding> hbs) {
        this.f87340o = hbs;
    }

    public s.c b() {
        return this.f87330e;
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError error) {
        s.c cVar = this.f87330e;
        if (cVar != null) {
            cVar.a((List<a>) null, (a) null, WindMillError.ERROR_NETWORK.getErrorCode(), error.getMessage());
        }
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f87339n;
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
            WindMillAdRequest windMillAdRequest = this.f87337l;
            if (windMillAdRequest != null && !TextUtils.isEmpty(windMillAdRequest.getLoadId()) && (map = builderA.ext_options) != null) {
                map.put("load_id", this.f87337l.getLoadId());
            }
            builderA.ext_options.put("support_saas_adx", "1");
            WindMillAdRequest windMillAdRequest2 = this.f87337l;
            if (windMillAdRequest2 != null && windMillAdRequest2.getOptions() != null) {
                HashMap map2 = new HashMap();
                for (String str : this.f87337l.getOptions().keySet()) {
                    if (this.f87337l.getOptions().get(str) != null) {
                        map2.put(str, this.f87337l.getOptions().get(str).toString());
                    }
                }
                builderA.options(map2);
            }
            builderA.disable_mediation = Boolean.FALSE;
            WaterfallRequest waterfallRequestBuild = new WaterfallRequest.Builder().bidRequest(builderA.build()).waterfall(this.f87338m).request_n(Integer.valueOf(c.a().b(this.f87337l))).build();
            WMLogUtil.dd(WMLogUtil.TAG, getUrl() + " send waterfall request:" + waterfallRequestBuild);
            try {
                byte[] bArrEncode = waterfallRequestBuild.encode();
                this.f87339n = bArrEncode;
                this.f87339n = com.windmill.sdk.utils.c.b(bArrEncode);
                headers.put(com.alipay.sdk.app.statistic.c.f7067m, "1");
            } catch (Throwable unused) {
                headers.remove(com.alipay.sdk.app.statistic.c.f7067m);
                if (this.f87339n != null) {
                    this.f87339n = waterfallRequestBuild.encode();
                }
            }
            this.f87339n = com.windmill.sdk.utils.a.c.a(this.f87337l, this.f87339n, waterfallRequestBuild, headers, "KGpfzbYsn4T9Jyuq");
        } catch (Throwable th) {
            WMLogUtil.e("waterfall error " + th.getMessage());
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
            byte[] bArrA = com.windmill.sdk.utils.a.c.a(bArr, this.f87337l, 2);
            if (networkResponse.headers.containsKey(com.alipay.sdk.app.statistic.c.f7067m) && "1".equals(networkResponse.headers.get(com.alipay.sdk.app.statistic.c.f7067m))) {
                bArrA = com.windmill.sdk.utils.c.a(bArrA);
            }
            WaterfallResponse waterfallResponseDecode = WaterfallResponse.ADAPTER.decode(bArrA);
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

    public BidRequest.Builder a() {
        BidRequest.Builder builder = new BidRequest.Builder();
        try {
            builder.app(ModelBuilderCreator.createApp().app_id(WindMillAd.sharedAds().getAppId()).build());
            this.f87336k = ModelBuilderCreator.createDevice(com.windmill.sdk.utils.d.a().b());
            DeviceId.Builder builderCreateDeviceId = ModelBuilderCreator.createDeviceId(com.windmill.sdk.utils.d.a().b());
            if (!TextUtils.isEmpty(this.f87333h)) {
                builderCreateDeviceId.user_id(this.f87333h);
            }
            this.f87336k.did(builderCreateDeviceId.build());
            builder.device(this.f87336k.build());
            Network.Builder builderCreateNetwork = ModelBuilderCreator.createNetwork(com.windmill.sdk.utils.d.a().b());
            this.f87334i = builderCreateNetwork;
            builder.network(builderCreateNetwork.build());
            AdSlot.Builder builderCreateAdSlot = ModelBuilderCreator.createAdSlot();
            this.f87335j = builderCreateAdSlot;
            builderCreateAdSlot.adslot_type.add(Integer.valueOf(this.f87331f));
            if (!TextUtils.isEmpty(this.f87332g)) {
                this.f87335j.adslot_id(this.f87332g);
            }
            builder.slots.add(this.f87335j.build());
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
            List<HeaderBidding> list = this.f87340o;
            HashMap map = null;
            if (list != null && list.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < this.f87340o.size(); i10++) {
                    HeaderBidding headerBiddingBuild = this.f87340o.get(i10);
                    if (headerBiddingBuild.channel_id.intValue() == 9) {
                        Map<String, String> map2 = headerBiddingBuild.options;
                        if (map2 != null) {
                            if (map == null && !TextUtils.isEmpty(map2.get(WMConstants.SDK_TOKEN))) {
                                map = new HashMap(headerBiddingBuild.options);
                            }
                            HeaderBidding.Builder builderNewBuilder = headerBiddingBuild.newBuilder();
                            HashMap map3 = new HashMap(headerBiddingBuild.options);
                            map3.remove(WMConstants.SDK_TOKEN);
                            builderNewBuilder.options(map3);
                            arrayList.add(builderNewBuilder.build());
                        }
                    } else {
                        if (com.windmill.sdk.utils.l.c(headerBiddingBuild.channel_id.intValue())) {
                            headerBiddingBuild = headerBiddingBuild.newBuilder().thrmei(headerBiddingBuild.options.get("thrmei")).build();
                        }
                        arrayList.add(headerBiddingBuild);
                    }
                }
                builder.hbs(arrayList);
            }
            if (map != null) {
                HeaderBidding.Builder builder4 = new HeaderBidding.Builder();
                builder4.options(map);
                builder4.channel_id(9);
                builder.header_bidding(builder4.build());
            }
            StrategyReq.Builder builder5 = new StrategyReq.Builder();
            builder5.strategy_init = Boolean.valueOf(s.f87261b);
            String str = s.f87260a.get(this.f87332g);
            if (!TextUtils.isEmpty(str)) {
                builder5.last_strategy_id = str;
            }
            builder.strategy_req(builder5.build());
            builder.wx_program_req(ModelBuilderCreator.createWXProgramReq());
        } catch (Throwable th) {
            WMLogUtil.e("waterfall error " + th.getMessage());
        }
        return builder;
    }

    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(final WaterfallResponse waterfallResponse) {
        k.a(2, waterfallResponse, this.f87337l, this.f87330e);
    }
}
