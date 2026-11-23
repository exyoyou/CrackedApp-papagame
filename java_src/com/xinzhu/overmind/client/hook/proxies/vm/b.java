package com.xinzhu.overmind.client.hook.proxies.vm;

import android.annotation.SuppressLint;
import android.os.IInterface;
import android.view.WindowManager;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.e;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89433c = "WindowSessionStub";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IInterface f89434b;

    public static class a extends e {
        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addToDisplay";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr != null) {
                for (Object obj2 : objArr) {
                    if (obj2 != null && (obj2 instanceof WindowManager.LayoutParams)) {
                        ((WindowManager.LayoutParams) obj2).packageName = Overmind.getHostPkg();
                    }
                }
            }
            return method.invoke(obj, objArr);
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.vm.b$b, reason: collision with other inner class name */
    public static class C1123b extends a {
        @Override // com.xinzhu.overmind.client.hook.proxies.vm.b.a, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addToDisplayAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.vm.b.a, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int i10;
            if (com.xinzhu.overmind.utils.e.h()) {
                i10 = 4;
            } else {
                i10 = com.xinzhu.overmind.utils.e.g() ? 5 : -1;
            }
            e(objArr, i10);
            return super.d(obj, method, objArr);
        }
    }

    public b(IInterface iInterface) {
        super(iInterface.asBinder());
        this.f89434b = iInterface;
    }

    @SuppressLint({"InlinedApi"})
    public static void d(WindowManager.LayoutParams layoutParams) {
        int i10 = layoutParams.type;
        if ((i10 == 2002 || i10 == 2003 || i10 == 2006 || i10 == 2007 || i10 == 2010 || i10 == 2038) && com.xinzhu.overmind.utils.e.x()) {
            layoutParams.type = 2038;
        }
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    public Object getProxyInvocation() {
        return super.getProxyInvocation();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return this.f89434b;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        int iA;
        if (objArr != null && objArr.length != 0 && (iA = r.a(objArr, WindowManager.LayoutParams.class)) > 0) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) objArr[iA];
            d(layoutParams);
            objArr[iA] = layoutParams;
        }
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a());
        addMethodHook(new C1123b());
    }
}
