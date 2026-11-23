package com.kwad.sdk.core.adlog;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.haima.hmcp.proto.GSSDK;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.api.model.AdExposureFailedReason;
import com.kwad.sdk.core.report.h;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.f;
import com.kwad.sdk.utils.al;
import com.kwad.sdk.utils.as;
import com.kwad.sdk.utils.au;
import com.kwad.sdk.utils.bi;
import com.sigmob.sdk.base.mta.PointType;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static ExecutorService aLI = GlobalThreadPools.Oc();
    public static JSONObject aLJ;
    public static boolean aLK;

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public int code;
        public String msg;

        public a(int i10, String str) {
            this.code = i10;
            this.msg = str;
        }
    }

    private static boolean I(AdInfo adInfo) {
        f fVar = (f) ServiceProvider.get(f.class);
        if (fVar == null) {
            return false;
        }
        String strAE = com.kwad.sdk.core.response.helper.a.aE(adInfo);
        if (TextUtils.isEmpty(strAE)) {
            return false;
        }
        return au.aw(fVar.getContext(), strAE);
    }

    private static int IT() {
        return as.isOrientationPortrait() ? 2 : 1;
    }

    public static void a(AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.a aVar, @Nullable JSONObject jSONObject) {
        if (aVar != null) {
            try {
                if (adTemplate.fromCache) {
                    aVar.a(h.cI(adTemplate));
                }
                aVar.e(adTemplate, null, null);
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
                return;
            }
        }
        a(adTemplate, 2, aVar, jSONObject);
    }

    public static void c(final AdTemplate adTemplate, final JSONObject jSONObject) {
        aLI.submit(new bi() { // from class: com.kwad.sdk.core.adlog.c.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
                c0924a.aLm = adTemplate.downLoadType;
                com.kwad.sdk.core.adlog.c.b bVarEf = new com.kwad.sdk.core.adlog.c.b().b(c0924a).ef(adTemplate.downloadSource);
                c.a(adTemplate, bVarEf);
                c.a(adTemplate, 31, bVarEf.Jh(), jSONObject);
                AdInfo adInfoEO = e.eO(adTemplate);
                au.aA(adInfoEO.downloadFilePath, adInfoEO.downloadId);
            }
        });
    }

    public static void cA(AdTemplate adTemplate) {
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLx = com.kwad.sdk.core.response.helper.a.dG(e.eO(adTemplate)) ? 1 : 0;
        c0924a.aLE = 1;
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        bVar.b(c0924a);
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_VERSION, bVar.Jh(), (JSONObject) null);
    }

    public static void cB(@Nullable AdTemplate adTemplate) {
        a(adTemplate, GSSDK.OneInputOPData.InputOP.OP_XINPUT_A_BUTTON_VALUE, (com.kwad.sdk.core.adlog.c.a) null, (JSONObject) null);
    }

    private static boolean cC(AdTemplate adTemplate) {
        if (e.eG(adTemplate)) {
            return true;
        }
        f fVar = (f) ServiceProvider.get(f.class);
        return fVar != null && fVar.bn(adTemplate);
    }

    public static void cn(AdTemplate adTemplate) {
        w(adTemplate, 4);
    }

    public static void co(AdTemplate adTemplate) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.downloadSource = adTemplate.downloadSource;
        adTemplate.downLoadType = 3;
        aVar.a(new com.kwad.sdk.core.adlog.a.C0924a());
        aVar.QZ.aLm = adTemplate.downLoadType;
        a(adTemplate, 30, aVar, (JSONObject) null);
    }

    public static void cp(AdTemplate adTemplate) {
        w(adTemplate, 36);
    }

    public static void cq(AdTemplate adTemplate) {
        w(adTemplate, 38);
    }

    public static void cr(AdTemplate adTemplate) {
        w(adTemplate, 41);
    }

    public static void cs(AdTemplate adTemplate) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMB = com.kwad.sdk.core.response.helper.a.aE(e.eO(adTemplate));
        a(adTemplate, 768, aVar, new JSONObject());
    }

    public static void ct(@Nullable AdTemplate adTemplate) {
        f(adTemplate, null);
    }

    public static void cu(@Nullable AdTemplate adTemplate) {
        g(adTemplate, null);
    }

    public static void cv(@Nullable AdTemplate adTemplate) {
        w(adTemplate, 58);
    }

    public static void cw(AdTemplate adTemplate) {
        w(adTemplate, 914);
    }

    public static void cx(AdTemplate adTemplate) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.downloadStatus = com.kwad.sdk.core.response.helper.a.bG(e.eO(adTemplate));
        com.kwad.sdk.core.d.c.d("AdReportManager", "reportDownloadCardClose downloadStatus=" + aVar.downloadStatus);
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT, aVar, (JSONObject) null);
    }

    public static void cy(AdTemplate adTemplate) {
        w(adTemplate, 722);
    }

    public static void cz(AdTemplate adTemplate) {
        w(adTemplate, 721);
    }

    public static void d(AdTemplate adTemplate, JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.downloadSource = adTemplate.downloadSource;
        aVar.a(new com.kwad.sdk.core.adlog.a.C0924a());
        aVar.QZ.aLm = adTemplate.downLoadType;
        a(adTemplate, 35, aVar, jSONObject);
    }

    public static void e(final AdTemplate adTemplate, final JSONObject jSONObject) {
        aLI.submit(new bi() { // from class: com.kwad.sdk.core.adlog.c.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = e.eO(adTemplate);
                int iAB = au.aB(adInfoEO.downloadId, com.kwad.sdk.core.response.helper.a.aE(adInfoEO));
                com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
                AdTemplate adTemplate2 = adTemplate;
                aVar.downloadSource = adTemplate2.downloadSource;
                aVar.aMw = iAB;
                aVar.aMx = adTemplate2.installFrom;
                aVar.a(new com.kwad.sdk.core.adlog.a.C0924a());
                com.kwad.sdk.core.adlog.a.C0924a c0924a = aVar.QZ;
                AdTemplate adTemplate3 = adTemplate;
                c0924a.aLm = adTemplate3.downLoadType;
                c.a(adTemplate3, 32, aVar, jSONObject);
            }
        });
    }

    public static void f(@Nullable AdTemplate adTemplate, @Nullable JSONObject jSONObject) {
        d(adTemplate, 399, jSONObject);
    }

    public static void g(@Nullable AdTemplate adTemplate, @Nullable JSONObject jSONObject) {
        d(adTemplate, 400, jSONObject);
    }

    public static void h(AdTemplate adTemplate, JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMh = 1;
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        aVar.QZ = c0924a;
        c0924a.templateId = PointType.ANTI_SPAM;
        a(adTemplate, 3, aVar, (JSONObject) null);
    }

    public static void i(@Nullable AdTemplate adTemplate, boolean z10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        if (z10) {
            c0924a.aLq = 1;
        } else {
            c0924a.aLq = 2;
        }
        aVar.a(c0924a);
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, aVar, (JSONObject) null);
    }

    public static void j(@Nullable AdTemplate adTemplate, boolean z10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        if (z10) {
            c0924a.aLq = 1;
        } else {
            c0924a.aLq = 2;
        }
        aVar.a(c0924a);
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, aVar, (JSONObject) null);
    }

    public static void k(AdTemplate adTemplate, @Nullable JSONObject jSONObject) {
        d(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, jSONObject);
    }

    public static void l(AdTemplate adTemplate, int i10) {
        adTemplate.mInstallApkFromSDK = true;
        adTemplate.mInstallApkFormUser = i10 == 1;
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMN = i10;
        aVar.a(new com.kwad.sdk.core.adlog.a.C0924a());
        aVar.QZ.aLm = adTemplate.downLoadType;
        a(adTemplate, 37, aVar, (JSONObject) null);
    }

    public static void m(AdTemplate adTemplate, int i10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.Ra = i10;
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_READ_BLOCK_MODE, aVar, (JSONObject) null);
    }

    public static void n(@Nullable AdTemplate adTemplate, int i10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMv = i10;
        d(adTemplate, "wxsmallapp", 1, aVar);
    }

    public static void o(@Nullable AdTemplate adTemplate, int i10) {
        n(adTemplate, i10, 0);
    }

    public static void p(AdTemplate adTemplate, int i10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMg = i10;
        a(adTemplate, 759, aVar, (JSONObject) null);
    }

    public static void q(AdTemplate adTemplate, int i10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMf = i10;
        a(adTemplate, 28, aVar, (JSONObject) null);
    }

    public static void r(AdTemplate adTemplate, int i10) {
        if (adTemplate == null) {
            return;
        }
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMB = com.kwad.sdk.core.response.helper.a.aE(e.eO(adTemplate));
        a(adTemplate, i10, aVar, new JSONObject());
    }

    public static void s(AdTemplate adTemplate, int i10) {
        a(adTemplate, i10, new com.kwad.sdk.core.adlog.c.a(), new JSONObject());
    }

    @Deprecated
    public static void t(AdTemplate adTemplate, int i10) {
        e(adTemplate, null, new com.kwad.sdk.core.adlog.c.b().ee(i10));
    }

    public static void u(AdTemplate adTemplate, int i10) {
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLx = com.kwad.sdk.core.response.helper.a.dG(e.eO(adTemplate)) ? 1 : 0;
        c0924a.aLE = i10;
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        bVar.b(c0924a);
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_VERSION, bVar.Jh(), (JSONObject) null);
    }

    public static void v(@Nullable AdTemplate adTemplate, int i10) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLC = i10;
        bVar.b(c0924a);
        a(adTemplate, 1032, bVar.Jh(), (JSONObject) null);
    }

    private static void w(AdTemplate adTemplate, int i10) {
        a(adTemplate, i10, (com.kwad.sdk.core.adlog.c.a) null, new JSONObject());
    }

    public static boolean b(@NonNull AdTemplate adTemplate, @Nullable JSONObject jSONObject, @Nullable com.kwad.sdk.core.adlog.c.b bVar) {
        if (adTemplate.mPvReported) {
            return false;
        }
        adTemplate.mPvReported = true;
        AdInfo adInfoEO = e.eO(adTemplate);
        if (bVar == null) {
            bVar = new com.kwad.sdk.core.adlog.c.b();
        }
        bVar.eq(IT());
        com.kwad.sdk.core.adlog.c.a aVarJh = bVar.Jh();
        if (adTemplate.fromCache) {
            aVarJh.a(h.cI(adTemplate));
        }
        aVarJh.aMI = I(adInfoEO) ? 1 : 0;
        return a(adTemplate, 1, aVarJh, jSONObject);
    }

    public static void c(@Nullable AdTemplate adTemplate, String str, int i10, com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null) {
            aVar = new com.kwad.sdk.core.adlog.c.a();
        }
        aVar.aMt = i10;
        if (!str.equals("")) {
            aVar.aMu = str;
        }
        a(adTemplate, 320, aVar, (JSONObject) null);
    }

    public static void e(AdTemplate adTemplate, JSONObject jSONObject, @Nullable com.kwad.sdk.core.adlog.c.b bVar) {
        if (bVar == null) {
            bVar = new com.kwad.sdk.core.adlog.c.b();
        }
        com.kwad.sdk.core.adlog.c.a aVarJh = bVar.Jh();
        aVarJh.e(adTemplate, null, null);
        a(adTemplate, 141, aVarJh, jSONObject);
    }

    public static void k(AdTemplate adTemplate, boolean z10) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLn = 1;
        bVar.b(c0924a);
        if (z10) {
            bVar.el(33);
        }
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_RECONNECT_INTERVAL, bVar.Jh(), (JSONObject) null);
    }

    public static void o(AdTemplate adTemplate, int i10, int i11) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMi = 69;
        aVar.aMD = i10;
        aVar.aME = i11;
        a(adTemplate, 501, aVar, (JSONObject) null);
    }

    public static void m(AdTemplate adTemplate, long j10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMk = j10;
        a(adTemplate, 600, aVar, (JSONObject) null);
    }

    public static void n(@Nullable AdTemplate adTemplate, int i10, int i11) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMH = i10;
        aVar.Rb = i11;
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL, aVar, (JSONObject) null);
    }

    public static void p(@Nullable AdTemplate adTemplate, int i10, int i11) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLC = i10;
        c0924a.aLD = i11;
        bVar.b(c0924a);
        a(adTemplate, 1030, bVar.Jh(), (JSONObject) null);
    }

    public static void q(@Nullable AdTemplate adTemplate, int i10, int i11) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLC = i10;
        c0924a.aLD = i11;
        bVar.b(c0924a);
        a(adTemplate, 1033, bVar.Jh(), (JSONObject) null);
    }

    @Deprecated
    public static void a(AdTemplate adTemplate, int i10, @Nullable al.a aVar) {
        com.kwad.sdk.core.adlog.c.a aVar2 = new com.kwad.sdk.core.adlog.c.a();
        aVar2.nm = i10;
        int i11 = adTemplate.swipeAngle;
        if (i11 != 0) {
            aVar2.aMR = i11;
        }
        if (aVar != null) {
            aVar2.no = aVar;
        }
        a(adTemplate, aVar2, (JSONObject) null);
    }

    public static void d(@Nullable AdTemplate adTemplate, String str, int i10, com.kwad.sdk.core.adlog.c.a aVar) {
        aVar.aMt = i10;
        if (!str.equals("")) {
            aVar.aMu = str;
        }
        a(adTemplate, 321, aVar, (JSONObject) null);
    }

    public static void c(AdTemplate adTemplate, @Nullable JSONObject jSONObject, com.kwad.sdk.core.adlog.c.b bVar) {
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, bVar != null ? bVar.Jh() : null, (JSONObject) null);
    }

    public static void i(AdTemplate adTemplate, @Nullable JSONObject jSONObject) {
        d(adTemplate, 501, jSONObject);
    }

    public static void j(AdTemplate adTemplate, @Nullable JSONObject jSONObject) {
        d(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME, jSONObject);
    }

    public static void m(@Nullable AdTemplate adTemplate, boolean z10) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLr = z10;
        bVar.b(c0924a);
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_PRE_STALL_500, bVar.Jh(), (JSONObject) null);
    }

    public static void l(@Nullable AdTemplate adTemplate, long j10) {
        a(adTemplate, 52, com.kwad.sdk.core.adlog.c.a.Jf().aB(j10), (JSONObject) null);
    }

    public static void n(AdTemplate adTemplate, long j10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMG = j10;
        a(adTemplate, 401, aVar, (JSONObject) null);
    }

    public static void c(AdTemplate adTemplate, int i10, @Nullable JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMB = com.kwad.sdk.core.response.helper.a.aE(e.eO(adTemplate));
        aVar.aMi = 93;
        a(adTemplate, 140, aVar, (JSONObject) null);
    }

    public static void d(@Nullable AdTemplate adTemplate, String str, int i10, int i11) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMt = i10;
        if (aVar.QZ == null) {
            aVar.QZ = new com.kwad.sdk.core.adlog.a.C0924a();
        }
        aVar.QZ.aLG = i11;
        if (!str.equals("")) {
            aVar.aMu = str;
        }
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MAX_RECONNECT_COUNT, aVar, (JSONObject) null);
    }

    public static void l(AdTemplate adTemplate, boolean z10) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLn = 2;
        bVar.b(c0924a);
        if (z10) {
            bVar.el(33);
        }
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_RECONNECT_INTERVAL, bVar.Jh(), (JSONObject) null);
    }

    public static void a(AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.b bVar, JSONObject jSONObject) {
        a(adTemplate, bVar != null ? bVar.Jh() : null, jSONObject);
    }

    public static void b(AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.b bVar, @Nullable JSONObject jSONObject) {
        a(adTemplate, 3, bVar != null ? bVar.Jh() : null, jSONObject);
    }

    public static void a(AdTemplate adTemplate, long j10, @Nullable JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        if (j10 != -1) {
            c0924a.duration = j10;
            aVar.QZ = c0924a;
        }
        a(adTemplate, 934, aVar, (JSONObject) null);
    }

    public static void b(AdTemplate adTemplate, @Nullable JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.downloadSource = adTemplate.downloadSource;
        aVar.a(new com.kwad.sdk.core.adlog.a.C0924a());
        aVar.QZ.aLm = adTemplate.downLoadType;
        a(adTemplate, 34, aVar, jSONObject);
    }

    public static void d(AdTemplate adTemplate, @Nullable JSONObject jSONObject, com.kwad.sdk.core.adlog.c.b bVar) {
        if (bVar == null) {
            bVar = new com.kwad.sdk.core.adlog.c.b();
        }
        com.kwad.sdk.core.adlog.c.a aVarJh = bVar.Jh();
        aVarJh.e(adTemplate, null, null);
        a(adTemplate, 140, aVarJh, jSONObject);
    }

    @Deprecated
    public static void a(AdTemplate adTemplate, int i10, long j10, @Nullable JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMh = i10;
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.duration = j10;
        aVar.QZ = c0924a;
        a(adTemplate, 3, aVar, jSONObject);
    }

    public static void b(@Nullable AdTemplate adTemplate, String str, int i10, com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null) {
            aVar = new com.kwad.sdk.core.adlog.c.a();
        }
        aVar.aMt = i10;
        if (!str.equals("")) {
            aVar.aMu = str;
        }
        a(adTemplate, 1039, aVar, (JSONObject) null);
    }

    private static void d(AdTemplate adTemplate, int i10, JSONObject jSONObject) {
        a(adTemplate, i10, (com.kwad.sdk.core.adlog.c.a) null, jSONObject);
    }

    public static void a(AdTemplate adTemplate, int i10, long j10, int i11, long j11, @Nullable JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.zV = j10;
        aVar.aMK = i11;
        aVar.aMh = i10;
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.duration = j11;
        aVar.QZ = c0924a;
        a(adTemplate, 3, aVar, (JSONObject) null);
    }

    public static void b(@Nullable AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.a aVar, long j10) {
        aVar.aMF = j10;
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_VIDEO_DIFF_THRESHOLD, aVar, (JSONObject) null);
    }

    public static void b(@Nullable AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.a aVar) {
        a(adTemplate, 59, aVar, (JSONObject) null);
    }

    @Deprecated
    public static void b(AdTemplate adTemplate, int i10, @Nullable JSONObject jSONObject) {
        d(adTemplate, jSONObject, new com.kwad.sdk.core.adlog.c.b().ee(i10));
    }

    public static void a(AdTemplate adTemplate, @Nullable JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.downloadSource = adTemplate.downloadSource;
        aVar.a(new com.kwad.sdk.core.adlog.a.C0924a());
        aVar.QZ.aLm = adTemplate.downLoadType;
        a(adTemplate, 33, aVar, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.b bVar) {
        AdInfo adInfoEO = e.eO(adTemplate);
        String str = adInfoEO.downloadFilePath;
        if (str == null) {
            return;
        }
        String strAE = com.kwad.sdk.core.response.helper.a.aE(adInfoEO);
        String strHW = au.hW(str);
        if (strHW == null || TextUtils.isEmpty(strHW) || strHW.equals(strAE)) {
            return;
        }
        bVar.ee(strHW);
        bVar.ed(strAE);
        adInfoEO.adBaseInfo.appPackageName = strHW;
    }

    public static void a(AdTemplate adTemplate, a aVar) {
        com.kwad.sdk.core.adlog.c.a aVar2 = new com.kwad.sdk.core.adlog.c.a();
        aVar2.aMy = aVar.toJson().toString();
        aVar2.a(new com.kwad.sdk.core.adlog.a.C0924a());
        aVar2.QZ.aLm = adTemplate.downLoadType;
        a(adTemplate, 40, aVar2, (JSONObject) null);
    }

    public static void a(@Nullable AdTemplate adTemplate, String str, int i10, com.kwad.sdk.core.adlog.c.a aVar) {
        if (aVar == null) {
            aVar = new com.kwad.sdk.core.adlog.c.a();
        }
        aVar.aMt = i10;
        if (!str.equals("")) {
            aVar.aMu = str;
        }
        a(adTemplate, 1038, aVar, (JSONObject) null);
    }

    public static void a(@Nullable AdTemplate adTemplate, String str, int i10) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMt = 1;
        if (!str.equals("")) {
            aVar.aMu = str;
        }
        a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_MAX_RECONNECT_COUNT, aVar, (JSONObject) null);
    }

    public static void a(@Nullable AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.a aVar) {
        a(adTemplate, 50, aVar, (JSONObject) null);
    }

    public static void a(@Nullable AdTemplate adTemplate, com.kwad.sdk.core.adlog.c.a aVar, long j10) {
        aVar.aMF = j10;
        a(adTemplate, 51, aVar, (JSONObject) null);
    }

    public static void a(AdTemplate adTemplate, int i10, @Nullable JSONObject jSONObject) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.aMf = i10;
        a(adTemplate, 402, aVar, jSONObject);
    }

    public static void a(AdTemplate adTemplate, int i10, AdExposureFailedReason adExposureFailedReason) {
        if (i10 == 0 || i10 == 1 || i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5 || i10 == -9999 || i10 == 6) {
            com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
            aVar.aMl = i10;
            if (adExposureFailedReason != null) {
                aVar.aMm = adExposureFailedReason.winEcpm;
                try {
                    int i11 = adExposureFailedReason.adnType;
                    aVar.adnType = i11;
                    if (i11 == 2) {
                        aVar.adnName = adExposureFailedReason.adnName;
                    }
                    if (!TextUtils.isEmpty(adExposureFailedReason.adUserName)) {
                        aVar.aMn = adExposureFailedReason.adUserName;
                    }
                    if (!TextUtils.isEmpty(adExposureFailedReason.adTitle)) {
                        aVar.aMo = adExposureFailedReason.adTitle;
                    }
                    if (!TextUtils.isEmpty(adExposureFailedReason.adRequestId)) {
                        aVar.aMp = adExposureFailedReason.adRequestId;
                    }
                    aVar.aMq = adExposureFailedReason.isShow;
                    aVar.aMr = adExposureFailedReason.isClick;
                    aVar.adnMaterialType = adExposureFailedReason.adnMaterialType;
                    aVar.adnMaterialUrl = adExposureFailedReason.adnMaterialUrl;
                } catch (Throwable unused) {
                }
            }
            a(adTemplate, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_START_TIME, aVar, (JSONObject) null);
        }
    }

    public static void a(AdTemplate adTemplate, int i10, JSONObject jSONObject, String str) {
        com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
        aVar.QY = str;
        a(adTemplate, i10, aVar, jSONObject);
    }

    public static void a(@Nullable AdTemplate adTemplate, boolean z10, int i10) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLr = z10;
        bVar.b(c0924a);
        bVar.er(i10);
        a(adTemplate, 935, bVar.Jh(), (JSONObject) null);
    }

    public static void a(AdTemplate adTemplate, String str, String str2, int i10) {
        com.kwad.sdk.core.adlog.c.b bVar = new com.kwad.sdk.core.adlog.c.b();
        com.kwad.sdk.core.adlog.a.C0924a c0924a = new com.kwad.sdk.core.adlog.a.C0924a();
        c0924a.aLx = com.kwad.sdk.core.response.helper.a.dG(e.eO(adTemplate)) ? 1 : 0;
        c0924a.aLz = str;
        c0924a.aLA = str2;
        c0924a.aLB = i10;
        bVar.b(c0924a);
        a(adTemplate, 1024, bVar.Jh(), (JSONObject) null);
    }

    public static boolean a(@Nullable AdTemplate adTemplate, int i10, @Nullable com.kwad.sdk.core.adlog.c.a aVar, @Nullable JSONObject jSONObject) {
        if (adTemplate == null || !cC(adTemplate)) {
            return false;
        }
        if (aVar == null) {
            aVar = new com.kwad.sdk.core.adlog.c.a();
        }
        aVar.aMJ = com.kwad.sdk.core.response.helper.a.aZ(e.eO(adTemplate));
        aVar.adxResult = adTemplate.adxResult;
        if (i10 == 2 && aLK) {
            if (aVar.QZ == null) {
                aVar.QZ = new com.kwad.sdk.core.adlog.a.C0924a();
            }
            aVar.QZ.aLt = aLJ;
        }
        if (i10 == 1 && e.eI(adTemplate) == 4 && com.kwad.sdk.core.response.helper.a.dC(e.eO(adTemplate))) {
            if (aVar.QZ == null) {
                aVar.QZ = new com.kwad.sdk.core.adlog.a.C0924a();
            }
            aVar.QZ.aLs = com.kwad.sdk.core.response.helper.a.dD(e.eO(adTemplate));
        }
        if (i10 == 1 || i10 == 2) {
            if (aVar.QZ == null) {
                aVar.QZ = new com.kwad.sdk.core.adlog.a.C0924a();
            }
            aVar.QZ.aLx = com.kwad.sdk.core.response.helper.a.dG(e.eO(adTemplate)) ? 1 : 0;
            if (AdTemplate.isInnerEcCancelDowngrade) {
                aVar.QZ.aLy = 1;
            }
        }
        aVar.cF(adTemplate);
        aVar.adTemplate = adTemplate;
        aVar.aKI = i10;
        aVar.aMe = jSONObject;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(i10);
        com.kwad.sdk.core.d.c.d("AdReportManager", sb2.toString());
        b.a(aVar);
        return true;
    }
}
