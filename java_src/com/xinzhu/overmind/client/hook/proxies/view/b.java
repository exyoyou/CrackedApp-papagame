package com.xinzhu.overmind.client.hook.proxies.view;

import com.xinzhu.haunted.android.os.t;
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
            return "requestBufferForProcess";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            r.d(objArr);
            return method.invoke(obj, objArr);
        }
    }

    public b() {
        super(t.i("graphicsstats"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return m9.b.a.a(t.i("graphicsstats"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("graphicsstats");
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a());
    }
}
