package com.byazt.yj;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1197, TcMouseManager.MOUSE_STARY})
public class p implements yv, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f22278c;
    public volatile yv tt;

    public p(yv yvVar) {
        this.tt = yvVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f22278c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f22278c = functionA;
        }
        return null;
    }

    @Override // com.byazt.yj.yv
    public void clearAllMemoryCache() {
        if (this.tt != null) {
            this.tt.clearAllMemoryCache();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        this.f22278c.apply(sparseArray);
    }

    @Override // com.byazt.yj.yv
    public void clearMemoryBitmapCache(md mdVar) {
        if (this.tt != null) {
            this.tt.clearMemoryBitmapCache(mdVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        if (mdVar != null) {
            mdVar = new h(mdVar);
        }
        sparseArray.put(1, mdVar);
        this.f22278c.apply(sparseArray);
    }

    @Override // com.byazt.yj.yv
    public void clearMemoryRawCache(md mdVar) {
        if (this.tt != null) {
            this.tt.clearMemoryRawCache(mdVar);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        if (mdVar != null) {
            mdVar = new h(mdVar);
        }
        sparseArray.put(1, mdVar);
        this.f22278c.apply(sparseArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // com.byazt.yj.yv
    public yp from(md mdVar) {
        if (this.tt != null) {
            return this.tt.from(mdVar);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (mdVar != null) {
            mdVar = new h(mdVar);
        }
        sparseArray.put(1, mdVar);
        ?? Apply = this.f22278c.apply(sparseArray);
        ?? zVar = Apply;
        if (Apply != 0) {
            zVar = new z((Function) Apply);
        }
        return (yp) zVar;
    }

    public p(Function function) {
        this.f22278c = function;
    }
}
