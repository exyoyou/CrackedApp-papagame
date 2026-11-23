package com.aggmoread.sdk.b;

import android.view.ViewGroup;
import com.aggmoread.sdk.client.banner.AMBannerAd;
import com.aggmoread.sdk.client.banner.AMBannerAdInteractionListener;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class f extends c implements AMBannerAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.n.a f3262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.n.c f3263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMBannerAdInteractionListener f3264d;

    class a implements com.aggmoread.sdk.z.c.a.a.c.n.c {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void a() {
            if (f.this.f3264d != null) {
                f.this.f3264d.onAdClosed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.n.c
        public void onADCloseOverlay() {
            if (f.this.f3264d != null) {
                f.this.f3264d.onADCloseOverlay();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.n.c
        public void onADLeftApplication() {
            if (f.this.f3264d != null) {
                f.this.f3264d.onADLeftApplication();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.n.c
        public void onADOpenOverlay() {
            if (f.this.f3264d != null) {
                f.this.f3264d.onADOpenOverlay();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdClicked() {
            if (f.this.f3264d != null) {
                f.this.f3264d.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdExposed() {
            if (f.this.f3264d != null) {
                f.this.f3264d.onAdExposed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.n.c
        public void onAdShow() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
        }
    }

    public f(com.aggmoread.sdk.z.c.a.a.c.n.a aVar, d dVar) {
        super(aVar, dVar);
        this.f3262b = aVar;
        this.f3263c = new a();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3262b.destroy();
    }

    @Override // com.aggmoread.sdk.client.banner.AMBannerAd
    public void show(AMBannerAdInteractionListener aMBannerAdInteractionListener) {
        this.f3264d = aMBannerAdInteractionListener;
        this.f3262b.a(this.f3263c);
        this.f3262b.b();
    }

    @Override // com.aggmoread.sdk.client.banner.AMBannerAd
    public void showInContainer(ViewGroup viewGroup, AMBannerAdInteractionListener aMBannerAdInteractionListener) {
        this.f3264d = aMBannerAdInteractionListener;
        this.f3262b.a(this.f3263c);
        this.f3262b.a(viewGroup);
    }

    @Override // com.aggmoread.sdk.b.c
    protected Map<String, Object> a() {
        return this.f3262b.h();
    }
}
