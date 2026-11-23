package com.xinzhu.overmind.client.hook.proxies.textservice;

import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.utils.e;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89428b = "textservices";

    public a() {
        super(t.i(f89428b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return y9.a.C1257a.a(t.i(f89428b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89428b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        if (e.f()) {
            addMethodHook(new d("getCurrentSpellChecker", d.f89289e, 0));
            addMethodHook(new d("getCurrentSpellCheckerSubtype", d.f89289e, 0));
            addMethodHook(new d("getSpellCheckerService", d.f89289e, 0));
            addMethodHook(new d("finishSpellCheckerService", d.f89289e, 0));
            addMethodHook(new d("isSpellCheckerEnabled", d.f89289e, 0));
            addMethodHook(new d("getEnabledSpellCheckers", d.f89289e, 0));
        }
    }
}
