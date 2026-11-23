package com.byazt.ji;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.pm.sl;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 222, 13})
public abstract class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f15832a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public sl f15833c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Context f15834da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f15835i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Map<String, Object> f15836n;
    public String sp;
    public com.byazt.xj.ve tt;
    public com.byazt.pm.a.c uj;
    public com.byazt.pm.a ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f15837x;

    @com.byazt.zqa.c(c = {0, 1, 222, 194})
    public static class c {
        public static tt c(Context context, com.byazt.xj.ve veVar, JSONObject jSONObject, JSONObject jSONObject2) {
            com.byazt.pm.a aVarC;
            com.byazt.pm.a.c cVarC;
            if (veVar == null || jSONObject == null || (aVarC = com.byazt.pm.a.c(jSONObject, jSONObject2)) == null || (cVarC = aVarC.c()) == null) {
                return null;
            }
            String strC = cVarC.c();
            if (TextUtils.equals(strC, "custom")) {
                ve veVar2 = new ve(context);
                veVar2.c(veVar);
                veVar2.c(aVarC);
                veVar2.a();
                return veVar2;
            }
            com.byazt.pm.sp spVarC = (TextUtils.isEmpty(strC) || TextUtils.equals(strC, "global")) ? com.byazt.pm.da.c(cVarC.tt()) : com.byazt.pm.da.c(cVarC.n());
            if (spVarC == null) {
                return null;
            }
            tt ttVarC = spVarC.c(context);
            ttVarC.c(veVar);
            ttVarC.c(aVarC);
            ttVarC.a();
            return ttVarC;
        }
    }

    public tt(Context context) {
        this.f15834da = context;
    }

    public void a() {
        this.uj = this.ve.c();
        com.byazt.pm.a aVar = this.ve;
        if (aVar == null) {
            return;
        }
        com.byazt.pm.a.c cVarC = aVar.c();
        this.uj = cVarC;
        if (cVarC == null) {
            return;
        }
        this.f15836n = cVarC.ve();
        this.f15832a = this.uj.tt();
        this.sp = this.uj.c();
        this.f15837x = this.uj.uj();
        this.f15835i = this.uj.n();
    }

    public void c(com.byazt.xj.ve veVar) {
        this.tt = veVar;
    }

    public abstract boolean c(Object... objArr);

    public com.byazt.pm.a da() {
        return this.ve;
    }

    public String i() {
        return this.f15835i;
    }

    public String sp() {
        return this.f15832a;
    }

    public String x() {
        return this.f15837x;
    }

    public void c(com.byazt.pm.a aVar) {
        this.ve = aVar;
    }

    public void c(sl slVar) {
        this.f15833c = slVar;
    }
}
