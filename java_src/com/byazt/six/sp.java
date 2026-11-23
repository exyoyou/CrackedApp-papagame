package com.byazt.six;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.nr.m;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_DRAWPATH, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile sp f19808c;
    public AtomicBoolean tt = new AtomicBoolean(false);

    public interface c {
        void c();

        void tt();
    }

    private sp() {
    }

    private JSONObject ve(String str) {
        com.byazt.mf.ve veVarVe = com.byazt.mf.c.c().ve();
        if (veVarVe == null) {
            return null;
        }
        com.byazt.va.ve veVarN = veVarVe.n();
        veVarN.c(str);
        com.byazt.hm.tt ttVarC = veVarN.c();
        if (ttVarC != null) {
            try {
                if (ttVarC.i() && ttVarC.n() != null) {
                    return new JSONObject(ttVarC.n());
                }
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        return null;
    }

    public Set<com.byazt.ku.tt> tt(String str) {
        return a.c().tt(str);
    }

    public static sp c() {
        if (f19808c == null) {
            synchronized (sp.class) {
                if (f19808c == null) {
                    f19808c = new sp();
                }
            }
        }
        return f19808c;
    }

    private void tt() {
        if (com.byazt.mf.c.c().ve() == null) {
            return;
        }
        int iC = com.byazt.mf.c.c().ve().c();
        if (iC <= 0) {
            iC = 100;
        }
        List<com.byazt.ku.tt> listTt = a.c().tt();
        if (listTt == null || listTt.isEmpty() || iC >= listTt.size()) {
            if (listTt != null) {
                listTt.size();
                return;
            }
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.byazt.ku.tt ttVar : listTt) {
            treeMap.put(ttVar.sp(), ttVar);
        }
        HashSet hashSet = new HashSet();
        int size = (int) (listTt.size() - (iC * 0.75f));
        int i10 = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i10 < size) {
                i10++;
                ((Long) entry.getKey()).longValue();
                com.byazt.ku.tt ttVar2 = (com.byazt.ku.tt) entry.getValue();
                if (ttVar2 != null) {
                    hashSet.add(ttVar2.tt());
                }
            }
        }
        c(hashSet);
        this.tt.set(false);
    }

    public com.byazt.ku.tt c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return a.c().c(str);
    }

    private JSONObject c(String str, c cVar) {
        if (com.byazt.mf.c.c().ve() == null) {
            cVar.tt();
            return null;
        }
        com.byazt.va.ve veVarN = com.byazt.mf.c.c().ve().n();
        veVarN.c(str);
        com.byazt.hm.tt ttVarC = veVarN.c();
        if (ttVarC != null) {
            try {
                if (ttVarC.i() && ttVarC.n() != null) {
                    return new JSONObject(ttVarC.n());
                }
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        cVar.tt();
        return null;
    }

    private void tt(String str, String str2, String str3, String str4, String str5, String str6) {
        a.c().c(new com.byazt.ku.tt().c(str).tt(str2).ve(str3).uj(str4).n(str5).a(str6).c(Long.valueOf(System.currentTimeMillis())), false);
        tt();
    }

    public void c(com.byazt.ku.uj ujVar, String str) {
        if (ujVar == null) {
            m.uj("TmplDiffManager", "saveTemplate error: tplInfo == null");
            return;
        }
        final String str2 = ujVar.f16491c;
        final String str3 = ujVar.ve;
        final String str4 = ujVar.tt;
        final String str5 = ujVar.uj;
        final String str6 = ujVar.f16492n;
        final String strA = TextUtils.isEmpty(str) ? com.byazt.mf.c.c().ve() != null ? com.byazt.mf.c.c().ve().a() : "" : str;
        if (TextUtils.isEmpty(str2)) {
            m.uj("TmplDiffManager", "saveTemplate error:tmpId is empty");
        } else {
            com.byazt.or.n.c(new com.byazt.bwm.sp("saveTemplate") { // from class: com.byazt.six.sp.1
                @Override // java.lang.Runnable
                public void run() {
                    sp.this.c(str2, str3, str4, str5, str6, strA);
                }
            }, 10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c(String str, String str2, String str3, String str4, String str5, String str6) {
        if (c(str) != null) {
            if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                tt(str6, str, str3, str2, str4, str5);
            }
            return;
        } else if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
            c(str2, str6, str);
        } else {
            tt(str6, str, str3, str2, str4, str5);
        }
        boolean zC = x.c(str5);
        if (!tt.n() || zC) {
            n.tt().c(true);
        }
    }

    private void c(String str, String str2, String str3) {
        JSONObject jSONObjectVe;
        if (TextUtils.isEmpty(str) || (jSONObjectVe = ve(str)) == null) {
            return;
        }
        String strOptString = jSONObjectVe.optString(TKDownloadReason.KSAD_TK_MD5);
        String strOptString2 = jSONObjectVe.optString("version");
        String strOptString3 = jSONObjectVe.optString("data");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || TextUtils.isEmpty(strOptString3)) {
            return;
        }
        com.byazt.ku.tt ttVarC = new com.byazt.ku.tt().c(str2).tt(str3).ve(strOptString).uj(str).n(strOptString3).a(strOptString2).c(Long.valueOf(System.currentTimeMillis()));
        a.c().c(ttVarC, false);
        tt();
        if (x.c(strOptString2)) {
            ttVarC.a(strOptString2);
            n.tt().c(true);
        }
    }

    public void c(com.byazt.ku.uj ujVar, c cVar) {
        c(ujVar, ujVar.tt(), cVar);
    }

    public void c(com.byazt.ku.uj ujVar, String str, final c cVar) {
        if (cVar == null) {
            return;
        }
        if (ujVar == null) {
            m.uj("TmplDiffManager", "saveTemplate error: tplInfo == null");
            cVar.tt();
            return;
        }
        final String str2 = ujVar.f16491c;
        final String str3 = ujVar.ve;
        final String str4 = ujVar.tt;
        final String str5 = ujVar.uj;
        final String str6 = ujVar.f16492n;
        final String strA = TextUtils.isEmpty(str) ? com.byazt.mf.c.c().ve() != null ? com.byazt.mf.c.c().ve().a() : "" : str;
        if (TextUtils.isEmpty(str2)) {
            m.uj("TmplDiffManager", "saveTemplate error:tmpId is empty");
            cVar.tt();
        } else {
            com.byazt.or.n.c(new com.byazt.bwm.sp("saveTemplate") { // from class: com.byazt.six.sp.2
                @Override // java.lang.Runnable
                public void run() {
                    sp.this.c(str2, str3, str4, str5, str6, strA, cVar);
                }
            }, 10);
        }
    }

    public synchronized void c(String str, String str2, String str3, String str4, String str5, String str6, c cVar) {
        if (c(str) != null) {
            if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                tt(str6, str, str3, str2, str4, str5);
                cVar.c();
            }
            cVar.c();
            return;
        }
        if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
            c(str2, str6, str, cVar);
        } else {
            tt(str6, str, str3, str2, str4, str5);
            cVar.c();
        }
        boolean zC = x.c(str5);
        if (!tt.n() || zC) {
            n.tt().c(true);
        }
    }

    private void c(String str, String str2, String str3, c cVar) {
        if (TextUtils.isEmpty(str)) {
            cVar.tt();
            return;
        }
        JSONObject jSONObjectC = c(str, cVar);
        if (jSONObjectC != null) {
            String strOptString = jSONObjectC.optString(TKDownloadReason.KSAD_TK_MD5);
            String strOptString2 = jSONObjectC.optString("version");
            String strOptString3 = jSONObjectC.optString("data");
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2) && !TextUtils.isEmpty(strOptString3)) {
                com.byazt.ku.tt ttVarC = new com.byazt.ku.tt().c(str2).tt(str3).ve(strOptString).uj(str).n(strOptString3).a(strOptString2).c(Long.valueOf(System.currentTimeMillis()));
                if (ttVarC != null && com.byazt.mf.c.c().tt() != null) {
                    if (TextUtils.isEmpty(ttVarC.tt())) {
                        cVar.tt();
                        return;
                    }
                    a.c().c(ttVarC, false);
                    tt();
                    if (x.c(strOptString2)) {
                        ttVarC.a(strOptString2);
                        n.tt().c(true);
                    }
                    cVar.c();
                    return;
                }
                cVar.tt();
                return;
            }
            cVar.tt();
        }
    }

    public void c(Set<String> set) {
        try {
            a.c().c(set);
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
