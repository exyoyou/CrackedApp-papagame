package com.byazt.yi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.aas.h;
import com.byazt.aas.nb;
import com.byazt.aas.rl;
import com.byazt.bzd.x;
import com.byazt.cf.sp;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.l;
import com.byazt.ete.xd;
import com.byazt.fcd.uj;
import com.byazt.nc.z;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.sbm.a;
import com.byazt.sq.n;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoLandscapeActivity;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.webrtc.haima.HmRtcEnvironment;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 216, 54})
public class ve extends z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f22242a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f22243c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.tn.tt f22244da;
    public com.byazt.xjc.ve gr;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.tn.c f22245i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f22246m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f22247n;
    public String nu;
    public boolean rh;
    public com.byazt.pop.c sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f22248t;
    public final ic tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f22249u;
    public final com.byazt.dj.tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.tn.c f22250x;
    public boolean yp;
    public boolean zm;
    public final AtomicBoolean sp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f22251z = 1;
    public int my = -1;
    public Double gt = null;
    public boolean rl = false;
    public boolean qy = false;
    public long gu = System.currentTimeMillis();
    public boolean uj = false;

    public ve(Context context, ic icVar, com.byazt.dj.tt ttVar) {
        this.f22243c = context;
        this.tt = icVar;
        this.ve = ttVar;
        this.f22248t = icVar.hashCode() + icVar.qy() + hashCode();
        com.byazt.rgb.tt.c(icVar, ttVar, 7, getLifecycleId());
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.tt.ve(getLifecycleId(), 3);
    }

    @Override // com.byazt.nc.z
    public long getExpirationTimestamp() {
        return this.f22242a;
    }

    @Override // com.byazt.nc.z
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

    @Override // com.byazt.nc.z
    public Map<String, Object> getMediaExtraInfo() {
        ic icVar = this.tt;
        if (icVar == null) {
            return null;
        }
        Map<String, Object> mapYt = icVar.yt();
        if (mapYt == null) {
            mapYt = new HashMap<>();
        }
        mapYt.put("expireTimestamp", Long.valueOf(getExpirationTimestamp()));
        mapYt.put("isRDEnable", Boolean.valueOf(kp.uj(this.tt)));
        mapYt.put("isPangle", Boolean.TRUE);
        mapYt.put("adSceneType", Integer.valueOf(uj.c(this.tt)));
        return mapYt;
    }

    @Override // com.byazt.nc.z
    public a getMediationManager() {
        return new com.byazt.ah.uj();
    }

    @Override // com.byazt.nc.z
    public int getRewardVideoAdType() {
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

    @Override // com.byazt.nc.x
    public void loss(Double d10, String str, String str2) {
        if (this.qy) {
            return;
        }
        h.c(this.tt, d10, str, str2);
        this.qy = true;
    }

    public void preloadNextVideo() {
        if (this.tt == null || this.ve == null || this.yp || this.zm || gt.tt().hz() != 0) {
            return;
        }
        try {
            if (this.uj) {
                sp.c().c(this.ve);
            }
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

    public void setCustomPlayAgain(boolean z10) {
        this.rh = z10;
    }

    @Override // com.byazt.nc.z
    public void setDownloadListener(com.byazt.ocd.ve veVar) {
        this.sl = com.byazt.pop.c.C0410c.c(veVar);
    }

    public void setExpirationTimestamp(long j10) {
        this.f22242a = j10;
    }

    public void setInsertAdBundle(com.byazt.xjc.ve veVar) {
        this.gr = veVar;
    }

    public void setMetaMd5(String str) {
        this.f22248t = str;
    }

    public void setPlayAgain(boolean z10) {
        this.yp = z10;
    }

    public void setPlayAgainCount(int i10) {
        this.f22251z = i10;
    }

    public void setPlayAgainRewardAmount(String str) {
        this.nu = str;
    }

    public void setPlayAgainRewardName(String str) {
        this.f22246m = str;
    }

    public void setPlayAgainSourceRit(int i10) {
        this.f22249u = i10;
    }

    public void setPreload() {
        if (this.sp.get()) {
            return;
        }
        this.uj = true;
    }

    @Override // com.byazt.nc.x
    public void setPrice(Double d10) {
        this.gt = d10;
    }

    @Override // com.byazt.nc.z
    public void setRewardAdInteractionListener(com.byazt.tn.c cVar) {
        if (this.sp.get()) {
            c.c(this.f22248t, cVar);
        } else {
            this.f22250x = cVar;
        }
    }

    @Override // com.byazt.nc.z
    public void setRewardPlayAgainController(com.byazt.tn.tt ttVar) {
        if (!this.sp.get()) {
            this.f22244da = ttVar;
        } else {
            setCustomPlayAgain(true);
            c.c(l.tt(this.f22248t), ttVar);
        }
    }

    @Override // com.byazt.nc.z
    public void setRewardPlayAgainInteractionListener(com.byazt.tn.c cVar) {
        if (this.sp.get()) {
            c.c(l.c(this.f22248t), cVar);
        } else {
            this.f22245i = cVar;
        }
    }

    public void setSecondAdPage(boolean z10) {
        this.zm = z10;
    }

    public void setVideoCacheCallbackResult(int i10) {
        this.my = i10;
    }

    @Override // com.byazt.nc.z
    public void showRewardVideoAd(Activity activity) {
        com.byazt.rgb.tt.tt(getLifecycleId());
        ic icVar = this.tt;
        String strW_ = icVar != null ? icVar.w_() : "";
        ic icVar2 = this.tt;
        new com.byazt.ddx.c.C0288c().n(icVar2 != null ? icVar2.uj() : "0").c("rewarded_video").tt("show_start").uj(strW_).c((com.byazt.ya.c) null);
        if (activity != null && activity.isFinishing()) {
            m.uj("TTRewardVideoAdImpl", "showRewardVideoAd error1: activity is finishing");
            activity = null;
        }
        if (this.sp.get()) {
            return;
        }
        ic icVar3 = this.tt;
        if (icVar3 != null) {
            com.byazt.iyp.tt.c(icVar3, "rewarded_video", activity, this.f22247n, this.uj);
        }
        this.sp.set(true);
        ic icVar4 = this.tt;
        if (icVar4 == null || xd.z(icVar4) == null) {
            return;
        }
        if (getInteractionType() == 4) {
            x.c(new com.byazt.bwm.sp("reward_register_download") { // from class: com.byazt.yi.ve.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.yih.x.c(ve.this.f22243c, ve.this.tt, "rewarded_video").c(ve.this.sl);
                }
            });
        }
        com.byazt.omf.tt.c().put("reward_video_show_time", System.currentTimeMillis());
        Context context = activity == null ? this.f22243c : activity;
        if (context == null) {
            context = gt.getContext();
        }
        c();
        Intent intent = this.tt.by() == 2 ? new Intent(context, (Class<?>) TTRewardVideoLandscapeActivity.class) : new Intent(context, (Class<?>) TTRewardVideoActivity.class);
        if (activity == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (this.yp) {
            intent.putExtra("is_play_again", true);
            intent.putExtra("play_again_count", this.f22251z);
        } else {
            this.f22249u = nb.t(this.tt);
        }
        if (this.zm) {
            intent.putExtra("is_second_page", true);
        }
        intent.putExtra("source_rit_id", this.f22249u);
        intent.putExtra("custom_play_again", this.rh);
        com.byazt.dj.tt ttVar = this.ve;
        if (ttVar != null) {
            intent.putExtra("media_extra", ttVar.u());
            intent.putExtra("userData", this.ve.qy());
            intent.putExtra(HmRtcEnvironment.kUserId, this.ve.yp());
            intent.putExtra(MediationConstant.REWARD_NAME, this.ve.gr());
            intent.putExtra(MediationConstant.REWARD_AMOUNT, this.ve.zm());
            intent.putExtra("is_adm", !TextUtils.isEmpty(this.ve.rl()));
        }
        if (this.yp && !TextUtils.isEmpty(this.f22246m) && !TextUtils.isEmpty(this.nu)) {
            intent.putExtra("reward_again_name", this.f22246m);
            intent.putExtra("reward_again_amount", this.nu);
        }
        intent.putExtra("is_preload", this.uj);
        intent.putExtra("object_create_ts", this.gu);
        Double d10 = this.gt;
        intent.putExtra("_client_bidding_aution_price", d10 != null ? String.valueOf(d10) : "");
        if (!TextUtils.isEmpty(this.f22247n)) {
            intent.putExtra("rit_scene", this.f22247n);
        }
        int i10 = this.my;
        if (i10 != -1) {
            intent.putExtra("key_video_cache_callback", i10);
        }
        nb.c(intent, this.tt);
        intent.putExtra("multi_process_key", this.f22248t);
        com.byazt.xjc.ve veVar = this.gr;
        if (veVar != null) {
            intent.putExtra("insert_ad_bundle", veVar.i().toString());
        }
        c(context, intent);
        com.byazt.dz.uj.c().c(this.tt).c(7);
    }

    @Override // com.byazt.nc.x
    public void win(Double d10) {
        if (this.rl) {
            return;
        }
        h.c(this.tt, d10);
        this.rl = true;
    }

    private void c() {
        c.c(this.f22248t, new com.byazt.tn.c(null) { // from class: com.byazt.yi.ve.2
            @Override // com.byazt.tn.c
            public void c(Bundle bundle) {
                com.byazt.rgb.tt.c(ve.this.getLifecycleId(), false, bundle != null ? bundle.getBoolean("has_show_event") : false);
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.c(bundle);
                }
            }

            @Override // com.byazt.tn.c
            public void n() {
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.n();
                }
            }

            @Override // com.byazt.tn.c
            public void tt() {
                com.byazt.rgb.tt.ve(ve.this.getLifecycleId(), 1);
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.tt();
                }
            }

            @Override // com.byazt.tn.c
            public void uj() {
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.uj();
                }
            }

            @Override // com.byazt.tn.c
            public void ve() {
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.ve();
                }
            }

            @Override // com.byazt.tn.c
            public void c() {
                com.byazt.rgb.tt.ve(ve.this.getLifecycleId());
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.c();
                }
            }

            @Override // com.byazt.tn.c
            public void c(boolean z10, int i10, String str, int i11, String str2) {
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.c(z10, i10, str, i11, str2);
                }
            }

            @Override // com.byazt.tn.c
            public void c(boolean z10, int i10, Bundle bundle) {
                if (ve.this.f22250x != null) {
                    ve.this.f22250x.c(z10, i10, bundle);
                }
            }
        });
        if (this.f22245i != null) {
            c.c(l.c(this.f22248t), this.f22245i);
        }
        if (this.f22244da != null) {
            setCustomPlayAgain(true);
            c.c(l.tt(this.f22248t), this.f22244da);
        }
    }

    private void c(Context context, Intent intent) {
        com.byazt.nr.tt.c(context, intent, new com.byazt.nr.tt.c() { // from class: com.byazt.yi.ve.3
            @Override // com.byazt.nr.tt.c
            public void c() {
            }

            @Override // com.byazt.nr.tt.c
            public void c(Throwable th) {
                m.ve("TTRewardVideoAdImpl", "show reward video error: ", th);
            }
        });
        if (this.ve == null) {
            return;
        }
        com.byazt.lvl.c cVarC = com.byazt.lvl.c.c();
        com.byazt.dj.tt ttVar = this.ve;
        cVarC.c(ttVar, ttVar.uj());
        if (l.c(this.tt)) {
            com.byazt.lvl.c.c().tt(this.ve, l.uj(this.tt));
        }
        if (!this.zm && !this.yp) {
            com.byazt.cf.ve.c(7, this.tt);
        }
        preloadNextVideo();
    }

    @Override // com.byazt.nc.z
    public void showRewardVideoAd(Activity activity, Object obj, String str) {
        if (obj == null) {
            m.uj("TTRewardVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        String strC = n.c(obj);
        if ("customize_scenes".equalsIgnoreCase(strC)) {
            this.f22247n = str;
        } else {
            this.f22247n = strC;
        }
        showRewardVideoAd(activity);
    }
}
