package com.byazt.pct;

import android.text.TextUtils;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 124, 91})
public class sp implements qy.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final x f18661c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final com.byazt.pct.c f18662da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f18663i;
    public final u sp;
    public final gt tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f18665x;
    public final Map<String, tt> ve = new HashMap();
    public final Map<String, uj.tt> uj = new HashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<m> f18664n = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<uj> f18660a = new HashSet();

    @com.byazt.zqa.c(c = {0, 1, 124, 180})
    static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f18668c;
        public String tt;

        private c(boolean z10, String str) {
            this.f18668c = z10;
            this.tt = str;
        }
    }

    public sp(da daVar, com.byazt.pct.c cVar, rl rlVar) {
        this.f18662da = cVar;
        this.f18661c = daVar.uj;
        gt gtVar = new gt(rlVar, daVar.f18633t, daVar.f18634u);
        this.tt = gtVar;
        gtVar.c(this);
        gtVar.c(daVar.f18631m);
        this.sp = daVar.f18630i;
        this.f18665x = daVar.f18635x;
        this.f18663i = daVar.f18636z;
    }

    private gu tt(String str, tt ttVar) {
        return this.f18663i ? gu.PRIVATE : this.tt.c(this.f18665x, str, ttVar);
    }

    public c c(m mVar, a aVar) throws Exception {
        tt ttVar = this.ve.get(mVar.uj);
        if (ttVar != null) {
            try {
                gu guVarTt = tt(aVar.tt, ttVar);
                aVar.uj = guVarTt;
                if (guVarTt == null) {
                    i.c("Permission denied, call: ".concat(String.valueOf(mVar)));
                    throw new rh(-1);
                }
                if (ttVar instanceof n) {
                    return c(mVar, (n) ttVar, aVar);
                }
                if (ttVar instanceof ve) {
                    return c(mVar, (ve) ttVar, guVarTt);
                }
            } catch (rl.c e10) {
                i.c("No remote permission config fetched, call pending: ".concat(String.valueOf(mVar)), e10);
                this.f18664n.add(mVar);
                return new c(false, gr.c());
            }
        }
        uj.tt ttVar2 = this.uj.get(mVar.uj);
        if (ttVar2 == null) {
            i.tt("Received call: " + mVar + ", but not registered.");
            return null;
        }
        uj ujVarC = ttVar2.c();
        ujVarC.c(mVar.uj);
        gu guVarTt2 = tt(aVar.tt, ujVarC);
        aVar.uj = guVarTt2;
        if (guVarTt2 != null) {
            return c(mVar, ujVarC, aVar);
        }
        i.c("Permission denied, call: ".concat(String.valueOf(mVar)));
        ujVarC.n();
        throw new rh(-1);
    }

    public void c(String str, n<?, ?> nVar) {
        nVar.c(str);
        this.ve.put(str, nVar);
    }

    public void c(String str, uj.tt ttVar) {
        this.uj.put(str, ttVar);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (this.ve.containsKey(str)) {
            return true;
        }
        return this.uj.containsKey(str);
    }

    public void c() {
        Iterator<uj> it2 = this.f18660a.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
        this.f18660a.clear();
        this.ve.clear();
        this.uj.clear();
        this.tt.tt(this);
    }

    private c c(m mVar, n nVar, a aVar) throws Exception {
        return new c(true, gr.c(this.f18661c.c(nVar.c(c(mVar.f18644n, (tt) nVar), aVar))));
    }

    private c c(final m mVar, final uj ujVar, a aVar) throws Exception {
        this.f18660a.add(ujVar);
        ujVar.c(c(mVar.f18644n, ujVar), aVar, new uj.c() { // from class: com.byazt.pct.sp.1
            @Override // com.byazt.pct.uj.c
            public void c(Object obj) {
                if (sp.this.f18662da == null) {
                    return;
                }
                sp.this.f18662da.tt(gr.c(sp.this.f18661c.c(obj)), mVar);
                sp.this.f18660a.remove(ujVar);
            }

            @Override // com.byazt.pct.uj.c
            public void c(Throwable th) {
                if (sp.this.f18662da == null) {
                    return;
                }
                sp.this.f18662da.tt(gr.c(th), mVar);
                sp.this.f18660a.remove(ujVar);
            }
        });
        return new c(false, gr.c());
    }

    private c c(final m mVar, ve veVar, gu guVar) throws Exception {
        new my(mVar.uj, guVar, new my.c() { // from class: com.byazt.pct.sp.2
        });
        return new c(false, gr.c());
    }

    private Object c(String str, tt ttVar) throws JSONException {
        return this.f18661c.c(str, c(ttVar)[0]);
    }

    private static Type[] c(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }
}
