package com.xinzhu.overmind.client.hook;

import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public abstract class e {
    protected Object a(Object obj) throws Throwable {
        return obj;
    }

    protected Object b(Object obj, Method method, Object[] objArr) throws Throwable {
        return null;
    }

    protected abstract String c();

    protected abstract Object d(Object obj, Method method, Object[] objArr) throws Throwable;

    protected void e(Object[] objArr, int i10) {
        objArr[i10] = Integer.valueOf(Overmind.getHostUserId());
    }
}
