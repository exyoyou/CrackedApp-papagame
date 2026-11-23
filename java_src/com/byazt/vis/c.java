package com.byazt.vis;

import android.content.Context;
import android.view.View;
import com.byazt.aas.nb;
import com.byazt.aas.pf;
import com.byazt.dna.u;
import com.byazt.ete.da;
import com.byazt.ete.h;
import com.byazt.ete.i;
import com.byazt.ete.ic;
import com.byazt.omf.x;
import com.byazt.ut.uj;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1810, 20})
public class c extends tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<String, Object> f21209a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public i f21212n;
    public String sl;
    public String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.zd.tt f21213t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f21215x;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f21211i = -1;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f21210da = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f21214u = false;

    public c() {
    }

    private void a() {
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        long j10 = veVarC.get("click_to_live_duration", 0L);
        if (j10 == 0) {
            Map<String, Object> map = this.f21209a;
            if (map != null) {
                map.remove("click_livead_duration");
                return;
            }
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - j10;
        HashMap map2 = new HashMap();
        map2.put("click_livead_duration", Long.valueOf(jCurrentTimeMillis));
        c(map2);
        veVarC.get("click_to_live_duration", 0L);
    }

    public void c(boolean z10) {
        this.f21214u = z10;
    }

    public Map<String, Object> n() {
        return this.f21209a;
    }

    public void tt(boolean z10) {
        this.f21215x = z10;
    }

    public i uj() {
        int i10 = this.f21211i;
        if (i10 != -1) {
            this.f21211i = -1;
        } else {
            i10 = -1;
        }
        u uVar = (u) uj.getService("device_info_new");
        float fA = pf.a(this.tt);
        int displayDpi = uVar.getDisplayDpi();
        float fSp = pf.sp(this.tt);
        View viewDa = this.ve.da();
        View viewI = this.ve.i();
        return new i.c().a(this.ve.nu()).n(this.ve.rh()).uj(this.ve.my()).ve(this.ve.gt()).tt(this.ve.z()).c(this.ve.m()).tt(pf.c(viewDa)).c(pf.c(viewI)).ve(pf.ve(viewDa)).uj(pf.ve(viewI)).uj(this.ve.n()).n(this.ve.a()).a(this.ve.sp()).c(this.ve.u()).ve(x.m().tt() ? 1 : 2).c(this.sl).c(fA).tt(displayDpi).tt(fSp).sp(i10).x(this.f21210da).i(this.ve.qy()).n(this.ve.rl()).c(this.ve.uj()).tt(this.ve.tt()).c(this.ve.ve()).c(com.byazt.wz.x.tt(this.f22932c)).c();
    }

    public String ve() {
        return this.sl;
    }

    public void c(String str) {
        this.sp = str;
    }

    public void tt() {
        this.f21210da = 1;
    }

    public void c() {
        this.f21211i = 1;
    }

    public void tt(String str) {
        this.sl = str;
    }

    public void c(i iVar) {
        this.f21212n = iVar;
    }

    public c(ic icVar, Context context) {
        this.f22932c = icVar;
        this.tt = context;
        this.f21209a = new HashMap();
    }

    @Override // com.byazt.vis.tt, com.byazt.zo.c
    public int c(Map<String, Object> map, com.byazt.zo.ve veVar) {
        if (this.f21214u) {
            return 0;
        }
        com.byazt.zd.tt ttVar = this.f21213t;
        if (ttVar != null && ttVar.sl() == 1) {
            return 0;
        }
        if (this.ve == null) {
            this.ve = new da();
        }
        if ("splash_ad".equals(this.sp) || "cache_splash_ad".equals(this.sp) || "splash_ad_landingpage".equals(this.sp)) {
            this.f21211i = this.f21211i == 1 ? 1 : 0;
        }
        Object obj = map.get("convert_res");
        boolean zBooleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false;
        if (this.f21212n == null) {
            this.f21212n = uj();
        }
        Object obj2 = map.get("is_reward_live");
        if (obj2 instanceof Boolean ? ((Boolean) obj2).booleanValue() : false) {
            a();
        }
        if (map.containsKey("reward_browse_banner_from")) {
            this.f21209a.put("refer", "banner");
        }
        if (h.c(this.f22932c) && !com.byazt.dl.uj.c(String.valueOf(nb.t(this.f22932c))) && this.f22932c.zo() != null) {
            this.f21209a.put("refresh_num", Integer.valueOf(this.f22932c.zo().ve()));
        }
        Object obj3 = map.get("click_saas_action");
        if (obj3 != null && (obj3 instanceof Integer)) {
            this.f21209a.put("click_saas_action", obj3);
        }
        Object obj4 = map.get("click_saas_area");
        if (obj3 != null && (obj3 instanceof Integer)) {
            this.f21209a.put("click_saas_area", obj4);
        }
        c(true);
        com.byazt.ddx.uj.c("click", this.f22932c, this.f21212n, this.sp, zBooleanValue, this.f21209a, this.ve.x() ? 1 : 2, this.f21215x, this.ve.c());
        return 0;
    }

    public void c(Map<String, Object> map) {
        Map<String, Object> map2 = this.f21209a;
        if (map2 == null) {
            this.f21209a = map;
        } else {
            map2.putAll(map);
        }
    }

    public void c(com.byazt.zd.tt ttVar) {
        this.f21213t = ttVar;
    }
}
