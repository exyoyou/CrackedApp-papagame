package com.xinzhu.overmind.client.hook.proxies.display;

import android.os.IInterface;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.e;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class a extends b {

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.display.a$a, reason: collision with other inner class name */
    static class C1110a extends e {
        C1110a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "createVirtualDisplay";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            r.d(objArr);
            return method.invoke(obj, objArr);
        }
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return new x8.a(x8.a.c()).d() != getProxyInvocation();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return new x8.a(x8.a.c()).d();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        new x8.a(x8.a.c()).e((IInterface) getProxyInvocation());
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        addMethodHook(new C1110a());
    }
}
