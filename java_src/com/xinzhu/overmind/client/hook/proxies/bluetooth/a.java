package com.xinzhu.overmind.client.hook.proxies.bluetooth;

import android.content.AttributionSource;
import androidx.annotation.RequiresApi;
import com.xinzhu.overmind.client.e;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class a extends b {
    public a() {
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return s8.a.b();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        if (s8.a.a()) {
            s8.a.c(obj2);
        }
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    @RequiresApi(api = 31)
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        int iA;
        if (objArr != null && objArr.length > 0 && (iA = r.a(objArr, e.a())) >= 0) {
            AttributionSource attributionSourceA = com.xinzhu.overmind.client.hook.proxies.appos.a.a(objArr[iA]);
            ContextFixer.fixAttributionSource(attributionSourceA);
            objArr[iA] = attributionSourceA;
        }
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
    }
}
