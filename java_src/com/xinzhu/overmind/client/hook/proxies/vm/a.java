package com.xinzhu.overmind.client.hook.proxies.vm;

import android.os.IInterface;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.e;
import java.lang.reflect.Method;
import m9.c;
import m9.d;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89432b = "WindowManagerStub";

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.vm.a$a, reason: collision with other inner class name */
    static class C1122a extends e {
        C1122a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "openSession";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            b bVar = new b((IInterface) method.invoke(obj, objArr));
            bVar.injectHook();
            return bVar.getProxyInvocation();
        }
    }

    public a() {
        super(t.i("window"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return c.a.a(t.i("window"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("window");
        d.f(null);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new C1122a());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setForcedDisplayDensityForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("clearForcedDisplayDensityForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("disableKeyguard", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("reenableKeyguard", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isKeyguardSecure", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("refreshScreenCaptureDisabled", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
    }
}
