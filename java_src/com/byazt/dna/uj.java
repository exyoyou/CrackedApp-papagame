package com.byazt.dna;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import com.haima.hmcp.proto.GSSDK;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_TOUCH_BEGIN_VALUE, 15})
public class uj implements ve, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f13044c;
    public volatile ve tt;

    public uj(ve veVar) {
        this.tt = veVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Function functionA;
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -5) {
            return this.tt != null ? this.tt : this.f13044c;
        }
        if (iIntValue == -4 && (functionA = n0.c.a(sparseArray.get(1))) != null) {
            this.tt = null;
            this.f13044c = functionA;
        }
        return null;
    }

    @Override // com.byazt.dna.ve
    public byte[] encrypt(byte[] bArr, int i10) {
        if (this.tt != null) {
            return this.tt.encrypt(bArr, i10);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, bArr);
        sparseArray.put(2, Integer.valueOf(i10));
        return (byte[]) this.f13044c.apply(sparseArray);
    }

    @Override // com.byazt.dna.ve
    public String getDid() {
        if (this.tt != null) {
            return this.tt.getDid();
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.f13044c.apply(sparseArray);
    }

    @Override // com.byazt.dna.ve
    public String getOAID(boolean z10) {
        if (this.tt != null) {
            return this.tt.getOAID(z10);
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Boolean.valueOf(z10));
        return (String) this.f13044c.apply(sparseArray);
    }

    public uj(Function function) {
        this.f13044c = function;
    }
}
