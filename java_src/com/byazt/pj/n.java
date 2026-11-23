package com.byazt.pj;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.kt.RecyclerView;
import com.byazt.sz.da;
import com.byazt.sz.gt;
import com.byazt.sz.i;
import com.byazt.sz.rh;
import com.byazt.sz.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1693, 46})
public class n extends RecyclerView.c<RecyclerView.gu> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f18720a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<com.byazt.pj.ve> f18721c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public rh f18722da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public da f18723i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ve f18724n;
    public gt sl;
    public uj sp;
    public Map<Integer, i.c> tt;
    public com.byazt.pj.uj uj;
    public Context ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f18725x = true;

    public interface c {
        void P_();

        void Q_();

        View ve();
    }

    /* JADX INFO: renamed from: com.byazt.pj.n$n, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1693, 1143})
    public class C0408n extends RecyclerView.gu implements c {
        public com.byazt.xj.ve nu;
        public z rh;

        public C0408n(View view) {
            super(view);
        }

        @Override // com.byazt.pj.n.c
        public void P_() {
            if (n.this.uj != null) {
                n.this.uj.tt(this.nu);
            }
        }

        @Override // com.byazt.pj.n.c
        public void Q_() {
            if (n.this.uj != null) {
                n.this.uj.c(this.nu);
            }
        }

        public void c(com.byazt.xj.ve veVar) {
            this.nu = veVar;
        }

        public com.byazt.xj.ve p() {
            return this.nu;
        }

        @Override // com.byazt.pj.n.c
        public View ve() {
            return this.nu.i();
        }

        public void c(z zVar) {
            this.rh = zVar;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 1693, 934})
    public class tt extends RecyclerView.gu {
        public tt(View view) {
            super(view);
        }
    }

    public interface uj {
        void c(RecyclerView.gu guVar, int i10);
    }

    public interface ve {
    }

    public n(Context context) {
        this.ve = context;
    }

    public void c(Map<Integer, i.c> map) {
        this.tt = map;
    }

    public void c(List<com.byazt.pj.ve> list) {
        if (this.f18721c == null) {
            this.f18721c = new ArrayList();
        }
        this.f18721c.addAll(list);
    }

    public void c(com.byazt.pj.uj ujVar) {
        this.uj = ujVar;
    }

    public void c(da daVar) {
        this.f18723i = daVar;
    }

    public void c(rh rhVar) {
        this.f18722da = rhVar;
    }

    public void c(gt gtVar) {
        this.sl = gtVar;
    }

    public void c(ve veVar) {
        this.f18724n = veVar;
    }

    @Override // com.byazt.kt.RecyclerView.c
    public RecyclerView.gu c(ViewGroup viewGroup, int i10) {
        i.c cVar = this.tt.get(Integer.valueOf(i10));
        z zVar = new z(this.ve);
        com.byazt.xj.ve<View> veVarC = zVar.c(cVar);
        zVar.c(veVarC);
        if (veVarC != null) {
            veVarC.c(new ViewGroup.LayoutParams(veVarC.or(), veVarC.cu()));
            C0408n c0408n = new C0408n(veVarC.i());
            c0408n.c((com.byazt.xj.ve) veVarC);
            c0408n.c(zVar);
            return c0408n;
        }
        return new tt(new View(this.ve));
    }

    public void c(uj ujVar) {
        this.sp = ujVar;
    }

    @Override // com.byazt.kt.RecyclerView.c
    public int c(int i10) {
        return this.f18721c.get(i10).tt();
    }

    @Override // com.byazt.kt.RecyclerView.c
    public void c(RecyclerView.gu guVar, int i10, List<Object> list) {
        uj ujVar;
        if (list != null && !list.isEmpty()) {
            for (Object obj : list) {
                if (obj != null && this.f18720a != null && TextUtils.equals(obj.toString(), this.f18720a.toString()) && (ujVar = this.sp) != null) {
                    ujVar.c(guVar, i10);
                }
            }
            return;
        }
        c(guVar, i10);
    }

    @Override // com.byazt.kt.RecyclerView.c
    public void c(RecyclerView.gu guVar, int i10) {
        com.byazt.pj.ve veVar;
        com.byazt.pj.uj ujVar;
        if (guVar == null || (veVar = this.f18721c.get(i10)) == null || !(guVar instanceof C0408n)) {
            return;
        }
        JSONObject jSONObjectC = veVar.c();
        C0408n c0408n = (C0408n) guVar;
        c0408n.nu.c(new ViewGroup.LayoutParams(c0408n.nu.or(), c0408n.nu.cu()));
        c(jSONObjectC, c0408n.p());
        c(this.ve, jSONObjectC, c0408n.p());
        if (i10 == 0 && (ujVar = this.uj) != null && this.f18725x) {
            this.f18725x = false;
            ujVar.c(c0408n.nu);
        }
    }

    @Override // com.byazt.kt.RecyclerView.c
    public int c() {
        return this.f18721c.size();
    }

    public void c(Object obj) {
        this.f18720a = obj;
    }

    public void c(JSONObject jSONObject, com.byazt.xj.ve veVar) {
        if (veVar == null) {
            return;
        }
        if (veVar instanceof com.byazt.xj.c) {
            veVar.c(jSONObject);
            List<com.byazt.xj.ve<View>> listSp = ((com.byazt.xj.c) veVar).sp();
            if (listSp == null || listSp.size() <= 0) {
                return;
            }
            Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
            while (it2.hasNext()) {
                c(jSONObject, it2.next());
            }
            return;
        }
        veVar.c(jSONObject);
    }

    public void c(Context context, JSONObject jSONObject, com.byazt.xj.ve veVar) {
        if (veVar == null) {
            return;
        }
        if (veVar instanceof com.byazt.xj.c) {
            veVar.c(this.f18723i);
            veVar.c(this.f18722da);
            veVar.tt(true);
            veVar.tt();
            List<com.byazt.xj.ve<View>> listSp = ((com.byazt.xj.c) veVar).sp();
            if (listSp == null || listSp.size() <= 0) {
                return;
            }
            Iterator<com.byazt.xj.ve<View>> it2 = listSp.iterator();
            while (it2.hasNext()) {
                c(context, jSONObject, it2.next());
            }
            return;
        }
        JSONObject jSONObjectGr = veVar.gr();
        Iterator<String> itKeys = jSONObjectGr.keys();
        com.byazt.xj.c cVarD = veVar.d();
        com.byazt.xj.c.C0482c c0482cX = cVarD != null ? cVarD.x() : null;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strC = com.byazt.wj.tt.c(jSONObjectGr.optString(next), jSONObject);
            veVar.c(next, strC);
            veVar.c(this.f18723i);
            veVar.c(this.f18722da);
            if (c0482cX != null) {
                c0482cX.c(context, next, strC);
            }
        }
        veVar.tt(true);
        veVar.tt();
    }
}
