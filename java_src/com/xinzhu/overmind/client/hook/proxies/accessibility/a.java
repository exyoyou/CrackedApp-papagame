package com.xinzhu.overmind.client.hook.proxies.accessibility;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.utils.e;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {
    public a() {
        super(t.i("accessibility"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return n9.a.C1214a.a(t.i("accessibility"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("accessibility");
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new d("interrupt", d.f89289e, d.f89291g));
        addMethodHook(new d("sendAccessibilityEvent", d.f89289e, d.f89291g));
        addMethodHook(new d("addClient", d.f89289e, d.f89291g));
        addMethodHook(new d("getInstalledAccessibilityServiceList", d.f89289e, d.f89291g));
        addMethodHook(new d("getEnabledAccessibilityServiceList", d.f89289e, d.f89291g));
        addMethodHook(new d("addAccessibilityInteractionConnection", d.f89289e, d.f89291g));
        addMethodHook(new d("getWindowToken", d.f89289e, d.f89291g));
        addMethodHook(new d("removeClient", d.f89289e, d.f89291g));
        if (e.k()) {
            addMethodHook(new d("setAccessibilityWindowAttributes", d.f89289e, 2));
        }
    }
}
