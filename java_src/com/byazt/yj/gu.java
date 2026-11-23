package com.byazt.yj;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.io.InputStream;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1197, 17})
public class gu implements qy, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f22273c;
    public volatile qy tt;

    public gu(qy qyVar) {
        this.tt = qyVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f22273c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f22273c = functionA;
        }
        return null;
    }

    @Override // com.byazt.yj.qy
    public void clearAllCache() {
        if (this.tt != null) {
            this.tt.clearAllCache();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        this.f22273c.apply(sparseArray);
    }

    @Override // com.byazt.yj.qy
    public void clearCache(double d10) {
        if (this.tt != null) {
            this.tt.clearCache(d10);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Double.valueOf(d10));
        this.f22273c.apply(sparseArray);
    }

    @Override // com.byazt.yj.qy
    public void clearDiskCache(double d10) {
        if (this.tt != null) {
            this.tt.clearDiskCache(d10);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Double.valueOf(d10));
        this.f22273c.apply(sparseArray);
    }

    @Override // com.byazt.yj.qy
    public void clearMemoryCache(double d10) {
        if (this.tt != null) {
            this.tt.clearMemoryCache(d10);
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Double.valueOf(d10));
        this.f22273c.apply(sparseArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // com.byazt.yj.qy
    public yp from(String str) {
        ?? zVar;
        if (this.tt != null) {
            return this.tt.from(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        ?? Apply = this.f22273c.apply(sparseArray);
        if (Apply != 0) {
            zVar = Apply;
            zVar = new z((Function) Apply);
        }
        zVar = Apply;
        return (yp) zVar;
    }

    @Override // com.byazt.yj.qy
    public InputStream getCacheStream(String str, String str2) {
        if (this.tt != null) {
            return this.tt.getCacheStream(str, str2);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        return (InputStream) this.f22273c.apply(sparseArray);
    }

    @Override // com.byazt.yj.qy
    public InputStream getDiskCacheStream(String str, String str2, String str3) {
        if (this.tt != null) {
            return this.tt.getDiskCacheStream(str, str2, str3);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        return (InputStream) this.f22273c.apply(sparseArray);
    }

    @Override // com.byazt.yj.qy
    public boolean hasDiskCache(String str, String str2, String str3) {
        if (this.tt != null) {
            return this.tt.hasDiskCache(str, str2, str3);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        sparseArray.put(1, str);
        sparseArray.put(2, str2);
        sparseArray.put(3, str3);
        return ((Boolean) this.f22273c.apply(sparseArray)).booleanValue();
    }

    public gu(Function function) {
        this.f22273c = function;
    }
}
