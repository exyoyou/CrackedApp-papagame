package com.byazt.yj;

import android.util.SparseArray;
import com.byazt.ut.ATSKeep;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@ATSKeep
@com.byazt.zqa.c(c = {0, 1, 1197, 121})
public class cu implements or, Function {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Function f22272c;
    public volatile or tt;

    public cu(or orVar) {
        this.tt = orVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == 1) {
            Object obj2 = sparseArray.get(1);
            Object uVar = sparseArray.get(2);
            if (uVar != null) {
                uVar = new u(n0.c.a(uVar));
            }
            this.tt.onStepStart((String) obj2, (t) uVar);
            return null;
        }
        if (iIntValue != 2) {
            return null;
        }
        Object obj3 = sparseArray.get(1);
        Object uVar2 = sparseArray.get(2);
        if (uVar2 != null) {
            uVar2 = new u(n0.c.a(uVar2));
        }
        this.tt.onStepEnd((String) obj3, (t) uVar2);
        return null;
    }

    @Override // com.byazt.yj.or
    public void onStepEnd(String str, t tVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, str);
        if (tVar != null) {
            tVar = new u(tVar);
        }
        sparseArray.put(2, tVar);
        this.f22272c.apply(sparseArray);
    }

    @Override // com.byazt.yj.or
    public void onStepStart(String str, t tVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        sparseArray.put(1, str);
        if (tVar != null) {
            tVar = new u(tVar);
        }
        sparseArray.put(2, tVar);
        this.f22272c.apply(sparseArray);
    }

    public cu(Function function) {
        this.f22272c = function;
    }
}
