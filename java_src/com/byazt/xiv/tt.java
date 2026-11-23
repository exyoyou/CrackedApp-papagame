package com.byazt.xiv;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1883, 13})
public class tt implements c, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f21846c;
    public volatile c tt;

    public tt(c cVar) {
        this.tt = cVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f21846c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f21846c = functionA;
        }
        return null;
    }

    @Override // com.byazt.xiv.c
    public Set getAdnKeySet() {
        if (this.tt != null) {
            return this.tt.getAdnKeySet();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (Set) this.f21846c.apply(sparseArray);
    }

    @Override // com.byazt.xiv.c
    public Map getAdnStatusMap() {
        if (this.tt != null) {
            return this.tt.getAdnStatusMap();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (Map) this.f21846c.apply(sparseArray);
    }

    @Override // com.byazt.xiv.c
    public boolean getAndUpdateInitStatus(String str) {
        if (this.tt != null) {
            return this.tt.getAndUpdateInitStatus(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        return ((Boolean) this.f21846c.apply(sparseArray)).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // com.byazt.xiv.c
    public ve getDexPluginStrategy(String str) {
        ?? ujVar;
        if (this.tt != null) {
            return this.tt.getDexPluginStrategy(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, str);
        ?? Apply = this.f21846c.apply(sparseArray);
        if (Apply != 0) {
            ujVar = Apply;
            ujVar = new uj((Function) Apply);
        }
        ujVar = Apply;
        return (ve) ujVar;
    }

    public tt(Function function) {
        this.f21846c = function;
    }
}
