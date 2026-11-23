package com.xinzhu.overmind.client.hook.proxies.am;

import android.os.IInterface;

/* JADX INFO: loaded from: classes8.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static IInterface f89333b;

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return com.xinzhu.haunted.android.app.b.c();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        if (com.xinzhu.haunted.android.app.b.a()) {
            new l9.b(com.xinzhu.haunted.android.app.b.d()).e(obj2);
            com.xinzhu.haunted.android.app.b.a aVar = new com.xinzhu.haunted.android.app.b.a(com.xinzhu.haunted.android.app.b.d());
            if (aVar.a()) {
                aVar.c((IInterface) obj2);
            }
            f89333b = (IInterface) obj2;
        }
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        addMethodHook(new d.a());
        addMethodHook(new d.b());
        addMethodHook(new d.c());
        addMethodHook(new d.C1105d());
        addMethodHook(new d.o());
        addMethodHook(new d.n());
        addMethodHook(new d.f());
        addMethodHook(new d.g());
        addMethodHook(new d.l());
        addMethodHook(new d.e());
        addMethodHook(new d.k());
        addMethodHook(new d.m());
        if (com.xinzhu.overmind.utils.e.u()) {
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("startAppLockService", 0));
        }
    }
}
