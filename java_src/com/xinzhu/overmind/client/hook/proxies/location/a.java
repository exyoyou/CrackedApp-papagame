package com.xinzhu.overmind.client.hook.proxies.location;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.c;
import com.xinzhu.overmind.utils.e;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89379b;

    static {
        f89379b = e.x() ? "contexthub" : "contexthub_service";
    }

    public a() {
        super(t.i(f89379b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return y8.a.C1256a.a(t.i(f89379b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89379b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new c("getContextHubHandles", new int[0]));
        addMethodHook(new c("getContextHubInfo", null));
        addMethodHook(new c("loadNanoApp", 0));
        addMethodHook(new c("unloadNanoApp", 0));
        addMethodHook(new c("getNanoAppInstanceInfo", null));
        addMethodHook(new c("findNanoAppOnHub", new int[0]));
        addMethodHook(new c("sendMessage", 0));
        addMethodHook(new c("getContextHubs", null));
        addMethodHook(new c("loadNanoAppOnHub", null));
        addMethodHook(new c("unloadNanoAppFromHub", null));
        addMethodHook(new c("enableNanoApp", null));
        addMethodHook(new c("disableNanoApp", null));
        addMethodHook(new c("queryNanoApps", null));
        addMethodHook(new c("createClient", null));
        addMethodHook(new c("createPendingIntentClient", null));
        addMethodHook(new c("registerCallback", 0));
    }
}
