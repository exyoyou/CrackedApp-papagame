package com.xinzhu.overmind.client.hook.proxies.media;

import b9.b;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89380b = "media_router";

    public a() {
        super(t.i(f89380b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return b.a.a(t.i(f89380b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89380b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new d("registerClientAsUser", d.f89290f, d.f89291g));
        addMethodHook(new d("registerRouter2", d.f89290f, d.f89289e));
        addMethodHook(new d("registerManager", d.f89290f, d.f89289e));
    }
}
