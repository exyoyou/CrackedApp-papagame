package com.kwad.components.ad.nativead;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.bi;
import com.kwad.sdk.utils.by;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private static long hz;
    private com.kwad.sdk.core.g.d hu;
    private com.kwad.sdk.core.g.c hv;
    private CopyOnWriteArrayList<d> pf = new CopyOnWriteArrayList<>();
    private CopyOnWriteArrayList<C0809b> pg = new CopyOnWriteArrayList<>();
    private int ph;

    static final class a {
        private static final b pk = new b();
    }

    /* JADX INFO: renamed from: com.kwad.components.ad.nativead.b$b, reason: collision with other inner class name */
    public static class C0809b {
        private Context mContext;
        private c pl;

        public C0809b(c cVar, Context context) {
            this.pl = cVar;
            this.mContext = context;
        }
    }

    public interface c {
        boolean u(String str);
    }

    public static class d {
        private final e pm;
        private final WeakReference<View> pn;

        public d(e eVar, View view) {
            this.pn = new WeakReference<>(view);
            this.pm = eVar;
        }
    }

    public interface e {
        boolean b(double d10);
    }

    public static synchronized boolean ce() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (!(jElapsedRealtime - hz > 500)) {
            return false;
        }
        hz = jElapsedRealtime;
        return true;
    }

    public static b ft() {
        return a.pk;
    }

    public final void D(Context context) {
        try {
            com.kwad.sdk.core.g.c cVar = this.hv;
            if (cVar != null) {
                cVar.cc(context);
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final void N(Context context) {
        try {
            com.kwad.sdk.core.g.c cVar = this.hv;
            if (cVar != null) {
                cVar.cb(context);
            }
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final void a(boolean z10, float f10, View view, e eVar, boolean z11) {
        if (view == null || view.getContext() == null) {
            return;
        }
        if (this.hu == null) {
            this.ph = com.kwad.sdk.c.a.a.bA(view.getContext());
            a(z10, f10, view.getContext(), z11);
        }
        this.pf.add(new d(eVar, view));
    }

    public final void a(e eVar) {
        for (d dVar : this.pf) {
            if (dVar.pm == eVar) {
                this.pf.remove(dVar);
            }
        }
        com.kwad.sdk.core.d.c.d("KSNativeAdRotateAndShakeManager", "sShakeItems size " + this.pf.size());
    }

    private void a(boolean z10, float f10, Context context, boolean z11) {
        this.hu = new com.kwad.sdk.core.g.d(z10, f10);
        this.pf = new CopyOnWriteArrayList<>();
        this.hu.bG(z11);
        this.hu.a(new com.kwad.sdk.core.g.b() { // from class: com.kwad.components.ad.nativead.b.1
            @Override // com.kwad.sdk.core.g.b
            public final void a(double d10) {
                d dVar;
                if (b.this.pf != null) {
                    Iterator it2 = b.this.pf.iterator();
                    while (it2.hasNext() && ((dVar = (d) it2.next()) == null || dVar.pm == null || !dVar.pm.b(d10))) {
                    }
                    by.a(new bi() { // from class: com.kwad.components.ad.nativead.b.1.1
                        @Override // com.kwad.sdk.utils.bi
                        public final void doTask() {
                            com.kwad.sdk.core.d.c.d("KSNativeAdRotateAndShakeManager", "onShakeEvent openGate2");
                            if (b.this.hu != null) {
                                b.this.hu.NJ();
                            }
                        }
                    }, null, 500L);
                }
            }

            @Override // com.kwad.sdk.core.g.b
            public final void cj() {
            }
        });
        this.hu.m(f10);
        this.hu.cb(context);
    }

    public final void a(AdMatrixInfo.RotateInfo rotateInfo, Context context, c cVar) {
        com.kwad.sdk.core.g.c cVar2 = this.hv;
        if (cVar2 == null) {
            a(rotateInfo, context);
        } else {
            cVar2.a(rotateInfo);
        }
        this.pg.add(new C0809b(cVar, context));
    }

    public final void a(c cVar) {
        for (C0809b c0809b : this.pg) {
            if (c0809b != null && c0809b.pl == cVar) {
                this.pg.remove(c0809b);
            }
        }
        com.kwad.sdk.core.d.c.d("KSNativeAdRotateAndShakeManager", "sRotateItems size " + this.pg.size());
    }

    private void a(AdMatrixInfo.RotateInfo rotateInfo, Context context) {
        com.kwad.sdk.core.g.c cVar = new com.kwad.sdk.core.g.c(rotateInfo);
        this.hv = cVar;
        cVar.a(new com.kwad.sdk.core.g.a() { // from class: com.kwad.components.ad.nativead.b.2
            @Override // com.kwad.sdk.core.g.a
            public final void ck() {
            }

            @Override // com.kwad.sdk.core.g.a
            public final void t(String str) {
                if (b.this.pg != null) {
                    for (C0809b c0809b : b.this.pg) {
                        if (c0809b != null && c0809b.pl != null && c0809b.pl.u(str)) {
                            return;
                        }
                    }
                }
            }
        });
        this.hv.cb(context);
    }
}
