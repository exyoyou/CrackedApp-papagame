package com.byazt.dna;

import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 195})
public class gt implements my, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13034c;
    public volatile my tt;

    public gt(my myVar) {
        this.tt = myVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13034c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13034c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.my
    public Object getDispatchAdSdkInitializer(Bundle bundle, Object obj) {
        if (this.tt != null) {
            return this.tt.getDispatchAdSdkInitializer(bundle, obj);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, bundle);
        sparseArray.put(2, obj);
        return this.f13034c.apply(sparseArray);
    }

    public gt(Function function) {
        this.f13034c = function;
    }
}
