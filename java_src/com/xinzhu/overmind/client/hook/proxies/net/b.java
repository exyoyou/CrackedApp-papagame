package com.xinzhu.overmind.client.hook.proxies.net;

import com.xinzhu.haunted.android.os.j;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.e;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89381b = "network_management";

    static class a extends e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getNetworkStatsUidDetail";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            b.e(objArr, 0);
            return method.invoke(obj, objArr);
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.net.b$b, reason: collision with other inner class name */
    static class C1113b extends e {
        C1113b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setUidCleartextNetworkPolicy";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            b.e(objArr, 0);
            return method.invoke(obj, objArr);
        }
    }

    static class c extends e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setUidMeteredNetworkBlacklist";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            b.e(objArr, 0);
            return method.invoke(obj, objArr);
        }
    }

    static class d extends e {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setUidMeteredNetworkWhitelist";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            b.e(objArr, 0);
            return method.invoke(obj, objArr);
        }
    }

    public b() {
        super(t.i(f89381b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object[] objArr, int i10) {
        if (objArr == null) {
            return;
        }
        Object obj = objArr[i10];
        if (obj instanceof Integer) {
            if (((Integer) obj).intValue() == f.getVUid() || ((Integer) objArr[i10]).intValue() == f.getBaseVUid()) {
                objArr[i10] = Integer.valueOf(Overmind.getHostUid());
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return j.a.a(t.i(f89381b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89381b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new C1113b());
        addMethodHook(new c());
        addMethodHook(new d());
        addMethodHook(new a());
    }
}
