package com.xinzhu.overmind.client.hook.proxies.view;

import android.content.ComponentName;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.g;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89429b = "AutofillManagerStub";

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.view.a$a, reason: collision with other inner class name */
    class C1121a extends d {
        C1121a(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.e(objArr);
            return super.d(obj, method, objArr);
        }
    }

    class b extends d {
        b(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.e(objArr);
            return super.d(obj, method, objArr);
        }
    }

    public a() {
        super(t.i("autofill"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Object[] objArr) {
        if (objArr != null) {
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj != null && (obj instanceof ComponentName)) {
                    objArr[i10] = new ComponentName(f.getClientConfig().f89468j ? Overmind.getPluginPkg() : Overmind.getHostPkg(), g.e(f.getVPid()));
                }
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return m9.a.C1210a.a(t.i("autofill"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("autofill");
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new C1121a("addClient", d.f89289e, e.f() ? 2 : d.f89291g));
        addMethodHook(new d("removeClient", d.f89289e, d.f89291g));
        addMethodHook(new b("startSession", d.f89289e, 5));
        addMethodHook(new d("updateSession", d.f89289e, d.f89291g));
        addMethodHook(new d("setAutofillFailure", d.f89289e, d.f89291g));
        addMethodHook(new d("finishSession", d.f89289e, d.f89291g));
        addMethodHook(new d("cancelSession", d.f89289e, d.f89291g));
        addMethodHook(new d("setAuthenticationResult", d.f89289e, d.f89291g));
        addMethodHook(new d("setHasCallback", d.f89289e, 1));
        addMethodHook(new d("disableOwnedAutofillServices", d.f89289e, 0));
        addMethodHook(new d("isServiceSupported", d.f89289e, 0));
        addMethodHook(new d("isServiceEnabled", d.f89290f, 0));
    }
}
