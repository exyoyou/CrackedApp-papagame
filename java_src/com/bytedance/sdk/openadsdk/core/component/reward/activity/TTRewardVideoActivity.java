package com.bytedance.sdk.openadsdk.core.component.reward.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.aas.gr;
import com.byazt.aas.pf;
import com.byazt.bv.BaseConstants;
import com.byazt.cf.sp;
import com.byazt.dna.u;
import com.byazt.dqg.n;
import com.byazt.ee.c;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.l;
import com.byazt.ete.lt;
import com.byazt.ete.my;
import com.byazt.ete.or;
import com.byazt.fh.a;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.nr.h;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.gu;
import com.byazt.omf.p;
import com.byazt.qal.tt;
import com.byazt.ukr.yp;
import com.byazt.ut.uj;
import com.byazt.vb.ve;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.windad.WindAds;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmRtcEnvironment;
import u.b;

/* JADX INFO: loaded from: classes9.dex */
public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private String dz;
    private String iu;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f23482j;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f23485s;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f23487y;
    private ve yf;
    private final int kk = 10111;
    private final int tx = 10112;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f23486v = 10113;
    private final int os = 10114;
    private final int oz = 10115;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f23484r = 10116;

    /* JADX INFO: renamed from: ma, reason: collision with root package name */
    private final AtomicBoolean f23483ma = new AtomicBoolean();

    @DungeonFlag
    private int dz() {
        final int i10 = 0;
        if (kp.uj(this.qp)) {
            if (this.yp.get()) {
                i10 = 10116;
            } else if (!j()) {
                i10 = 10111;
            }
        }
        if (gt.tt().wq() == 0) {
            return i10;
        }
        boolean zX = gr.x();
        int iC = gr.c(this.qp.ey() + "_" + this.qp.ck());
        if (zX) {
            i10 = 10115;
        } else if (iC == gr.tt) {
            i10 = 10114;
        } else if (iC == gr.ve) {
            i10 = 10113;
        }
        yp.c().tt(new c() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.6
            @Override // com.byazt.ee.c
            public com.byazt.qal.c c() throws Exception {
                tt<tt> ttVarTt = tt.tt();
                ttVarTt.c("armor_reward");
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("errorCode", i10);
                ttVarTt.tt(jSONObject.toString());
                return ttVarTt;
            }
        }, "armor_reward");
        return i10;
    }

    private Object iu() {
        Map<String, Object> mapYt;
        ic icVar = this.qp;
        if (icVar == null || (mapYt = icVar.yt()) == null || !mapYt.containsKey("rs_info")) {
            return null;
        }
        return mapYt.get("rs_info");
    }

    private boolean j() {
        if (TextUtils.isEmpty(this.qp.qy())) {
            return false;
        }
        return this.f23483ma.get();
    }

    private void ma() {
        this.f16589h.c("cancelClickLandingRewardTip", (JSONObject) null);
    }

    private void y() {
        n nVar;
        if (kp.sp(this.qp) && this.cu.gt() >= kp.da(this.qp)) {
            if (!this.bx.sp() || (nVar = this.f16589h) == null || nVar.i() != 0) {
                pf.c(this.sv, kp.i(this.qp), 0);
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("toast_text", kp.i(this.qp));
                this.f16589h.c("showToast", jSONObject);
            } catch (JSONException e10) {
                m.c(e10);
            }
        }
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void bm() {
        super.bm();
        if (kp.nu(this.qp) || this.f16609zb.d() || my.uj(this.qp)) {
            return;
        }
        if (this.cu.eo()) {
            this.eo.c(false, null, null, true, true);
            return;
        }
        int iA = this.bx.a(true);
        int iA2 = this.bx.a(or.tt(yv(), this.qp, true));
        String str = "已领取奖励";
        if (s() || this.bx.rh()) {
            com.byazt.kcl.n nVar = this.eo;
            if (iA2 > 0) {
                str = iA2 + "s";
            }
            nVar.c(false, str, "跳过", false, true);
        } else {
            com.byazt.kcl.n nVar2 = this.eo;
            if (iA2 > 0) {
                str = iA2 + "s";
            }
            nVar2.c(false, str, null, false, false);
        }
        this.bx.tt(iA);
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public String d() {
        if (this.f23482j == 0 || TextUtils.isEmpty(this.iu)) {
            return (kp.tt(this.qp) == 0 || TextUtils.isEmpty(kp.c(this.qp))) ? "" : kp.c(this.qp);
        }
        return this.iu;
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public String eo() {
        if (this.f16600q.c() && !TextUtils.isEmpty(this.f16600q.sp()) && !TextUtils.isEmpty(this.f16600q.a())) {
            return this.f16600q.sp();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(h());
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public boolean gr() {
        return super.gr() || this.f16600q.n();
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void gt() {
        super.gt();
        r();
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public int h() {
        if (this.f23482j != 0 && !TextUtils.isEmpty(this.iu)) {
            return this.f23482j;
        }
        if (kp.tt(this.qp) == 0 || TextUtils.isEmpty(kp.c(this.qp))) {
            return 0;
        }
        return kp.tt(this.qp);
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public boolean md() {
        return this.f16600q.c() || this.f16583b.uj();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (this.f16609zb.cu()) {
            return;
        }
        this.bx.c(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity, com.byazt.cty.BaseThemeActivity, android.app.Activity
    public void onDestroy() {
        ve veVar;
        super.onDestroy();
        this.f16600q.ve();
        List<ve> listC = com.byazt.epi.c.c();
        if (listC == null || listC.size() == 0 || (veVar = this.yf) == null) {
            return;
        }
        listC.remove(veVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (kp.nu(this.qp)) {
            this.bx.ve(a.tt);
            a.ve = false;
            a.tt = 0;
            a.f14179c = this.bx.sv();
            ve(0);
        }
        if (kp.my(this.qp) && a.uj) {
            ma();
            uj(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void p() {
        if (this.ve.getAndSet(true) || this.f16600q.c()) {
            return;
        }
        com.byazt.rob.c cVar = this.to;
        if ((cVar == null || !cVar.ve()) && !or.tt(yv(), this.qp, true)) {
            c("onAdClose", (Bundle) null);
        }
    }

    public void r() {
        if (or.tt(yv(), this.qp, true)) {
            if (this.f16583b.c() > this.bx.pf()) {
                this.f16583b.c(false);
            }
            int iMax = Math.max(this.bx.a(true) - this.f16583b.c(), 0);
            int iA = this.bx.a(false) - this.f16583b.c();
            if (this.bx.x(false)) {
                iA = Math.max(0, iA - iMax);
            }
            if (this.uj.containsKey(0)) {
                iMax = 999;
                iA = 999;
            }
            sl(iA);
            t(iMax);
            if (this.uj.containsKey(0)) {
                ve(0, true);
            }
            os();
        }
    }

    public boolean s() {
        return Math.round(((float) (this.cu.h() + (((long) this.bx.l()) * 1000))) / 1000.0f) >= this.bx.lo();
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void x(int i10) {
        if (!this.uj.containsKey(0)) {
            this.tt.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    h.c(TTRewardVideoActivity.this.sv, "当前不满足条件，下次记得看完视频哦～", 1);
                }
            });
        } else if (lt.c(this.qp)) {
            this.tt.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    h.c(TTRewardVideoActivity.this.sv, "非常抱歉，当前不支持再看一个", 1);
                }
            });
        } else {
            this.f16600q.ve(i10);
        }
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public boolean yv() {
        return true;
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public String zb() {
        if (this.f16600q.c() && !TextUtils.isEmpty(this.f16600q.sp()) && !TextUtils.isEmpty(this.f16600q.a())) {
            return this.f16600q.a();
        }
        return d();
    }

    @DungeonFlag
    private JSONObject tt(int i10, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("oversea_version_type", 0);
            jSONObject.put(MediationConstant.REWARD_NAME, d());
            jSONObject.put(MediationConstant.REWARD_AMOUNT, h());
            jSONObject.put("network", rh.ve(gt.getContext()));
            jSONObject.put("sdk_version", p.f18094n);
            jSONObject.put(b.f97416b, ((u) uj.getService("device_info_new")).getWebViewUA(false));
            jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, this.qp.q_());
            jSONObject.put("media_extra", this.f23485s);
            jSONObject.put("video_duration", this.cu.p());
            jSONObject.put("play_start_ts", this.f16594l);
            jSONObject.put("play_end_ts", System.currentTimeMillis() / 1000);
            jSONObject.put("duration", this.cu.gt());
            jSONObject.put(HmRtcEnvironment.kUserId, this.f23487y);
            jSONObject.put(WindAds.TRANS_ID, UUID.randomUUID().toString().replace("-", ""));
            jSONObject.put("reward_type", i10);
            jSONObject.putOpt("rs_info", iu());
            if (kp.uj(this.qp)) {
                jSONObject.put("show_result", z10 ? 1 : 0);
            }
            com.byazt.qh.tt.c(jSONObject);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void uj() {
        ve veVar = new ve() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.1
            @Override // com.byazt.vb.ve
            public void c(String str, String str2) {
                if (TTRewardVideoActivity.this.qp != null) {
                    String strQy = TTRewardVideoActivity.this.qp.qy();
                    if (TextUtils.equals("show", str) && TextUtils.equals(str2, strQy)) {
                        TTRewardVideoActivity.this.f23483ma.set(true);
                    }
                }
            }
        };
        this.yf = veVar;
        com.byazt.epi.c.c(veVar);
        super.uj();
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    @HungeonFlag
    @DungeonFlag
    public void ve(int i10) {
        if (i10 != 0) {
            uj(i10);
            return;
        }
        if (this.bx.pf() > 0) {
            return;
        }
        if ((!kp.p(this.qp) || this.f16582a.get()) && this.bx.or()) {
            uj(i10);
        }
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public String c() {
        return this.dz;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void c(Intent intent) {
        super.c(intent);
        if (intent == null) {
            return;
        }
        this.f23485s = intent.getStringExtra("media_extra");
        this.f23487y = intent.getStringExtra(HmRtcEnvironment.kUserId);
        this.iu = intent.getStringExtra(MediationConstant.REWARD_NAME);
        this.dz = intent.getStringExtra("userData");
        this.f23482j = intent.getIntExtra(MediationConstant.REWARD_AMOUNT, 0);
        this.f16600q.c(intent.getBooleanExtra("is_play_again", false));
        this.f16600q.c(intent.getIntExtra("play_again_count", 0));
        this.f16600q.tt(intent.getBooleanExtra("custom_play_again", false));
        this.f16600q.tt(intent.getIntExtra("source_rit_id", 0));
        this.f16600q.c(intent.getStringExtra("reward_again_name"));
        this.f16600q.tt(intent.getStringExtra("reward_again_amount"));
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    @HungeonFlag
    @DungeonFlag
    public void uj(final int i10) {
        if (!this.f16595m.getAndSet(true)) {
            this.f16600q.uj();
        }
        if (this.uj.containsKey(Integer.valueOf(i10))) {
            return;
        }
        this.uj.put(Integer.valueOf(i10), Boolean.TRUE);
        this.pf.ve();
        boolean z10 = !kp.zm(this.qp);
        final int iH = h();
        final String strD = d();
        int iDz = dz();
        boolean z11 = iDz == 0;
        m.c("GROMORE_SS_REWARD_VERIFY", "sh ——》 isValid: " + z11 + ", direct: " + z10 + ", errCode: " + iDz);
        if (z11 && !z10) {
            ve(i10, true);
            gt.c().c(tt(i10, true), new gu.n() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.2
                @Override // com.byazt.omf.gu.n
                public void c(int i11, String str) {
                    TTRewardVideoActivity.this.ve(TTRewardVideoActivity.this.c(i10, false, i11, str, iH, strD, false));
                }

                @Override // com.byazt.omf.gu.n
                public void c(com.byazt.omf.gr.uj ujVar) {
                    int iC = ujVar.ve.c();
                    String strTt = ujVar.ve.tt();
                    TTRewardVideoActivity.this.ve(ujVar.tt ? TTRewardVideoActivity.this.c(i10, true, 10111, "reward failed", iC, strTt, true) : TTRewardVideoActivity.this.c(i10, false, 10112, "server refuse", iC, strTt, true));
                }
            });
        } else {
            ve(c(i10, z11, iDz, "reward failed", iH, strD, false));
            ve(i10, z11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:9:0x0017  */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void ve(boolean z10) {
        int i10;
        if (this.gu) {
            if (gt.tt().hz() == 1) {
                i10 = 2000;
            } else {
                i10 = -1;
            }
        } else if (z10) {
            i10 = 0;
        } else {
            i10 = -1;
        }
        int i11 = this.f16600q.c() ? -1 : i10;
        if (i11 < 0 || this.gt.get()) {
            return;
        }
        if (i11 == 0) {
            if (this.gt.getAndSet(true)) {
                return;
            }
            sp.c().c(this.qp, String.valueOf(this.f16592ic));
            return;
        }
        this.tt.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.5
            @Override // java.lang.Runnable
            public void run() {
                if (TTRewardVideoActivity.this.gt.getAndSet(true)) {
                    return;
                }
                sp.c().c(TTRewardVideoActivity.this.qp, String.valueOf(TTRewardVideoActivity.this.f16592ic));
            }
        }, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(Bundle bundle) {
        int i10 = bundle.getInt("callback_extra_key_reward_type");
        if (i10 == 0) {
            tt("onRewardVerify", bundle);
        }
        tt("onRewardArrived", bundle);
        this.pf.c(bundle);
        this.bx.c(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public boolean c(Bundle bundle) {
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        veVarC.put("is_reward_deep_link_to_live", false);
        veVarC.put("click_to_live_duration", System.currentTimeMillis());
        return super.c(bundle);
    }

    private void ve(int i10, boolean z10) {
        if (i10 == 0) {
            this.f16589h.yp();
            this.f16598nb.tt(z10);
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public Bundle c(int i10, boolean z10, int i11, String str, int i12, String str2, boolean z11) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("callback_extra_key_reward_valid", z10);
        bundle.putInt("callback_extra_key_reward_type", i10);
        bundle.putInt("callback_extra_key_reward_amount", i12);
        bundle.putString("callback_extra_key_reward_name", str2);
        bundle.putFloat("callback_extra_key_reward_propose", kp.c(this.qp, i10));
        bundle.putBoolean("callback_extra_key_is_server_verify", z11);
        if (!z10) {
            bundle.putInt("callback_extra_key_error_code", i11);
            bundle.putString("callback_extra_key_error_msg", str);
        }
        if (i10 == 0 && kp.sp(this.qp) && this.cu.gt() >= kp.da(this.qp)) {
            bundle.putBoolean("callback_extra_key_video_complete_reward", true);
        }
        return bundle;
    }

    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void tt() {
        if (!this.f16583b.n() && this.uj.containsKey(0) && this.f16600q.ve(2)) {
            return;
        }
        super.tt();
    }

    private void tt(String str, Bundle bundle) {
        com.byazt.yi.c.c(0, this.f16600q.c() ? l.c(this.f16590hd) : this.f16590hd, str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.byazt.lcf.TTBaseVideoActivity
    public void c(String str, Bundle bundle) {
        tt(str, bundle);
    }
}
