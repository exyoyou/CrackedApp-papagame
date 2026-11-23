package com.xinzhu.overmind.client.hook.proxies.session;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.e;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.session.a$a, reason: collision with other inner class name */
    static class C1117a extends e {
        C1117a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "createSession";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr != null && objArr.length > 0 && (objArr[0] instanceof String)) {
                objArr[0] = Overmind.getHostPkg();
            }
            return method.invoke(obj, objArr);
        }
    }

    public a() {
        super(t.i("media_session"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return c9.a.C0023a.a(t.i("media_session"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("media_session");
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new C1117a());
    }
}
