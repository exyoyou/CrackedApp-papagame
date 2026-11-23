package com.sigmob.sdk.base.network;

import android.content.Context;
import android.util.Base64;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.AdCache;
import com.czhj.sdk.common.models.AdSlot;
import com.czhj.sdk.common.models.App;
import com.czhj.sdk.common.models.BidRequest;
import com.czhj.sdk.common.models.Device;
import com.czhj.sdk.common.models.DeviceId;
import com.czhj.sdk.common.models.HeaderBidding;
import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.models.Network;
import com.czhj.sdk.common.models.Permission;
import com.czhj.sdk.common.models.Privacy;
import com.czhj.sdk.common.models.User;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.common.utils.AppPackageUtil;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.HttpHeaderParser;
import com.czhj.wire.Wire;
import com.kwad.library.solder.lib.ext.PluginError;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.common.ab;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.z;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.Ad;
import com.sigmob.sdk.base.models.rtb.AndroidMarket;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.models.rtb.InterstitialSetting;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.NativeAdSetting;
import com.sigmob.sdk.base.models.rtb.SlotAdSetting;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmobError;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.WindAdOptions;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.WindCustomController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a extends SigmobRequest<BidResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79600a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a f79601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LoadAdRequest f79602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f79603d;

    public a(String url, LoadAdRequest loadAdRequest, f.a listener) {
        super(url, 1, null);
        Preconditions.NoThrow.checkNotNull(listener);
        this.f79601b = listener;
        this.f79602c = loadAdRequest;
        setRetryPolicy(new DefaultRetryPolicy(5000, 0, 0.0f));
        setShouldCache(false);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0272 A[Catch: all -> 0x041c, TryCatch #1 {all -> 0x041c, blocks: (B:3:0x001f, B:5:0x0045, B:6:0x004c, B:8:0x0053, B:12:0x0067, B:14:0x007d, B:82:0x03a8, B:84:0x03f7, B:85:0x0402, B:89:0x0415, B:15:0x0149, B:17:0x0159, B:19:0x0163, B:20:0x0187, B:22:0x018d, B:25:0x019b, B:38:0x0275, B:40:0x029c, B:41:0x029f, B:43:0x02c5, B:44:0x02c8, B:46:0x02e6, B:47:0x02e8, B:49:0x02f2, B:50:0x02f4, B:52:0x0303, B:53:0x0306, B:55:0x0310, B:56:0x0313, B:58:0x031e, B:59:0x0325, B:61:0x032f, B:62:0x0336, B:64:0x0340, B:65:0x0348, B:67:0x034e, B:71:0x0361, B:72:0x036f, B:74:0x0379, B:75:0x0381, B:77:0x0387, B:81:0x039a, B:32:0x01f1, B:33:0x020c, B:35:0x0268, B:37:0x0272, B:34:0x0210), top: B:97:0x001f }] */
    public static BidRequest.Builder a(LoadAdRequest loadAdRequest) {
        List<Integer> list;
        Integer numValueOf;
        Map<String, AdCache> mapA;
        WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.base.network.i
            @Override // java.lang.Runnable
            public final void run() {
                Sigmob.updateLocationMonitor();
            }
        });
        BidRequest.Builder builder = new BidRequest.Builder();
        DeviceContext deviceContextB = com.sigmob.sdk.b.b();
        Context contextE = com.sigmob.sdk.b.e();
        try {
            App.Builder builderB = b();
            builderB.mraid1_version = ModelBuilderCreator.createVersion(k5.b.f92138b).build();
            builderB.mraid2_version = ModelBuilderCreator.createVersion("2.2").build();
            Device.Builder builderCreateDevice = ModelBuilderCreator.createDevice(deviceContextB);
            DeviceId.Builder builderCreateDeviceId = ModelBuilderCreator.createDeviceId(deviceContextB);
            if (loadAdRequest != null) {
                builderCreateDeviceId.user_id(loadAdRequest.getUserId());
            }
            int osMarket = AppPackageUtil.getOsMarket(contextE);
            if (osMarket != -1) {
                builderCreateDevice.market_version(Integer.valueOf(osMarket));
            }
            try {
                int hwid = AppPackageUtil.getHWID(contextE);
                if (hwid != -1) {
                    builderCreateDevice.hms_version(Integer.valueOf(hwid));
                }
            } catch (Throwable unused) {
            }
            builderCreateDevice.did(builderCreateDeviceId.build());
            Network.Builder builderA = com.sigmob.sdk.base.utils.l.a(deviceContextB);
            AdSlot.Builder builderCreateAdSlot = ModelBuilderCreator.createAdSlot();
            boolean z10 = true;
            if (loadAdRequest == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf(PluginError.ERROR_BUILD_REMOTE_PLUGIN_INFO));
                arrayList.add(6002);
                builderCreateAdSlot.material_type.add(Integer.valueOf(com.sigmob.sdk.base.c.ImageTypeJPEG.a()));
                builderCreateAdSlot.material_type.add(Integer.valueOf(com.sigmob.sdk.base.c.ImageTypePNG.a()));
                builderCreateAdSlot.material_type.add(Integer.valueOf(com.sigmob.sdk.base.c.ImageTypeGIF.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeImage.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeSplashVideo.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_Tar.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_Html_Snippet.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_transparent_html.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_EndCardURL.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeMRAID.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a()));
                builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeNewInterstitial.a()));
                builderCreateAdSlot.support_template_id(arrayList);
            } else {
                int adType = loadAdRequest.getAdType();
                builderCreateAdSlot.adslot_type.add(Integer.valueOf(adType));
                if (adType == 5) {
                    String placementId = loadAdRequest.getPlacementId();
                    z zVarA = z.a(placementId);
                    if (zVarA != null) {
                        builderCreateAdSlot.media_request_count(Integer.valueOf(zVarA.f79303a));
                        builderCreateAdSlot.media_ready_count(Integer.valueOf(zVarA.f79304b));
                        builderCreateAdSlot.req_interval_time(Integer.valueOf(zVarA.f79306d));
                        builderCreateAdSlot.pre_req_time(Long.valueOf(zVarA.f79305c));
                    }
                    List<BaseAdUnit> listD = com.sigmob.sdk.base.common.h.d(placementId);
                    if (listD != null) {
                        builderCreateAdSlot.cached_ad_size(Integer.valueOf(listD.size()));
                    }
                }
                if (adType == 2) {
                    builderCreateAdSlot.material_type.add(Integer.valueOf(com.sigmob.sdk.base.c.ImageTypeJPEG.a()));
                    builderCreateAdSlot.material_type.add(Integer.valueOf(com.sigmob.sdk.base.c.ImageTypePNG.a()));
                    builderCreateAdSlot.material_type.add(Integer.valueOf(com.sigmob.sdk.base.c.ImageTypeGIF.a()));
                    builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeImage.a()));
                    builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeSplashVideo.a()));
                } else {
                    if (adType == 1 || adType == 4) {
                        builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_Tar.a()));
                        builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_Html_Snippet.a()));
                        builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_transparent_html.a()));
                        builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeVideo_EndCardURL.a()));
                        builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeMRAID.a()));
                        list = builderCreateAdSlot.creative_type;
                        numValueOf = Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a());
                    } else if (adType == 6) {
                        builderCreateAdSlot.creative_type.add(Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeMRAIDTWO.a()));
                        list = builderCreateAdSlot.creative_type;
                        numValueOf = Integer.valueOf(com.sigmob.sdk.base.common.n.CreativeTypeNewInterstitial.a());
                    } else {
                        mapA = com.sigmob.sdk.base.common.h.g().a(adType);
                        if (mapA != null) {
                            builderCreateAdSlot.ad_caches(mapA);
                        }
                    }
                    list.add(numValueOf);
                    mapA = com.sigmob.sdk.base.common.h.g().a(adType);
                    if (mapA != null) {
                        builderCreateAdSlot.ad_caches(mapA);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(Integer.valueOf(PluginError.ERROR_BUILD_REMOTE_PLUGIN_INFO));
                arrayList2.add(6002);
                builderCreateAdSlot.support_template_id(arrayList2);
                builderCreateAdSlot.sdk_strategy_index(1);
                String placementId2 = loadAdRequest.getPlacementId();
                if (t.b(placementId2)) {
                    builderCreateAdSlot.adslot_id(placementId2);
                }
                builderCreateAdSlot.latest_crid(loadAdRequest.getLastCrid());
                builderCreateAdSlot.latest_camp_id(loadAdRequest.getLastCampid());
                builderCreateAdSlot.ad_count(Integer.valueOf(loadAdRequest.getAdCount()));
                builderCreateAdSlot.bidfloor(loadAdRequest.getBidFloor());
                Map<String, String> options = loadAdRequest.getOptions();
                if (options != null) {
                    builder.options(options);
                }
                Integer numValueOf2 = Integer.valueOf(loadAdRequest.getRequest_scene_type());
                builder.request_scene_type = numValueOf2;
                builder.ad_is_expired = Boolean.valueOf(com.sigmob.sdk.manager.b.a(numValueOf2));
                String originVid = loadAdRequest.getOriginVid();
                if (t.b(originVid)) {
                    builder.origin_vid = originVid;
                }
                String originPrice = loadAdRequest.getOriginPrice();
                if (t.b(originPrice)) {
                    builder.origin_price = originPrice;
                }
                HeaderBidding.Builder builder2 = new HeaderBidding.Builder();
                String bidToken = loadAdRequest.getBidToken();
                if (t.b(bidToken)) {
                    builder2.bid_token(bidToken);
                }
                String currency = loadAdRequest.getCurrency();
                if (t.b(currency)) {
                    builder2.cur(currency);
                }
                builder.header_bidding(builder2.build());
                if (builder.ext_options == null) {
                    builder.ext_options = new HashMap();
                }
                String loadId = loadAdRequest.getLoadId();
                if (t.b(loadId)) {
                    builder.ext_options.put("load_id", loadId);
                }
                Map<?, ?> tBSaasOptions = loadAdRequest.getTBSaasOptions();
                if (com.sigmob.sdk.base.utils.e.b(tBSaasOptions)) {
                    for (Map.Entry<?, ?> entry : tBSaasOptions.entrySet()) {
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        if (key != null && value != null) {
                            builder.ext_options.put(key.toString(), value.toString());
                        }
                    }
                }
                Map<?, ?> tBMediaOptions = loadAdRequest.getTBMediaOptions();
                if (com.sigmob.sdk.base.utils.e.b(tBMediaOptions)) {
                    for (Map.Entry<?, ?> entry2 : tBMediaOptions.entrySet()) {
                        Object key2 = entry2.getKey();
                        Object value2 = entry2.getValue();
                        if (key2 != null && value2 != null) {
                            builder.media_request_options.put(key2.toString(), value2.toString());
                        }
                    }
                }
            }
            builder.device(ModelBuilderCreator.createDevice(deviceContextB).build());
            builder.slots.add(builderCreateAdSlot.build());
            builder.user(c().build());
            builder.privacy(d().build());
            builder.app(builderB.build());
            builder.device(builderCreateDevice.build());
            builder.network(builderA.build());
            builder.req_timestamp = Long.valueOf(System.currentTimeMillis());
            if (t.b(com.sigmob.sdk.base.n.f79584k)) {
                builder.sdk_version(ModelBuilderCreator.createVersion(com.sigmob.sdk.base.n.f79584k).build());
            }
            builder.disable_mediation = Boolean.TRUE;
            builder.wx_program_req(ModelBuilderCreator.createWXProgramReq());
            if (com.sigmob.sdk.base.common.f.c()) {
                z10 = false;
            }
            builder.disable_install_package = Boolean.valueOf(z10);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        return builder;
    }

    public static App.Builder b() {
        App.Builder builderCreateApp = ModelBuilderCreator.createApp();
        builderCreateApp.sdk_ext_cap.add(4);
        builderCreateApp.app_id(WindAds.sharedAds().getAppId());
        Permission.Builder builder = new Permission.Builder();
        boolean zJ = com.sigmob.sdk.base.o.a().j();
        boolean sensorStatus = WindAds.sharedAds().getSensorStatus();
        boolean zF = (!sensorStatus || zJ) ? false : com.sigmob.sdk.b.f();
        boolean z10 = sensorStatus && zF;
        SigmobLogger.d(f79600a, "createApp: accelerometer = " + z10 + ", complianceMark = " + zJ + ", sensorStatus = " + sensorStatus + ", sensorEnable = " + zF, new Object[0]);
        builder.accelerometer(Boolean.valueOf(z10));
        builderCreateApp.permission(builder.build());
        return builderCreateApp;
    }

    public static Privacy.Builder d() {
        int iG;
        Privacy.Builder builder = new Privacy.Builder();
        builder.age(Integer.valueOf(com.sigmob.sdk.base.i.a().b()));
        builder.child_protection(Integer.valueOf(com.sigmob.sdk.base.i.a().c()));
        try {
            iG = com.sigmob.sdk.base.i.a().g();
        } catch (Throwable unused) {
            iG = 0;
        }
        builder.gdpr_consent(Integer.valueOf(iG));
        WindAdOptions options = WindAds.sharedAds().getOptions();
        WindCustomController windCustomController = (options == null || options.getCustomController() == null) ? new WindCustomController() : options.getCustomController();
        builder.allow_geo = Boolean.valueOf(windCustomController.isCanUseLocation());
        builder.allow_imei = Boolean.valueOf(windCustomController.isCanUsePhoneState());
        builder.allow_oaid = Boolean.valueOf(windCustomController.isCanUseOaid());
        builder.allow_android_id = Boolean.valueOf(windCustomController.isCanUseAndroidId());
        builder.allow_installed_apps = Boolean.valueOf(windCustomController.isCanUseAppList());
        builder.allow_carrier_code = Boolean.valueOf(windCustomController.isCanUseSimOperator());
        builder.allow_space_size = Boolean.valueOf(windCustomController.isCanUseSpaceSize());
        return builder;
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError error) {
        f.a aVar;
        WindAdError windAdError;
        z zVarA;
        String placementId = this.f79602c.getPlacementId();
        if (this.f79602c.getAdType() == 5 && (zVarA = z.a(placementId)) != null) {
            zVarA.f79309g = zVarA.f79305c;
        }
        if (error instanceof ParseError) {
            aVar = this.f79601b;
            windAdError = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
        } else {
            SigmobLog.e(placementId + " ERROR_SIGMOB_NETWORK " + error.getMessage());
            aVar = this.f79601b;
            windAdError = WindAdError.ERROR_SIGMOB_NETWORK;
        }
        f.a(aVar, windAdError.getErrorCode(), error.getMessage(), null, this.f79602c);
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f79603d;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/octet-stream";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        BidRequest bidRequestBuild;
        Map<String, String> headers = super.getHeaders();
        try {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
        } catch (NoSuchMethodError unused) {
            headers.put("e", "1");
        }
        try {
            LoadAdRequest loadAdRequest = this.f79602c;
            bidRequestBuild = loadAdRequest != null ? a(loadAdRequest).build() : null;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
        if (bidRequestBuild == null) {
            SigmobLog.e("builder Ads Post entry fail ");
            return null;
        }
        try {
            byte[] bArrEncode = bidRequestBuild.encode();
            this.f79603d = bArrEncode;
            this.f79603d = c.b(bArrEncode);
            headers.put(com.alipay.sdk.app.statistic.c.f7067m, "1");
        } catch (Throwable unused2) {
            headers.remove(com.alipay.sdk.app.statistic.c.f7067m);
            this.f79603d = bidRequestBuild.encode();
        }
        try {
            this.f79603d = AESUtil.Encrypt(this.f79603d, "KGpfzbYsn4T9Jyuq");
        } catch (Exception e10) {
            e10.printStackTrace();
            headers.remove("e");
            headers.remove("agn");
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    protected Response<BidResponse> parseNetworkResponse(final NetworkResponse networkResponse) {
        try {
            if (networkResponse.data == null) {
                return Response.error(new ParseError(networkResponse));
            }
            BidResponse bidResponseDecode = BidResponse.ADAPTER.decode((networkResponse.headers.containsKey(com.alipay.sdk.app.statistic.c.f7067m) && "1".equals(networkResponse.headers.get(com.alipay.sdk.app.statistic.c.f7067m))) ? c.a(networkResponse.data) : networkResponse.data);
            return bidResponseDecode == null ? Response.error(new ParseError(networkResponse)) : Response.success(bidResponseDecode, HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return Response.error(new ParseError(th));
        }
    }

    public static User.Builder c() {
        User.Builder builder = new User.Builder();
        builder.is_minor = Boolean.valueOf(!com.sigmob.sdk.base.i.a().d());
        builder.disable_personalized_recommendation = Boolean.valueOf(!com.sigmob.sdk.base.i.a().e());
        builder.change_recommendation_state = Boolean.valueOf(com.sigmob.sdk.base.i.a().f());
        return builder;
    }

    public f.a a() {
        return this.f79601b;
    }

    private void a(final int adType, final String placementId, final String requestId, int errorCode, String message) {
        ad.a(PointCategory.SERVER_ERROR, errorCode, message, (BaseAdUnit) null, new ad.a() { // from class: com.sigmob.sdk.base.network.j
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                a.a(requestId, placementId, adType, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(BidResponse bidResponse) {
        String strDecryptString;
        z zVarA;
        AndroidMarket androidMarket;
        Integer num;
        NativeAdSetting nativeAdSetting;
        z zVarA2;
        int adType = this.f79602c.getAdType();
        String placementId = this.f79602c.getPlacementId();
        AndroidMarket androidMarket2 = null;
        if (bidResponse != null) {
            int i10 = 0;
            if (adType == 5) {
                z zVarA3 = z.a(placementId);
                if (zVarA3 != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    zVarA3.f79305c = jCurrentTimeMillis;
                    zVarA3.f79309g = jCurrentTimeMillis;
                    zVarA3.f79304b = 0;
                    zVarA3.f79303a = 0;
                    SlotAdSetting slotAdSetting = bidResponse.slot_ad_setting;
                    if (slotAdSetting != null && (nativeAdSetting = slotAdSetting.native_setting) != null) {
                        zVarA3.f79307e = ((Integer) Wire.get(nativeAdSetting.ad_pool_size, 0)).intValue();
                        zVarA3.f79306d = ((Integer) Wire.get(nativeAdSetting.req_interval_time, 0)).intValue();
                        zVarA3.f79308f = ((Integer) Wire.get(nativeAdSetting.media_expected_floor, 0)).intValue();
                        ab.a().a(((Integer) Wire.get(nativeAdSetting.log_interval_time, 0)).intValue());
                    }
                }
                z.a(placementId, zVarA3);
            }
            List<Ad> list = bidResponse.ads;
            int size = list.size();
            if (com.sigmob.sdk.base.utils.e.b(list)) {
                com.sigmob.sdk.base.o.f79658a = Boolean.valueOf(w.a(bidResponse.noncompliance_mark));
            }
            com.sigmob.sdk.base.utils.k.c(f79600a, "noncomplianceMark(bid) = " + com.sigmob.sdk.base.o.f79658a + ", size = " + size, new Object[0]);
            String str = bidResponse.uid;
            if (t.b(str)) {
                try {
                    strDecryptString = AESUtil.DecryptStringServer(str, "KGpfzbYsn4T9Jyuq");
                } catch (NoSuchMethodError unused) {
                    strDecryptString = AESUtil.DecryptString(str, "KGpfzbYsn4T9Jyuq");
                }
                ClientMetadata.getInstance().setUid(strDecryptString);
            }
            if (t.b(bidResponse.adx_id)) {
                this.f79602c.setAdx_id(bidResponse.adx_id);
            }
            this.f79602c.setRequestId(bidResponse.request_id);
            if (com.sigmob.sdk.base.utils.e.a(list)) {
                Long l10 = bidResponse.error_code;
                int errorCode = l10 == null ? WindAdError.ERROR_AD_ERROR.getErrorCode() : l10.intValue();
                a(adType, placementId, bidResponse.request_id, errorCode, bidResponse.error_message);
                f.a(this.f79601b, errorCode, bidResponse.error_message, bidResponse.request_id, this.f79602c);
                return;
            }
            try {
                ArrayList arrayList = new ArrayList();
                while (i10 < size) {
                    Ad ad2 = list.get(i10);
                    if (this.f79602c.getAdType() == 6 && com.sigmob.sdk.base.utils.e.b(ad2.materials) && w.b(bidResponse.slot_ad_setting) && w.b(bidResponse.slot_ad_setting.interstitial_setting)) {
                        for (MaterialMeta materialMeta : ad2.materials) {
                            if (materialMeta != null && (androidMarket = materialMeta.android_market) != null && (num = androidMarket.type) != null) {
                                InterstitialSetting interstitialSetting = bidResponse.slot_ad_setting.interstitial_setting;
                                Boolean bool = interstitialSetting.click_close_ad;
                                Integer num2 = interstitialSetting.seconds_close_ad;
                                if (num.intValue() == 1 && (w.a(bool) || w.a((Number) num2))) {
                                    materialMeta.android_market = androidMarket2;
                                }
                            }
                        }
                    }
                    BaseAdUnit baseAdUnitAdUnit = BaseAdUnit.adUnit(ad2, bidResponse.request_id, this.f79602c, bidResponse.slot_ad_setting, bidResponse.scene, bidResponse.uid, bidResponse.expiration_time, bidResponse.bidding_response);
                    baseAdUnitAdUnit.setAd_type(adType);
                    baseAdUnitAdUnit.setAdx_id(this.f79602c.getAdx_id());
                    baseAdUnitAdUnit.setAdslot_id(placementId);
                    baseAdUnitAdUnit.setHalfInterstitial(this.f79602c.isHalfInterstitial());
                    baseAdUnitAdUnit.setRvCallBackUrl(bidResponse.rv_callback_url);
                    baseAdUnitAdUnit.setTraceId(this.f79602c.getTraceId());
                    baseAdUnitAdUnit.setOriginVid(this.f79602c.getOriginVid());
                    baseAdUnitAdUnit.setBid_token(this.f79602c.getBidToken());
                    baseAdUnitAdUnit.setRequestSceneType(this.f79602c.getRequest_scene_type());
                    Map<String, String> map = bidResponse.saas_options;
                    try {
                        if (com.sigmob.sdk.base.utils.e.b(map) && map.containsKey("adInfoList")) {
                            List list2 = (List) com.sigmob.sdk.base.utils.i.a(map.get("adInfoList"), (Class<?>) List.class, Map.class);
                            if (com.sigmob.sdk.base.utils.e.b(list2) && com.sigmob.sdk.base.utils.e.a(i10, list2)) {
                                Map map2 = (Map) list2.get(i10);
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(map2);
                                String strA = com.sigmob.sdk.base.utils.i.a(arrayList2);
                                HashMap map3 = new HashMap();
                                map3.put("adInfoList", strA);
                                baseAdUnitAdUnit.setSaasOptions(map3);
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    arrayList.add(baseAdUnitAdUnit);
                    i10++;
                    androidMarket2 = null;
                }
                if (adType == 5 && (zVarA = z.a(placementId)) != null) {
                    com.sigmob.sdk.base.common.h.a(placementId, arrayList, zVarA.f79307e);
                }
                f.a(this.f79601b, arrayList, this.f79602c);
                if (adType == 6 || adType == 1 || adType == 4) {
                    com.sigmob.sdk.base.common.h.a(bidResponse.request_id, bidResponse);
                    return;
                }
                return;
            } catch (Throwable th) {
                SigmobLog.e("ads Response: error ", th);
            }
        } else if (adType == 5 && (zVarA2 = z.a(placementId)) != null) {
            zVarA2.f79309g = zVarA2.f79305c;
        }
        f.a(this.f79601b, WindAdError.ERROR_SIGMOB_INFORMATION_LOSE.getErrorCode(), "bidResponse is null", null, this.f79602c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2, int i10, Object obj) {
        if (obj instanceof PointEntitySigmobError) {
            PointEntitySigmobError pointEntitySigmobError = (PointEntitySigmobError) obj;
            pointEntitySigmobError.setRequest_id(str);
            pointEntitySigmobError.setPlacement_id(str2);
            pointEntitySigmobError.setAdtype(String.valueOf(i10));
        }
    }
}
