package com.byazt.vis;

import android.content.Context;
import com.byazt.ddx.uj;
import com.byazt.ete.ic;
import com.byazt.omf.EmptyView;
import com.byazt.omf.gt;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1810, 54})
public class ve extends tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f21216a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public EmptyView f21217i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f21218n;
    public Map<String, Object> sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Double f21219x;

    public interface c {
        boolean c();
    }

    public ve() {
    }

    public void c(c cVar) {
        this.f21218n = cVar;
    }

    public ve(ic icVar, Context context) {
        this.f22932c = icVar;
        this.tt = context;
        this.sp = new HashMap();
    }

    public void c(String str) {
        this.f21216a = str;
    }

    public void c(EmptyView emptyView) {
        this.f21217i = emptyView;
    }

    public void c(Map<String, Object> map) {
        Map<String, Object> map2 = this.sp;
        if (map2 == null) {
            this.sp = map;
        } else {
            map2.putAll(map);
        }
    }

    public void c(Double d10) {
        this.f21219x = d10;
    }

    @Override // com.byazt.vis.tt, com.byazt.zo.c
    public int c(Map<String, Object> map, com.byazt.zo.ve veVar) {
        c cVar;
        if (!gt.tt().xx() || (cVar = this.f21218n) == null || cVar.c()) {
            return 0;
        }
        EmptyView emptyView = this.f21217i;
        if (emptyView == null) {
            this.sp.put("show_send_type", 1);
            uj.c(this.f22932c, this.f21216a, this.sp, this.f21219x);
        } else {
            emptyView.c("checkWhenClicked");
        }
        return 0;
    }
}
