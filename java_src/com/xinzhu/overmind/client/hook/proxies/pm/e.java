package com.xinzhu.overmind.client.hook.proxies.pm;

import android.content.Intent;
import com.xinzhu.haunted.android.content.pm.g;
import com.xinzhu.haunted.android.content.pm.o;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class e extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f89411b = false;

    public e() {
        super(t.i("shortcut"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return g.a.a(t.i("shortcut"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("shortcut");
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("updateShortcuts", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("requestPinShortcut", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("disableShortcuts", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("enableShortcuts", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("removeDynamicShortcuts", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("removeAllDynamicShortcuts", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("removeLongLivedShortcuts", 0));
        if (!com.xinzhu.overmind.utils.e.h() || com.xinzhu.overmind.utils.e.j()) {
            Boolean bool = Boolean.TRUE;
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("addDynamicShortcuts", bool));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("setDynamicShortcuts", bool));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("requestPinShortcut", bool));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("pushDynamicShortcut", bool));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("createShortcutResultIntent", new Intent()));
        } else {
            u9.a aVarE = u9.a.e();
            aVarE.d(Boolean.FALSE);
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("requestPinShortcut", aVarE.f97476a));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("setDynamicShortcuts", aVarE.f97476a));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("addDynamicShortcuts", aVarE.f97476a));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("pushDynamicShortcut", aVarE.f97476a));
            u9.a aVarE2 = u9.a.e();
            aVarE2.d(new Intent());
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("createShortcutResultIntent", aVarE2.f97476a));
        }
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getShortcuts", o.e()));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getShareTargets", o.e()));
        Boolean bool2 = Boolean.FALSE;
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("hasShareTargets", bool2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getMaxShortcutCountPerActivity", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getRemainingCallCount", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getRateLimitResetTime", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getIconMaxDimensions", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("reportShortcutUsed", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("isRequestPinItemSupported", bool2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("onApplicationActive", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getBackupPayload", null));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("applyRestore", 0));
    }
}
