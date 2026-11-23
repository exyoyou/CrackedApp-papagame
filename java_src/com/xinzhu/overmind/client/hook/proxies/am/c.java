package com.xinzhu.overmind.client.hook.proxies.am;

import com.xinzhu.haunted.android.app.o;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;

/* JADX INFO: loaded from: classes8.dex */
public class c extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89339b = "ActivityTaskManager";

    public c() {
        super(t.i("activity_task"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return o.a.a(t.i("activity_task"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("activity_task");
        new l9.b(com.xinzhu.haunted.android.app.f.d()).e(obj2);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        addMethodHook(new d.o());
        addMethodHook(new d.n());
        addMethodHook(new d.a());
        addMethodHook(new d.b());
        addMethodHook(new d.c());
        addMethodHook(new d.C1105d());
        addMethodHook(new d.f());
        addMethodHook(new d.g());
        addMethodHook(new d.s());
        addMethodHook(new d.p());
        addMethodHook(new d.r());
        addMethodHook(new d.t());
        addMethodHook(new d.q());
        addMethodHook(new d.l());
        addMethodHook(new d.e());
        addMethodHook(new d.k());
        addMethodHook(new d.h());
        addMethodHook(new d.i());
        addMethodHook(new d.j());
        addMethodHook(new d.m());
        if (com.xinzhu.overmind.utils.e.u()) {
            addMethodHook(new com.xinzhu.overmind.client.hook.common.b("startAppLockService"));
        }
    }
}
