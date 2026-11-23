package com.kwad.sdk.core.adlog;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.track.AdTrackLog;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.h;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.al;
import com.kwad.sdk.utils.br;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends com.kwad.sdk.core.network.b {
    int aLd;

    @NonNull
    private final com.kwad.sdk.core.adlog.c.a aLe;
    private final AdTemplate mAdTemplate;

    /* JADX INFO: renamed from: com.kwad.sdk.core.adlog.a$a, reason: collision with other inner class name */
    @KsJson
    public static class C0924a extends com.kwad.sdk.core.response.a.a {
        public String aLA;
        public int aLB;
        public int aLC;
        public int aLD;
        public int aLE;

        @Nullable
        public AdTrackLog aLF;
        public int aLG;
        public int aLf;
        public String aLg;
        public String aLh;
        public String aLi;
        public String aLj;
        public String aLl;
        public int aLm;
        public int aLn;
        public int aLo;
        public int aLp;
        public int aLq;
        public boolean aLr;
        public String aLs;
        public JSONObject aLt;
        public int aLv;
        public int aLw;
        public int aLx;
        public int aLy;
        public String aLz;
        public String templateId;
        public int tkPublishType;
        public int aLk = -1;
        public long duration = -1;
        public int showLiveStatus = -1;
        public int aLu = 0;
        public int showLiveStyle = -1;

        public final AdTrackLog a(AdTemplate adTemplate, String str, String str2, com.kwad.sdk.g.a<AdTrackLog> aVar) {
            h hVar;
            if (adTemplate == null || (hVar = (h) ServiceProvider.get(h.class)) == null || !hVar.FZ()) {
                return null;
            }
            AdTrackLog adTrackLog = new AdTrackLog(str, str2);
            this.aLF = adTrackLog;
            adTrackLog.bindABParams(adTemplate);
            if (aVar != null) {
                aVar.accept(this.aLF);
            }
            return this.aLF;
        }

        @Override // com.kwad.sdk.core.response.a.a
        public void afterToJson(JSONObject jSONObject) {
            super.afterToJson(jSONObject);
            int i10 = this.aLk;
            if (i10 != -1) {
                ac.putValue(jSONObject, "shield_reason", i10);
            }
            long j10 = this.duration;
            if (j10 != -1) {
                ac.putValue(jSONObject, "duration", j10);
            }
            int i11 = this.showLiveStatus;
            if (i11 != -1) {
                ac.putValue(jSONObject, "show_live_status", i11);
            }
            int i12 = this.showLiveStyle;
            if (i12 != -1) {
                ac.putValue(jSONObject, "show_live_style", i12);
            }
            AdTrackLog adTrackLog = this.aLF;
            if (adTrackLog != null) {
                ac.putValue(jSONObject, "ad_track_log", adTrackLog.toJson().toString());
            }
            JSONObject jSONObject2 = this.aLt;
            if (jSONObject2 != null) {
                try {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        jSONObject.putOpt(next, this.aLt.get(next));
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public a(@NonNull com.kwad.sdk.core.adlog.c.a aVar) {
        this.aLe = aVar;
        this.mAdTemplate = aVar.adTemplate;
        this.aLd = aVar.aKI;
    }

    private void IR() {
        JSONObject jSONObject = this.aLe.aMe;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        ac.putValue(jSONObject, "clientTimestamp", System.currentTimeMillis());
        putBody("extData", jSONObject.toString());
    }

    private void a(String str, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        int i10 = aVar.aML;
        if (i10 >= 0) {
            putBody("adOrder", i10);
        }
        int i11 = aVar.QX;
        if (i11 >= 0) {
            putBody("adInterstitialSource", i11);
        }
        if (!TextUtils.isEmpty(aVar.aMj)) {
            putBody("adRenderArea", aVar.aMj);
        }
        putBody("adxResult", aVar.adxResult);
        int i12 = aVar.aMP;
        if (i12 != 0) {
            putBody("fingerSwipeType", i12);
        }
        int i13 = aVar.aMQ;
        if (i13 != 0) {
            putBody("fingerSwipeDistance", i13);
        }
        int i14 = aVar.aMI;
        if (i14 != -1) {
            putBody("installStatus", i14);
        }
        C0924a c0924a = aVar.QZ;
        if (c0924a != null) {
            putBody("clientExtData", c0924a.toJson().toString());
        }
        String str2 = aVar.aMT;
        if (str2 != null) {
            putBody("clientPkFailAdInfo", str2);
        }
        int i15 = aVar.Rb;
        if (i15 != -1) {
            putBody("triggerType", i15);
        }
        int i16 = aVar.Ra;
        if (i16 != 0) {
            putBody("photoSizeStyle", i16);
        }
    }

    private void b(String str, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        int i10 = aVar.nm;
        if (i10 != 0) {
            putBody("itemClickType", i10);
        }
        if (!TextUtils.isEmpty(aVar.QY)) {
            putBody("payload", aVar.QY);
        }
        int i11 = aVar.aMA;
        if (i11 != 0) {
            putBody("adAggPageSource", i11);
        }
        int i12 = aVar.aML;
        if (i12 >= 0) {
            putBody("adOrder", i12);
        }
        int i13 = aVar.QX;
        if (i13 >= 0) {
            putBody("adInterstitialSource", i13);
        }
        int i14 = aVar.Rb;
        if (i14 != -1) {
            putBody("triggerType", i14);
        }
        int i15 = aVar.aMS;
        if (i15 != 0) {
            putBody("cardCloseType", i15);
        }
        putBody("adxResult", aVar.adxResult);
        double d10 = aVar.np;
        if (d10 > 0.0d) {
            putBody("splashShakeAcceleration", d10);
        }
        if (!TextUtils.isEmpty(aVar.aMM)) {
            putBody("splashInteractionRotateAngle", aVar.aMM);
        }
        int i16 = aVar.aMP;
        if (i16 != 0) {
            putBody("fingerSwipeType", i16);
        }
        int i17 = aVar.aMQ;
        if (i17 != 0) {
            putBody("fingerSwipeDistance", i17);
        }
        long j10 = aVar.zV;
        if (j10 > 0) {
            putBody("playedDuration", j10);
        }
        int i18 = aVar.aMK;
        if (i18 > 0) {
            putBody("playedRate", i18);
        }
        String str2 = aVar.aMT;
        if (str2 != null) {
            putBody("clientPkFailAdInfo", str2);
        }
        int i19 = aVar.aMs;
        if (i19 != -1) {
            putBody("retainCodeType", i19);
        }
        C0924a c0924a = aVar.QZ;
        if (c0924a != null) {
            putBody("clientExtData", c0924a.toJson().toString());
        }
        int i20 = aVar.aMR;
        if (i20 != 0) {
            putBody("finger_swiper_angle", i20);
        }
        int i21 = aVar.Ra;
        if (i21 != 0) {
            putBody("photoSizeStyle", i21);
        }
    }

    private void c(String str, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        int i10 = aVar.aMh;
        if (i10 != 0) {
            putBody("itemCloseType", i10);
        }
        int i11 = aVar.aMf;
        if (i11 > 0) {
            putBody("photoPlaySecond", i11);
        }
        int i12 = aVar.aMg;
        if (i12 != 0) {
            putBody("awardReceiveStage", i12);
        }
        int i13 = aVar.aMi;
        if (i13 != 0) {
            putBody("elementType", i13);
        }
        if (!TextUtils.isEmpty(aVar.QY)) {
            putBody("payload", aVar.QY);
        }
        C0924a c0924a = aVar.QZ;
        if (c0924a != null) {
            putBody("clientExtData", c0924a.toJson().toString());
        }
        int i14 = aVar.aMt;
        if (i14 > 0) {
            putBody("deeplinkType", i14);
        }
        if (!TextUtils.isEmpty(aVar.aMu)) {
            putBody("deeplinkAppName", aVar.aMu);
        }
        int i15 = aVar.aMv;
        if (i15 != 0) {
            putBody("deeplinkFailedReason", i15);
        }
        int i16 = aVar.downloadSource;
        if (i16 > 0) {
            putBody("downloadSource", i16);
        }
        int i17 = aVar.aMS;
        if (i17 != 0) {
            putBody("cardCloseType", i17);
        }
        int i18 = aVar.aMw;
        if (i18 > 0) {
            putBody("isPackageChanged", i18);
        }
        putBody("installedFrom", aVar.aMx);
        putBody("isChangedEndcard", aVar.aMz);
        int i19 = aVar.aMA;
        if (i19 != 0) {
            putBody("adAggPageSource", i19);
        }
        String str2 = aVar.aMy;
        if (str2 != null) {
            putBody("downloadFailedReason", str2);
        }
        if (!br.isNullString(aVar.aMC)) {
            putBody("installedPackageName", aVar.aMC);
        }
        if (!br.isNullString(aVar.aMB)) {
            putBody("serverPackageName", aVar.aMB);
        }
        int i20 = aVar.aME;
        if (i20 > 0) {
            putBody("closeButtonClickTime", i20);
        }
        int i21 = aVar.aMD;
        if (i21 > 0) {
            putBody("closeButtonImpressionTime", i21);
        }
        int i22 = aVar.downloadStatus;
        if (i22 >= 0) {
            putBody("downloadStatus", i22);
        }
        long j10 = aVar.aMF;
        if (j10 > 0) {
            putBody("landingPageLoadedDuration", j10);
        }
        long j11 = aVar.RD;
        if (j11 > 0) {
            putBody("leaveTime", j11);
        }
        long j12 = aVar.aMG;
        if (j12 > 0) {
            putBody("adItemClickBackDuration", j12);
        }
        int i23 = aVar.aMs;
        if (i23 != -1) {
            putBody("retainCodeType", i23);
        }
        long j13 = aVar.aMk;
        if (j13 > -1) {
            putBody("highestLossPrice", j13);
        }
        int i24 = aVar.aMl;
        if (i24 >= 0 || i24 == -9999) {
            putBody("impFailReason", i24);
        }
        long j14 = aVar.aMm;
        if (j14 > -1 || j14 == -9999) {
            putBody("winEcpm", j14);
        }
        int i25 = aVar.adnType;
        if (i25 > 0 || i25 == -9999) {
            putBody("adnType", i25);
        }
        if (!TextUtils.isEmpty(aVar.adnName)) {
            putBody(MediationConstant.KEY_ADN_NAME, aVar.adnName);
        }
        if (!TextUtils.isEmpty(aVar.aMn)) {
            putBody("adnAdvertiser", aVar.aMn);
        }
        if (!TextUtils.isEmpty(aVar.aMo)) {
            putBody("adnTitle", aVar.aMo);
        }
        if (!TextUtils.isEmpty(aVar.aMp)) {
            putBody("adnRequestId", aVar.aMp);
        }
        putBody("adnShowType", aVar.aMq);
        putBody("adnClickType", aVar.aMr);
        putBody("adnMaterialType", aVar.adnMaterialType);
        if (!TextUtils.isEmpty(aVar.adnMaterialUrl)) {
            putBody("adnMaterialUrl", aVar.adnMaterialUrl);
        }
        putBody("downloadCardType", aVar.aMJ);
        putBody("landingPageType", aVar.ads);
        int i26 = aVar.QX;
        if (i26 >= 0) {
            putBody("adInterstitialSource", i26);
        }
        int i27 = aVar.aMN;
        if (i27 > 0) {
            putBody("downloadInstallType", i27);
        }
        int i28 = aVar.aMP;
        if (i28 != 0) {
            putBody("fingerSwipeType", i28);
        }
        int i29 = aVar.aMQ;
        if (i29 != 0) {
            putBody("fingerSwipeDistance", i29);
        }
        int i30 = aVar.aMO;
        if (i30 > 0) {
            putBody("businessSceneType", i30);
        }
        long j15 = aVar.zV;
        if (j15 > 0) {
            putBody("playedDuration", j15);
        }
        int i31 = aVar.aMK;
        if (i31 > 0) {
            putBody("playedRate", i31);
        }
        int i32 = aVar.aMH;
        if (i32 != -1) {
            putBody("appStorePageType", i32);
        }
        int i33 = aVar.Rb;
        if (i33 != -1) {
            putBody("triggerType", i33);
        }
        int i34 = aVar.Ra;
        if (i34 != 0) {
            putBody("photoSizeStyle", i34);
        }
    }

    @Override // com.kwad.sdk.core.network.b
    public final void buildBaseBody() {
    }

    @Override // com.kwad.sdk.core.network.b
    public final void buildBaseHeader() {
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final JSONObject getBody() {
        return this.mBodyParams;
    }

    @Override // com.kwad.sdk.core.network.b, com.kwad.sdk.core.network.f
    public final String getUrl() {
        String strReplaceFirst;
        Context context = ServiceProvider.getContext();
        AdInfo adInfoEO = e.eO(this.mAdTemplate);
        int i10 = this.aLd;
        if (i10 == 1) {
            String str = adInfoEO.adBaseInfo.showUrl;
            strReplaceFirst = ((this.mAdTemplate.mBidEcpm == 0 && ((h) ServiceProvider.get(h.class)).FO()) ? str.replaceFirst("__PR__", String.valueOf(com.kwad.sdk.core.response.helper.a.aX(e.eO(this.mAdTemplate)))) : str.replaceFirst("__PR__", String.valueOf(this.mAdTemplate.mBidEcpm))).replaceFirst("__TYPE__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerType)).replaceFirst("__BEHAVIOR__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerBehavior));
            a(strReplaceFirst, this.aLe);
            a(strReplaceFirst, this.mAdTemplate, this.aLe);
        } else if (i10 == 2) {
            strReplaceFirst = al.av(context, al.a(adInfoEO.adBaseInfo.clickUrl, this.aLe.no)).replaceFirst("__PR__", String.valueOf(this.mAdTemplate.mBidEcpm)).replaceFirst("__TYPE__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerType)).replaceFirst("__BEHAVIOR__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerBehavior));
            b(strReplaceFirst, this.aLe);
            a(strReplaceFirst, this.mAdTemplate, this.aLe);
        } else {
            strReplaceFirst = adInfoEO.adBaseInfo.convUrl.replaceFirst("__ACTION__", String.valueOf(i10)).replaceFirst("__PR__", String.valueOf(this.mAdTemplate.mBidEcpm)).replaceFirst("__TYPE__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerType)).replaceFirst("__BEHAVIOR__", String.valueOf(this.mAdTemplate.mVideoPlayerStatus.mVideoPlayerBehavior));
            c(strReplaceFirst, this.aLe);
        }
        IR();
        return strReplaceFirst;
    }

    private void a(String str, AdTemplate adTemplate, @Nullable com.kwad.sdk.core.adlog.c.a aVar) {
        if (TextUtils.isEmpty(str) || adTemplate == null) {
            return;
        }
        int i10 = adTemplate.mInitVoiceStatus;
        if (i10 != 0) {
            putBody("initVoiceStatus", i10);
        }
        if (this.mAdTemplate.mBidEcpm == 0) {
            putBody("ecpmType", 2);
        } else {
            putBody("ecpmType", 1);
        }
        if (aVar == null) {
            return;
        }
        int i11 = aVar.aMA;
        if (i11 != 0) {
            putBody("adAggPageSource", i11);
        }
        if (TextUtils.isEmpty(aVar.QY)) {
            return;
        }
        putBody("payload", aVar.QY);
    }
}
