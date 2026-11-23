package com.xinzhu.overmind.client.hook.proxies.os;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class j extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89399b = "usagestats";

    public j() {
        super(t.i(f89399b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return r8.a.C1243a.a(t.i(f89399b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89399b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("queryEventsForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("queryEventsForPackageForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setAppInactive", com.xinzhu.overmind.client.hook.common.d.f89289e, 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isAppInactive", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("reportChooserSelection", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getAppStandbyBucket", com.xinzhu.overmind.client.hook.common.d.f89289e, 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setAppStandbyBucket", com.xinzhu.overmind.client.hook.common.d.f89289e, 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getAppStandbyBuckets", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setAppStandbyBuckets", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("registerAppUsageObserver", null));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("unregisterAppUsageObserver", null));
    }
}
