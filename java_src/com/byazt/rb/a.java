package com.byazt.rb;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 23, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<ve> f19412c;
    public List<c> tt;
    public com.byazt.xj.ve uj;
    public Context ve;

    public a(Context context, com.byazt.xj.ve veVar, List<ve> list) {
        this.uj = veVar;
        this.ve = context;
        this.f19412c = list;
        uj();
    }

    private void uj() {
        this.tt = new ArrayList();
        List<ve> list = this.f19412c;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i10 = 0; i10 < this.f19412c.size(); i10++) {
            ve veVar = this.f19412c.get(i10);
            if (veVar != null) {
                this.tt.add(new c(this.ve, this.uj, veVar));
            }
        }
    }

    public void c() {
        List<c> list = this.tt;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (c cVar : this.tt) {
            if (cVar != null) {
                cVar.uj();
            }
        }
    }

    public void tt() {
        List<c> list = this.tt;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (c cVar : this.tt) {
            if (cVar != null) {
                cVar.c();
            }
        }
    }

    public void ve() {
        List<c> list = this.tt;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (c cVar : this.tt) {
            if (cVar != null) {
                cVar.ve();
            }
        }
    }

    public void c(Canvas canvas) {
        List<c> list = this.tt;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (c cVar : this.tt) {
            if (cVar != null) {
                cVar.c(canvas);
            }
        }
    }

    public void tt(Canvas canvas) {
        List<c> list = this.tt;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (c cVar : this.tt) {
            if (cVar != null) {
                cVar.tt(canvas);
            }
        }
    }

    public void c(int i10, int i11) {
        List<c> list = this.tt;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (c cVar : this.tt) {
            if (cVar != null) {
                cVar.c(i10, i11);
            }
        }
    }

    public c c(String str) {
        List<c> list = this.tt;
        if (list != null && !list.isEmpty()) {
            for (c cVar : this.tt) {
                if (cVar != null && TextUtils.equals(cVar.n(), str)) {
                    return cVar;
                }
            }
        }
        return null;
    }
}
