package com.sigmob.sdk.nativead;

import android.content.Context;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.TouchLocation;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.NativeAdSetting;
import com.sigmob.sdk.base.models.rtb.SingleNativeAdSetting;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class e extends com.sigmob.sdk.base.common.i {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f81407l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f81408m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f81409n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f81410o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f81411p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f81412q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f81413r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Boolean f81414s;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i10, int i11, int i12, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("video_time", String.valueOf(i10));
            options.put("begin_time", String.valueOf(i11));
            options.put(com.umeng.analytics.pro.f.f84666q, String.valueOf(i12));
            options.put("is_first", String.valueOf(i11 == 0 ? 1 : 0));
            options.put("is_last", String.valueOf(i12 < i10 + (-1000) ? 0 : 1));
            pointEntitySigmob.setOptions(options);
        }
    }

    public static e d(BaseAdUnit adUnit) {
        e eVar = new e();
        eVar.b(adUnit);
        return eVar;
    }

    @Override // com.sigmob.sdk.base.common.i
    public void b(BaseAdUnit adUnit) {
        super.b(adUnit);
        NativeAdSetting nativeAdSetting = adUnit.getNativeAdSetting();
        SingleNativeAdSetting singleNativeSetting = adUnit.getSingleNativeSetting();
        if (singleNativeSetting != null) {
            this.f81413r = singleNativeSetting.use_na_video_component.booleanValue();
        }
        if (nativeAdSetting != null) {
            this.f81408m = nativeAdSetting.preview_page_video_mute.intValue();
            this.f81409n = nativeAdSetting.detail_page_video_mute.intValue();
            this.f81410o = nativeAdSetting.impression_percent.intValue();
            this.f81411p = nativeAdSetting.impression_time.intValue();
            this.f81407l = nativeAdSetting.video_auto_play.intValue();
            this.f81412q = nativeAdSetting.end_impression_time.intValue();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.sigmob.sdk.videoAd.d(com.sigmob.sdk.base.common.a.f78877k, 0.25f));
        arrayList.add(new com.sigmob.sdk.videoAd.d(com.sigmob.sdk.base.common.a.f78879m, 0.5f));
        arrayList.add(new com.sigmob.sdk.videoAd.d(com.sigmob.sdk.base.common.a.f78880n, 0.75f));
        a((List<com.sigmob.sdk.videoAd.d>) arrayList);
    }

    public void c(Context context, BaseAdUnit adUnit) {
        com.sigmob.sdk.base.common.ad.a(PointCategory.TEMPLATE_SHOW, (String) null, adUnit, (com.sigmob.sdk.base.common.ad.a) null);
    }

    public void e(Context context, BaseAdUnit adUnit) {
        com.sigmob.sdk.base.common.ad.a("ad_show", (String) null, adUnit, (com.sigmob.sdk.base.common.ad.a) null);
        com.sigmob.sdk.base.network.h.a(adUnit, "ad_show");
    }

    public void f(Context context, BaseAdUnit adUnit) {
        com.sigmob.sdk.base.common.ad.a("feed_click", (String) null, adUnit, (com.sigmob.sdk.base.common.ad.a) null);
        com.sigmob.sdk.base.network.h.a(adUnit, "feed_click");
    }

    public boolean l() {
        return this.f81413r;
    }

    public int m() {
        return this.f81407l;
    }

    public int p() {
        return this.f81410o;
    }

    public int q() {
        return this.f81411p;
    }

    public int r() {
        return this.f81412q;
    }

    public int s() {
        int i10 = this.f81410o;
        if (i10 >= 0) {
            return i10;
        }
        return 50;
    }

    public int t() {
        int i10 = this.f81411p;
        if (i10 >= 0) {
            return i10;
        }
        return 1;
    }

    public boolean u() {
        int iM = m();
        if (iM != 0) {
            return iM == 1 && ClientMetadata.getInstance().getActiveNetworkType() == 100;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i10, int i11, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("video_time", String.valueOf(i10));
            options.put("begin_time", String.valueOf(i11));
            pointEntitySigmob.setOptions(options);
        }
    }

    public void d(Context context, BaseAdUnit adUnit) {
        com.sigmob.sdk.base.common.ad.a(PointCategory.TEMPLATE_CLOSE, (String) null, adUnit, (com.sigmob.sdk.base.common.ad.a) null);
    }

    public boolean n() {
        Boolean bool = this.f81414s;
        if (bool != null) {
            return bool.booleanValue();
        }
        return this.f81408m == 0;
    }

    public boolean o() {
        return this.f81409n != 0;
    }

    @Override // com.sigmob.sdk.base.common.i
    public void a(Context context, TouchLocation down, TouchLocation up, com.sigmob.sdk.base.a clickUIType, BaseAdUnit adUnit) {
        String coordinate;
        SigMacroCommon macroCommon = adUnit.getMacroCommon();
        if (macroCommon == null) {
            coordinate = "";
        } else {
            macroCommon.updateClickMarco(down, up);
            coordinate = macroCommon.getCoordinate();
        }
        a(clickUIType, coordinate, true);
    }

    public void a(BaseAdUnit adUnit, final int currentPosition, final int duration) {
        com.sigmob.sdk.base.common.ad.a("video_start", (String) null, adUnit, new com.sigmob.sdk.base.common.ad.a() { // from class: com.sigmob.sdk.nativead.q0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                e.a(currentPosition, duration, obj);
            }
        });
        SigMacroCommon macroCommon = adUnit.getMacroCommon();
        macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, String.valueOf(duration));
        macroCommon.addMarcoKey(SigMacroCommon._BEGINTIME_, String.valueOf(currentPosition));
        com.sigmob.sdk.base.network.h.a(adUnit, "video_start");
    }

    public void a(BaseAdUnit adUnit, final int endTime, final int currentPosition, final int duration) {
        com.sigmob.sdk.base.common.ad.a("video_pause", (String) null, adUnit, new com.sigmob.sdk.base.common.ad.a() { // from class: com.sigmob.sdk.nativead.p0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                e.a(duration, currentPosition, endTime, obj);
            }
        });
        SigMacroCommon macroCommon = adUnit.getMacroCommon();
        macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, String.valueOf(duration));
        macroCommon.addMarcoKey(SigMacroCommon._BEGINTIME_, String.valueOf(currentPosition));
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, String.valueOf(endTime));
        macroCommon.addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, String.valueOf(currentPosition == 0 ? 1 : 0));
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, String.valueOf(endTime));
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, String.valueOf(endTime));
        com.sigmob.sdk.base.network.h.a(adUnit, "video_pause");
    }

    public void a(boolean isMute) {
        this.f81414s = Boolean.valueOf(isMute);
    }
}
