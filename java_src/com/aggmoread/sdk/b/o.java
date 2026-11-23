package com.aggmoread.sdk.b;

import android.view.ViewGroup;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.splash.AMSplashAd;
import com.aggmoread.sdk.client.splash.AMSplashInteractionListener;
import com.aggmoread.sdk.t;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class o extends c implements AMSplashAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.t.a f3297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.t.c f3298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMSplashInteractionListener f3299d;

    class a implements com.aggmoread.sdk.z.c.a.a.c.t.c {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void a() {
            String str = t.SDK_TAG;
            if (o.this.f3299d != null) {
                o.this.f3299d.onAdClosed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.t.c
        public void e() {
            String str = t.SDK_TAG;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdClicked() {
            String str = t.SDK_TAG;
            if (o.this.f3299d != null) {
                o.this.f3299d.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdExposed() {
            String str = t.SDK_TAG;
            if (o.this.f3299d != null) {
                o.this.f3299d.onAdExposed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.t.c
        public void onAdTick(long j10) {
            String str = t.SDK_TAG;
            if (o.this.f3299d != null) {
                o.this.f3299d.onAdTick(j10);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            if (o.this.f3299d != null) {
                o.this.f3299d.onAdError(new AMError(dVar.a(), dVar.b()));
            }
        }
    }

    public o(d dVar, com.aggmoread.sdk.z.c.a.a.c.t.a aVar) {
        super(aVar, dVar);
        this.f3297b = aVar;
        this.f3298c = new a();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3299d = null;
        this.f3298c = null;
        com.aggmoread.sdk.z.c.a.a.c.t.a aVar = this.f3297b;
        if (aVar != null) {
            aVar.destroy();
        }
    }

    @Override // com.aggmoread.sdk.client.splash.AMSplashAd
    public void show(AMSplashInteractionListener aMSplashInteractionListener) {
        this.f3299d = aMSplashInteractionListener;
        this.f3297b.a(this.f3298c);
        this.f3297b.b();
    }

    @Override // com.aggmoread.sdk.client.splash.AMSplashAd
    public void showViewGroup(ViewGroup viewGroup, AMSplashInteractionListener aMSplashInteractionListener) {
        this.f3299d = aMSplashInteractionListener;
        this.f3297b.a(this.f3298c);
        this.f3297b.a(viewGroup);
    }

    @Override // com.aggmoread.sdk.b.c
    public Map<String, Object> a() {
        return this.f3297b.h();
    }
}
