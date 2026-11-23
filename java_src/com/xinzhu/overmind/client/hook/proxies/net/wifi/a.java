package com.xinzhu.overmind.client.hook.proxies.net.wifi;

import android.os.WorkSource;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89385b = "wifi";

    public a() {
        super(t.i("wifi"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        if (e.k()) {
            return false;
        }
        try {
            if (new ba.a(Overmind.getContext().getSystemService("wifi")).b() != getProxyInvocation()) {
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return t.i("wifi") != this;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return e9.a.C1157a.a(t.i("wifi"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        if (e.k()) {
            return;
        }
        try {
            new ba.a(Overmind.getContext().getSystemService("wifi")).c(obj2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        replaceSystemService("wifi");
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        if (objArr != null) {
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj2 = objArr[i10];
                if (obj2 != null && obj2.getClass() == WorkSource.class) {
                    objArr[i10] = null;
                }
            }
        }
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
    }
}
