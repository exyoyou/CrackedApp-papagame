package com.byazt.ukr;

import android.util.SparseArray;
import com.byazt.aas.gu;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1081, 15})
public class uj implements com.byazt.dna.ve, Function {
    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return getDid();
        }
        if (iIntValue == 2) {
            return getOAID(((Boolean) sparseArray.get(1)).booleanValue());
        }
        if (iIntValue != 3) {
            return null;
        }
        return encrypt((byte[]) sparseArray.get(1), ((Integer) sparseArray.get(2)).intValue());
    }

    @Override // com.byazt.dna.ve
    public byte[] encrypt(byte[] bArr, int i10) {
        return com.byazt.bzd.ve.c(bArr, i10);
    }

    @Override // com.byazt.dna.ve
    public String getDid() {
        return com.byazt.omf.a.c().ve();
    }

    @Override // com.byazt.dna.ve
    public String getOAID(boolean z10) {
        return gu.c(z10);
    }
}
