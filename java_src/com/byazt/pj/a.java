package com.byazt.pj;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.cd.x;
import com.byazt.kt.RecyclerView;
import com.byazt.sz.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1693, 34})
public class a extends com.byazt.xj.c<RecyclerView> {
    public uj cf;
    public n.ve ij;
    public List<ve> kz;
    public n mq;
    public tt vi;
    public Map<Integer, i.c> vp;
    public RecyclerView.i yo;

    @com.byazt.zqa.c(c = {0, 1, 1693, 464})
    private static class c extends RecyclerView.x implements n.c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18717c;

        public c(int i10) {
            this.f18717c = i10;
        }

        @Override // com.byazt.pj.n.c
        public void P_() {
        }

        @Override // com.byazt.pj.n.c
        public void Q_() {
        }

        @Override // com.byazt.kt.RecyclerView.x
        public void c(Rect rect, View view, RecyclerView recyclerView, RecyclerView.gt gtVar) {
            super.c(rect, view, recyclerView, gtVar);
            int i10 = this.f18717c;
            rect.left = i10;
            rect.right = i10;
            rect.bottom = i10;
            if (recyclerView.a(view) == 0) {
                rect.top = this.f18717c;
            }
        }

        @Override // com.byazt.pj.n.c
        public View ve() {
            return null;
        }
    }

    public interface tt {
        void c();

        void c(int i10, int i11);

        void c(int i10, View view, ve veVar);

        void c(RecyclerView recyclerView, int i10);
    }

    public a(Context context) {
        super(context);
        this.vp = new HashMap();
    }

    @Override // com.byazt.xj.ve
    public void c(ViewGroup.LayoutParams layoutParams) {
    }

    @Override // com.byazt.xj.c
    public com.byazt.xj.c.C0482c x() {
        return null;
    }

    @Override // com.byazt.xj.c, com.byazt.xj.ve
    public void tt() {
        super.tt();
        n nVar = new n(this.tt);
        this.mq = nVar;
        nVar.c(this.xd);
        this.mq.c(this.hq);
        this.mq.c(this.ny);
        this.mq.c(this.cf);
        this.mq.c(this.ij);
        this.mq.c(this.vp);
        this.mq.c(this.kz);
        ((RecyclerView) this.f21881n).setLayoutManager(this.yo);
        ((RecyclerView) this.f21881n).setAdapter(this.mq);
        ((RecyclerView) this.f21881n).c((RecyclerView.x) new c((int) x.c(this.tt, 10.0f)));
        ((RecyclerView) this.f21881n).c((RecyclerView.yp) new com.byazt.pj.tt(new com.byazt.pj.c()) { // from class: com.byazt.pj.a.1
            @Override // com.byazt.pj.tt
            public void c(int i10, int i11) {
                if (a.this.vi != null) {
                    a.this.vi.c(i10, i11);
                }
            }

            @Override // com.byazt.pj.tt
            public void tt(RecyclerView recyclerView, int i10) {
                if (a.this.vi != null) {
                    a.this.vi.c(recyclerView, i10);
                }
            }

            @Override // com.byazt.pj.tt
            public void c(int i10, View view) {
                if (a.this.vi == null || i10 < 0 || a.this.kz == null || i10 >= a.this.kz.size()) {
                    return;
                }
                a.this.vi.c(i10, view, (ve) a.this.kz.get(i10));
            }

            @Override // com.byazt.pj.tt
            public void c() {
                if (a.this.vi != null) {
                    a.this.vi.c();
                }
            }
        });
    }

    public void c(uj ujVar) {
        this.cf = ujVar;
    }

    @Override // com.byazt.xj.ve
    public View c() {
        return new RecyclerView(this.tt);
    }

    public void c(tt ttVar) {
        this.vi = ttVar;
    }

    @Override // com.byazt.xj.ve
    public void c(JSONObject jSONObject) {
        super.c(jSONObject);
    }

    public void c(List<ve> list) {
        this.kz = list;
    }

    public void c(int i10, Object obj) {
        n nVar = this.mq;
        if (nVar != null) {
            nVar.c(obj);
            this.mq.c(i10, obj);
        }
    }

    public void c(n.uj ujVar) {
        this.mq.c(ujVar);
    }

    @Override // com.byazt.xj.c
    public void c(com.byazt.xj.ve veVar) {
        if (veVar == null) {
            return;
        }
        ((com.byazt.xj.c) this).f21852c.add(veVar);
        if (veVar.eo() != null) {
            this.vp.put(Integer.valueOf(veVar.eo().hashCode()), veVar.md());
        }
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        str.hashCode();
        if (str.equals("layoutType") && !TextUtils.equals("grid", str2)) {
            this.yo = new com.byazt.kt.n(this.tt);
        }
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void tt(List<ve> list) {
        if (this.mq == null || list == null || list.isEmpty()) {
            return;
        }
        if (this.kz == null) {
            this.kz = new ArrayList();
        }
        int size = this.kz.size();
        this.kz.addAll(list);
        this.mq.c(list);
        this.mq.c(size, this.kz.size());
    }

    @Override // com.byazt.xj.c
    public void c(com.byazt.xj.ve veVar, ViewGroup.LayoutParams layoutParams) {
        ((com.byazt.xj.c) this).f21852c.add(veVar);
        this.vp.put(Integer.valueOf(veVar.eo().hashCode()), veVar.md());
    }
}
