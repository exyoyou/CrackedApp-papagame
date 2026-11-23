package com.xinzhu.overmind.client.hook.proxies.appos;

import android.annotation.SuppressLint;
import android.app.AppOpsManager;
import android.content.AttributionSource;
import android.os.IInterface;
import com.xinzhu.haunted.android.app.h;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.common.c;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import com.xinzhu.overmind.utils.e;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    class a extends c {
        a(String str, Object obj) {
            super(str, obj);
        }

        @Override // com.xinzhu.overmind.client.hook.common.c, com.xinzhu.overmind.client.hook.e
        @SuppressLint({"NewApi"})
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iA;
            if (!e.h() || (iA = r.a(objArr, com.xinzhu.overmind.client.e.a())) < 0) {
                return super.d(obj, method, objArr);
            }
            AttributionSource attributionSourceA = com.xinzhu.overmind.client.hook.proxies.appos.a.a(objArr[iA]);
            ContextFixer.fixAttributionSource(attributionSourceA);
            objArr[iA] = attributionSourceA;
            return method.invoke(obj, objArr);
        }
    }

    public b() {
        super(t.i("appops"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return r9.a.C1244a.a(t.i("appops"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        new h((AppOpsManager) Overmind.getContext().getSystemService("appops")).c((IInterface) getProxyInvocation());
        replaceSystemService("appops");
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.d(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("checkOperation", 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("noteOperation", 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("startOperation", 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("finishOperation", 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("checkAudioOperation", 2));
        addMethodHook(new a("noteProxyOperation", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("checkPackage", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("getOpsForPackage", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("getHistoricalOps", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("getHistoricalOpsFromDiskRaw", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("getUidOps", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("setUidMode", 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("setMode", 1));
        addMethodHook(new d("resetAllModes", d.f89289e, 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("setAudioRestriction", 2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("isOperationActive", 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.e("checkOperationRaw", 1));
    }
}
