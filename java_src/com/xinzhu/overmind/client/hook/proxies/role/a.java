package com.xinzhu.overmind.client.hook.proxies.role;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89412b = "role";

    public a() {
        super(t.i(f89412b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return p8.a.C1235a.a(t.i(f89412b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89412b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new d("isRoleHeld", d.f89290f, d.f89289e));
        addMethodHook(new d("getRoleHoldersAsUser", d.f89289e, 1));
        addMethodHook(new d("addRoleHolderAsUser", d.f89290f, 3));
        addMethodHook(new d("removeRoleHolderAsUser", d.f89290f, 3));
        addMethodHook(new d("clearRoleHoldersAsUser", d.f89289e, 2));
        addMethodHook(new d("addOnRoleHoldersChangedListenerAsUser", d.f89289e, 1));
        addMethodHook(new d("removeOnRoleHoldersChangedListenerAsUser", d.f89289e, 1));
        addMethodHook(new d("addRoleHolderFromController", d.f89290f, d.f89289e));
        addMethodHook(new d("removeRoleHolderFromController", d.f89290f, d.f89289e));
        addMethodHook(new d("getHeldRolesFromController", d.f89290f, d.f89289e));
        addMethodHook(new d("getDefaultSmsPackage", d.f89289e, 0));
    }
}
