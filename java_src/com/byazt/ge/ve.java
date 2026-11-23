package com.byazt.ge;

import android.view.View;
import com.byazt.ete.ic;
import com.byazt.ete.kp;
import com.byazt.ete.my;
import com.byazt.lcf.TTBaseVideoActivity;
import com.byazt.qq.da;
import com.byazt.ukr.yp;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 758, 54})
public abstract class ve implements tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TTBaseVideoActivity f14506a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f14507c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.kcl.n f14508n;
    public int sp = 0;
    public ic tt;
    public com.byazt.kcl.tt uj;
    public ic ve;

    public ve(TTBaseVideoActivity tTBaseVideoActivity, ic icVar, com.byazt.kcl.tt ttVar, com.byazt.kcl.n nVar, boolean z10) {
        this.f14506a = tTBaseVideoActivity;
        this.tt = icVar;
        this.uj = ttVar;
        this.f14508n = nVar;
        this.f14507c = z10;
    }

    @Override // com.byazt.ge.tt
    public void a(View view) {
        c(6);
    }

    @Override // com.byazt.ge.tt
    public void c(View view) {
        c(2);
    }

    @Override // com.byazt.ge.tt
    public void n(View view) {
        c(5);
        this.f14506a.x(3);
    }

    @Override // com.byazt.ge.tt
    public void sp(View view) {
        c(7);
    }

    @Override // com.byazt.ge.tt
    public void tt(View view) {
        c(3);
    }

    @Override // com.byazt.ge.tt
    public void uj(View view) {
        c(4);
    }

    @Override // com.byazt.ge.tt
    public void ve(View view) {
        c(1);
    }

    public boolean c() {
        if (my.u(this.tt) || kp.tt() <= 0) {
            return false;
        }
        int i10 = this.sp;
        this.sp = i10 + 1;
        if (i10 < kp.tt()) {
            return false;
        }
        yp.c().c(this.tt, "stats_reward_full_close_force", this.f14506a.lt().c(new JSONObject()));
        this.f14506a.finish();
        return true;
    }

    public void c(int i10) {
        this.f14506a.q();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("topImpl", getClass().getName());
            jSONObject.put("topType", i10);
        } catch (Throwable unused) {
        }
        yp.c().c(this.tt, "stats_reward_full_top_handle", jSONObject);
    }

    public void c(ic icVar) {
        this.ve = icVar;
    }

    public boolean c(da daVar) {
        ic icVar = this.ve;
        if (icVar != null) {
            return this.f14506a.c(icVar, daVar);
        }
        return this.f14506a.c(this.tt, daVar);
    }
}
