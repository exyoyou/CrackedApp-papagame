package com.xinzhu.overmind.client.hook.common;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import sa.r;
import sa.v;

/* JADX INFO: loaded from: classes8.dex */
public class a implements InvocationHandler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89284c = "CallingPackageStub";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f89285b;

    public a(Object obj) {
        this.f89285b = obj;
    }

    public static Object a(Object obj) {
        return Proxy.newProxyInstance(obj.getClass().getClassLoader(), v.a(obj.getClass()), new a(obj));
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.d(objArr);
        return method.invoke(this.f89285b, objArr);
    }
}
