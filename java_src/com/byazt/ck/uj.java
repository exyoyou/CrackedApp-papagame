package com.byazt.ck;

import android.text.TextUtils;
import com.byazt.eu.n;
import com.byazt.hr.sl;
import com.byazt.hr.t;
import com.byazt.hr.u;
import com.byazt.nbs.da;
import com.byazt.nr.m;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 603, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile uj f12536c;
    public volatile Map<Integer, com.byazt.it.ve> tt = new ConcurrentHashMap();
    public Map<String, com.byazt.nbs.tt> ve = new ConcurrentHashMap();
    public int uj = -1;

    private uj() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        Iterator it2 = new ArrayList(Arrays.asList(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)).iterator();
        while (it2.hasNext()) {
            c(((Integer) it2.next()).intValue()).clear();
        }
    }

    private void tt(JSONArray jSONArray, boolean z10, boolean z11) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        try {
            this.ve.clear();
            com.byazt.qv.uj.tt.clear();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i10);
                if (!z10) {
                    jSONObject.put("save_time", System.currentTimeMillis());
                }
                com.byazt.nbs.tt ttVarC = com.byazt.nbs.tt.c(jSONObject, false);
                if (ttVarC != null && !TextUtils.isEmpty(ttVarC.nb())) {
                    this.ve.put(ttVarC.nb(), ttVarC);
                    concurrentHashMap.put(ttVarC.nb(), jSONObject.toString());
                }
            }
            c(concurrentHashMap, z11);
            com.byazt.qv.uj.c();
            tt(jSONArray.length());
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public boolean ve() {
        if (this.uj == -1) {
            this.uj = com.byazt.rq.c.c().getInt("prime_rit_count", -1);
        }
        return this.uj <= 0;
    }

    public static uj c() {
        if (f12536c == null) {
            synchronized (uj.class) {
                if (f12536c == null) {
                    f12536c = new uj();
                }
            }
        }
        return f12536c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.it.ve c(int i10) {
        com.byazt.it.ve veVar = this.tt.get(Integer.valueOf(i10));
        if (veVar != null) {
            return veVar;
        }
        com.byazt.it.ve veVarC = com.byazt.rq.c.c(i10);
        this.tt.put(Integer.valueOf(i10), veVarC);
        return veVarC;
    }

    public void c(JSONArray jSONArray, boolean z10, boolean z11) {
        tt(jSONArray, z10, z11);
        c(jSONArray);
    }

    private void c(final JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        n.uj(new Runnable() { // from class: com.byazt.ck.uj.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ii.tt.c().c(jSONArray);
            }
        });
    }

    public com.byazt.nbs.tt c(String str, int i10, int i11) {
        com.byazt.nbs.tt ttVarC;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.byazt.nbs.tt ttVarSp = this.ve.get(str);
        if (ttVarSp == null && (ttVarSp = com.byazt.nbs.tt.sp(c(i10, str))) != null) {
            this.ve.put(str, ttVarSp);
        }
        return (i11 == 102 || (ttVarC = com.byazt.psp.uj.c(ttVarSp, i11)) == null) ? ttVarSp : ttVarC;
    }

    private void tt(int i10) {
        this.uj = i10;
        if (com.byazt.bp.tt.tt().ve()) {
            n.uj(new Runnable() { // from class: com.byazt.ck.uj.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.rq.c.c().put("prime_rit_count", uj.this.uj);
                }
            });
        } else {
            com.byazt.rq.c.c().put("prime_rit_count", this.uj);
        }
    }

    public void tt() {
        Map<String, com.byazt.nbs.tt> map = this.ve;
        if (map != null) {
            map.clear();
        }
    }

    public String c(int i10, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (i10 == 0) {
            arrayList.add(1);
            arrayList.add(2);
            arrayList.add(3);
            arrayList.add(5);
            arrayList.add(7);
            arrayList.add(8);
            arrayList.add(9);
            arrayList.add(10);
        } else {
            arrayList.add(Integer.valueOf(i10));
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String string = c(((Integer) it2.next()).intValue()).getString(str, "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
        }
        return null;
    }

    private void c(final Map<String, String> map, final boolean z10) {
        if (map == null || map.isEmpty()) {
            return;
        }
        n.uj(new Runnable() { // from class: com.byazt.ck.uj.3
            @Override // java.lang.Runnable
            public void run() {
                if (!z10 && !com.byazt.bp.c.t().da()) {
                    uj.this.uj();
                }
                for (Map.Entry entry : map.entrySet()) {
                    try {
                        String str = (String) entry.getKey();
                        String str2 = (String) entry.getValue();
                        com.byazt.nbs.tt ttVar = (com.byazt.nbs.tt) uj.this.ve.get(str);
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && ttVar != null) {
                            uj.this.c(ttVar.pf()).put(str, str2);
                            uj.this.c(ttVar);
                        }
                    } catch (Throwable th) {
                        m.c(th);
                    }
                }
                map.clear();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.nbs.tt ttVar) {
        if (ttVar == null || ttVar.nb() == null) {
            return;
        }
        if (ttVar.u()) {
            if (u.c().c(ttVar.t())) {
                u.c().tt(ttVar.t());
            }
            if (u.c().c(ttVar.sl())) {
                u.c().tt(ttVar.sl());
            }
        } else {
            u.c().uj(ttVar.nb());
            u.c().i(ttVar.nb());
        }
        for (da daVar : ttVar.l()) {
            if (daVar.uj()) {
                if (t.c().c(daVar.ve())) {
                    t.c().tt(daVar.ve());
                }
                if (sl.c().c(daVar.tt())) {
                    sl.c().tt(daVar.tt());
                }
            } else {
                t.c().delete(ttVar.nb(), daVar.rh());
                sl.c().delete(ttVar.nb(), daVar.rh());
            }
        }
    }
}
