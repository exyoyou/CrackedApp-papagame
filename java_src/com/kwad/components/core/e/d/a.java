package com.kwad.components.core.e.d;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.core.innerEc.logger.InnerEcError;
import com.kwad.components.core.innerEc.logger.InnerEcEvent;
import com.kwad.components.core.page.AdWebViewActivityProxy;
import com.kwad.components.core.page.AdWebViewVideoActivityProxy;
import com.kwad.components.core.webview.tachikoma.b.k;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.track.AdTrackLog;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.al;
import com.kwad.sdk.wrapper.m;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static List<WeakReference<k.b>> QH;
    public static InnerEcEvent QI;
    public static InnerEcError QJ;

    /* JADX INFO: renamed from: com.kwad.components.core.e.d.a$a, reason: collision with other inner class name */
    public static class C0852a {
        private boolean QK;
        private boolean QL;
        private boolean QM;
        private boolean QN;
        private boolean QO;
        private boolean QP;
        private boolean QQ;
        private b QR;
        private d QS;
        private boolean QT;
        private boolean QU;
        private long QV;
        private boolean QW;
        public String QY;
        public com.kwad.sdk.core.adlog.a.C0924a QZ;
        private JSONObject Rc;
        private boolean Re;
        private int Rf;
        private int Rg;
        private int Rh;
        private int Ri;
        private Callable<String> Rj;
        private String Rk;
        private boolean Rl;
        private boolean Rm;
        private AdTemplate adTemplate;
        private final Context context;
        private boolean needReport;
        private int nk;
        private int nm;
        public al.a no;
        public long zV;
        public int QX = -1;
        public int Ra = 0;
        public int Rb = -1;
        private boolean Rd = false;

        public C0852a(Context context) {
            this.context = context;
        }

        public final C0852a D(long j10) {
            this.QV = j10;
            return this;
        }

        public final C0852a E(long j10) {
            this.zV = j10;
            return this;
        }

        public final C0852a a(@Nullable Callable<String> callable) {
            this.Rj = callable;
            return this;
        }

        public final C0852a aA(boolean z10) {
            this.QM = true;
            return this;
        }

        public final void aB(boolean z10) {
            this.Rl = true;
        }

        public final void aC(boolean z10) {
            this.Rm = true;
        }

        public final C0852a aJ(AdTemplate adTemplate) {
            this.adTemplate = adTemplate;
            return this;
        }

        public final void aK(int i10) {
            this.Rg = i10;
        }

        public final C0852a aL(int i10) {
            this.Ri = i10;
            return this;
        }

        public final C0852a aM(int i10) {
            this.nm = i10;
            return this;
        }

        public final C0852a aN(int i10) {
            this.nk = i10;
            return this;
        }

        public final C0852a aO(int i10) {
            this.Ra = i10;
            return this;
        }

        public final C0852a aP(int i10) {
            this.Rb = i10;
            return this;
        }

        public final C0852a aQ(int i10) {
            this.Rf = i10;
            return this;
        }

        public final C0852a aR(int i10) {
            this.Rh = i10;
            return this;
        }

        public final void ao(boolean z10) {
            this.QU = true;
        }

        public final C0852a ap(String str) {
            this.Rk = str;
            return this;
        }

        public final C0852a aq(boolean z10) {
            this.QQ = true;
            return this;
        }

        public final C0852a ar(boolean z10) {
            this.QO = true;
            return this;
        }

        public final C0852a as(boolean z10) {
            this.QT = z10;
            return this;
        }

        public final C0852a at(boolean z10) {
            this.QW = z10;
            return this;
        }

        public final C0852a au(boolean z10) {
            this.needReport = z10;
            return this;
        }

        public final C0852a av(boolean z10) {
            this.Rd = z10;
            return this;
        }

        public final C0852a aw(boolean z10) {
            this.QL = z10;
            return this;
        }

        public final C0852a ax(boolean z10) {
            this.QN = true;
            return this;
        }

        public final C0852a ay(boolean z10) {
            this.QK = z10;
            return this;
        }

        public final C0852a az(boolean z10) {
            this.Re = z10;
            return this;
        }

        public final C0852a b(d dVar) {
            this.QS = dVar;
            return this;
        }

        public final C0852a d(al.a aVar) {
            this.no = aVar;
            return this;
        }

        public final int ed() {
            return this.nk;
        }

        public final int eg() {
            return this.nm;
        }

        public final AdTemplate getAdTemplate() {
            return this.adTemplate;
        }

        public final Context getContext() {
            return this.context;
        }

        public final JSONObject iK() {
            return this.Rc;
        }

        public final d iv() {
            return this.QS;
        }

        public final String pN() {
            return this.Rk;
        }

        public final Callable<String> pO() {
            return this.Rj;
        }

        public final boolean pP() {
            return this.QU;
        }

        public final int pQ() {
            return this.Rg;
        }

        public final b pR() {
            return this.QR;
        }

        public final boolean pS() {
            return this.QO;
        }

        public final int pT() {
            return this.Ri;
        }

        public final boolean pU() {
            return this.QP;
        }

        public final boolean pV() {
            return this.QQ;
        }

        public final boolean pW() {
            return this.QT;
        }

        public final long pX() {
            return this.QV;
        }

        public final boolean pY() {
            return this.QW;
        }

        public final boolean pZ() {
            return this.needReport;
        }

        public final com.kwad.sdk.core.adlog.c.a qa() {
            return com.kwad.sdk.core.adlog.c.a.Jf().dW(this.nm).eb(this.QY).e(this.no).dX(this.Ra).dY(this.Rb).aA(this.zV).a(this.QZ).dZ(this.QX);
        }

        public final boolean qb() {
            return this.Rd;
        }

        public final boolean qc() {
            return this.QL;
        }

        public final boolean qd() {
            return this.QN;
        }

        public final boolean qe() {
            return this.QK;
        }

        public final boolean qf() {
            return this.Re;
        }

        public final int qg() {
            return this.Rf;
        }

        public final int qh() {
            return this.Rh;
        }

        public final boolean qi() {
            return this.QM;
        }

        public final boolean qj() {
            return this.Rl;
        }

        public final boolean qk() {
            return this.Rm;
        }

        public final C0852a a(b bVar) {
            this.QR = bVar;
            return this;
        }

        public final C0852a ap(boolean z10) {
            this.QP = z10;
            return this;
        }

        public final C0852a aq(String str) {
            this.QY = str;
            return this;
        }

        public final C0852a d(JSONObject jSONObject) {
            this.Rc = jSONObject;
            return this;
        }

        public final C0852a a(String str, String str2, com.kwad.sdk.g.a<AdTrackLog> aVar) {
            if (this.QZ == null) {
                this.QZ = new com.kwad.sdk.core.adlog.a.C0924a();
            }
            this.QZ.a(this.adTemplate, null, null, null);
            return this;
        }
    }

    public interface b {
        void onAdClicked();
    }

    public static int a(@NonNull Context context, @NonNull AdTemplate adTemplate, @NonNull b bVar, @Nullable d dVar, boolean z10, boolean z11, boolean z12, boolean z13) {
        com.kwad.sdk.commercial.convert.a.h(adTemplate, true);
        adTemplate.converted = true;
        e.aD(false);
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.components.d.f(com.kwad.components.a.a.a.class);
        C0852a c0852aAv = new C0852a(context).aJ(adTemplate).a(bVar).b(dVar).as(z10).at(z11).ap(z13).av(false);
        int iAt = com.kwad.sdk.core.response.helper.a.at(adInfoEO);
        if (!(z12 || c0852aAv.qh() == 2 || c0852aAv.qh() == 1) && !TextUtils.isEmpty(com.kwad.sdk.core.response.helper.a.aY(adInfoEO)) && !c0852aAv.qd()) {
            if (iAt == 1) {
                return com.kwad.sdk.core.response.helper.a.bo(adInfoEO) ? k(c0852aAv) : l(c0852aAv);
            }
            if (iAt == 2) {
                int iH = h(c0852aAv);
                if (iH == 1) {
                    return 13;
                }
                if (iH == 2) {
                    return 16;
                }
                return com.kwad.sdk.core.response.helper.a.bo(adInfoEO) ? k(c0852aAv) : l(c0852aAv);
            }
        }
        int iH2 = h(c0852aAv);
        if (iH2 == 1) {
            return 13;
        }
        if (iH2 == 2) {
            return 16;
        }
        if (!com.kwad.sdk.core.response.helper.a.aL(adInfoEO)) {
            if (j(c0852aAv)) {
                return 11;
            }
            return l(c0852aAv);
        }
        int iM = m(c0852aAv);
        int i10 = adInfoEO.status;
        if (i10 != 2 && i10 != 3) {
            e(c0852aAv);
        }
        return iM;
    }

    private static void aI(AdTemplate adTemplate) {
        AdInfo adInfoEO;
        if (adTemplate == null || (adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate)) == null) {
            return;
        }
        adInfoEO.convertCount++;
    }

    private static int b(C0852a c0852a) {
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        Activity activityFromContext = m.getActivityFromContext(context);
        if (activityFromContext == null || !com.kwad.sdk.core.response.helper.a.Y(adInfoEO) || c0852a.pP() || c0852a.pU()) {
            AdWebViewActivityProxy.launch(context, new AdWebViewActivityProxy.a.C0871a().aZ(com.kwad.sdk.core.response.helper.b.dm(adTemplate)).aY(adTemplate).aR(true).ua());
            f(adTemplate, 20);
            return 20;
        }
        c0852a.aK(2);
        com.kwad.components.core.e.e.e.a(activityFromContext, c0852a);
        f(adTemplate, 19);
        return 19;
    }

    public static boolean c(C0852a c0852a) {
        if (com.kwad.sdk.core.response.helper.a.aL(com.kwad.sdk.core.response.helper.e.eO(c0852a.getAdTemplate()))) {
            return !c0852a.qf() && d.E(c0852a) == 3;
        }
        return d(c0852a) == 1;
    }

    private static int d(C0852a c0852a) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(c0852a.getAdTemplate());
        if (adInfoEO.unDownloadConf.unDownloadRegionConf == null) {
            return 0;
        }
        int iEd = c0852a.ed();
        if (iEd != 2) {
            return iEd != 3 ? adInfoEO.unDownloadConf.unDownloadRegionConf.actionBarType : adInfoEO.unDownloadConf.unDownloadRegionConf.materialJumpType;
        }
        return adInfoEO.unDownloadConf.unDownloadRegionConf.describeBarType;
    }

    private static void e(C0852a c0852a) {
        if (c0852a.pP() || c0852a.qj()) {
            return;
        }
        g(c0852a);
        f(c0852a);
        if (c0852a.pR() != null) {
            try {
                c0852a.pR().onAdClicked();
            } catch (Throwable th) {
                ServiceProvider.reportSdkCaughtException(th);
            }
        }
        com.kwad.sdk.commercial.convert.a.bK(c0852a.getAdTemplate());
        aI(c0852a.getAdTemplate());
    }

    private static void f(C0852a c0852a) {
        if (c0852a.pZ()) {
            com.kwad.sdk.core.adlog.c.a(c0852a.adTemplate, c0852a.qa(), c0852a.iK());
        }
    }

    private static void g(C0852a c0852a) {
        k.b bVar;
        List<WeakReference<k.b>> list = QH;
        if (list == null || list.isEmpty() || c0852a.adTemplate == null) {
            return;
        }
        for (WeakReference<k.b> weakReference : QH) {
            if (weakReference != null && (bVar = weakReference.get()) != null) {
                bVar.Y(com.kwad.sdk.core.response.helper.e.eY(c0852a.adTemplate));
            }
        }
    }

    private static int h(C0852a c0852a) {
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        int iA = e.a(c0852a, 1);
        if (iA == 1) {
            e.aD(true);
            e(c0852a);
            if ((com.kwad.sdk.core.response.helper.a.cX(adInfoEO) || com.kwad.sdk.core.response.helper.a.cY(adInfoEO)) && !c0852a.qi()) {
                com.kwad.sdk.core.adlog.c.q(c0852a.getAdTemplate(), (int) Math.ceil(c0852a.pX() / 1000.0f));
            }
            f(adTemplate, 13);
        } else if (iA == 2) {
            e(c0852a);
            f(adTemplate, 16);
        }
        return iA;
    }

    private static int i(C0852a c0852a) {
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(c0852a.getAdTemplate());
        Activity activityFromContext = m.getActivityFromContext(c0852a.getContext());
        if (activityFromContext == null || !com.kwad.sdk.core.response.helper.a.W(adInfoEO) || c0852a.pP() || !f.G(adInfoEO) || c0852a.pU()) {
            int iE = f.e(context, adTemplate);
            if (iE == 1) {
                e(c0852a);
                f(adTemplate, 12);
            }
            return iE;
        }
        c0852a.aK(1);
        com.kwad.components.core.e.e.e.a(activityFromContext, c0852a);
        e(c0852a);
        f(adTemplate, 17);
        return 2;
    }

    private static boolean j(C0852a c0852a) {
        AdTemplate adTemplate = c0852a.getAdTemplate();
        boolean zL = com.kwad.sdk.utils.f.l(c0852a.getContext(), adTemplate);
        if (zL) {
            e(c0852a);
            com.kwad.sdk.core.adlog.c.o(adTemplate, 0);
            f(adTemplate, 11);
        }
        return zL;
    }

    private static int k(C0852a c0852a) {
        e(c0852a);
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(c0852a.getAdTemplate());
        Activity activityFromContext = m.getActivityFromContext(c0852a.getContext());
        if (activityFromContext == null || !com.kwad.sdk.core.response.helper.a.Y(adInfoEO) || c0852a.pP() || c0852a.pU()) {
            AdWebViewVideoActivityProxy.launch(c0852a.getContext(), adTemplate);
            f(adTemplate, 15);
            return 15;
        }
        c0852a.aK(2);
        com.kwad.components.core.e.e.e.a(activityFromContext, c0852a);
        f(adTemplate, 19);
        return 19;
    }

    private static int l(C0852a c0852a) {
        e(c0852a);
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        Activity activityFromContext = m.getActivityFromContext(context);
        if (activityFromContext == null || !com.kwad.sdk.core.response.helper.a.Y(adInfoEO) || c0852a.pP() || c0852a.pU()) {
            AdWebViewActivityProxy.launch(context, new AdWebViewActivityProxy.a.C0871a().aZ(com.kwad.sdk.core.response.helper.b.dm(adTemplate)).aY(adTemplate).aS(c0852a.pS()).bv(com.kwad.components.core.innerEc.f.aK(adTemplate) ? 2 : 1).ua());
            f(adTemplate, 14);
            return 14;
        }
        c0852a.aK(2);
        com.kwad.components.core.e.e.e.a(activityFromContext, c0852a);
        f(adTemplate, 19);
        return 19;
    }

    private static int m(C0852a c0852a) {
        d dVarIv = c0852a.iv();
        if (dVarIv == null) {
            dVarIv = new d(c0852a.adTemplate);
            c0852a.b(dVarIv);
        }
        int iV = dVarIv.v(c0852a);
        f(c0852a.getAdTemplate(), iV);
        return iV;
    }

    private static int n(C0852a c0852a) {
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (j(c0852a)) {
            return 11;
        }
        return (!com.kwad.sdk.core.response.helper.a.b(adInfoEO, com.kwad.sdk.core.config.e.JJ()) || adTemplate.mAdWebVideoPageShowing) ? l(c0852a) : k(c0852a);
    }

    public static void f(AdTemplate adTemplate, int i10) {
        switch (i10) {
            case 0:
                com.kwad.sdk.commercial.convert.a.ca(adTemplate);
                break;
            case 1:
                com.kwad.sdk.commercial.convert.a.bP(adTemplate);
                break;
            case 2:
                com.kwad.sdk.commercial.convert.a.bZ(adTemplate);
                break;
            case 3:
                com.kwad.sdk.commercial.convert.a.bR(adTemplate);
                break;
            case 4:
                com.kwad.sdk.commercial.convert.a.bX(adTemplate);
                break;
            case 5:
                com.kwad.sdk.commercial.convert.a.bY(adTemplate);
                break;
            case 6:
                com.kwad.sdk.commercial.convert.a.bS(adTemplate);
                break;
            case 7:
                com.kwad.sdk.commercial.convert.a.bT(adTemplate);
                break;
            case 8:
                com.kwad.sdk.commercial.convert.a.bU(adTemplate);
                break;
            case 9:
                com.kwad.sdk.commercial.convert.a.bW(adTemplate);
                break;
            case 10:
                com.kwad.sdk.commercial.convert.a.bV(adTemplate);
                break;
            case 11:
                com.kwad.sdk.commercial.convert.a.bO(adTemplate);
                break;
            case 12:
                com.kwad.sdk.commercial.convert.a.bN(adTemplate);
                break;
            case 13:
                com.kwad.sdk.commercial.convert.a.bM(adTemplate);
                break;
            case 14:
                com.kwad.sdk.commercial.convert.a.bL(adTemplate);
                break;
            case 15:
                com.kwad.sdk.commercial.convert.a.bQ(adTemplate);
                break;
            case 16:
                com.kwad.sdk.commercial.convert.a.cc(adTemplate);
                break;
            case 17:
                com.kwad.sdk.commercial.convert.a.cf(adTemplate);
                break;
            case 18:
                com.kwad.sdk.commercial.convert.a.cb(adTemplate);
                break;
            case 19:
                com.kwad.sdk.commercial.convert.a.cd(adTemplate);
                break;
            case 20:
                com.kwad.sdk.commercial.convert.a.ce(adTemplate);
                break;
        }
    }

    public static void b(k.b bVar) {
        if (QH == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= QH.size()) {
                i10 = -1;
                break;
            }
            WeakReference<k.b> weakReference = QH.get(i10);
            if (weakReference != null && weakReference.get() != null && bVar == weakReference.get()) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 != -1) {
            QH.remove(i10);
        }
    }

    public static int a(C0852a c0852a) {
        Context context = c0852a.getContext();
        AdTemplate adTemplate = c0852a.getAdTemplate();
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        e.aD(false);
        if (c0852a.pV()) {
            return b(c0852a);
        }
        if (c0852a.qe()) {
            return a(context, adTemplate, c0852a.pR(), c0852a.iv(), c0852a.QT, c0852a.pY(), false, c0852a.pU());
        }
        com.kwad.sdk.commercial.convert.a.h(adTemplate, false);
        if (c(c0852a)) {
            f(adTemplate, 1);
            return 1;
        }
        adTemplate.converted = true;
        com.kwad.sdk.components.d.f(com.kwad.components.a.a.a.class);
        boolean zAK = com.kwad.components.core.innerEc.f.aK(adTemplate);
        if (com.kwad.sdk.core.response.helper.a.dG(adInfoEO)) {
            com.kwad.components.core.innerEc.logger.a.d(adTemplate, c0852a.qk());
        }
        if (zAK && !adTemplate.hasInnerEcFailed() && !c0852a.qk()) {
            QJ = InnerEcError.createEmptyError(adTemplate);
            QI = InnerEcEvent.createEmptyEvent(adTemplate);
            e(c0852a);
            c0852a.aB(true);
            int iA = com.kwad.components.core.innerEc.f.a(context, adTemplate, c0852a);
            if (iA == 1) {
                return 14;
            }
            if (iA == 2) {
                com.kwad.components.core.innerEc.qcpx.b.h(context, adTemplate);
                if (com.kwad.sdk.core.response.helper.e.fm(adTemplate)) {
                    com.kwad.components.core.innerEc.live.b.c(com.kwad.sdk.core.c.b.LW().getApplication());
                    com.kwad.components.core.innerEc.live.b.b(context, adTemplate, c0852a);
                    return 14;
                }
                com.kwad.components.core.innerEc.f.g(context, adTemplate);
                return 14;
            }
            if (iA == 3) {
                return com.kwad.components.core.innerEc.f.G(c0852a);
            }
        }
        int iAt = com.kwad.sdk.core.response.helper.a.at(adInfoEO);
        if (!(c0852a.qh() == 2 || c0852a.qh() == 1) && !TextUtils.isEmpty(com.kwad.sdk.core.response.helper.a.aY(adInfoEO)) && !c0852a.qd()) {
            if (iAt == 1) {
                if (com.kwad.sdk.core.response.helper.a.bo(adInfoEO)) {
                    return k(c0852a);
                }
                return l(c0852a);
            }
            if (iAt == 2) {
                int iH = h(c0852a);
                if (iH == 1) {
                    return 13;
                }
                if (iH == 2) {
                    return 16;
                }
                if (com.kwad.sdk.core.response.helper.a.bo(adInfoEO)) {
                    return k(c0852a);
                }
                return l(c0852a);
            }
        }
        int iH2 = h(c0852a);
        if (iH2 == 1) {
            return 13;
        }
        if (iH2 == 2) {
            return 16;
        }
        int i10 = i(c0852a);
        if (i10 == 1) {
            return 12;
        }
        if (i10 == 2) {
            return 17;
        }
        if (c0852a.qc() && !com.kwad.sdk.core.response.helper.a.aL(adInfoEO)) {
            return n(c0852a);
        }
        if (!com.kwad.sdk.core.response.helper.a.aL(adInfoEO)) {
            if (adTemplate.isWebViewDownload) {
                int iM = m(c0852a);
                adTemplate.isWebViewDownload = false;
                return iM;
            }
            if (j(c0852a)) {
                return 11;
            }
            return l(c0852a);
        }
        if (c0852a.qh() != 2 && c0852a.qh() != 1) {
            if (c0852a.qc() && com.kwad.sdk.core.response.helper.a.b(adInfoEO, com.kwad.sdk.core.config.e.JJ()) && !TextUtils.isEmpty(com.kwad.sdk.core.response.helper.a.aY(adInfoEO)) && !AdWebViewVideoActivityProxy.showingAdWebViewVideoActivity) {
                int iU = c0852a.iv().u(c0852a);
                if (iU == 0) {
                    return k(c0852a);
                }
                e(c0852a);
                f(adTemplate, iU);
                return iU;
            }
            e(c0852a);
            c0852a.av(true);
            return m(c0852a);
        }
        c0852a.av(false);
        e(c0852a);
        return m(c0852a);
    }

    public static void a(k.b bVar) {
        if (QH == null) {
            QH = new CopyOnWriteArrayList();
        }
        QH.add(new WeakReference<>(bVar));
    }
}
