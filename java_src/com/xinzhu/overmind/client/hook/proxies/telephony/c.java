package com.xinzhu.overmind.client.hook.proxies.telephony;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.server.os.MindDeviceInfo;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class c extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89426b = "iphonesubinfo";

    public static class a extends com.xinzhu.overmind.client.hook.e {
        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getDeviceId";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
            return (mindDeviceInfoB == null || !mindDeviceInfoB.f89705b) ? method.invoke(obj, objArr) : mindDeviceInfoB.f89707d;
        }
    }

    public static class b extends a {
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.c.a, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getDeviceIdForPhone";
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.telephony.c$c, reason: collision with other inner class name */
    public static class C1120c extends com.xinzhu.overmind.client.hook.e {
        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getIccSerialNumber";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            MindDeviceInfo mindDeviceInfoB = ma.c.a().b(f.getUserId());
            return (mindDeviceInfoB == null || !mindDeviceInfoB.f89705b) ? method.invoke(obj, objArr) : mindDeviceInfoB.f89708e;
        }
    }

    public static class d extends C1120c {
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.c.C1120c, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getIccSerialNumberForSubscriber";
        }
    }

    public static class e extends a {
        @Override // com.xinzhu.overmind.client.hook.proxies.telephony.c.a, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getImeiForSubscriber";
        }
    }

    public c() {
        super(t.i(f89426b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return x9.b.a.a(t.i(f89426b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89426b);
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
        addMethodHook(new b());
        addMethodHook(new d());
        addMethodHook(new e());
        addMethodHook(new C1120c());
        addMethodHook(new d());
    }
}
