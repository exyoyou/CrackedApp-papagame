package com.byazt.ut;

import android.util.SparseArray;
import com.byazt.dna.gu;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 834, 91})
public class sp implements gu, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<Object> f20983c = new SparseArray<>();

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            return getData(((Integer) sparseArray.get(1)).intValue());
        }
        if (iIntValue == 2) {
            Object obj2 = sparseArray.get(1);
            setData(((Integer) obj2).intValue(), sparseArray.get(2));
            return null;
        }
        if (iIntValue == 3) {
            Object obj3 = sparseArray.get(1);
            Object ttVar = sparseArray.get(2);
            if (ttVar != null) {
                ttVar = new com.byazt.iy.tt(n0.c.a(ttVar));
            }
            return getData(((Integer) obj3).intValue(), (com.byazt.iy.c) ttVar);
        }
        if (iIntValue != 4) {
            return null;
        }
        Object obj4 = sparseArray.get(1);
        Object obj5 = sparseArray.get(2);
        Object ttVar2 = sparseArray.get(3);
        if (ttVar2 != null) {
            ttVar2 = new com.byazt.iy.tt(n0.c.a(ttVar2));
        }
        setData(((Integer) obj4).intValue(), obj5, (com.byazt.iy.c) ttVar2);
        return null;
    }

    @Override // com.byazt.dna.gu
    public synchronized Object getData(int i10) {
        return this.f20983c.get(i10);
    }

    @Override // com.byazt.dna.gu
    public synchronized void setData(int i10, Object obj) {
        this.f20983c.put(i10, obj);
    }

    @Override // com.byazt.dna.gu
    public synchronized Object getData(int i10, com.byazt.iy.c cVar) {
        Object obj = this.f20983c.get(i10);
        if (cVar == null) {
            return obj;
        }
        if (obj == null) {
            return null;
        }
        return cVar.convert(obj);
    }

    @Override // com.byazt.dna.gu
    public synchronized void setData(int i10, Object obj, com.byazt.iy.c cVar) {
        try {
            if (cVar == null) {
                this.f20983c.put(i10, obj);
            } else {
                if (obj != null) {
                    this.f20983c.put(i10, cVar.convert(obj));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
