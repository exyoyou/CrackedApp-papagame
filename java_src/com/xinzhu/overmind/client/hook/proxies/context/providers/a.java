package com.xinzhu.overmind.client.hook.proxies.context.providers;

import android.annotation.SuppressLint;
import android.content.AttributionSource;
import android.os.IInterface;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class a extends com.xinzhu.overmind.client.hook.b implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89360c = "ContentProviderStub";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IInterface f89361b;

    @Override // com.xinzhu.overmind.client.hook.proxies.context.providers.d
    public IInterface a(IInterface iInterface, String str) {
        this.f89361b = iInterface;
        injectHook();
        return (IInterface) getProxyInvocation();
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return this.f89361b;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    @SuppressLint({"NewApi"})
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if ("asBinder".equals(method.getName())) {
            return method.invoke(this.f89361b, objArr);
        }
        if (objArr != null && objArr.length > 0) {
            Object obj2 = objArr[0];
            if (obj2 instanceof String) {
                objArr[0] = Overmind.getHostPkg();
            }
            if (e.h()) {
                try {
                    int iA = r.a(objArr, com.xinzhu.overmind.client.e.a());
                    if (iA >= 0) {
                        AttributionSource attributionSourceA = com.xinzhu.overmind.client.hook.proxies.appos.a.a(objArr[iA]);
                        ContextFixer.fixAttributionSource(attributionSourceA);
                        objArr[iA] = attributionSourceA;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        try {
            return method.invoke(this.f89361b, objArr);
        } catch (Throwable th2) {
            throw th2.getCause();
        }
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
    }
}
