package com.aggmoread.sdk.z.c.a.a.d.a.d.v.k;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.z.c.a.a.d.a.d.g;
import com.aggmoread.sdk.z.c.a.a.d.a.d.k;
import com.aggmoread.sdk.z.c.a.a.d.a.d.o;
import com.aggmoread.sdk.z.c.a.a.d.a.d.p;
import com.aggmoread.sdk.z.c.a.a.d.a.d.v.d;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.d.b.n;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.q;
import com.qq.e.ads.splash.SplashAD;
import com.qq.e.ads.splash.SplashADListener;
import com.qq.e.comm.util.AdError;
import com.windmill.sdk.WMConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends k implements SplashADListener {
    private String C;
    private SplashAD D;
    private AtomicBoolean E;
    public boolean F;
    private int G;
    private boolean H;
    private long I;
    private AtomicBoolean J;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.k.a$a, reason: collision with other inner class name */
    class C0172a implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f4838a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.k.a$a$a, reason: collision with other inner class name */
        class C0173a implements Handler.Callback {
            C0173a() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(@NonNull Message message) {
                e.b(a.this.C, "start load ,delay " + (System.currentTimeMillis() - a.this.I));
                C0172a c0172a = C0172a.this;
                a.this.b(c0172a.f4838a);
                return false;
            }
        }

        C0172a(View view) {
            this.f4838a = view;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.o
        public void a(Exception exc) {
            a aVar = a.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("初始化失败：");
            sb2.append(exc != null ? exc.getMessage() : "null_未知原因!");
            aVar.b(new j(-1000, sb2.toString()));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.o
        public void onSuccess() {
            a aVar = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(aVar.f4911i, ((com.aggmoread.sdk.z.c.a.a.d.b.a) aVar).f4914l, new C0173a());
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f4841b;

        b(ArrayList arrayList) {
            this.f4841b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f(this.f4841b);
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.C = "AMSTAGGDT";
        this.E = new AtomicBoolean();
        this.F = false;
        this.G = -1;
        this.H = false;
        this.J = new AtomicBoolean();
    }

    private void u() {
        if (this.J.compareAndSet(false, true)) {
            e.b(this.C, "replaceLogo false");
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.c().a(this.f4910h);
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADClicked() {
        q();
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADDismissed() {
        r();
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADExposure() {
        s();
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADLoaded(long j10) {
        e.b(this.C, "onADLoaded");
        if (o()) {
            int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.D);
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4911i, iA)) {
                a(iA, 0);
                return;
            }
            b(iA);
        }
        i();
        if (this.H) {
            int iB = n.b(this.f4910h);
            e.b(this.C, "bt " + iB);
            String strA = this.f4911i.f5003c.a(f.c.f5015a0, "");
            e.b(this.C, "lbt");
            int iA2 = n.a(strA);
            this.G = iA2;
            if (iA2 != -1) {
                e.b(this.C, "lbt = " + iA2);
                iB = iA2;
            }
            if (iB == 9) {
                b(new j(1001006000, "广告素材被屏敝"));
                return;
            }
        }
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4909g, this.D, this.f4911i);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        int iA3 = this.f4911i.f5004d.a(f.c.f5052w, 0);
        long jCurrentTimeMillis = 500 - (System.currentTimeMillis() - this.I);
        if (iA3 <= 0 || jCurrentTimeMillis <= 0) {
            e.b(this.C, "run  " + iA3);
            f(arrayList);
            return;
        }
        e.b(this.C, "del  " + jCurrentTimeMillis);
        q.a(new b(arrayList), jCurrentTimeMillis);
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADPresent() {
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onADTick(long j10) {
        u();
        if (!this.f4532u && !this.F) {
            n.a(this.f4530s);
            this.F = true;
        }
        a(j10);
    }

    @Override // com.qq.e.ads.splash.SplashADListener
    public void onNoAD(AdError adError) {
        b(com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(adError));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void a(View view) {
        this.I = System.currentTimeMillis();
        e.b(this.C, "splash handle ");
        com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a(this.f4910h.f4948d, this.f4911i.f5003c.a(f.c.f5023e0, ""), new C0172a(view));
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        d.a(this.D, i11, i10, str);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        d.a(this.D, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        int i10 = this.f4910h.B;
        if (i10 != -1) {
            d.a(String.valueOf(i10));
            d.f4777a.set(true);
        } else if (d.f4777a.get()) {
            d.f4777a.set(false);
            d.a(String.valueOf(p.f4547b));
        }
        Context contextA = g.a(this.f4910h, this.f4911i, this.f4914l);
        e.b(this.C, "s = " + view + ",f = " + this.f4910h.f4958n);
        this.f4909g.put("ecpm", this.f4911i.f5002b.a(f.c.f5024f, WMConstants.TIMER_STAGE_NONE));
        this.D = (SplashAD) d.a(contextA, this.f4911i.f5003c.a(f.c.f5023e0, ""), this.f4911i.f5003c.a(f.c.f5015a0, ""), d.e.SPLASH, this.f4913k, this, view, Integer.valueOf(this.f4910h.f4958n));
        if (com.aggmoread.sdk.z.c.a.a.e.p.a("4.470")) {
            d.b(this.D, this.f4910h, this.f4911i);
        }
        this.I = System.currentTimeMillis();
        this.D.fetchAdOnly();
        a(this.f4910h, this.f4911i).a(0).b();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.c.t.a
    public void a(ViewGroup viewGroup) {
        e.b(this.C, "showInContainer gdt container " + viewGroup + ",request activity " + this.f4910h.f4948d);
        if (viewGroup != null) {
            e.b(this.C, "container visible = " + viewGroup.getVisibility() + ", context = " + viewGroup.getContext());
        }
        if (this.E.compareAndSet(false, true)) {
            if (n.b(this.f4910h) == 91) {
                b(new j(1001006001, "GDT ad blocked"));
                return;
            }
            com.aggmoread.sdk.z.c.a.a.d.b.o.a aVar = new com.aggmoread.sdk.z.c.a.a.d.b.o.a(viewGroup.getContext());
            this.f4531t = new WeakReference<>(aVar);
            ViewGroup viewGroupA = a(aVar, viewGroup, !com.aggmoread.sdk.z.c.a.a.e.p.a("4.370"));
            new WeakReference(viewGroupA);
            a(aVar);
            com.aggmoread.sdk.z.c.a.a.d.a.d.v.a.a(this.D, k());
            e.b(this.C, "gdtContainer = " + viewGroupA + ", visibile = " + viewGroupA.getVisibility() + ", context = " + viewGroupA.getContext());
            this.D.showAd(viewGroupA);
        }
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void b(ViewGroup viewGroup) {
    }
}
