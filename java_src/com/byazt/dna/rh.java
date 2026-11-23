package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 115})
public class rh implements nu, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13040c;
    public volatile nu tt;

    public rh(nu nuVar) {
        this.tt = nuVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13040c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13040c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.nu
    public void clear() {
        if (this.tt != null) {
            this.tt.clear();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        this.f13040c.apply(sparseArray);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7 */
    @Override // com.byazt.dna.nu
    public com.byazt.iy.n get(String str) {
        ?? aVar;
        if (this.tt != null) {
            return this.tt.get(str);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        ?? Apply = this.f13040c.apply(sparseArray);
        if (Apply != 0) {
            aVar = Apply;
            aVar = new com.byazt.iy.a((Function) Apply);
        }
        aVar = Apply;
        return (com.byazt.iy.n) aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    @Override // com.byazt.dna.nu
    public com.byazt.iy.ve getEncrypt(int i10) {
        ?? ujVar;
        if (this.tt != null) {
            return this.tt.getEncrypt(i10);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Integer.valueOf(i10));
        ?? Apply = this.f13040c.apply(sparseArray);
        if (Apply != 0) {
            ujVar = Apply;
            ujVar = new com.byazt.iy.uj((Function) Apply);
        }
        ujVar = Apply;
        return (com.byazt.iy.ve) ujVar;
    }

    @Override // com.byazt.dna.nu
    public void store() {
        if (this.tt != null) {
            this.tt.store();
            return;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        this.f13040c.apply(sparseArray);
    }

    public rh(Function function) {
        this.f13040c = function;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, java.util.function.Function] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // com.byazt.dna.nu
    public com.byazt.iy.n get(String str, int i10) {
        ?? aVar;
        if (this.tt != null) {
            return this.tt.get(str, i10);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        sparseArray.put(2, Integer.valueOf(i10));
        ?? Apply = this.f13040c.apply(sparseArray);
        if (Apply != 0) {
            aVar = Apply;
            aVar = new com.byazt.iy.a((Function) Apply);
        }
        aVar = Apply;
        return (com.byazt.iy.n) aVar;
    }
}
