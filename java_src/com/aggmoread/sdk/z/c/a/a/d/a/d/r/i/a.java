package com.aggmoread.sdk.z.c.a.a.d.a.d.r.i;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.c.a.a.d.a.d.k;
import com.aggmoread.sdk.z.c.a.a.d.a.d.r.c;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.RequestParameters;
import com.baidu.mobads.sdk.api.SplashAd;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class a extends k {
    private SplashAd C;
    private AtomicBoolean D;
    private AtomicBoolean E;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.i.a$a, reason: collision with other inner class name */
    class C0141a implements c.k {
        C0141a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void a() {
            e.b("AMSTAGBD", "onAdDismissed");
            a.this.r();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void b() {
            e.b("AMSTAGBD", "onAdCacheFailed");
            a.this.b(new j(-1000, "广告素材加载失败！"));
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void c() {
            e.b("AMSTAGBD", "onLpClosed");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void d() {
            e.b("AMSTAGBD", "onAdCacheSuccess");
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void e() {
            e.b("AMSTAGBD", "onAdSkip");
            a.this.t();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void f() {
            e.b("AMSTAGBD", "onADLoaded");
            int iA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a((Object) a.this.C);
            if (com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(a.this.f4911i, iA)) {
                a.this.a(iA, 0);
                return;
            }
            a.this.b(iA);
            a aVar = a.this;
            com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.b(aVar.f4909g, iA, aVar.f4911i);
            ArrayList arrayList = new ArrayList();
            arrayList.add(a.this);
            a.this.f(arrayList);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void g() {
            e.b("AMSTAGBD", "onAdPresent");
            if (a.this.E.compareAndSet(false, true)) {
                a.this.s();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void onAdClick() {
            e.b("AMSTAGBD", IAdInterListener.AdCommandType.AD_CLICK);
            a.this.q();
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void onAdExposed() {
            e.b("AMSTAGBD", "onAdExposed");
            if (a.this.E.compareAndSet(false, true)) {
                a.this.s();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.r.c.k
        public void onAdFailed(String str) {
            a.this.b(new j(-1000, str));
        }
    }

    public a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        super(eVar, fVar);
        this.D = new AtomicBoolean();
        this.E = new AtomicBoolean();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.d.b.a
    public void b(int i10, int i11, String str) {
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.C, "203");
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k, com.aggmoread.sdk.z.c.a.a.d.b.a
    public void c(int i10) {
        e.c("win " + i10);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.C, i10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        return com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a().a(this.C);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void a(View view) {
        this.f4533v = false;
        String strA = this.f4911i.f5003c.a(f.c.f5023e0, "");
        Context contextA = com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(this.f4910h, this.f4911i, this.f4914l);
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(contextA.getApplicationContext(), strA);
        RequestParameters.Builder builder = new RequestParameters.Builder();
        builder.addExtra("timeout", String.valueOf(this.f4910h.f4958n));
        builder.addExtra(SplashAd.KEY_DISPLAY_DOWNLOADINFO, "true");
        builder.addExtra(SplashAd.KEY_POPDIALOG_DOWNLOAD, "false");
        com.aggmoread.sdk.z.c.a.a.d.a.d.r.a.a(builder, this.f4910h, this.f4911i);
        SplashAd splashAd = new SplashAd(contextA.getApplicationContext(), this.f4911i.f5003c.c(f.c.f5015a0), builder.build(), c.a().a(new C0141a()));
        this.C = splashAd;
        splashAd.setAppSid(strA);
        a(this.f4910h, this.f4911i).a(0).b();
        this.C.load();
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    public void b(ViewGroup viewGroup) {
        if (viewGroup == null || this.C == null || !this.D.compareAndSet(false, true)) {
            return;
        }
        a(viewGroup, this.C);
    }

    private void a(ViewGroup viewGroup, SplashAd splashAd) {
        if (splashAd != null) {
            splashAd.show(viewGroup);
        }
    }
}
