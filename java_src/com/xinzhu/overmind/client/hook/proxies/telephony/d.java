package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class d extends BinderInvocationStub {
    public d() {
        super(t.i("phone"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return x9.e.a.a(t.i("phone"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("phone");
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a.d());
        addMethodHook(new a.C1118a());
        addMethodHook(new a.b());
        addMethodHook(new a.c());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("IsUserDataEnabled", Boolean.TRUE));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("setDataEnabled", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getDataEnabled", Boolean.FALSE));
    }
}
