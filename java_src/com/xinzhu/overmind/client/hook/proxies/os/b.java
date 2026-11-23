package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.Build;
import android.os.IInterface;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89386b = "batterystats";

    public b() {
        super(t.i(f89386b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return r9.b.a.a(t.i(f89386b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 24) {
            f9.b bVar = new f9.b(a.a(Overmind.getContext().getSystemService("systemhealth")));
            if (bVar.a()) {
                bVar.c((IInterface) obj2);
            }
        }
        replaceSystemService(f89386b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("takeUidSnapshot", 0));
    }
}
