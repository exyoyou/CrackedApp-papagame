package com.byazt.fn;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1551, 13})
public class tt implements c, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f14212c;
    public volatile c tt;

    public tt(c cVar) {
        this.tt = cVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        int iIntValue = ((Integer) ((SparseArray) obj).get(0)).intValue();
        if (iIntValue == 1) {
            return Float.valueOf(this.tt.getLatitude());
        }
        if (iIntValue == 2) {
            return Float.valueOf(this.tt.getLongitude());
        }
        if (iIntValue != 3) {
            return null;
        }
        return Long.valueOf(this.tt.getLastTime());
    }

    @Override // com.byazt.fn.c
    public long getLastTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Long) this.f14212c.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.fn.c
    public float getLatitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Float) this.f14212c.apply(sparseArray)).floatValue();
    }

    @Override // com.byazt.fn.c
    public float getLongitude() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Float) this.f14212c.apply(sparseArray)).floatValue();
    }

    public tt(Function function) {
        this.f14212c = function;
    }
}
