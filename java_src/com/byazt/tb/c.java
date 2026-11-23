package com.byazt.tb;

import android.util.SparseArray;
import com.byazt.nr.m;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1771, 20})
public abstract class c implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SparseArray<Method> f20118c = new SparseArray<>();
    public Object tt;

    public abstract String c();

    @Override // com.byazt.tb.tt
    public void c(int i10, Method method) {
        this.f20118c.put(i10, method);
    }

    @Override // com.byazt.tb.tt
    public <T> T call(int i10, Object... objArr) {
        Object obj;
        Method method = this.f20118c.get(i10);
        if (method == null || (obj = this.tt) == null) {
            m.tt(c(), "call method " + i10 + " failed for null ");
            return null;
        }
        try {
            return obj instanceof Class ? (T) method.invoke(null, objArr) : (T) method.invoke(obj, objArr);
        } catch (Throwable th) {
            m.tt(c(), "call method " + i10 + " failed: " + th.getMessage());
            return null;
        }
    }

    @Override // com.byazt.tb.tt
    public void c(Object obj) {
        this.tt = obj;
    }
}
