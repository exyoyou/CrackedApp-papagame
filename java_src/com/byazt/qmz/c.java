package com.byazt.qmz;

import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.byazt.dna.qp;
import com.byazt.nr.d;
import com.byazt.oaq.tt;
import com.byazt.sz.z;
import com.byazt.te.uj;
import com.byazt.xj.ve;
import com.join.mgps.Util.v0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, v0.f50058b, 20})
public class c implements qp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ve f19184a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public ve f19186da;
    public boolean gr;
    public int gt;
    public boolean gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ve f19187i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f19188m;
    public boolean md;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ve f19189n;
    public int nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f19190p;
    public int qy;
    public int rl;
    public ve sl;
    public ve sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f19191t;
    public z tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f19192u;
    public ve uj;
    public ve ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ve f19193x;
    public int yp;
    public int yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f19194z;
    public boolean zm;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f19185c = new d(Looper.getMainLooper(), this);
    public int rh = Integer.MIN_VALUE;

    public c(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("xCreative");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("xSetting");
            String strOptString = jSONObject.optString("dynamic_configs", "");
            if (jSONObjectOptJSONObject != null) {
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("video");
                if (jSONObjectOptJSONObject3 != null) {
                    this.f19192u = jSONObjectOptJSONObject3.optInt("video_duration");
                }
                int iOptInt = jSONObjectOptJSONObject.optInt("reward_full_time_type", 0);
                int iOptInt2 = jSONObjectOptJSONObject.optInt("reward_full_play_time", 0);
                if (iOptInt == 1) {
                    this.yp = iOptInt2;
                    this.my = true;
                }
            }
            if (jSONObjectOptJSONObject2 != null) {
                if (jSONObjectOptJSONObject2.optInt("ad_slot_type", 0) == 8) {
                    this.f19191t = jSONObjectOptJSONObject2.optInt("iv_skip_time", 0);
                } else {
                    this.f19191t = jSONObjectOptJSONObject2.optInt("rv_skip_time", 0);
                }
            }
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            try {
                if (new JSONObject(strOptString).optBoolean("is_show_video_duration", false)) {
                    this.my = false;
                }
            } catch (JSONException unused) {
            }
        }
    }

    private boolean uj() {
        return (this.uj == null && this.f19184a == null && this.f19189n == null && this.f19193x == null && this.f19186da == null) ? false : true;
    }

    private void ve() {
        int i10;
        int i11;
        int i12;
        ve veVar;
        if (this.my) {
            i10 = this.yp;
            i11 = this.f19188m;
        } else {
            i10 = this.f19192u;
            i11 = this.f19194z;
        }
        z zVar = this.tt;
        boolean z10 = true;
        if (zVar != null && (veVar = this.ve) != null) {
            zVar.c(veVar, "videoProgress", Integer.valueOf(i11));
        }
        int i13 = i11 + this.nu;
        int iMax = Math.max(0, i10 - i13);
        if (i13 < this.f19191t && iMax != 0 && this.rh > 0) {
            z10 = false;
        }
        ve veVar2 = this.uj;
        if ((veVar2 instanceof com.byazt.te.c) && this.rh != Integer.MIN_VALUE) {
            veVar2.tt(0);
            ((com.byazt.te.c) this.uj).c(iMax, i13, this.rh);
        }
        ve veVar3 = this.f19184a;
        if (veVar3 instanceof tt) {
            ((tt) veVar3).uj(z10);
        }
        ve veVar4 = this.sp;
        if ((veVar4 instanceof uj) && (i12 = this.rh) != Integer.MIN_VALUE) {
            ((uj) veVar4).c(iMax, i13, i12);
        }
        ve veVar5 = this.f19189n;
        if (veVar5 instanceof com.byazt.te.tt) {
            ((com.byazt.te.tt) veVar5).c(i10, i13, iMax, z10);
        }
        ve veVar6 = this.f19193x;
        if (veVar6 instanceof com.byazt.oaq.c) {
            ((com.byazt.oaq.c) veVar6).tt(this.gt, this.rl);
        }
        ve veVar7 = this.f19187i;
        if (veVar7 != null) {
            veVar7.tt(this.gu ? 0 : 8);
        }
        ve veVar8 = this.sl;
        if (veVar8 != null) {
            veVar8.tt(this.zm ? 0 : 8);
        }
        ve veVar9 = this.f19186da;
        if (veVar9 instanceof com.byazt.te.ve) {
            ((com.byazt.te.ve) veVar9).c(this.qy, this.yv, this.f19190p, this.gr, this.md);
        }
    }

    public void c(z zVar, ve veVar) {
        this.tt = zVar;
        this.ve = veVar;
        ve veVarN = veVar.n("RVCountdown");
        this.uj = veVarN;
        if (veVarN == null) {
            this.uj = this.ve.n("FVCountdown");
        }
        ve veVarN2 = this.ve.n("RVSkip");
        this.f19184a = veVarN2;
        if (veVarN2 == null) {
            this.f19184a = this.ve.n("FVSkip");
        }
        this.f19189n = this.ve.n("CycleCountDownView");
        this.sp = this.ve.n("RewardClickCountdown");
        this.f19193x = this.ve.n("CycleSkip");
        this.f19186da = this.ve.n("CsjRefreshTip");
        this.f19187i = this.ve.uj("CsjRefreshTipContainer");
        this.sl = this.ve.uj("CsjRefreshTipCancel");
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        if (message.what != 100) {
            return;
        }
        this.f19185c.sendEmptyMessageDelayed(100, 200L);
        ve();
    }

    public void tt() {
        this.f19185c.removeCallbacksAndMessages(null);
    }

    public void c() {
        if (uj()) {
            this.f19185c.sendEmptyMessage(100);
        }
    }

    public void c(int i10, int i11, int i12, int i13) {
        this.f19194z = i10;
        this.f19188m = i11;
        this.nu = i12;
        this.rh = i13;
    }

    public void c(int i10, int i11) {
        this.gt = i10;
        this.rl = i11;
    }

    public void c(int i10, boolean z10, int i11, int i12, boolean z11, boolean z12, boolean z13) {
        this.qy = i10;
        this.yv = i11;
        this.f19190p = i12;
        this.gu = z11;
        this.gr = z12;
        this.zm = z13;
        this.md = z10;
    }
}
