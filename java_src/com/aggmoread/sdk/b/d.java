package com.aggmoread.sdk.b;

import com.aggmoread.sdk.client.AMAdType;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.IAMAdInteractionListener;
import com.aggmoread.sdk.client.IAMAdLoadListener;
import com.aggmoread.sdk.client.banner.AMBannerAdListener;
import com.aggmoread.sdk.client.draw.AMDrawAdListener;
import com.aggmoread.sdk.client.feedlist.AMExpressAdListener;
import com.aggmoread.sdk.client.feedlist.AMMixFeedAdListener;
import com.aggmoread.sdk.client.feedlist.AMNativeAdListener;
import com.aggmoread.sdk.client.fullscreen.AMFullScreenAd;
import com.aggmoread.sdk.client.fullscreen.AMFullScreenAdInteractionListener;
import com.aggmoread.sdk.client.fullscreen.AMFullScreenAdListener;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAd;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAdInteractionListener;
import com.aggmoread.sdk.client.interstitial.AMInterstitialAdListener;
import com.aggmoread.sdk.client.reward.AMRewardAd;
import com.aggmoread.sdk.client.reward.AMRewardAdListener;
import com.aggmoread.sdk.client.reward.AMRewardInteractionListener;
import com.aggmoread.sdk.client.splash.AMSplashAd;
import com.aggmoread.sdk.client.splash.AMSplashAdListener;
import com.aggmoread.sdk.client.splash.AMSplashInteractionListener;
import com.aggmoread.sdk.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMAdLoadListener<?> f3239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IAMAdInteractionListener f3240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AMAdType f3241c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3242d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3243e = true;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3244a;

        static {
            int[] iArr = new int[AMAdType.values().length];
            f3244a = iArr;
            try {
                iArr[AMAdType.SPLASH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3244a[AMAdType.INFORMATION_FLOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3244a[AMAdType.EXPRESS_INFORMATION_FLOW.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3244a[AMAdType.REWARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3244a[AMAdType.INTERSTITIAL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3244a[AMAdType.FULLSCREEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3244a[AMAdType.BANNER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3244a[AMAdType.DRAW.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3244a[AMAdType.MIX_INFORMATION_FLOW.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    class b implements com.aggmoread.sdk.z.c.a.a.c.n.b {
        b() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.n.b
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.n.a> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMBannerAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.n.a> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new com.aggmoread.sdk.b.f(it2.next(), d.this));
                }
                ((AMBannerAdListener) d.this.f3239a).onAdLoaded(arrayList);
                if (d.this.f3243e || list.size() <= 0) {
                    return;
                }
                list.get(0).b();
            }
        }
    }

    class c implements com.aggmoread.sdk.z.c.a.a.c.q.c {
        c() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.q.c
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.q.b> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMFullScreenAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.q.b> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new com.aggmoread.sdk.b.i(it2.next(), d.this));
                }
                ((AMFullScreenAdListener) d.this.f3239a).onAdLoaded(arrayList);
                if (d.this.f3243e || arrayList.isEmpty() || !(d.this.f3240b instanceof AMFullScreenAdInteractionListener)) {
                    return;
                }
                ((AMFullScreenAd) arrayList.get(0)).show((AMFullScreenAdInteractionListener) d.this.f3240b);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.q.c
        public void onAdVideoCached() {
            if (d.this.f3239a instanceof AMFullScreenAdListener) {
                ((AMFullScreenAdListener) d.this.f3239a).onAdVideoCached();
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.b.d$d, reason: collision with other inner class name */
    class C0065d implements com.aggmoread.sdk.z.c.a.a.c.t.b {
        C0065d() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            String str = t.SDK_TAG;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onAdError , ");
            sb2.append(dVar.a());
            sb2.append(", msg ");
            sb2.append(dVar.b());
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.t.b
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.t.a> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMSplashAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.t.a> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new o(d.this, it2.next()));
                }
                ((AMSplashAdListener) d.this.f3239a).onAdLoaded(arrayList);
                if (d.this.f3243e || arrayList.isEmpty() || !(d.this.f3240b instanceof AMSplashInteractionListener)) {
                    return;
                }
                ((AMSplashAd) arrayList.get(0)).show((AMSplashInteractionListener) d.this.f3240b);
            }
        }
    }

    class e implements com.aggmoread.sdk.z.c.a.a.c.p.g {
        e() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.g
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.p.f> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMNativeAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.p.f> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new l(it2.next(), d.this));
                }
                ((AMNativeAdListener) d.this.f3239a).onAdLoaded(arrayList);
            }
        }
    }

    class f implements com.aggmoread.sdk.z.c.a.a.c.p.c {
        f() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.c
        public void b(List<com.aggmoread.sdk.z.c.a.a.c.p.d> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMMixFeedAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.p.d> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new k(it2.next(), d.this));
                }
                ((AMMixFeedAdListener) d.this.f3239a).onAdLoaded(arrayList);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.c
        public void a(List<com.aggmoread.sdk.z.c.a.a.c.p.f> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMMixFeedAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.p.f> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new k(it2.next(), d.this));
                }
                ((AMMixFeedAdListener) d.this.f3239a).onAdLoaded(arrayList);
            }
        }
    }

    class g implements com.aggmoread.sdk.z.c.a.a.c.p.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f3250a;

        g(HashMap map) {
            this.f3250a = map;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.p.e
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.p.d> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMExpressAdListener) {
                ArrayList arrayList = new ArrayList();
                for (com.aggmoread.sdk.z.c.a.a.c.p.d dVar : list) {
                    com.aggmoread.sdk.b.h hVar = new com.aggmoread.sdk.b.h(dVar, d.this);
                    arrayList.add(hVar);
                    this.f3250a.put(dVar, hVar);
                }
                ((AMExpressAdListener) d.this.f3239a).onAdLoaded(arrayList);
            }
        }
    }

    class h implements com.aggmoread.sdk.z.c.a.a.c.s.b {
        h() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.s.b
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.s.a> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMRewardAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.s.a> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new n(it2.next(), d.this));
                }
                ((AMRewardAdListener) d.this.f3239a).onAdLoaded(arrayList);
                if (d.this.f3243e || arrayList.isEmpty() || !(d.this.f3240b instanceof AMRewardInteractionListener)) {
                    return;
                }
                ((AMRewardAd) arrayList.get(0)).show((AMRewardInteractionListener) d.this.f3240b);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.s.b
        public void onAdVideoCached() {
            if (d.this.f3239a instanceof AMRewardAdListener) {
                ((AMRewardAdListener) d.this.f3239a).onAdVideoCached();
            }
        }
    }

    class i implements com.aggmoread.sdk.z.c.a.a.c.r.c {
        i() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.r.c
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.r.b> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMInterstitialAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.r.b> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new com.aggmoread.sdk.b.j(it2.next(), d.this));
                }
                ((AMInterstitialAdListener) d.this.f3239a).onAdLoaded(arrayList);
                if (d.this.f3243e || arrayList.isEmpty() || !(d.this.f3240b instanceof AMInterstitialAdInteractionListener)) {
                    return;
                }
                ((AMInterstitialAd) arrayList.get(0)).show((AMInterstitialAdInteractionListener) d.this.f3240b);
            }
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.r.c
        public void onAdVideoCached() {
            if (d.this.f3239a instanceof AMInterstitialAdListener) {
                ((AMInterstitialAdListener) d.this.f3239a).onAdVideoCached();
            }
        }
    }

    class j implements com.aggmoread.sdk.z.c.a.a.c.o.c {
        j() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.g
        public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
            d.this.a(dVar);
        }

        @Override // com.aggmoread.sdk.z.c.a.a.c.o.c
        public void onAdLoaded(List<com.aggmoread.sdk.z.c.a.a.c.o.a> list) {
            String str = t.SDK_TAG;
            d.this.f3242d = true;
            if (d.this.f3239a instanceof AMDrawAdListener) {
                ArrayList arrayList = new ArrayList();
                Iterator<com.aggmoread.sdk.z.c.a.a.c.o.a> it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(new com.aggmoread.sdk.b.g(it2.next(), d.this));
                }
                ((AMDrawAdListener) d.this.f3239a).onAdLoaded(arrayList);
            }
        }
    }

    public d(AMAdType aMAdType) {
        this.f3241c = aMAdType;
    }

    private com.aggmoread.sdk.z.c.a.a.c.p.c b() {
        return new f();
    }

    private com.aggmoread.sdk.z.c.a.a.c.p.g d() {
        return new e();
    }

    private com.aggmoread.sdk.z.c.a.a.c.g e() {
        return new b();
    }

    private com.aggmoread.sdk.z.c.a.a.c.o.c f() {
        return new j();
    }

    private com.aggmoread.sdk.z.c.a.a.c.p.e g() {
        return new g(new HashMap());
    }

    private com.aggmoread.sdk.z.c.a.a.c.g h() {
        return new c();
    }

    private com.aggmoread.sdk.z.c.a.a.c.r.c i() {
        return new i();
    }

    private com.aggmoread.sdk.z.c.a.a.c.g j() {
        return new h();
    }

    private com.aggmoread.sdk.z.c.a.a.c.t.b c() {
        return new C0065d();
    }

    public com.aggmoread.sdk.z.c.a.a.c.g a() {
        switch (a.f3244a[this.f3241c.ordinal()]) {
            case 1:
                return c();
            case 2:
                return d();
            case 3:
                return g();
            case 4:
                return j();
            case 5:
                return i();
            case 6:
                return h();
            case 7:
                return e();
            case 8:
                return f();
            case 9:
                return b();
            default:
                return null;
        }
    }

    public void a(IAMAdInteractionListener iAMAdInteractionListener) {
        this.f3240b = iAMAdInteractionListener;
    }

    public void a(IAMAdLoadListener<?> iAMAdLoadListener) {
        this.f3239a = iAMAdLoadListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.aggmoread.sdk.z.c.a.a.c.d dVar) {
        if (this.f3242d) {
            IAMAdInteractionListener iAMAdInteractionListener = this.f3240b;
            if (iAMAdInteractionListener != null) {
                iAMAdInteractionListener.onAdError(new AMError(dVar.a(), dVar.b()));
                return;
            }
            return;
        }
        IAMAdLoadListener<?> iAMAdLoadListener = this.f3239a;
        if (iAMAdLoadListener != null) {
            iAMAdLoadListener.onAdLoadFail(new AMError(dVar.a(), dVar.b()));
        }
    }

    public void a(boolean z10) {
        this.f3243e = z10;
    }
}
