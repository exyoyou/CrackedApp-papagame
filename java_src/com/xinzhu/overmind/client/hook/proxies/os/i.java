package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.Bundle;
import com.xinzhu.haunted.android.os.m;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class i extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89396b = "system_update";

    class a extends com.xinzhu.overmind.client.hook.e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f89397b = "status";

        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "retrieveSystemUpdateInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Bundle bundle = new Bundle();
            bundle.putInt("status", 0);
            return bundle;
        }
    }

    public i() {
        super(t.i(f89396b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return m.a.a(t.i(f89396b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89396b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("updateSystemUpdateInfo", null));
    }
}
