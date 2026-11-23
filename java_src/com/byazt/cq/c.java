package com.byazt.cq;

import android.net.Uri;
import android.text.TextUtils;
import com.byazt.nd.a;
import com.byazt.nd.n;
import com.byazt.nd.uj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2016, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public uj f12559a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public JSONObject f12560c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f12561da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Map<String, Object> f12562i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f12563n;
    public int sl;
    public uj sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.nd.tt f12564t;
    public Map<String, Object> tt;
    public String uj;
    public com.byazt.bh.c ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f12565x;

    public c(com.byazt.bh.c cVar, JSONObject jSONObject, Map<String, Object> map) {
        this.sl = 1;
        this.ve = cVar;
        this.f12560c = jSONObject;
        this.tt = map;
    }

    private void da() {
        a aVarTt;
        a aVarTt2;
        uj ujVar = this.f12559a;
        if (ujVar != null && (aVarTt2 = ujVar.tt()) != null) {
            aVarTt2.c(this.f12560c, this);
        }
        uj ujVar2 = this.sp;
        if (ujVar2 == null || (aVarTt = ujVar2.tt()) == null) {
            return;
        }
        aVarTt.c(this.f12560c, this);
    }

    private void i() {
        if (this.sl != 2) {
            com.byazt.bh.c cVar = this.ve;
            if (cVar == null) {
                return;
            } else {
                this.f12565x = cVar.tt();
            }
        }
        if (!TextUtils.isEmpty(this.f12565x)) {
            this.uj = Uri.parse(this.f12565x).getHost();
        }
        if (!TextUtils.isEmpty(this.uj)) {
            String str = this.uj.split(e.F0)[0];
            this.uj = str;
            int iIndexOf = str.indexOf(":");
            if (iIndexOf == -1) {
                iIndexOf = this.uj.length();
            }
            this.uj = this.uj.substring(0, iIndexOf);
        }
        tt(this.f12565x);
    }

    private void sl() {
        a aVarTt;
        a aVarTt2;
        uj ujVar = this.f12559a;
        if (ujVar != null && (aVarTt2 = ujVar.tt()) != null) {
            aVarTt2.c(this.tt, this);
        }
        uj ujVar2 = this.sp;
        if (ujVar2 == null || (aVarTt = ujVar2.tt()) == null) {
            return;
        }
        aVarTt.c(this.tt, this);
    }

    public boolean a() {
        return this.f12561da;
    }

    public Map<String, Object> c() {
        return this.tt;
    }

    public uj n() {
        return this.f12559a;
    }

    public void sp() {
        i();
        sl();
        com.byazt.nd.tt ttVar = this.f12564t;
        if (ttVar != null) {
            ttVar.c();
        } else {
            com.byazt.sxv.c.c().c(this.uj, this, new com.byazt.nd.c() { // from class: com.byazt.cq.c.1
            });
        }
    }

    public Map<String, Object> tt() {
        return this.f12562i;
    }

    public String uj() {
        return this.f12563n;
    }

    public JSONObject ve() {
        return this.f12560c;
    }

    public com.byazt.bh.c x() {
        return this.ve;
    }

    private void tt(String str) {
        ve(str);
        JSONObject jSONObjectC = com.byazt.ek.tt.c(str);
        if (jSONObjectC == null) {
            return;
        }
        da();
        Iterator<String> itKeys = jSONObjectC.keys();
        this.f12562i = new HashMap();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next)) {
                Object objOpt = jSONObjectC.opt(next);
                if (objOpt instanceof String) {
                    objOpt = c((String) objOpt, this.f12560c);
                }
                this.f12562i.put(next, objOpt);
            }
        }
    }

    private void ve(String str) {
        a aVarTt;
        a aVarTt2;
        uj ujVar = this.f12559a;
        if (ujVar != null && (aVarTt2 = ujVar.tt()) != null) {
            aVarTt2.c(str, this);
        }
        uj ujVar2 = this.sp;
        if (ujVar2 == null || (aVarTt = ujVar2.tt()) == null) {
            return;
        }
        aVarTt.c(str, this);
    }

    public void c(String str) {
        this.f12563n = str;
    }

    public void c(uj ujVar) {
        if (ujVar instanceof tt) {
            this.f12559a = ujVar;
        } else {
            this.sp = ujVar;
        }
    }

    public c(String str, int i10, JSONObject jSONObject, Map<String, Object> map) {
        this.sl = 1;
        if (i10 == 2) {
            this.f12565x = str;
        } else if (i10 == 3) {
            this.uj = str;
        }
        this.sl = i10;
        this.f12560c = jSONObject;
        this.tt = map;
    }

    public void c(boolean z10) {
        this.f12561da = z10;
    }

    private static Object c(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return str;
        }
        try {
            return (str.startsWith("${") && str.endsWith("}")) ? com.byazt.kx.c.c(str.substring(2, str.length() - 1)).c(jSONObject) : str;
        } catch (Throwable unused) {
            return str;
        }
    }

    public void c(com.byazt.nd.tt ttVar) {
        this.f12564t = ttVar;
    }

    public void c(Map<String, Object> map) {
        n nVarVe;
        n nVarVe2;
        da();
        uj ujVar = this.f12559a;
        if (ujVar != null && (nVarVe2 = ujVar.ve()) != null) {
            nVarVe2.c(this, map);
        }
        uj ujVar2 = this.sp;
        if (ujVar2 == null || (nVarVe = ujVar2.ve()) == null) {
            return;
        }
        nVarVe.c(this, map);
    }

    public void tt(Map<String, Object> map) {
        n nVarVe;
        n nVarVe2;
        da();
        uj ujVar = this.sp;
        if (ujVar != null && (nVarVe2 = ujVar.ve()) != null) {
            nVarVe2.c(this, map);
        }
        uj ujVar2 = this.f12559a;
        if (ujVar2 == null || (nVarVe = ujVar2.ve()) == null) {
            return;
        }
        nVarVe.c(this, map);
    }

    public void c(Map<String, Object> map, com.byazt.qb.c cVar) {
        n nVarVe;
        n nVarVe2;
        da();
        uj ujVar = this.f12559a;
        if (ujVar != null && (nVarVe2 = ujVar.ve()) != null) {
            nVarVe2.c(this, this.tt, cVar);
        }
        uj ujVar2 = this.sp;
        if (ujVar2 == null || (nVarVe = ujVar2.ve()) == null) {
            return;
        }
        nVarVe.c(this, map, cVar);
    }

    public void tt(Map<String, Object> map, com.byazt.qb.c cVar) {
        n nVarVe;
        n nVarVe2;
        da();
        uj ujVar = this.sp;
        if (ujVar != null && (nVarVe2 = ujVar.ve()) != null) {
            nVarVe2.c(this, map, cVar);
        }
        uj ujVar2 = this.f12559a;
        if (ujVar2 == null || (nVarVe = ujVar2.ve()) == null) {
            return;
        }
        nVarVe.c(this, map, cVar);
    }
}
