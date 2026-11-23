package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 110})
public class qy implements rl, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13039c;
    public volatile rl tt;

    public qy(rl rlVar) {
        this.tt = rlVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13039c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13039c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.rl
    public int getEventBatchSize() {
        if (this.tt != null) {
            return this.tt.getEventBatchSize();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Integer) this.f13039c.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.dna.rl
    public String getMediationAppLogUrl() {
        if (this.tt != null) {
            return this.tt.getMediationAppLogUrl();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.f13039c.apply(sparseArray);
    }

    @Override // com.byazt.dna.rl
    public boolean isAppLogV2() {
        if (this.tt != null) {
            return this.tt.isAppLogV2();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Boolean) this.f13039c.apply(sparseArray)).booleanValue();
    }

    public qy(Function function) {
        this.f13039c = function;
    }
}
