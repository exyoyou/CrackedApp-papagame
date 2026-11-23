package com.kwad.components.ad.h.a.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.helper.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.utils.by;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.kwad.sdk.core.webview.c.a {
    public static int rf = 1;
    public static int rg = 2;
    private com.kwad.sdk.core.webview.c.c re;
    private int rh;
    private int ri;
    private InterfaceC0795b rk;
    private c rj = new c(this, 0);

    @Nullable
    private Runnable rl = null;

    @KsJson
    public static class a extends com.kwad.sdk.core.response.a.a {
        public int rn;
        public int ro;
    }

    /* JADX INFO: renamed from: com.kwad.components.ad.h.a.a.b$b, reason: collision with other inner class name */
    public interface InterfaceC0795b {
        void ab(int i10);
    }

    private b(int i10, int i11) {
        this.rh = i10;
        this.ri = i11;
    }

    @Nullable
    public static b M(AdTemplate adTemplate) {
        AdInfo adInfoEO = e.eO(adTemplate);
        if (!(!com.kwad.sdk.core.response.helper.a.bi(adInfoEO))) {
            return null;
        }
        if (com.kwad.sdk.core.response.helper.a.bQ(adInfoEO)) {
            return new b(rg, f(adInfoEO));
        }
        int i10 = adInfoEO.adInsertScreenInfo.autoCloseTime;
        if (i10 > 0) {
            return new b(rf, i10);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ag(int i10) {
        com.kwad.sdk.core.d.c.d("RegisterTimer", "updateTimer: " + i10 + ", mCallBackFunction: " + this.re);
        if (i10 >= 0 && this.re != null) {
            InterfaceC0795b interfaceC0795b = this.rk;
            if (interfaceC0795b != null && i10 == 0) {
                interfaceC0795b.ab(this.rh);
            }
            a aVar = new a();
            aVar.ro = i10;
            aVar.rn = this.rh;
            com.kwad.sdk.core.webview.c.c cVar = this.re;
            if (cVar != null) {
                cVar.b(aVar);
            }
        }
    }

    private static int f(AdInfo adInfo) {
        int iB = com.kwad.components.ad.interstitial.b.b.b(adInfo);
        if (iB <= 0) {
            iB = 60;
        }
        int i10 = adInfo.adInsertScreenInfo.autoCloseTime;
        return i10 > 0 ? Math.min(iB, i10) : iB;
    }

    public final void az() {
        com.kwad.sdk.core.d.c.d("RegisterTimer", "startTimer: mCallBackFunction: " + this.re);
        if (this.re == null) {
            this.rl = new Runnable() { // from class: com.kwad.components.ad.h.a.a.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.az();
                }
            };
        } else {
            this.rj.ah(this.ri);
            by.runOnUiThread(this.rj);
        }
    }

    public final void gb() {
        this.rj.z(true);
    }

    public final void gc() {
        this.rj.z(false);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerTimerListener";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.re = null;
    }

    public final void a(InterfaceC0795b interfaceC0795b) {
        this.rk = interfaceC0795b;
    }

    class c implements Runnable {
        private boolean rp;
        private int rq;

        private c() {
            this.rp = false;
            this.rq = -1;
        }

        public final void ah(int i10) {
            this.rq = i10;
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.kwad.sdk.core.d.c.d("RegisterTimer", "TimerRunnable run timerPaused:  " + this.rp + ", currentTime: " + this.rq);
            if (this.rp) {
                by.a(this, null, 1000L);
                return;
            }
            int i10 = this.rq;
            if (i10 < 0) {
                return;
            }
            b.this.ag(i10);
            this.rq--;
            by.a(this, null, 1000L);
        }

        public final void z(boolean z10) {
            this.rp = z10;
        }

        /* synthetic */ c(b bVar, byte b10) {
            this();
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        this.re = cVar;
        Runnable runnable = this.rl;
        if (runnable != null) {
            runnable.run();
            this.rl = null;
        }
    }
}
