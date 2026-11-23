package com.byazt.hsa;

import android.util.Pair;
import android.util.SparseArray;
import com.byazt.ut.i;
import com.byazt.ut.sl;
import java.util.Map;
import java.util.function.Function;
import n0.b;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2432, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final i f15109c;

    public c(i iVar) {
        this.f15109c = iVar;
    }

    public boolean c(sl slVar, Function function) {
        int iC = com.byazt.rj.c.c(function, slVar.f20975a);
        if (iC <= slVar.ve) {
            return false;
        }
        slVar.tt(iC);
        slVar.c(function);
        i iVar = this.f15109c;
        if (iVar == null) {
            return true;
        }
        iVar.c(slVar.f20975a, function, slVar.ve, iC);
        return true;
    }

    public void c(sl slVar, com.byazt.ut.c cVar, Function function) {
        if (slVar.a()) {
            if (!slVar.sp) {
                Object objUj = slVar.uj();
                if (objUj != null) {
                    c(slVar, null, objUj, cVar);
                    return;
                }
                return;
            }
            for (Map.Entry<com.byazt.dna.c, Object> entry : slVar.ve().entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    c(slVar, entry.getKey(), value, cVar);
                }
            }
        }
    }

    private void c(sl slVar, com.byazt.dna.c cVar, Object obj, com.byazt.ut.c cVar2) {
        int iC;
        Pair<Function, Object> pairC = cVar2.n().c(slVar, cVar);
        if (pairC != null && (iC = com.byazt.rj.c.c(n0.c.a(pairC.first), slVar.f20975a)) > slVar.c() && pairC.second != null && b.a(obj) && b.a(pairC.second)) {
            Function functionA = n0.c.a(obj);
            Function functionA2 = n0.c.a(pairC.second);
            if (functionA.getClass().getClassLoader() == functionA2.getClass().getClassLoader()) {
                if (this.f15109c != null) {
                    this.f15109c.c(slVar, 3, "source:" + obj + " target:" + functionA2 + " classloader:" + functionA.getClass().getClassLoader() + " target classloader:" + functionA2.getClass().getClassLoader(), (Throwable) null);
                    return;
                }
                return;
            }
            c(functionA, functionA2);
            slVar.c(iC);
            i iVar = this.f15109c;
            if (iVar != null) {
                iVar.c(slVar.f20975a, obj, pairC.second, slVar.ve, slVar.n());
            }
            c(functionA, slVar);
        }
    }

    private boolean c(Function function, sl slVar) {
        Function functionTt = com.byazt.rj.c.tt(function);
        if (functionTt == null) {
            i iVar = this.f15109c;
            if (iVar != null) {
                iVar.c(2, "get origin service impl failed:" + slVar.f20975a, (Throwable) null);
            }
            return false;
        }
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, -1);
        functionTt.apply(sparseArray);
        return true;
    }

    private void c(Function function, Function function2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, -4);
        sparseArray.put(1, function2);
        function.apply(sparseArray);
    }
}
