package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import sa.r;
import x9.f;

/* JADX INFO: loaded from: classes8.dex */
public class e extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89427b = "telephony.registry";

    public e() {
        super(t.i(f89427b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return f.a.a(t.i(f89427b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89427b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.d(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("listen", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("listenWithEventList", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("addOnSubscriptionsChangedListener", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("addOnOpportunisticSubscriptionsChangedListener", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("removeOnSubscriptionsChangedListener", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("listenForSubscriber", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
    }
}
