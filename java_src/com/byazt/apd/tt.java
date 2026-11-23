package com.byazt.apd;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import com.byazt.ete.ic;
import com.byazt.ete.sv;
import com.byazt.ogz.i;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.ysz.n;
import com.byazt.ysz.sp;
import com.byazt.ysz.uj;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1580, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final uj f11663c;

    @com.byazt.zqa.c(c = {0, 1, 1580, 194})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final tt f11666c = new tt();
    }

    public static final tt c() {
        return c.f11666c;
    }

    public int a() {
        return com.byazt.by.uj.c().ve();
    }

    public long i() {
        return this.f11663c.ve();
    }

    public int n() {
        return this.f11663c.n();
    }

    public String sp() {
        return this.f11663c.sp();
    }

    public boolean tt(ic icVar) {
        if (icVar == null || TextUtils.isEmpty(icVar.da())) {
            return false;
        }
        return c(icVar.da(), icVar.n());
    }

    public void uj() {
        this.f11663c.uj();
    }

    public int ve() {
        return this.f11663c.tt();
    }

    public JSONObject x() {
        return this.f11663c.x();
    }

    private tt() {
        if (!i.c()) {
            this.f11663c = new com.byazt.ysz.tt();
            return;
        }
        if (p.sp) {
            this.f11663c = new sp();
        } else if (p.x()) {
            this.f11663c = new n();
        } else {
            this.f11663c = new com.byazt.ysz.tt();
        }
    }

    public boolean a(ic icVar) {
        return icVar != null && icVar.ma() == 2;
    }

    public void c(Function<SparseArray<Object>, Object> function) {
        this.f11663c.c(function);
    }

    public void n(ic icVar) {
        this.f11663c.ve(icVar);
    }

    public void uj(final ic icVar) {
        if (icVar == null) {
            return;
        }
        n(icVar);
        if (TextUtils.isEmpty(icVar.da())) {
            return;
        }
        int iVe = com.byazt.by.uj.c().ve() + 1;
        if (iVe > 100) {
            iVe = 100;
        }
        com.byazt.by.uj.c().c(iVe);
        final int iVe2 = ve();
        final int iN = n();
        final long jElapsedRealtime = SystemClock.elapsedRealtime() - Process.getStartElapsedRealtime();
        if (icVar.n() == 1 && icVar.xl() == 1) {
            com.byazt.ukr.tt.ve().c(new com.byazt.ee.c() { // from class: com.byazt.apd.tt.1
                @Override // com.byazt.ee.c
                public com.byazt.qal.c c() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("ext", icVar.w_());
                        jSONObject.put("live_sdk_status", iVe2);
                        jSONObject.put("live_auth_status", iN);
                        jSONObject.put("app_start_time", jElapsedRealtime);
                        jSONObject.put("is_web", icVar.s_());
                    } catch (Throwable unused) {
                    }
                    return com.byazt.qal.tt.tt().c("saas_miss").tt(jSONObject.toString());
                }
            }, "saas_miss", true);
        }
    }

    public int ve(ic icVar) {
        if (gt.tt().ym()) {
            return this.f11663c.tt(icVar);
        }
        return 0;
    }

    public int c(Context context, com.byazt.eia.i iVar, Map<String, Object> map) {
        if (context == null || iVar == null) {
            return 5;
        }
        return this.f11663c.c(context, iVar, map);
    }

    public void tt() {
        this.f11663c.c();
    }

    public void c(String str, boolean z10) {
        this.f11663c.c(str, z10);
    }

    public int c(com.byazt.eia.i iVar, com.byazt.ysz.ve veVar, String str, Map<String, Object> map) {
        return this.f11663c.c(iVar, veVar, str, map);
    }

    public int c(Context context, ic icVar, Map<String, Object> map) {
        return this.f11663c.c(context, icVar, map);
    }

    public boolean c(ic icVar) {
        return this.f11663c.a_(icVar);
    }

    public void c(String str, ic icVar, long j10) {
        this.f11663c.c(str, icVar, j10);
    }

    public boolean c(String str, int i10) {
        return this.f11663c.c(str, i10);
    }

    public void c(View view, sv svVar, Map<String, Object> map, Map<String, Object> map2) {
        Object tag;
        if (view == null || svVar == null || (tag = view.getTag(67108864)) == null || !(tag instanceof Integer)) {
            return;
        }
        int iIntValue = ((Integer) tag).intValue();
        int i10 = iIntValue & 255;
        int i11 = (iIntValue & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8;
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        if (i10 == 101 && !svVar.ve()) {
            i10 = 102;
        }
        map.put("live_saas_param_interaction_type", Integer.valueOf(i10));
        map2.put("click_saas_area", Integer.valueOf(i11));
    }

    public int c(String str) {
        return this.f11663c.c(str);
    }

    public int c(com.byazt.cn.tt ttVar, boolean z10) {
        return this.f11663c.c(ttVar, z10);
    }

    public void c(com.byazt.qh.uj ujVar) {
        this.f11663c.c(ujVar);
    }
}
