package com.xinzhu.overmind.client.hook.proxies.net;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.e;
import com.xinzhu.overmind.utils.w;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class d extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89383b = "tethering";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f89384c = 3;

    static class a extends e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "isTetheringSupported";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                w.m(objArr[2].getClass()).k("onResult", Integer.TYPE).call("onResult", 3);
                return null;
            } catch (Throwable unused) {
                return method.invoke(obj, objArr);
            }
        }
    }

    public d() {
        super(t.i(f89383b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return d9.c.a.a(t.i(f89383b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89383b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a());
    }
}
