package com.xinzhu.overmind.client.hook.proxies.context;

import android.content.pm.ProviderInfo;
import android.database.IContentObserver;
import android.net.Uri;
import android.os.Build;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.e;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.lang.reflect.Method;
import ma.g;
import sa.r;
import t8.j;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.context.a$a, reason: collision with other inner class name */
    static class C1109a extends e {
        C1109a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "notifyChange";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 24 && objArr.length >= 6) {
                objArr[5] = 22;
            }
            boolean zBooleanValue = true;
            IContentObserver iContentObserver = (IContentObserver) objArr[1];
            boolean zBooleanValue2 = ((Boolean) objArr[2]).booleanValue();
            Object obj2 = objArr[3];
            if (!(obj2 instanceof Integer)) {
                zBooleanValue = ((Boolean) obj2).booleanValue();
            } else if ((((Integer) obj2).intValue() & 1) == 0) {
                zBooleanValue = false;
            }
            if (!com.xinzhu.overmind.utils.e.g()) {
                Uri uri = (Uri) objArr[0];
                if (a.e(uri)) {
                    ma.b.a().c(uri, iContentObserver, zBooleanValue2, zBooleanValue, MindUserHandle.E(), f.getVUid());
                    return 0;
                }
                objArr[4] = Integer.valueOf(Overmind.getHostUserId());
                r.e(objArr);
                return method.invoke(obj, objArr);
            }
            Uri[] uriArr = (Uri[]) objArr[0];
            int i10 = 0;
            for (int length = uriArr.length; i10 < length; length = length) {
                Uri uri2 = uriArr[i10];
                if (a.e(uri2)) {
                    ma.b.a().c(uri2, iContentObserver, zBooleanValue2, zBooleanValue, MindUserHandle.E(), f.getVUid());
                } else {
                    objArr[4] = Integer.valueOf(Overmind.getHostUserId());
                    r.e(objArr);
                    method.invoke(obj, objArr);
                }
                i10++;
            }
            return 0;
        }
    }

    public static class b extends e {
        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "registerContentObserver";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 24 && objArr.length >= 5) {
                objArr[4] = 22;
            }
            Uri uri = (Uri) objArr[0];
            boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
            IContentObserver iContentObserver = (IContentObserver) objArr[2];
            if (a.e(uri)) {
                ma.b.a().d(uri, zBooleanValue, iContentObserver, MindUserHandle.E(), f.getVUid());
                return 0;
            }
            objArr[3] = Integer.valueOf(Overmind.getHostUserId());
            return method.invoke(obj, objArr);
        }
    }

    public static class c extends e {
        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "unregisterContentObserver";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            ma.b.a().e((IContentObserver) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    public a() {
        super(t.i("content"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(Uri uri) {
        ProviderInfo providerInfoA = g.d().A(uri.getAuthority(), 0, MindUserHandle.E());
        return providerInfoA != null && providerInfoA.enabled;
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return j.a.a(t.i("content"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("content");
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new b());
        addMethodHook(new c());
        addMethodHook(new C1109a());
    }
}
