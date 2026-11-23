package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89421b = "phone_huawei";

    class a extends com.xinzhu.overmind.client.hook.e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getDeviceId";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return "";
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.telephony.b$b, reason: collision with other inner class name */
    class C1119b extends com.xinzhu.overmind.client.hook.e {
        C1119b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getDeviceIdWithFeature";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
            return (mindDeviceInfoB == null || !mindDeviceInfoB.f89705b) ? method.invoke(obj, objArr) : mindDeviceInfoB.f89707d;
        }
    }

    class c extends com.xinzhu.overmind.client.hook.e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getImeiForSlot";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
            return (mindDeviceInfoB == null || !mindDeviceInfoB.f89705b) ? method.invoke(obj, objArr) : mindDeviceInfoB.f89707d;
        }
    }

    class d extends com.xinzhu.overmind.client.hook.e {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getUniqueDeviceId";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
            return (mindDeviceInfoB == null || !mindDeviceInfoB.f89705b) ? method.invoke(obj, objArr) : mindDeviceInfoB.f89707d;
        }
    }

    public b() {
        super(t.i(f89421b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return x9.a.C1255a.a(t.i(f89421b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89421b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a());
        addMethodHook(new C1119b());
        addMethodHook(new c());
        addMethodHook(new d());
    }
}
