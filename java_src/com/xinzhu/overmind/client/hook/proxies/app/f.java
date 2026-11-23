package com.xinzhu.overmind.client.hook.proxies.app;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;

/* JADX INFO: loaded from: classes8.dex */
public class f extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89355b = "uri_grants";

    public f() {
        super(t.i(f89355b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return com.xinzhu.haunted.android.app.t.a.a(t.i(f89355b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89355b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("takePersistableUriPermission", 2, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("releasePersistableUriPermission", 2, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getGrantedUriPermissions", 0, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("clearGrantedUriPermissions", 0, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getUriPermissions", 0, com.xinzhu.overmind.client.hook.common.d.f89289e));
    }
}
