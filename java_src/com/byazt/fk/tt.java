package com.byazt.fk;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1696, 13})
public class tt implements c, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f14208c;
    public volatile c tt;

    public tt(c cVar) {
        this.tt = cVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                this.tt.setRootDir((String) sparseArray.get(1));
                return null;
            case 2:
                return this.tt.getRewardFullCacheDir();
            case 3:
                return this.tt.getBrandCacheDir();
            case 4:
                return this.tt.getSplashCacheDir();
            case 5:
                return this.tt.getOtherCacheDir();
            case 6:
                this.tt.clearCache();
                return null;
            case 7:
                Object ypVar = sparseArray.get(1);
                if (ypVar != null) {
                    ypVar = new yp(n0.c.a(ypVar));
                }
                return Boolean.valueOf(this.tt.isVideoCached((u) ypVar));
            case 8:
                Object ypVar2 = sparseArray.get(1);
                if (ypVar2 != null) {
                    ypVar2 = new yp(n0.c.a(ypVar2));
                }
                return Long.valueOf(this.tt.getCachedSize((u) ypVar2));
            default:
                return null;
        }
    }

    @Override // com.byazt.fk.c
    public void clearCache() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        this.f14208c.apply(sparseArray);
    }

    @Override // com.byazt.fk.c
    public String getBrandCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return (String) this.f14208c.apply(sparseArray);
    }

    @Override // com.byazt.fk.c
    public long getCachedSize(u uVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        if (uVar != null) {
            uVar = new yp(uVar);
        }
        sparseArray.put(1, uVar);
        return ((Long) this.f14208c.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.fk.c
    public String getOtherCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.f14208c.apply(sparseArray);
    }

    @Override // com.byazt.fk.c
    public String getRewardFullCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return (String) this.f14208c.apply(sparseArray);
    }

    @Override // com.byazt.fk.c
    public String getSplashCacheDir() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (String) this.f14208c.apply(sparseArray);
    }

    @Override // com.byazt.fk.c
    public boolean isVideoCached(u uVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        if (uVar != null) {
            uVar = new yp(uVar);
        }
        sparseArray.put(1, uVar);
        return ((Boolean) this.f14208c.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.fk.c
    public void setRootDir(String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        this.f14208c.apply(sparseArray);
    }

    public tt(Function function) {
        this.f14208c = function;
    }
}
