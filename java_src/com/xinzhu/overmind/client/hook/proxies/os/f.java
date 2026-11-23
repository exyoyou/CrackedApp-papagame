package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.DropBoxManager;
import android.os.IInterface;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import sa.u;

/* JADX INFO: loaded from: classes8.dex */
public class f extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89391b = "dropbox";

    public f() {
        super(t.i(f89391b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return v9.a.C1252a.a(t.i(f89391b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        com.xinzhu.haunted.android.os.b bVar = new com.xinzhu.haunted.android.os.b((DropBoxManager) Overmind.getContext().getSystemService(f89391b));
        if (bVar.a()) {
            bVar.c((IInterface) obj2);
        }
        replaceSystemService(f89391b);
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        return method.getName().equals("asBinder") ? super.invoke(obj, method, objArr) : u.a(method.getReturnType());
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
    }
}
