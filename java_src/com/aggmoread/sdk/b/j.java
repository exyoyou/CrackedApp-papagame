package com.aggmoread.sdk.b;

import android.app.Activity;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAd;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class j extends c implements AMInterstitialAd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.r.b f3280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.aggmoread.sdk.z.c.a.a.c.r.a f3281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AMInterstitialAdInteractionListener f3282d;

    class a implements com.aggmoread.sdk.z.c.a.a.c.r.a {
        a() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void a() {
            if (j.this.f3282d != null) {
                j.this.f3282d.onAdClosed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.e
        public void onADLeftApplication() {
            if (j.this.f3282d != null) {
                j.this.f3282d.onADLeftApplication();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdClicked() {
            if (j.this.f3282d != null) {
                j.this.f3282d.onAdClicked();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.f
        public void onAdExposed() {
            if (j.this.f3282d != null) {
                j.this.f3282d.onAdExposed();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.e
        public void onAdShow() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.e
        public void onAdVideoCompleted() {
            if (j.this.f3282d != null) {
                j.this.f3282d.onAdVideoCompleted();
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            if (j.this.f3282d != null) {
                j.this.f3282d.onAdError(new AMError(dVar.a(), dVar.b()));
            }
        }
    }

    public j(com.aggmoread.sdk.z.c.a.a.c.r.b bVar, d dVar) {
        super(bVar, dVar);
        this.f3280b = bVar;
        this.f3281c = new a();
    }

    @Override // com.aggmoread.sdk.client.AMAdInterface
    public void destroy() {
        this.f3280b.destroy();
        this.f3282d = null;
        this.f3281c = null;
    }

    @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAd
    public void show(Activity activity, AMInterstitialAdInteractionListener aMInterstitialAdInteractionListener) {
        this.f3282d = aMInterstitialAdInteractionListener;
        this.f3280b.a(this.f3281c);
        this.f3280b.a(activity);
    }

    @Override // com.aggmoread.sdk.b.c
    protected Map<String, Object> a() {
        return this.f3280b.h();
    }

    @Override // com.aggmoread.sdk.client.interstitial.AMInterstitialAd
    public void show(AMInterstitialAdInteractionListener aMInterstitialAdInteractionListener) {
        this.f3282d = aMInterstitialAdInteractionListener;
        this.f3280b.a(this.f3281c);
        this.f3280b.b();
    }
}
