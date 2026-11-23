package com.xinzhu.overmind.client.hook.proxies.location;

import android.location.LocationManager;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.e;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    static class a extends e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getFromLocation";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iA = r.a(objArr, a9.a.f67c);
            if (iA >= 0) {
                a9.a aVar = new a9.a(objArr[iA]);
                aVar.k(Overmind.getHostPkg());
                aVar.l(Overmind.getHostUid());
                objArr[iA] = aVar.f76a;
            }
            return method.invoke(obj, objArr);
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.location.b$b, reason: collision with other inner class name */
    static class C1112b extends e {
        C1112b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getFromLocationName";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iA = r.a(objArr, a9.a.f67c);
            if (iA >= 0) {
                a9.a aVar = new a9.a(objArr[iA]);
                aVar.k(Overmind.getHostPkg());
                aVar.l(Overmind.getHostUid());
                objArr[iA] = aVar.f76a;
            }
            return method.invoke(obj, objArr);
        }
    }

    static class c extends e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "isProviderEnabledForUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            r.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public b() {
        super(t.i("location"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return t.i("location") != this;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return a9.b.a.a(t.i("location"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        new aa.a((LocationManager) Overmind.getContext().getSystemService("location")).c(obj2);
        replaceSystemService("location");
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.e(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new c());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("setExtraLocationControllerPackageEnabled", null));
        addMethodHook(new a());
        addMethodHook(new C1112b());
    }
}
