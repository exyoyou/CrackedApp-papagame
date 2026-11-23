package com.sigmob.sdk.newInterstitial;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ac;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ag;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.ClickCommon;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.InterstitialSetting;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.sdk.base.utils.x;
import com.sigmob.windad.natives.WindNativeAdData;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class i extends com.sigmob.sdk.videoAd.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f81618f = "i";
    private boolean A;
    private boolean B;
    private com.sigmob.sdk.base.utils.p C;
    private com.sigmob.sdk.nativead.b D;
    private final View.OnClickListener E;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final BaseAdUnit f81619g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Bundle f81620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.sigmob.sdk.base.common.i f81621i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private g f81622j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RelativeLayout f81623k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List<String> f81624l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List<String> f81625m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.sigmob.sdk.videoplayer.a f81626n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private h f81627o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private InterstitialSetting f81628p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f81629q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private NewInterstitialHeaderView f81630r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f81631s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f81632t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f81633u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f81634v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final Handler f81635w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f81636x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f81637y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.sigmob.sdk.base.views.n f81638z;

    /* JADX INFO: renamed from: com.sigmob.sdk.newInterstitial.i$6, reason: invalid class name */
    class AnonymousClass6 implements com.sigmob.sdk.videoplayer.k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f81650b;

        AnonymousClass6() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public /* synthetic */ void b(com.sigmob.sdk.videoplayer.d dVar) {
            SigmobLog.i("video player state change " + dVar);
            switch (AnonymousClass8.f81653a[dVar.ordinal()]) {
                case 1:
                    if (i.this.f81626n != null) {
                        i iVar = i.this;
                        iVar.f81631s = (int) iVar.f81626n.getDuration();
                        if (i.this.f81631s == 0) {
                            i iVar2 = i.this;
                            iVar2.f81631s = iVar2.f81619g.getDuration();
                        }
                        i.this.f81619g.getVideoCommon().video_time = (int) (i.this.f81631s / 1000.0f);
                    }
                    i.this.f81619g.getVideoCommon().is_first = 1;
                    i.this.f81619g.getVideoCommon().type = 1;
                    i.this.f81619g.getVideoCommon().scene = 1;
                    i.this.f81619g.getVideoCommon().is_auto_play = 1;
                    i.this.f81619g.getVideoCommon().is_last = 0;
                    i.this.f81619g.getVideoCommon().end_time = 0;
                    i iVar3 = i.this;
                    iVar3.f81636x = iVar3.f81619g.getIsMute() != 0;
                    if (i.this.f81626n != null) {
                        i.this.f81626n.setMute(i.this.f81636x);
                        i.this.f81630r.setSoundStatus(i.this.f81636x);
                        i.this.f81630r.showSoundIcon();
                    }
                    break;
                case 2:
                    if (this.f81650b) {
                        i.this.f81619g.getVideoCommon().type = 2;
                    }
                    this.f81650b = false;
                    if (i.this.a() != null) {
                        i.this.a().a("video_start", 0);
                    }
                    if (i.this.f81626n != null) {
                        i.this.f81619g.getVideoCommon().begin_time = (int) (i.this.f81626n.getCurrentPositionWhenPlaying() / 1000.0f);
                    }
                    break;
                case 3:
                    if (i.this.f81626n != null) {
                        ad.a("video", i.this.f81626n.getErrorCode(), i.this.f81626n.getErrorMessage(), i.this.f81619g, (ad.a) null);
                    }
                    i.this.p();
                    break;
                case 4:
                    if (i.this.a() != null) {
                        i.this.a().a("complete", 0);
                    }
                    if (!i.this.f81619g.hasEndCard()) {
                        i.this.f81619g.getVideoCommon().type = 3;
                        i.this.z();
                    }
                    i.this.p();
                    break;
                case 5:
                    i.this.p();
                    break;
                case 6:
                    i.this.C();
                    i.this.A();
                    break;
                case 7:
                    i.this.D();
                    i.this.z();
                    break;
                case 8:
                    if (i.this.a() != null) {
                        i.this.a().a("video_pause", 0);
                    }
                    this.f81650b = true;
                    break;
            }
        }

        @Override // com.sigmob.sdk.videoplayer.k
        public void a(long position, long duration) {
            SigmobLog.d("position " + position + " duration " + duration);
            for (com.sigmob.sdk.videoAd.d dVar : i.this.f81621i.a(position, (long) i.this.f81631s)) {
                i.this.b(dVar.getEvent());
                dVar.setTracked();
            }
            if (position > i.this.f81631s) {
                i.this.p();
            }
        }

        @Override // com.sigmob.sdk.videoplayer.k
        public void a(final com.sigmob.sdk.videoplayer.d state) {
            if (i.this.f81626n == null) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.sigmob.sdk.newInterstitial.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f81662b.b(state);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.sigmob.sdk.newInterstitial.i$8, reason: invalid class name */
    static /* synthetic */ class AnonymousClass8 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f81653a;

        static {
            int[] iArr = new int[com.sigmob.sdk.videoplayer.d.values().length];
            f81653a = iArr;
            try {
                iArr[com.sigmob.sdk.videoplayer.d.STATE_PREPARED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f81653a[com.sigmob.sdk.videoplayer.d.STATE_PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f81653a[com.sigmob.sdk.videoplayer.d.STATE_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f81653a[com.sigmob.sdk.videoplayer.d.STATE_AUTO_COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f81653a[com.sigmob.sdk.videoplayer.d.STATE_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f81653a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f81653a[com.sigmob.sdk.videoplayer.d.STATE_BUFFERING_END.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f81653a[com.sigmob.sdk.videoplayer.d.STATE_PAUSE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public i(Activity activity, BaseAdUnit adUnit, Bundle intentExtras, Bundle savedInstanceState, String broadcastIdentifier, com.sigmob.sdk.base.common.k controllerListener) throws IllegalStateException {
        super(activity, broadcastIdentifier, controllerListener);
        this.f81624l = new ArrayList();
        this.f81625m = new ArrayList();
        this.f81635w = new Handler(Looper.getMainLooper());
        this.E = new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.i.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activityN = i.this.n();
                if (activityN == null || i.this.f81619g == null) {
                    return;
                }
                i iVar = i.this;
                if (iVar.a(iVar.D)) {
                    return;
                }
                i.this.D = new com.sigmob.sdk.nativead.b(activityN, i.this.f81619g);
                i.this.D.a();
                i.this.D.a(new WindNativeAdData.DislikeInteractionCallback() { // from class: com.sigmob.sdk.newInterstitial.i.7.1
                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onCancel() {
                        i.this.g();
                        i.this.E();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onSelected(int position, String value, boolean enforce) {
                        i.this.g();
                        i.this.E();
                    }

                    @Override // com.sigmob.windad.natives.WindNativeAdData.DislikeInteractionCallback
                    public void onShow() {
                        i.this.f();
                    }
                });
            }
        };
        this.f81619g = adUnit;
        this.f81620h = intentExtras;
        com.sigmob.sdk.base.common.i adConfig = adUnit.getAdConfig();
        this.f81621i = adConfig;
        adConfig.a(n(), adUnit, new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.newInterstitial.i.1
            @Override // com.sigmob.sdk.base.views.n.b
            public void a() {
                i.this.A = false;
                i.this.z();
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void b() {
                i.this.A = true;
                i.this.A();
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void a(Error error) {
            }

            @Override // com.sigmob.sdk.base.views.n.b
            public void a(String url, String clickCoordinate) {
                i.this.f81619g.getClickCommon().click_area = "appinfo";
                i.this.f81619g.getClickCommon().is_final_click = true;
                i.this.r();
                ag agVarA = i.this.a();
                if (agVarA == null) {
                    return;
                }
                agVarA.a("click", 0);
            }
        });
        k().a(7);
        this.f81629q = adUnit.getTemplateType() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        G();
        com.sigmob.sdk.videoplayer.a aVar = this.f81626n;
        if (aVar == null) {
            return;
        }
        aVar.j();
    }

    private void B() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.sigmob.sdk.videoAd.d(com.sigmob.sdk.base.common.a.f78877k, 0.25f));
        arrayList.add(new com.sigmob.sdk.videoAd.d(com.sigmob.sdk.base.common.a.f78879m, 0.5f));
        arrayList.add(new com.sigmob.sdk.videoAd.d(com.sigmob.sdk.base.common.a.f78880n, 0.75f));
        this.f81621i.a((List<com.sigmob.sdk.videoAd.d>) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        RelativeLayout relativeLayout = this.f81623k;
        if (relativeLayout == null || relativeLayout.getVisibility() == 0) {
            return;
        }
        this.f81633u = System.currentTimeMillis();
        this.f81623k.setVisibility(0);
        this.f81632t = "loading";
        int i10 = this.f81634v + 1;
        this.f81634v = i10;
        if (i10 > 2) {
            return;
        }
        this.f81635w.postDelayed(new Runnable() { // from class: com.sigmob.sdk.newInterstitial.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f81660b.J();
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        RelativeLayout relativeLayout = this.f81623k;
        if (relativeLayout != null && relativeLayout.getVisibility() == 0) {
            this.f81624l.add(String.format(Locale.getDefault(), "%d", Long.valueOf(System.currentTimeMillis() - this.f81633u)));
            this.f81625m.add(String.format(Locale.getDefault(), "%.2f", Float.valueOf(((int) this.f81626n.getCurrentPositionWhenPlaying()) / 1000.0f)));
            this.f81632t = "play";
            this.f81635w.removeCallbacksAndMessages(null);
            this.f81623k.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        com.sigmob.sdk.nativead.b bVar = this.D;
        if (bVar == null) {
            return;
        }
        bVar.dismiss();
        this.D.b();
        this.D = null;
    }

    private void F() {
        if (this.f81637y) {
            return;
        }
        com.sigmob.sdk.videoplayer.a aVar = this.f81626n;
        if (aVar != null) {
            aVar.r();
            this.f81626n = null;
        }
        this.f81637y = true;
        if (this.f81627o == null) {
            h hVar = new h(this.f79160a);
            this.f81627o = hVar;
            hVar.a(this.E);
            Button cTAButton = this.f81627o.getCTAButton();
            com.sigmob.sdk.base.a aVar2 = com.sigmob.sdk.base.a.ENDCARD;
            a(cTAButton, aVar2);
            this.f81627o.a(this.f81619g.getIconUrl(), this.f81619g.getEndCardImageUrl(), this.f81619g.getAppName(), this.f81619g.getCreativeTitle(), this.f81619g.getCTAText());
            SigAdPrivacyInfoView adPrivacyInfo = this.f81627o.getAdPrivacyInfo();
            if (w.b(adPrivacyInfo)) {
                View privacyLl = adPrivacyInfo.getPrivacyLl();
                if (w.b(privacyLl)) {
                    privacyLl.setBackgroundColor(0);
                    a(adPrivacyInfo, aVar2);
                }
            }
            this.f81627o.getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f81655b.a(view);
                }
            });
        }
        this.f81630r.hideSoundIcon();
        x.a(this.f81622j);
        m().addView(this.f81627o, new ViewGroup.LayoutParams(-1, -1));
    }

    private void G() {
        com.sigmob.sdk.base.utils.p pVar = this.C;
        if (pVar == null) {
            return;
        }
        pVar.c();
    }

    private void H() {
        com.sigmob.sdk.base.utils.p pVar = this.C;
        if (pVar == null) {
            return;
        }
        pVar.d();
    }

    private void I() {
        com.sigmob.sdk.base.utils.p pVar = this.C;
        if (pVar == null) {
            return;
        }
        pVar.e();
        this.C = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J() {
        this.f81635w.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        boolean z10 = !this.f81636x;
        this.f81636x = z10;
        this.f81630r.setSoundStatus(z10);
        com.sigmob.sdk.videoplayer.a aVar = this.f81626n;
        if (aVar == null) {
            return;
        }
        aVar.setMute(this.f81636x);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        com.sigmob.sdk.base.views.n nVar = this.f81638z;
        if (nVar == null) {
            return;
        }
        nVar.dismiss();
        this.f81638z.c();
        this.f81638z = null;
    }

    private com.sigmob.sdk.videoplayer.a y() {
        if (this.f81626n == null) {
            com.sigmob.sdk.videoplayer.a aVar = new com.sigmob.sdk.videoplayer.a(l());
            this.f81626n = aVar;
            aVar.setVideoPlayerStatusListener(new AnonymousClass6());
            B();
        }
        this.f81626n.setUp(this.f81619g.getProxyVideoUrl());
        return this.f81626n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        H();
        com.sigmob.sdk.videoplayer.a aVar = this.f81626n;
        if (aVar == null) {
            return;
        }
        aVar.d();
    }

    @Override // com.sigmob.sdk.videoAd.b, com.sigmob.sdk.base.common.j
    public void e() {
        super.e();
        n().getWindow().addFlags(1024);
        b();
        b(n(), 7, this.f81620h);
        q();
        ag agVarA = a();
        if (agVarA == null) {
            return;
        }
        agVarA.a("start", 0);
        a(IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.sigmob.sdk.base.common.j
    public void f() {
        if (this.A) {
            return;
        }
        A();
    }

    public void p() {
        D();
        F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        u();
    }

    private void q() {
        Context context;
        String str;
        this.f81622j = new g(this.f79160a);
        int iScreenHeightAsIntDips = Dips.screenHeightAsIntDips(this.f79160a);
        int iScreenWidthAsIntDips = Dips.screenWidthAsIntDips(this.f79160a);
        if (this.f81629q) {
            context = this.f79160a;
            str = "sig_new_interstitial_full_layout";
        } else if (iScreenHeightAsIntDips * 0.8f <= 553.0f || iScreenWidthAsIntDips * 0.8f <= 287.0f) {
            context = this.f79160a;
            str = "sig_new_interstitial_small_layout";
        } else {
            context = this.f79160a;
            str = "sig_new_interstitial_layout";
        }
        this.f81622j.a(ResourceUtil.getLayoutId(context, str));
        a(IntentActions.ACTION_INTERSTITIAL_VOPEN);
        ViewGroup mainAdContainer = this.f81622j.getMainAdContainer();
        this.f81628p = this.f81619g.getNewInterstitialSetting();
        ViewGroup viewGroupM = m();
        if (viewGroupM == null) {
            return;
        }
        viewGroupM.addView(this.f81622j, new ViewGroup.LayoutParams(-1, -1));
        a(mainAdContainer);
        w();
        t();
        a(this.f81622j.getCTAButton(), com.sigmob.sdk.base.a.AD);
        if (this.f81628p == null) {
            return;
        }
        viewGroupM.postDelayed(new Runnable() { // from class: com.sigmob.sdk.newInterstitial.o
            @Override // java.lang.Runnable
            public final void run() {
                this.f81659b.v();
            }
        }, this.f81628p.charge_time.intValue() * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        com.sigmob.sdk.base.utils.d.a(f81618f, this.f81619g);
        a(IntentActions.ACTION_INTERSTITIAL_CLICK);
    }

    private void s() {
        k().a();
    }

    private void t() {
        NewInterstitialHeaderView headerView = this.f81622j.getHeaderView();
        this.f81630r = headerView;
        boolean z10 = true;
        headerView.showFeedback(this.f81626n != null, this.E);
        this.f81630r.setAdHeaderViewStateListener(new NewInterstitialHeaderView.a() { // from class: com.sigmob.sdk.newInterstitial.i.3
            @Override // com.sigmob.sdk.newInterstitial.NewInterstitialHeaderView.a
            public void a() {
                i.this.v();
                ag agVarA = i.this.a();
                if (agVarA == null) {
                    return;
                }
                agVarA.a("show_close", 0);
            }

            @Override // com.sigmob.sdk.newInterstitial.NewInterstitialHeaderView.a
            public void b() {
                i.this.v();
                ag agVarA = i.this.a();
                if (agVarA == null) {
                    return;
                }
                agVarA.a("show_skip", 0);
            }
        });
        this.f81630r.setSoundClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81656b.d(view);
            }
        });
        this.f81630r.setCloseClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81657b.c(view);
            }
        });
        this.f81630r.setSkipClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.newInterstitial.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81658b.b(view);
            }
        });
        InterstitialSetting interstitialSetting = this.f81628p;
        if (interstitialSetting == null) {
            return;
        }
        if (!interstitialSetting.skip_close_ad.booleanValue() && this.f81619g.hasEndCard()) {
            z10 = false;
        }
        this.f81630r.startAdTimer(this.f81628p.show_skip_seconds.intValue(), z10);
    }

    private void u() {
        ag agVarA = a();
        if (w.b(agVarA)) {
            agVarA.a("skip", 0);
        }
        F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.B) {
            return;
        }
        this.B = true;
        ag agVarA = a();
        if (agVarA == null) {
            return;
        }
        agVarA.a("charge", 0);
    }

    private void w() {
        SigAdInfoView adInfView = this.f81622j.getAdInfView();
        if (adInfView == null) {
            return;
        }
        adInfView.setAppInfoView(this.f81619g.getIconUrl(), this.f81619g.getAppName(), this.f81619g.getCreativeTitle());
        SigAdPrivacyInfoView adPrivacyInfo = adInfView.getAdPrivacyInfo();
        if (adPrivacyInfo == null) {
            return;
        }
        adPrivacyInfo.getPrivacyAdText().setTextColor(-1);
        a(adInfView.getAdPrivacyInfo(), com.sigmob.sdk.base.a.AD);
    }

    public ag a() {
        BaseAdUnit baseAdUnit = this.f81619g;
        if (baseAdUnit == null) {
            return null;
        }
        ag sessionManager = baseAdUnit.getSessionManager();
        if (sessionManager != null) {
            return sessionManager;
        }
        c cVar = new c();
        cVar.a(this.f81619g);
        return cVar;
    }

    @Override // com.sigmob.sdk.base.common.j
    public void g() {
        if (this.A) {
            return;
        }
        z();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void h() {
        a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        I();
        com.sigmob.sdk.videoplayer.a aVar = this.f81626n;
        if (aVar != null) {
            aVar.r();
            this.f81626n = null;
        }
        x();
        E();
        this.f81619g.destroy();
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.j
    public void o() {
    }

    void b(final String adEvent) {
        ag agVarA = a();
        if (agVarA == null) {
            return;
        }
        agVarA.a(adEvent, (int) this.f81626n.getCurrentPositionWhenPlaying());
    }

    public void a(int seconds, com.sigmob.sdk.base.utils.p.a listener) {
        this.C = new com.sigmob.sdk.base.utils.p(((long) seconds) * 1000, 1000L);
        if (w.b(listener)) {
            this.C.a(listener);
        }
        this.C.a();
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Configuration configuration) {
    }

    @Override // com.sigmob.sdk.base.common.j
    public void a(Bundle outState) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        s();
    }

    private void a(ViewGroup adContainer) {
        int templateId = this.f81619g.getTemplateId();
        if (templateId == 6001) {
            com.sigmob.sdk.videoplayer.a aVarY = y();
            this.f81626n = aVarY;
            adContainer.addView(aVarY, new ViewGroup.LayoutParams(-1, -1));
            this.f81626n.a();
            return;
        }
        if (templateId != 6002) {
            return;
        }
        ImageView imageView = new ImageView(this.f79160a);
        adContainer.addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        com.sigmob.sdk.base.common.h.a().load(this.f81619g.getMainImage()).into(imageView);
    }

    private void a(Button button, final com.sigmob.sdk.base.a clickUIType) {
        button.setText(this.f81619g.getCTAText());
        button.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.newInterstitial.i.2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private MotionEvent f81642c;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent event) {
                String coordinate;
                if (event.getAction() == 0) {
                    this.f81642c = event;
                } else if (event.getAction() == 1) {
                    SigMacroCommon macroCommon = i.this.f81619g.getMacroCommon();
                    if (macroCommon != null) {
                        macroCommon.updateClickMarco(this.f81642c, event, false);
                        coordinate = macroCommon.getCoordinate();
                    } else {
                        coordinate = "";
                    }
                    i.this.f81619g.getClickCommon().click_area = ClickCommon.CLICK_AREA_BTN;
                    i.this.f81619g.getClickCommon().click_scene = clickUIType == com.sigmob.sdk.base.a.AD ? "ad" : "endcard";
                    i.this.f81619g.getClickCommon().is_final_click = i.this.f81619g.noHasDownloadDialog();
                    i.this.f81619g.getAdConfig().a(clickUIType, coordinate, true);
                }
                return false;
            }
        });
        this.f81619g.getAdConfig().a(new ac() { // from class: com.sigmob.sdk.newInterstitial.q
            @Override // com.sigmob.sdk.base.common.ac
            public final void onAdClick(boolean z10, com.sigmob.sdk.base.a aVar) {
                this.f81661b.a(z10, aVar);
            }
        });
    }

    private void a(SigAdPrivacyInfoView adPrivacyInfo, final com.sigmob.sdk.base.a type) {
        if (adPrivacyInfo == null) {
            return;
        }
        adPrivacyInfo.a(this.f81619g.getAd_source_logo(), w.b(this.f81619g.getadPrivacy()));
        adPrivacyInfo.setOnTouchListener(new View.OnTouchListener() { // from class: com.sigmob.sdk.newInterstitial.i.4

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private MotionEvent f81646c;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent event) {
                int action = event.getAction();
                if (action == 0) {
                    this.f81646c = event;
                } else if (action == 1) {
                    SigMacroCommon macroCommon = i.this.f81619g.getMacroCommon();
                    if (w.b(macroCommon)) {
                        macroCommon.updateClickMarco(this.f81646c, event, false);
                    }
                    i.this.a(type);
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z10, com.sigmob.sdk.base.a aVar) {
        if (this.f81619g.getClickCommon().is_final_click) {
            r();
        }
        ag agVarA = a();
        if (agVarA == null) {
            return;
        }
        agVarA.a("click", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(final com.sigmob.sdk.base.a type) {
        try {
            Activity activityN = n();
            if (this.f81638z == null && activityN != null) {
                com.sigmob.sdk.base.views.n nVar = new com.sigmob.sdk.base.views.n(n(), this.f81619g);
                this.f81638z = nVar;
                nVar.a(new com.sigmob.sdk.base.views.n.b() { // from class: com.sigmob.sdk.newInterstitial.i.5
                    @Override // com.sigmob.sdk.base.views.n.b
                    public void a() {
                        i.this.z();
                        i.this.x();
                        i.this.A = false;
                        ag agVarA = i.this.a();
                        if (agVarA == null) {
                            return;
                        }
                        agVarA.a(com.sigmob.sdk.base.common.a.f78873g, 0);
                    }

                    @Override // com.sigmob.sdk.base.views.n.b
                    public void b() {
                        i.this.A();
                        ag agVarA = i.this.a();
                        if (agVarA == null) {
                            return;
                        }
                        agVarA.a(com.sigmob.sdk.base.common.a.f78872f, 0);
                    }

                    @Override // com.sigmob.sdk.base.views.n.b
                    public void a(Error error) {
                    }

                    @Override // com.sigmob.sdk.base.views.n.b
                    public void a(String url, String clickCoordinate) {
                        if (i.this.f81619g == null) {
                            return;
                        }
                        i.this.f81619g.getClickCommon().is_final_click = true;
                        i.this.f81619g.getAdConfig().a(type, url, clickCoordinate, true);
                    }
                });
            }
            com.sigmob.sdk.base.views.n nVar2 = this.f81638z;
            if (nVar2 == null || !nVar2.a() || this.A) {
                return false;
            }
            this.f81619g.getClickCommon().click_area = "appinfo";
            this.f81619g.getClickCommon().click_scene = type == com.sigmob.sdk.base.a.AD ? "ad" : "endcard";
            this.f81619g.getClickCommon().is_final_click = false;
            ag agVarA = a();
            if (w.b(agVarA)) {
                agVarA.a("click", 0);
            }
            this.f81638z.show();
            this.A = true;
            return true;
        } catch (Exception e10) {
            SigmobLog.e("openFourElements fail:" + e10.getMessage());
            return false;
        }
    }
}
