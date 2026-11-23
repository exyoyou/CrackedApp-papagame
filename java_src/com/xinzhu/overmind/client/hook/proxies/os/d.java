package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class d extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89388b = "deviceidle";

    public d() {
        super(t.i(f89388b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return com.xinzhu.haunted.android.os.i.a.a(t.i(f89388b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89388b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.d(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("addPowerSaveTempWhitelistApp", com.xinzhu.overmind.client.hook.common.d.f89289e, 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("addPowerSaveTempWhitelistAppForMms", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("addPowerSaveTempWhitelistAppForSms", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("whitelistAppTemporarily", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
    }
}
