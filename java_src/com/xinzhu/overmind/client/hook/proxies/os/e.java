package com.xinzhu.overmind.client.hook.proxies.os;

import android.content.ComponentName;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class e extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89389b = "device_policy";

    class a extends com.xinzhu.overmind.client.hook.e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getDeviceOwnerComponent";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return new ComponentName(com.xinzhu.overmind.client.f.getVPackageName(), "");
        }
    }

    public e() {
        super(t.i(f89389b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return m8.a.C1209a.a(t.i(f89389b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89389b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getStorageEncryptionStatus", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new a());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getProfileOwnerName", ""));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getDeviceOwnerName", ""));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("isDeviceProvisioned", Boolean.TRUE));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getFactoryResetProtectionPolicy", null));
    }
}
