package com.byazt.yi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.aas.h;
import com.byazt.aas.nb;
import com.byazt.aas.rl;
import com.byazt.bwm.sp;
import com.byazt.bzd.x;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.fcd.uj;
import com.byazt.nc.sl;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.sq.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTFullScreenVideoLandscapeActivity;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 216, 13})
public class tt extends sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f22230c;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.xjc.ve f22233m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f22234n;
    public boolean nu;
    public final String sp;
    public final ic tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.dj.tt f22236u;
    public String uj;
    public com.byazt.gl.c yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.pop.c f22238z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f22229a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f22237x = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Double f22232i = null;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f22231da = false;
    public boolean sl = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f22235t = System.currentTimeMillis();
    public boolean ve = false;

    public tt(Context context, ic icVar, com.byazt.dj.tt ttVar) {
        this.f22230c = context;
        this.tt = icVar;
        this.f22236u = ttVar;
        this.sp = icVar.hashCode() + icVar.qy() + hashCode();
        com.byazt.rgb.tt.c(icVar, ttVar, 8, getLifecycleId());
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.tt.ve(getLifecycleId(), 3);
    }

    @Override // com.byazt.nc.sl
    public long getExpirationTimestamp() {
        return this.f22234n;
    }

    @Override // com.byazt.nc.sl
    public int getFullVideoAdType() {
        ic icVar = this.tt;
        if (icVar == null) {
            return -1;
        }
        if (rl.ve(icVar)) {
            return 2;
        }
        if (rl.uj(this.tt)) {
            return 1;
        }
        return com.byazt.ex.c.c(this.tt) ? 3 : 0;
    }

    @Override // com.byazt.nc.sl
    public int getInteractionType() {
        ic icVar = this.tt;
        if (icVar == null) {
            return -1;
        }
        return icVar.i();
    }

    public String getLifecycleId() {
        ic icVar = this.tt;
        if (icVar == null) {
            return null;
        }
        return icVar.zm();
    }

    @Override // com.byazt.nc.sl
    public Map<String, Object> getMediaExtraInfo() {
        ic icVar = this.tt;
        if (icVar == null) {
            return null;
        }
        Map<String, Object> mapYt = icVar.yt();
        mapYt.put("expireTimestamp", Long.valueOf(getExpirationTimestamp()));
        mapYt.put("adSceneType", Integer.valueOf(uj.c(this.tt)));
        return mapYt;
    }

    @Override // com.byazt.nc.sl
    public com.byazt.sbm.uj getMediationManager() {
        return new com.byazt.ah.tt();
    }

    @Override // com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
        if (this.sl) {
            return;
        }
        h.c(this.tt, d10, str, str2);
        this.sl = true;
    }

    public void preloadNextVideo() {
        if (this.tt == null || this.f22236u == null || this.nu || gt.tt().hz() != 0) {
            return;
        }
        try {
            boolean z10 = this.ve;
            if (this.f22236u == null || !z10) {
                return;
            }
            com.byazt.cf.tt.c().c(this.f22236u);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.nc.x
    public void setAdInteractionListener(com.byazt.ocd.tt ttVar) {
        ic icVar = this.tt;
        if (icVar != null) {
            com.byazt.omf.rl.c(icVar.rl(), ttVar, com.byazt.ocd.tt.class);
        }
    }

    @Override // com.byazt.nc.sl
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        this.f22238z = com.byazt.pop.c.C0410c.c(veVar);
    }

    public void setExpirationTimestamp(long j10) {
        this.f22234n = j10;
    }

    @Override // com.byazt.nc.sl
    public void setFullScreenVideoAdInteractionListener(com.byazt.gl.c cVar) {
        if (this.f22229a.get()) {
            c.c(this.sp, cVar);
        }
        this.yp = cVar;
    }

    public void setInsertAdBundle(com.byazt.xjc.ve veVar) {
        this.f22233m = veVar;
    }

    public void setPreload() {
        if (this.f22229a.get()) {
            return;
        }
        this.ve = true;
    }

    @Override // com.byazt.nc.x
    public void setPrice(Double d10) {
        this.f22232i = d10;
    }

    public void setSecondAdPage(boolean z10) {
        this.nu = z10;
    }

    public void setVideoCacheCallbackResult(int i10) {
        this.f22237x = i10;
    }

    @Override // com.byazt.nc.sl
    public void showFullScreenVideoAd(Activity activity) {
        com.byazt.rgb.tt.tt(getLifecycleId());
        ic icVar = this.tt;
        String strW_ = icVar != null ? icVar.w_() : "";
        ic icVar2 = this.tt;
        new com.byazt.ddx.c.C0288c().n(icVar2 != null ? icVar2.uj() : "0").c("fullscreen_interstitial_ad").tt("show_start").uj(strW_).c((com.byazt.ya.c) null);
        if (activity != null && activity.isFinishing()) {
            m.uj("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error1: activity is finishing");
            activity = null;
        }
        if (this.f22229a.get()) {
            return;
        }
        ic icVar3 = this.tt;
        if (icVar3 != null) {
            com.byazt.iyp.tt.c(icVar3, "fullscreen_interstitial_ad", activity, this.uj, this.ve);
        }
        this.f22229a.set(true);
        ic icVar4 = this.tt;
        if (icVar4 != null) {
            if (xd.z(icVar4) == null && this.tt.pa() == null) {
                return;
            }
            if (getInteractionType() == 4) {
                x.c(new sp("full_register_download") { // from class: com.byazt.yi.tt.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.yih.x.c(tt.this.f22230c, tt.this.tt, "fullscreen_interstitial_ad").c(tt.this.f22238z);
                    }
                });
            }
            com.byazt.omf.tt.c().get("full_video_show_time", System.currentTimeMillis());
            Context context = activity == null ? this.f22230c : activity;
            if (context == null) {
                context = gt.getContext();
            }
            c();
            Intent intent = this.tt.by() == 2 ? new Intent(context, (Class<?>) TTFullScreenVideoLandscapeActivity.class) : new Intent(context, (Class<?>) TTFullScreenVideoActivity.class);
            if (activity == null) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.byazt.dj.tt ttVar = this.f22236u;
            if (ttVar != null) {
                intent.putExtra("is_adm", !TextUtils.isEmpty(ttVar.rl()));
            }
            intent.putExtra("is_preload", this.ve);
            intent.putExtra("object_create_ts", this.f22235t);
            Double d10 = this.f22232i;
            intent.putExtra("_client_bidding_aution_price", d10 != null ? String.valueOf(d10) : "");
            if (!TextUtils.isEmpty(this.uj)) {
                intent.putExtra("rit_scene", this.uj);
            }
            int i10 = this.f22237x;
            if (i10 != -1) {
                intent.putExtra("key_video_cache_callback", i10);
            }
            if (this.nu) {
                intent.putExtra("is_second_page", true);
            }
            nb.c(intent, this.tt);
            intent.putExtra("multi_process_key", this.sp);
            com.byazt.xjc.ve veVar = this.f22233m;
            if (veVar != null) {
                intent.putExtra("insert_ad_bundle", veVar.i().toString());
            }
            c(context, intent);
            com.byazt.dz.uj.c().c(this.tt).c(8);
        }
    }

    @Override // com.byazt.nc.x
    public void win(Double d10) {
        if (this.f22231da) {
            return;
        }
        h.c(this.tt, d10);
        this.f22231da = true;
    }

    private void c() {
        if (this.yp != null) {
            c.c(this.sp, new com.byazt.gl.c(null) { // from class: com.byazt.yi.tt.2
                @Override // com.byazt.gl.c
                public void c(Bundle bundle) {
                    com.byazt.rgb.tt.c(tt.this.getLifecycleId(), false, bundle != null ? bundle.getBoolean("has_show_event") : false);
                    if (tt.this.yp != null) {
                        tt.this.yp.c(bundle);
                    }
                }

                @Override // com.byazt.gl.c
                public void tt() {
                    com.byazt.rgb.tt.ve(tt.this.getLifecycleId(), 1);
                    if (tt.this.yp != null) {
                        tt.this.yp.tt();
                    }
                }

                @Override // com.byazt.gl.c
                public void uj() {
                    if (tt.this.yp != null) {
                        tt.this.yp.uj();
                    }
                }

                @Override // com.byazt.gl.c
                public void ve() {
                    if (tt.this.yp != null) {
                        tt.this.yp.ve();
                    }
                }

                @Override // com.byazt.gl.c
                public void c() {
                    com.byazt.rgb.tt.ve(tt.this.getLifecycleId());
                    if (tt.this.yp != null) {
                        tt.this.yp.c();
                    }
                }
            });
        }
    }

    private void c(Context context, Intent intent) {
        com.byazt.nr.tt.c(context, intent, new com.byazt.nr.tt.c() { // from class: com.byazt.yi.tt.3
            @Override // com.byazt.nr.tt.c
            public void c() {
            }

            @Override // com.byazt.nr.tt.c
            public void c(Throwable th) {
                m.ve("TTFullScreenVideoAdImpl", "show full screen video error: ", th);
            }
        });
        if (this.f22236u == null) {
            return;
        }
        com.byazt.lvl.c cVarC = com.byazt.lvl.c.c();
        com.byazt.dj.tt ttVar = this.f22236u;
        cVarC.c(ttVar, ttVar.uj());
        if (!this.nu) {
            com.byazt.cf.ve.c(8, this.tt);
        }
        preloadNextVideo();
    }

    @Override // com.byazt.nc.sl
    public void showFullScreenVideoAd(Activity activity, Object obj, String str) {
        if (obj == null) {
            m.uj("TTFullScreenVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        String strC = n.c(obj);
        if ("customize_scenes".equalsIgnoreCase(strC)) {
            this.uj = str;
        } else {
            this.uj = strC;
        }
        showFullScreenVideoAd(activity);
    }
}
