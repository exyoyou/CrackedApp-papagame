package com.byazt.eti;

import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.ete.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 384, 46})
public class n {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final sp f14002i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n f13999c = new n(7);
    public static final n tt = new n(8);
    public static final n ve = new n(3);
    public static final n uj = new n(1);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final n f14000n = new n(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final n f13998a = new n(9);
    public static final n sp = new n(6);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final n f14001x = new n(0);

    private n(int i10) {
        this.f14002i = new sp(i10);
    }

    public static n c(int i10) {
        if (i10 == 1) {
            return uj;
        }
        if (i10 == 3) {
            return ve;
        }
        switch (i10) {
            case 5:
                return f14000n;
            case 6:
                return sp;
            case 7:
                return f13999c;
            case 8:
                return tt;
            case 9:
                return f13998a;
            default:
                return f14001x;
        }
    }

    public long n(String str) {
        sp.tt ttVarC = this.f14002i.c(str, false, 0L);
        if (ttVarC == null || !ttVarC.c()) {
            return 0L;
        }
        long jCurrentTimeMillis = ttVarC.tt - System.currentTimeMillis();
        if (jCurrentTimeMillis <= 0) {
            return 0L;
        }
        return jCurrentTimeMillis / 1000;
    }

    public void tt(String str) {
        this.f14002i.tt(str);
    }

    public boolean uj(String str) {
        return this.f14002i.uj(str);
    }

    public void ve(String str) {
        this.f14002i.ve(str);
    }

    public static void tt(int i10) {
        c(i10).f14002i.c(i10);
    }

    public void c(com.byazt.dj.tt ttVar, ic icVar, boolean z10) {
        if (ttVar == null || icVar == null) {
            return;
        }
        ttVar.uj();
        if (x.c(nb.sl(icVar)).c("forbid_save_cache", new x.tt.c().c(ttVar).c(icVar).c())) {
            return;
        }
        if ((icVar.ym() != null ? icVar.ym().optInt("save_type") : 0) == 1) {
            return;
        }
        String strUj = ttVar.uj();
        String strTt = com.byazt.nr.c.tt(icVar.yg().toString());
        long jCurrentTimeMillis = ((((System.currentTimeMillis() / 1000) / 60) / 60) / 3) + ((long) nb.rh(icVar));
        long jUv = icVar.uv();
        int iFq = icVar.fq();
        if (icVar.ul() > 0) {
            jUv = Math.min(jUv, icVar.ul());
        }
        this.f14002i.c(strUj, new sp.tt(strTt, icVar.xg(), jUv * 1000, icVar.sf()), z10, jCurrentTimeMillis, iFq);
    }

    public ic c(String str, boolean z10, long j10) {
        sp.tt ttVarC = this.f14002i.c(str, z10, j10);
        if (ttVarC == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(com.byazt.nr.c.ve(ttVarC.ve));
            if (x.c(this.f14002i.f14003c.tt()).c("forbid_read_cache", new x.tt.c().c(jSONObject).c())) {
                this.f14002i.c(str, ttVarC.f14013n);
                return null;
            }
            ic icVarC = com.byazt.omf.c.c(jSONObject);
            icVarC.da(true);
            icVarC.sp(ttVarC.f14012c);
            icVarC.p(ttVarC.f14013n);
            icVarC.bn().tt(2);
            return icVarC;
        } catch (Exception unused) {
            return null;
        }
    }

    public List<ic> c(String str, boolean z10, long j10, int i10, double d10) {
        System.currentTimeMillis();
        List<sp.tt> listC = this.f14002i.c(str, z10, j10, i10, d10);
        if (listC != null && !listC.isEmpty()) {
            listC.size();
            System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            for (sp.tt ttVar : listC) {
                try {
                    JSONObject jSONObject = new JSONObject(com.byazt.nr.c.ve(ttVar.ve));
                    if (x.c(this.f14002i.f14003c.tt()).c("forbid_read_cache", new x.tt.c().c(jSONObject).c())) {
                        this.f14002i.c(str, ttVar.f14013n);
                    } else {
                        ic icVarC = com.byazt.omf.c.c(jSONObject);
                        icVarC.da(true);
                        icVarC.sp(ttVar.f14012c);
                        icVarC.p(ttVar.f14013n);
                        icVarC.bn().tt(2);
                        arrayList.add(icVarC);
                    }
                } catch (Exception unused) {
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public void c(String str) {
        this.f14002i.c(str);
    }

    public void c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f14002i.c(str, str2);
    }

    public void c(String str, String str2, boolean z10) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f14002i.c(str, str2, z10);
    }

    public void c() {
        this.f14002i.c();
    }

    public static boolean c(ic icVar) {
        if (icVar == null) {
            return false;
        }
        return (icVar.ym() != null ? icVar.ym().optInt("save_type") : 0) != 1;
    }
}
