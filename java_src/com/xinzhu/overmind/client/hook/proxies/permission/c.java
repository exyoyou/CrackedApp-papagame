package com.xinzhu.overmind.client.hook.proxies.permission;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.e;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class c extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89404b = "vivo_permission_service";

    public c() {
        super(t.i(f89404b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return ia.a.C1175a.a(t.i(f89404b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89404b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new e("checkDelete", 4));
        addMethodHook(new e("checkOnePermission", 2));
        addMethodHook(new e("checkBlankPermission", 2));
        addMethodHook(new e("checkLANPermission", 2));
        addMethodHook(new e("checkPermission", 2));
        addMethodHook(new e("countByUid", 0));
        addMethodHook(new e("isSensorPrivacyEnabled", 0));
        addMethodHook(new e("noteScreenShot", 0));
        addMethodHook(new e("queryByUid", 0));
        addMethodHook(new e("setOnePermission", 2));
        addMethodHook(new e("setOnePermissionExt", 2));
    }
}
