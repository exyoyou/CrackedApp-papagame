package com.sigmob.sdk.nativead;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.models.rtb.BiddingResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.sigmob.windad.WindAdError;
import com.sigmob.windad.natives.WindNativeAdData;
import com.sigmob.windad.natives.WindNativeAdRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class y implements com.sigmob.sdk.base.network.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f81552a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f81553b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f81554c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f81555d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f81556e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f81557f = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<BaseAdUnit> f81559h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private aa f81560i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final WindNativeAdRequest f81561j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f81562k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Handler f81558g = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.nativead.y.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 20481 && y.this.f81562k) {
                y.this.f81558g.removeMessages(20481);
                y yVar = y.this;
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_AD_TIME_OUT;
                yVar.a((List<WindNativeAdData>) null, windAdError.getErrorCode(), windAdError.getMessage());
            }
        }
    };

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f81563l = 20481;

    public y(WindNativeAdRequest adRequest, aa sigmobNativeAdLoadListener) {
        this.f81561j = adRequest;
        this.f81560i = sigmobNativeAdLoadListener;
    }

    public Map<String, BiddingResponse> c() {
        BaseAdUnit baseAdUnit;
        List<BaseAdUnit> list = this.f81559h;
        if (list == null || (baseAdUnit = list.get(0)) == null || baseAdUnit.bidding_response == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(baseAdUnit.getRequestId(), baseAdUnit.bidding_response);
        return map;
    }

    public int a(int adCount, String bidToken, int bidFloor, String currency, String traceId) {
        WindAdError windAdError;
        int i10 = 1;
        this.f81562k = true;
        String placementId = this.f81561j.getPlacementId();
        com.sigmob.sdk.base.common.z zVarA = com.sigmob.sdk.base.common.z.a(placementId);
        LoadAdRequest loadAdRequest = new LoadAdRequest(this.f81561j);
        loadAdRequest.setBidToken(bidToken);
        loadAdRequest.setBidFloor(Integer.valueOf(bidFloor));
        loadAdRequest.setCurrency(currency);
        loadAdRequest.setAd_count(adCount);
        loadAdRequest.setTraceId(traceId);
        zVarA.f79303a++;
        com.sigmob.sdk.base.common.aa aaVarA = com.sigmob.sdk.base.common.aa.a(placementId);
        aaVarA.f78897a++;
        if (adCount >= 1) {
            long j10 = zVarA.f79309g;
            if (j10 <= 0 || j10 + (((long) zVarA.f79306d) * 1000) <= System.currentTimeMillis()) {
                this.f81558g.sendEmptyMessageDelayed(20481, com.sigmob.sdk.base.o.a().C());
                zVarA.f79309g = System.currentTimeMillis();
                com.sigmob.sdk.base.network.f.a(loadAdRequest, this);
            } else {
                List<BaseAdUnit> listA = com.sigmob.sdk.base.common.h.a(placementId, zVarA.f79308f, adCount);
                if (listA.isEmpty()) {
                    windAdError = WindAdError.ERROR_NO_AD;
                } else {
                    this.f81559h = listA;
                    ArrayList arrayList = new ArrayList();
                    for (int i11 = 0; i11 < listA.size(); i11++) {
                        BaseAdUnit baseAdUnit = listA.get(i11);
                        baseAdUnit.setLoad_id(loadAdRequest.getLoadId());
                        arrayList.add(a(baseAdUnit));
                        if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
                            com.sigmob.sdk.base.common.h.g().f(baseAdUnit);
                        }
                    }
                    a(this.f81559h.get(0), loadAdRequest);
                    zVarA.f79304b += listA.size();
                    aaVarA.f78898b += listA.size();
                    a(arrayList, 0, (String) null);
                }
                i10 = 0;
            }
            com.sigmob.sdk.base.common.z.a(placementId, zVarA);
            com.sigmob.sdk.base.common.aa.a(placementId, aaVarA);
            return i10;
        }
        windAdError = WindAdError.ERROR_SIGMOB_NATIVE_ADCOUNT;
        a((List<WindNativeAdData>) null, windAdError.getErrorCode(), windAdError.getMessage());
        i10 = 0;
        com.sigmob.sdk.base.common.z.a(placementId, zVarA);
        com.sigmob.sdk.base.common.aa.a(placementId, aaVarA);
        return i10;
    }

    private WindNativeAdData a(BaseAdUnit adUnit) {
        return new ag(adUnit);
    }

    public String b() {
        BaseAdUnit baseAdUnit;
        BiddingResponse biddingResponse;
        List<BaseAdUnit> list = this.f81559h;
        if (list == null || list.isEmpty() || (baseAdUnit = this.f81559h.get(0)) == null || (biddingResponse = baseAdUnit.bidding_response) == null) {
            return null;
        }
        return biddingResponse.currency;
    }

    public String a() {
        BaseAdUnit baseAdUnit;
        BiddingResponse biddingResponse;
        List<BaseAdUnit> list = this.f81559h;
        if (list == null || list.isEmpty() || (baseAdUnit = this.f81559h.get(0)) == null || (biddingResponse = baseAdUnit.bidding_response) == null) {
            return null;
        }
        return String.valueOf(biddingResponse.ecpm);
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(int error, String message, String request_id, LoadAdRequest loadAdRequest) {
        com.sigmob.sdk.base.common.ad.a(PointCategory.RESPOND, "0", loadAdRequest);
        a((List<WindNativeAdData>) null, error, message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10, List list, String str) {
        aa aaVar = this.f81560i;
        if (aaVar == null) {
            return;
        }
        if (i10 == 0) {
            aaVar.onNativeAdLoaded(list);
        } else {
            aaVar.onNativeAdLoadFail(i10, str);
        }
    }

    public void a(BaseAdUnit adUnit, LoadAdRequest loadAdRequest) {
        com.sigmob.sdk.base.common.ad.a("ready", null, adUnit, null, loadAdRequest, null);
    }

    public void a(String key, String value) {
        BaseAdUnit baseAdUnit;
        List<BaseAdUnit> list = this.f81559h;
        if (list == null || (baseAdUnit = list.get(0)) == null || baseAdUnit.bidding_response == null) {
            return;
        }
        baseAdUnit.getMacroCommon().addMarcoKey(key, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final List<WindNativeAdData> adUnits, final int error, final String message) {
        this.f81562k = false;
        this.f81558g.removeMessages(20481);
        this.f81558g.post(new Runnable() { // from class: com.sigmob.sdk.nativead.x0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81548b.a(error, adUnits, message);
            }
        });
    }

    @Override // com.sigmob.sdk.base.network.f.a
    public void a(final List<BaseAdUnit> baseAdUnitList, LoadAdRequest loadAdRequest) {
        if (com.sigmob.sdk.base.utils.e.a(baseAdUnitList)) {
            WindAdError windAdError = WindAdError.ERROR_NO_AD;
            a((List<WindNativeAdData>) null, windAdError.getErrorCode(), windAdError.getMessage());
            return;
        }
        com.sigmob.sdk.base.common.ad.a(PointCategory.RESPOND, "1", baseAdUnitList.get(0), null, loadAdRequest, new com.sigmob.sdk.base.common.ad.a() { // from class: com.sigmob.sdk.nativead.y0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                y.a(baseAdUnitList, obj);
            }
        });
        com.sigmob.sdk.base.common.z zVarA = com.sigmob.sdk.base.common.z.a(this.f81561j.getPlacementId());
        if (zVarA != null && zVarA.f79307e > 0) {
            baseAdUnitList = com.sigmob.sdk.base.common.h.a(this.f81561j.getPlacementId(), zVarA.f79308f, this.f81561j.getAdCount());
            if (com.sigmob.sdk.base.utils.e.a(baseAdUnitList)) {
                this.f81559h = null;
                WindAdError windAdError2 = WindAdError.ERROR_NO_AD;
                a((List<WindNativeAdData>) null, windAdError2.getErrorCode(), windAdError2.getMessage());
                return;
            }
        }
        this.f81559h = baseAdUnitList;
        com.sigmob.sdk.base.common.aa aaVarA = com.sigmob.sdk.base.common.aa.a(this.f81561j.getPlacementId());
        zVarA.f79304b += this.f81559h.size();
        aaVarA.f78898b += this.f81559h.size();
        com.sigmob.sdk.base.common.z.a(this.f81561j.getPlacementId(), zVarA);
        com.sigmob.sdk.base.common.aa.a(this.f81561j.getPlacementId(), aaVarA);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f81559h.size(); i10++) {
            BaseAdUnit baseAdUnit = this.f81559h.get(i10);
            arrayList.add(a(baseAdUnit));
            if (com.sigmob.sdk.manager.b.n(baseAdUnit)) {
                com.sigmob.sdk.base.common.h.g().f(baseAdUnit);
            }
        }
        a(this.f81559h.get(0), loadAdRequest);
        a(arrayList, 0, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put(PointParamKey.AD_COUNT, String.valueOf(list.size()));
            pointEntitySigmob.setOptions(options);
        }
    }
}
