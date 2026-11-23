package com.byazt.yj;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1197, 518})
public class h implements md, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f22274c;
    public volatile md tt;

    public h(md mdVar) {
        this.tt = mdVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return this.tt.getCacheDir();
        }
        if (iIntValue == 2) {
            return this.tt.getName();
        }
        if (iIntValue == 3) {
            return Integer.valueOf(this.tt.getMemoryCacheSize());
        }
        if (iIntValue == 4) {
            return Integer.valueOf(this.tt.getRawCacheSize());
        }
        if (iIntValue != 5) {
            return null;
        }
        return this.tt.extra();
    }

    @Override // com.byazt.yj.md
    public SparseArray extra() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (SparseArray) this.f22274c.apply(sparseArray);
    }

    @Override // com.byazt.yj.md
    public String getCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.f22274c.apply(sparseArray);
    }

    @Override // com.byazt.yj.md
    public int getMemoryCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.f22274c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.yj.md
    public String getName() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.f22274c.apply(sparseArray);
    }

    @Override // com.byazt.yj.md
    public int getRawCacheSize() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Integer) this.f22274c.apply(sparseArray)).intValue();
    }

    public h(Function function) {
        this.f22274c = function;
    }
}
