package com.aggmoread.sdk.b;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import com.aggmoread.sdk.client.AMAdConfig;
import com.aggmoread.sdk.client.AMAdLoadSlot;
import com.aggmoread.sdk.client.AMAdType;
import com.aggmoread.sdk.client.AMChannelIdInfo;
import com.aggmoread.sdk.client.AMError;
import com.aggmoread.sdk.client.AMSdk;
import com.aggmoread.sdk.client.IAMAdInteractionListener;
import com.aggmoread.sdk.client.IAMAdLoadListener;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Object f3232a;

    /* JADX INFO: renamed from: com.aggmoread.sdk.b.a$a, reason: collision with other inner class name */
    static class C0062a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e f3233a;

        /* JADX INFO: renamed from: com.aggmoread.sdk.b.a$a$a, reason: collision with other inner class name */
        class C0063a implements Handler.Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Object[] f3234a;

            C0063a(C0062a c0062a, Object[] objArr) {
                this.f3234a = objArr;
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(@NonNull Message message) {
                AMSdk.InitListener initListener = (AMSdk.InitListener) this.f3234a[2];
                Object obj = message.obj;
                if (!(obj instanceof Boolean) || ((Boolean) obj).booleanValue()) {
                    initListener.onSuccess();
                    return false;
                }
                initListener.onFailed(new AMError(-1000, "初始化失败!"));
                return false;
            }
        }

        C0062a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getName().equals(m.f3289a)) {
                if (objArr.length == 3 && (objArr[2] instanceof AMSdk.InitListener)) {
                    this.f3233a.a((AMAdConfig) objArr[1], new C0063a(this, objArr));
                } else {
                    this.f3233a.a((AMAdConfig) objArr[1]);
                }
                return null;
            }
            if (method.getName().equals(m.f3290b)) {
                this.f3233a.a((Context) objArr[0], (AMAdType) objArr[1], (AMAdLoadSlot) objArr[2], (IAMAdLoadListener<?>) objArr[3]);
                return null;
            }
            if (method.getName().equals(m.f3291c)) {
                this.f3233a.a((Context) objArr[0], (AMAdType) objArr[1], (AMAdLoadSlot) objArr[2], (IAMAdLoadListener) objArr[3], (IAMAdInteractionListener) objArr[4]);
                return null;
            }
            if (method.getName().equals(m.f3292d)) {
                this.f3233a.a((Context) objArr[0], (List<AMChannelIdInfo>) objArr[1]);
            }
            return null;
        }
    }

    public static Object a() {
        return f3232a;
    }

    public static Object a(Class[] clsArr, Context context) {
        Object obj = f3232a;
        if (obj != null) {
            return obj;
        }
        C0062a c0062a = new C0062a();
        c0062a.f3233a = new e(context);
        Object objNewProxyInstance = Proxy.newProxyInstance(C0062a.class.getClassLoader(), clsArr, c0062a);
        f3232a = objNewProxyInstance;
        return objNewProxyInstance;
    }
}
