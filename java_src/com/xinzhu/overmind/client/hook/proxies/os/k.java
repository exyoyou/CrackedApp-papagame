package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.IInterface;
import android.os.UserManager;
import com.umeng.analytics.pro.aw;
import com.xinzhu.haunted.android.content.pm.w;
import com.xinzhu.haunted.android.os.n;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.haunted.android.os.y;
import com.xinzhu.haunted.android.os.z;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
public class k extends BinderInvocationStub {
    public k() {
        super(t.i(aw.f84332m));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return n.a.a(t.i(aw.f84332m));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        y yVar = new y((UserManager) Overmind.getContext().getSystemService(aw.f84332m));
        if (yVar.a()) {
            yVar.c((IInterface) getProxyInvocation());
        }
        try {
            z.e(null);
        } catch (Throwable unused) {
        }
        replaceSystemService(aw.f84332m);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isProfile", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isManagedProfile", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isUserUnlocked", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isUserUnlockingOrUnlocked", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getProfileParent", null));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getProfileType", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getProfileIds", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
        w wVarC = w.c(0, "Admin", w.d());
        Objects.requireNonNull(wVarC);
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getUsers", Collections.singletonList(wVarC.f88915a)));
        w wVarC2 = w.c(0, "Admin", w.d());
        Objects.requireNonNull(wVarC2);
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getUserInfo", wVarC2.f88915a));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getApplicationRestrictions", 0, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setApplicationRestrictions", 0, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getApplicationRestrictionsForUser", 0, com.xinzhu.overmind.client.hook.common.d.f89291g));
    }
}
