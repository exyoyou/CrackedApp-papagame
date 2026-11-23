package com.byazt.dna;

import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 72})
public class da implements i, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13032c;
    public volatile i tt;

    public da(i iVar) {
        this.tt = iVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13032c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13032c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.i
    public Object getInitialInstance(Bundle bundle) {
        if (this.tt != null) {
            return this.tt.getInitialInstance(bundle);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, bundle);
        return this.f13032c.apply(sparseArray);
    }

    public da(Function function) {
        this.f13032c = function;
    }
}
