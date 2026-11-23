package com.byazt.pro;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.aas.cu;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.afw.nu;
import com.byazt.apd.EcMallWebView;
import com.byazt.bzd.t;
import com.byazt.bzd.x;
import com.byazt.ete.bx;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.jzl.a;
import com.byazt.lbn.LazeLayout;
import com.byazt.nc.u;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.ukr.n;
import com.byazt.ukr.yp;
import com.byazt.un.NativeDrawVideoTsView;
import com.byazt.un.NativeVideoTsView;
import com.uc.crashsdk.export.LogType;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 199, 15})
public class uj extends com.byazt.lq.tt implements com.byazt.oce.c, com.byazt.dh.ve.uj, com.byazt.dh.ve.InterfaceC0292ve, com.byazt.ua.c.InterfaceC0445c, LazeLayout.c<NativeVideoTsView>, com.byazt.lbn.c<NativeVideoTsView> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.kyz.ve f18837a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.ua.c f18838c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public LazeLayout f18839da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18840i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ic f18841m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.bf.c f18842n;
    public CreativeContainer nu;
    public com.byazt.lsp.c rh;
    public volatile WeakReference<NativeVideoTsView> sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public WeakReference<View> f18843t;
    public com.byazt.dj.tt tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.bf.tt f18844u;
    public int[] uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.yh.c f18845x;
    public volatile int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile boolean f18846z;

    public uj(Context context, ic icVar, int i10, com.byazt.dj.tt ttVar) {
        super(new com.byazt.kyz.ve(context, icVar, i10, ttVar, true));
        this.uj = null;
        this.f18840i = false;
        this.f18839da = null;
        this.sl = null;
        this.f18843t = null;
        this.rh = new com.byazt.lsp.c(null) { // from class: com.byazt.pro.uj.4
            @Override // com.byazt.lsp.c
            public void c(u uVar) {
            }

            @Override // com.byazt.lsp.c
            public void tt(View view, u uVar) {
                if (uj.this.sl == null || uj.this.sl.get() == null) {
                    return;
                }
                ((NativeVideoTsView) uj.this.sl.get()).sl();
            }

            @Override // com.byazt.lsp.c
            public void c(View view, u uVar) {
                if (uj.this.sl == null || uj.this.sl.get() == null) {
                    return;
                }
                ((NativeVideoTsView) uj.this.sl.get()).sl();
            }
        };
        com.byazt.kyz.ve veVar = (com.byazt.kyz.ve) getNativeAd();
        this.f18837a = veVar;
        veVar.getInteractionManager().c(this);
        this.ve = i10;
        this.tt = ttVar;
        this.f18838c = new com.byazt.ua.c();
        this.f18841m = icVar;
        int iT = nb.t(icVar);
        this.sp = iT;
        c(iT);
        this.f18837a.setPluginAdInteractionListener(this.rh);
        if (context == null || ic.ve(icVar) || !CreativeContainer.c(icVar)) {
            return;
        }
        this.nu = new CreativeContainer(context, icVar, this.f18837a.getInteractionManager());
    }

    public NativeVideoTsView createNativeVideoTsView(boolean z10) {
        NativeVideoTsView nativeDrawVideoTsView = z10 ? new NativeDrawVideoTsView(this.f18837a.getContext(), this.f18837a.getMaterialMeta()) : new NativeVideoTsView(this.f18837a.getContext(), this.f18837a.getMaterialMeta(), false, false, nb.tt(this.ve), false, false);
        this.sl = new WeakReference<>(nativeDrawVideoTsView);
        this.f18837a.setWeakReferenceTsView(this.sl);
        this.f18837a.setVideoViewEasyPlayableSender();
        return nativeDrawVideoTsView;
    }

    @Override // com.byazt.lq.tt, com.byazt.nc.u
    public void destroy() {
        NativeVideoTsView nativeVideoTsView;
        if (this.sl != null && (nativeVideoTsView = this.sl.get()) != null) {
            nativeVideoTsView.gt();
        }
        LazeLayout lazeLayout = this.f18839da;
        if (lazeLayout != null) {
            lazeLayout.c();
        }
        CreativeContainer creativeContainer = this.nu;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(null);
        }
        super.destroy();
    }

    public JSONObject filterVideoKeys(Map<String, Object> map) throws Exception {
        JSONObject jSONObject = new JSONObject();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null) {
                    if (key.contains("video") || key.contains("video_url") || key.contains("videoUrl")) {
                        jSONObject.put(key, value);
                    }
                }
            }
        }
        return jSONObject;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.tt.ve(getLifecycleId(), 3);
    }

    public int getAdType() {
        return this.ve;
    }

    @Override // com.byazt.lq.tt, com.byazt.nc.u
    public View getAdView() {
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsViewInflate = null;
        if (this.f18837a.getMaterialMeta() == null || this.f18837a.getContext() == null) {
            return null;
        }
        com.byazt.iyp.tt.c(this.f18837a.getMaterialMeta().c());
        if (ic.tt(this.f18837a.getMaterialMeta())) {
            yp.c().c(this.f18837a.getMaterialMeta(), 3, "valid invoke");
        }
        if (com.byazt.wu.uj.c(this.f18837a.getMaterialMeta())) {
            return c();
        }
        Context context = this.f18837a.getContext();
        if (ic.ve(this.f18841m)) {
            if (!x.c() || !gt.tt().bw().tt) {
                try {
                    nativeVideoTsViewInflate = inflate(context);
                } catch (Throwable unused) {
                }
                if (nativeVideoTsViewInflate != null) {
                    onFill(nativeVideoTsViewInflate);
                }
                return nativeVideoTsViewInflate;
            }
            if (this.sl != null && (nativeVideoTsView = this.sl.get()) != null) {
                nativeVideoTsView.setNativeRenderAd(true);
                return nativeVideoTsView;
            }
            this.f18839da = new LazeLayout(context, this, this);
        } else if (this.nu != null) {
            com.byazt.kyz.ve veVar = this.f18837a;
            if (veVar != null && veVar.getInteractionManager() != null) {
                this.f18837a.getInteractionManager().c(this.nu);
            }
            return this.nu;
        }
        com.byazt.dz.uj.c().c(this.f18837a.getMaterialMeta()).c(this.ve).tt(this.sp);
        return this.f18839da;
    }

    @Override // com.byazt.nc.da
    public int getAdViewHeight() {
        com.byazt.kyz.ve veVar = this.f18837a;
        if (veVar != null) {
            ic materialMeta = veVar.getMaterialMeta();
            int imageMode = this.f18837a.getImageMode();
            if (CreativeContainer.c(materialMeta) && (imageMode == 5 || imageMode == 15 || imageMode == 2001 || imageMode == 2002)) {
                return materialMeta.pa().get(0).ve();
            }
        }
        try {
            if (this.uj == null) {
                this.uj = tt();
            }
            int[] iArr = this.uj;
            if (iArr != null && iArr.length >= 2) {
                return iArr[1];
            }
            return 720;
        } catch (Throwable th) {
            m.ve("TTFeedAdImpl", "getAdViewHeight error", th);
            return 720;
        }
    }

    @Override // com.byazt.nc.da
    public int getAdViewWidth() {
        com.byazt.kyz.ve veVar = this.f18837a;
        if (veVar != null) {
            ic materialMeta = veVar.getMaterialMeta();
            int imageMode = this.f18837a.getImageMode();
            if (CreativeContainer.c(materialMeta) && (imageMode == 5 || imageMode == 15 || imageMode == 2001 || imageMode == 2002)) {
                return materialMeta.pa().get(0).tt();
            }
        }
        try {
            if (this.uj == null) {
                this.uj = tt();
            }
            int[] iArr = this.uj;
            if (iArr != null && iArr.length >= 2) {
                return iArr[0];
            }
            return LogType.UNEXP_ANR;
        } catch (Throwable th) {
            m.ve("TTFeedAdImpl", "getAdViewWidth error", th);
            return LogType.UNEXP_ANR;
        }
    }

    public int getCodeId() {
        return this.sp;
    }

    @Override // com.byazt.nc.da
    public com.byazt.yh.c getCustomVideo() {
        if (ic.tt(this.f18841m)) {
            yp.c().c(this.f18841m, 1, "invalid invoke");
            return null;
        }
        if (!ic.c(this.f18837a.getMaterialMeta())) {
            return null;
        }
        if (this.f18845x == null) {
            this.f18845x = new com.byazt.yh.c() { // from class: com.byazt.pro.uj.3
                public long tt = 0;

                @Override // com.byazt.yh.c
                public String getVideoUrl() {
                    if (ic.tt(uj.this.f18841m)) {
                        yp.c().c(uj.this.f18841m, 2, "invalid invoke url");
                        return null;
                    }
                    if (uj.this.f18837a.getMaterialMeta() == null || uj.this.f18837a.getMaterialMeta().g() != 1 || xd.z(uj.this.f18837a.getMaterialMeta()) == null) {
                        return null;
                    }
                    if (!uj.this.f18840i) {
                        uj.this.f18840i = true;
                    }
                    return xd.c(uj.this.f18837a.getMaterialMeta());
                }

                @Override // com.byazt.yh.c
                public void reportVideoAutoStart() {
                    com.byazt.ddx.uj.c(uj.this.f18837a.getMaterialMeta(), nb.tt(uj.this.f18837a.getMaterialMeta()), "feed_auto_play", 0L, 0, (Map<String, Object>) null);
                    if (xd.z(uj.this.f18837a.getMaterialMeta()) != null) {
                        a aVarC = xd.c(4, uj.this.f18837a.getMaterialMeta());
                        aVarC.putExtra("material_meta", uj.this.f18837a.getMaterialMeta());
                        com.byazt.dj.tt ttVarIj = uj.this.f18837a.getMaterialMeta().ij();
                        aVarC.putExtra("ad_slot", Integer.valueOf(ttVarIj != null ? ttVarIj.gt() : 0));
                        aVarC.setPlayerType(-1);
                        com.byazt.sw.uj.c(uj.this.f18837a.getMaterialMeta(), (com.byazt.oce.c) uj.this, aVarC, true, com.byazt.sw.uj.c());
                    }
                }

                @Override // com.byazt.yh.c
                public void reportVideoBreak(long j10) {
                    if (this.tt == 0) {
                        this.tt = SystemClock.elapsedRealtime();
                    }
                    long videoDuration = ((long) uj.this.getVideoDuration()) * 1000;
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.tt) - j10;
                    long j11 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    nu.c cVar = new nu.c();
                    cVar.c(j10);
                    cVar.ve(videoDuration);
                    cVar.tt(j11);
                    cVar.n(0);
                    cVar.a(0);
                    cVar.c(true);
                    com.byazt.sw.uj.c(uj.this, cVar, null, -1);
                }

                @Override // com.byazt.yh.c
                public void reportVideoContinue(long j10) {
                    if (this.tt == 0) {
                        this.tt = SystemClock.elapsedRealtime();
                    }
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.tt) - j10;
                    long j11 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    nu.c cVar = new nu.c();
                    cVar.c(j10);
                    cVar.ve(((long) uj.this.getVideoDuration()) * 1000);
                    cVar.tt(j11);
                    cVar.c(true);
                    com.byazt.sw.uj.tt(uj.this, cVar);
                }

                @Override // com.byazt.yh.c
                public void reportVideoError(long j10, int i10, int i11) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    if (this.tt == 0) {
                        this.tt = jElapsedRealtime;
                    }
                    long j11 = jElapsedRealtime - this.tt;
                    long videoDuration = ((long) uj.this.getVideoDuration()) * 1000;
                    long j12 = j11 - j10;
                    if (j12 < 0) {
                        j12 = 0;
                    }
                    int i12 = j11 == 0 ? 1 : 0;
                    nu.c cVar = new nu.c();
                    cVar.tt(j12);
                    cVar.ve(videoDuration);
                    cVar.c(j10);
                    cVar.c(i10);
                    cVar.tt(i11);
                    cVar.c(true);
                    com.byazt.sw.uj.c((com.byazt.oce.c) uj.this, cVar, "customer error", i12, false);
                }

                @Override // com.byazt.yh.c
                public void reportVideoFinish() {
                    if (this.tt == 0) {
                        this.tt = SystemClock.elapsedRealtime();
                    }
                    long videoDuration = ((long) uj.this.getVideoDuration()) * 1000;
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.tt) - videoDuration;
                    long j10 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    nu.c cVar = new nu.c();
                    cVar.c(videoDuration);
                    cVar.ve(videoDuration);
                    cVar.tt(j10);
                    cVar.a(0);
                    cVar.c(true);
                    com.byazt.sw.uj.uj(uj.this, cVar);
                }

                @Override // com.byazt.yh.c
                public void reportVideoPause(long j10) {
                    if (this.tt == 0) {
                        this.tt = SystemClock.elapsedRealtime();
                    }
                    long jElapsedRealtime = (SystemClock.elapsedRealtime() - this.tt) - j10;
                    long j11 = jElapsedRealtime >= 0 ? jElapsedRealtime : 0L;
                    nu.c cVar = new nu.c();
                    cVar.c(j10);
                    cVar.ve(((long) uj.this.getVideoDuration()) * 1000);
                    cVar.tt(j11);
                    cVar.c(true);
                    com.byazt.sw.uj.c(uj.this, cVar, -1);
                }

                @Override // com.byazt.yh.c
                public void reportVideoStart() {
                    this.tt = SystemClock.elapsedRealtime();
                    nu.c cVar = new nu.c();
                    cVar.tt(true);
                    cVar.c(true);
                    com.byazt.sw.uj.c(uj.this, cVar);
                }

                @Override // com.byazt.yh.c
                public void reportVideoStartError(int i10, int i11) {
                    HashMap map = new HashMap();
                    map.put("creative_id", uj.this.f18837a.getMaterialMeta().uj());
                    map.put("error_code", Integer.valueOf(i10));
                    map.put("extra_error_code", Integer.valueOf(i11));
                    map.put("is_customer", 1);
                    com.byazt.jzl.uj ujVarZ = xd.z(uj.this.f18837a.getMaterialMeta());
                    if (ujVarZ != null) {
                        map.put("video_size", Long.valueOf(ujVarZ.getSize()));
                        map.put("video_resolution", ujVarZ.getResolution());
                    }
                    com.byazt.ddx.uj.ve(uj.this.f18837a.getMaterialMeta(), nb.tt(uj.this.f18837a.getMaterialMeta()), "play_start_error", map);
                }
            };
        }
        return this.f18845x;
    }

    @Override // com.byazt.ua.c.InterfaceC0445c
    public boolean getHasUseCustomizeVideo() {
        return this.f18840i;
    }

    @Override // com.byazt.nc.u
    public String getLifecycleId() {
        ic icVar = this.f18841m;
        if (icVar != null) {
            return icVar.zm();
        }
        return null;
    }

    @Override // com.byazt.lq.tt, com.byazt.nc.u
    public Map<String, Object> getMediaExtraInfo() {
        JSONObject jSONObjectFilterVideoKeys;
        Map<String, Object> mediaExtraInfo = this.f18837a.getMediaExtraInfo();
        if (n.c("media_ext_video", 1.0d)) {
            Exception e10 = null;
            try {
                jSONObjectFilterVideoKeys = filterVideoKeys(mediaExtraInfo);
                try {
                    ic materialMeta = this.f18837a.getMaterialMeta();
                    if (jSONObjectFilterVideoKeys != null && jSONObjectFilterVideoKeys.length() > 0) {
                        jSONObjectFilterVideoKeys.put("rit", nb.c(materialMeta, ""));
                        jSONObjectFilterVideoKeys.put("req_id", materialMeta.qy());
                        jSONObjectFilterVideoKeys.put("cid", materialMeta.uj());
                    }
                } catch (Exception e11) {
                    e10 = e11;
                }
            } catch (Exception e12) {
                jSONObjectFilterVideoKeys = null;
                e10 = e12;
            }
            if (jSONObjectFilterVideoKeys != null && jSONObjectFilterVideoKeys.length() > 0) {
                yp.c().c("media_ext_video", jSONObjectFilterVideoKeys, e10);
            }
        }
        ic materialMeta2 = this.f18837a.getMaterialMeta();
        if (materialMeta2 == null) {
            return mediaExtraInfo;
        }
        if (mediaExtraInfo == null) {
            mediaExtraInfo = new HashMap<>();
        }
        mediaExtraInfo.put("reward_task_type", Integer.valueOf(materialMeta2.ne()));
        mediaExtraInfo.put("reward_task_threshold", Integer.valueOf(materialMeta2.ix() != null ? materialMeta2.ix().tt() : -1));
        if (materialMeta2.id() == 166 && com.byazt.ex.c.c(materialMeta2)) {
            int iUj = bx.uj(materialMeta2);
            int iN = bx.n(materialMeta2);
            mediaExtraInfo.put("live_author_follower_count", Integer.valueOf(iUj));
            mediaExtraInfo.put("live_watch_count", Integer.valueOf(iN));
        }
        return mediaExtraInfo;
    }

    @Override // com.byazt.nc.u
    public com.byazt.sbm.n getMediationManager() {
        return new com.byazt.ah.ve();
    }

    public NativeVideoTsView getNativeVideoTsView() {
        if (this.sl != null) {
            return this.sl.get();
        }
        return null;
    }

    @Override // com.byazt.nc.da
    public double getVideoDuration() {
        if (t.c(this.f18837a.getMaterialMeta())) {
            return 0.0d;
        }
        return xd.sp(this.f18837a.getMaterialMeta());
    }

    @Override // com.byazt.ua.c.InterfaceC0445c
    public com.byazt.ua.c getVideoModel() {
        return this.f18838c;
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onProgressUpdate(long j10, long j11) {
        com.byazt.bf.c cVar = this.f18842n;
        if (cVar != null) {
            cVar.c(j10, j11);
        }
        c(j10, j11);
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdContinuePlay() {
        com.byazt.bf.c cVar = this.f18842n;
        if (cVar != null) {
            cVar.uj(this);
        }
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdPaused() {
        com.byazt.bf.c cVar = this.f18842n;
        if (cVar != null) {
            cVar.ve(this);
        }
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoAdStartPlay() {
        com.byazt.bf.c cVar = this.f18842n;
        if (cVar != null) {
            cVar.tt(this);
        }
    }

    @Override // com.byazt.dh.ve.InterfaceC0292ve
    public void onVideoComplete() {
        com.byazt.bf.c cVar = this.f18842n;
        if (cVar != null) {
            cVar.n(this);
        }
        if (!ve() || this.f18846z) {
            return;
        }
        this.f18844u.c(0);
        this.f18846z = true;
    }

    @Override // com.byazt.dh.ve.uj
    public void onVideoError(int i10, int i11) {
        com.byazt.bf.c cVar = this.f18842n;
        if (cVar != null) {
            cVar.c(i10, i11);
        }
    }

    @Override // com.byazt.dh.ve.uj
    public void onVideoLoad() {
        com.byazt.bf.c cVar = this.f18842n;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    @Override // com.byazt.nc.u
    public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.lsp.c cVar, com.byazt.am.uj ujVar) {
        View adView;
        try {
            registerViewForInteraction(viewGroup, (List<View>) null, list, list2, list3, (View) null, cVar);
            if (ujVar != null) {
                View viewFindViewById = viewGroup.findViewById(ujVar.t());
                if (viewFindViewById != null && getAdLogo() != null) {
                    viewFindViewById.setVisibility(0);
                    if (viewFindViewById instanceof ViewGroup) {
                        ((ViewGroup) viewFindViewById).removeAllViews();
                        ImageView imageView = new ImageView(viewGroup.getContext());
                        imageView.setImageBitmap(getAdLogo());
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                        layoutParams.width = pf.ve(viewGroup.getContext(), 38.0f);
                        layoutParams.height = pf.ve(viewGroup.getContext(), 38.0f);
                        viewFindViewById.setLayoutParams(layoutParams);
                        ((ViewGroup) viewFindViewById).addView(imageView, -1, -1);
                    } else if (viewFindViewById instanceof ImageView) {
                        ((ImageView) viewFindViewById).setImageBitmap(getAdLogo());
                    }
                }
                FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(ujVar.sp());
                if (frameLayout == null || (adView = getAdView()) == null) {
                    return;
                }
                pf.x(adView);
                frameLayout.removeAllViews();
                frameLayout.addView(adView, -1, -1);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.nc.u
    public void setEasyPlayWidgetListener(com.byazt.lsp.tt ttVar) {
        com.byazt.kyz.ve veVar = this.f18837a;
        if (veVar != null) {
            veVar.setEasyPlayWidgetListener(ttVar);
        }
    }

    @Override // com.byazt.nc.da
    public void setVideoAdListener(com.byazt.bf.c cVar) {
        this.f18842n = cVar;
    }

    @Override // com.byazt.nc.da
    public void setVideoRewardListener(com.byazt.bf.tt ttVar) {
        this.f18844u = ttVar;
    }

    private int[] tt() {
        if (this.f18837a.getMaterialMeta() == null) {
            return null;
        }
        if (this.f18837a.getMaterialMeta().id() == 166 && bx.c(this.f18837a.getMaterialMeta())) {
            return new int[]{bx.t(this.f18837a.getMaterialMeta()), bx.u(this.f18837a.getMaterialMeta())};
        }
        if (this.f18837a.getMaterialMeta().xx() == 1 && this.f18837a.getMaterialMeta().hc() == 1 && xd.m(this.f18837a.getMaterialMeta()) != null) {
            return xd.m(this.f18837a.getMaterialMeta()).getWidthAndHeight();
        }
        if (xd.z(this.f18837a.getMaterialMeta()) != null) {
            return xd.z(this.f18837a.getMaterialMeta()).getWidthAndHeight();
        }
        return null;
    }

    private boolean ve() {
        if (this.f18837a.getMaterialMeta() == null || this.f18844u == null) {
            return false;
        }
        int iKz = this.f18837a.getMaterialMeta().kz();
        return iKz == 1 || iKz == 2;
    }

    @Override // com.byazt.lbn.c
    public NativeVideoTsView inflate(Context context) {
        NativeVideoTsView nativeVideoTsViewCreateNativeVideoTsView = createNativeVideoTsView(false);
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdClickListenerTTNativeAd(this);
        nativeVideoTsViewCreateNativeVideoTsView.setAdCreativeClickListener(new NativeVideoTsView.c() { // from class: com.byazt.pro.uj.1
            @Override // com.byazt.un.NativeVideoTsView.c
            public void c(View view, int i10) {
                if (uj.this.f18837a.getInteractionManager() != null) {
                    uj.this.f18837a.getInteractionManager().c(view, i10);
                }
            }
        });
        com.byazt.omf.x.m().c(-1L);
        nativeVideoTsViewCreateNativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.uj() { // from class: com.byazt.pro.uj.2
            @Override // com.byazt.un.NativeVideoTsView.uj
            public void c(boolean z10, long j10, long j11, long j12, boolean z11, boolean z12) {
                com.byazt.ua.c cVar = uj.this.f18838c;
                if (cVar != null) {
                    cVar.f20527c = z10;
                    cVar.f20528n = j10;
                    cVar.f20526a = j11;
                    cVar.sp = j12;
                    cVar.uj = z11;
                    cVar.f20529x = z12;
                }
            }
        });
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdLoadListener(this);
        nativeVideoTsViewCreateNativeVideoTsView.setVideoAdInteractionListener(this);
        if (5 == this.ve) {
            nativeVideoTsViewCreateNativeVideoTsView.setIsAutoPlay(this.f18837a.isAllowDevOperate() ? this.tt.n() : this.f18837a.isAutoPlay());
        } else {
            nativeVideoTsViewCreateNativeVideoTsView.setIsAutoPlay(this.f18837a.isAutoPlay());
        }
        nativeVideoTsViewCreateNativeVideoTsView.setIsQuiet(this.f18841m.ab() == 1);
        com.byazt.pop.ve veVarC = this.f18837a.getInteractionManager().c();
        if (veVarC != null) {
            veVarC.c(this);
        }
        return nativeVideoTsViewCreateNativeVideoTsView;
    }

    @Override // com.byazt.lbn.LazeLayout.c
    public void onFill(NativeVideoTsView nativeVideoTsView) {
        if (nativeVideoTsView != null) {
            nativeVideoTsView.setNativeRenderAd(true);
            nativeVideoTsView.c(0L, true, false);
        }
    }

    private View c() {
        View view;
        WeakReference<View> weakReference = this.f18843t;
        if (weakReference != null && (view = weakReference.get()) != null) {
            return view;
        }
        EcMallWebView ecMallWebView = new EcMallWebView(this.f18837a.getContext(), this.f18837a.getMaterialMeta(), this.ve == 9 ? 6 : 1);
        ecMallWebView.setMaterialMeta(cu.c(this.f18841m));
        this.f18843t = new WeakReference<>(ecMallWebView);
        return ecMallWebView;
    }

    private void c(int i10) {
        int iA = gt.tt().a(i10);
        if (3 == iA) {
            this.f18837a.setAllowDevOperate(false);
            this.f18837a.setAutoPlay(false);
            return;
        }
        if (1 == iA && rh.uj(this.f18837a.getContext())) {
            this.f18837a.setAllowDevOperate(false);
        } else if (2 == iA) {
            if (!rh.n(this.f18837a.getContext()) && !rh.uj(this.f18837a.getContext()) && !rh.a(this.f18837a.getContext())) {
                return;
            } else {
                this.f18837a.setAllowDevOperate(false);
            }
        } else if (4 == iA) {
            this.f18837a.setAllowDevOperate(true);
            return;
        } else {
            if (5 != iA) {
                return;
            }
            if (!rh.uj(this.f18837a.getContext()) && !rh.a(this.f18837a.getContext())) {
                return;
            }
        }
        this.f18837a.setAutoPlay(true);
    }

    private void c(long j10, long j11) {
        long j12;
        int i10;
        if (ve() && !this.f18846z) {
            int iKz = this.f18837a.getMaterialMeta().kz();
            if (iKz == 1) {
                j12 = 15000;
            } else {
                j12 = iKz == 2 ? 30000L : 0L;
            }
            if (j11 <= j12) {
                i10 = (int) ((j11 - j10) / 1000);
            } else {
                i10 = (int) ((j12 - j10) / 1000);
            }
            if (i10 < 0) {
                i10 = 0;
            }
            if (i10 == this.yp) {
                return;
            }
            this.yp = i10;
            if (this.yp == 0) {
                this.f18846z = true;
            }
            this.f18844u.c(this.yp);
        }
    }
}
