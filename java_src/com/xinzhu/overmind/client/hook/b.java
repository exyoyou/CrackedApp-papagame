package com.xinzhu.overmind.client.hook;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
import sa.v;

/* JADX INFO: loaded from: classes8.dex */
public abstract class b implements InvocationHandler, d {
    public static final String TAG = "b";
    private Object mBase;
    private Map<String, e> mMethodHookMap = new HashMap();
    private Object mProxyInvocation;

    private void c(Method method, Object[] objArr, Object obj, String str) {
    }

    protected void addMethodHook(e eVar) {
        this.mMethodHookMap.put(eVar.c(), eVar);
    }

    protected boolean enableLog() {
        return false;
    }

    protected Object getBase() {
        return this.mBase;
    }

    protected Object getProxyInvocation() {
        return this.mProxyInvocation;
    }

    protected abstract Object getWho();

    protected abstract void inject(Object obj, Object obj2);

    @Override // com.xinzhu.overmind.client.hook.d
    public void injectHook() {
        Object who = getWho();
        this.mBase = who;
        if (who != null) {
            Object objNewProxyInstance = Proxy.newProxyInstance(who.getClass().getClassLoader(), v.a(this.mBase.getClass()), this);
            this.mProxyInvocation = objNewProxyInstance;
            inject(this.mBase, objNewProxyInstance);
            onBindMethod();
            return;
        }
        com.xinzhu.overmind.b.c(TAG, "injectHook failed " + this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        e eVar = this.mMethodHookMap.get(method.getName());
        if (eVar == null || !method.getName().equals(eVar.c())) {
            try {
                c(method, objArr, null, "beforeHook");
                Object objInvoke = method.invoke(this.mBase, objArr);
                c(method, objArr, objInvoke, "afterHook");
                return objInvoke;
            } catch (Throwable th) {
                throw th.getCause();
            }
        }
        c(method, objArr, null, "beforeHook");
        Object objB = eVar.b(this.mBase, method, objArr);
        if (objB != null) {
            return objB;
        }
        Object objA = eVar.a(eVar.d(this.mBase, method, objArr));
        c(method, objArr, objA, "afterHook");
        return objA;
    }

    protected abstract void onBindMethod();
}
