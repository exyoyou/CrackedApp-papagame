package com.byazt.ut;

import android.util.SparseArray;
import com.byazt.dna.zm;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 834, 71})
public class x implements zm, Function {
    public static final int STATE_KEY_BOOST = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int[] f20994c = new int[1];

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return Integer.valueOf(getState(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue()));
        }
        if (iIntValue == 2) {
            setState(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue(), ((Boolean) sparseArray.get(3)).booleanValue());
            return null;
        }
        if (iIntValue != 3) {
            if (iIntValue != 4) {
                return null;
            }
            resetSize(((Integer) sparseArray.get(1)).intValue());
            return null;
        }
        return Boolean.valueOf(assertAndSetState(((Integer) sparseArray.get(1)).intValue(), ((Integer) sparseArray.get(2)).intValue(), ((Boolean) sparseArray.get(3)).booleanValue()));
    }

    @Override // com.byazt.dna.zm
    public synchronized boolean assertAndSetState(int i10, int i11, boolean z10) {
        if (i10 >= this.f20994c.length) {
            resetSize(i10 + 1);
        }
        if (((this.f20994c[i10] & i11) == i11) == z10) {
            return true;
        }
        if (z10) {
            int[] iArr = this.f20994c;
            iArr[i10] = i11 | iArr[i10];
        } else {
            int[] iArr2 = this.f20994c;
            iArr2[i10] = (~i11) & iArr2[i10];
        }
        return false;
    }

    @Override // com.byazt.dna.zm
    public synchronized int getState(int i10, int i11) {
        if (i10 < this.f20994c.length) {
            return this.f20994c[i10] & i11;
        }
        resetSize(i10 + 1);
        return 0;
    }

    @Override // com.byazt.dna.zm
    public void resetSize(int i10) {
        if (i10 < this.f20994c.length) {
            return;
        }
        int[] iArr = new int[i10];
        System.arraycopy(this.f20994c, 0, iArr, 0, this.f20994c.length);
        this.f20994c = iArr;
    }

    @Override // com.byazt.dna.zm
    public synchronized void setState(int i10, int i11, boolean z10) {
        if (i10 >= this.f20994c.length) {
            resetSize(i10 + 1);
        }
        if (z10) {
            int[] iArr = this.f20994c;
            iArr[i10] = i11 | iArr[i10];
        } else {
            int[] iArr2 = this.f20994c;
            iArr2[i10] = (~i11) & iArr2[i10];
        }
    }
}
