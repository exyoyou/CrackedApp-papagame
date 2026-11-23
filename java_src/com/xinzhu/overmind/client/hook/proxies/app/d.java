package com.xinzhu.overmind.client.hook.proxies.app;

import android.app.Notification;
import android.os.Build;
import android.os.IInterface;
import com.xinzhu.haunted.android.app.w;
import com.xinzhu.haunted.android.app.x;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.server.DaemonService;
import com.xinzhu.overmind.utils.o;
import java.lang.reflect.Method;
import sa.r;

/* JADX INFO: loaded from: classes8.dex */
public class d extends BinderInvocationStub {

    class a extends com.xinzhu.overmind.client.hook.common.d {
        a(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            ma.f.a().d(com.xinzhu.overmind.client.f.getVPackageName(), com.xinzhu.overmind.client.f.getUserId());
            com.xinzhu.overmind.b.c(BinderInvocationStub.TAG, "cancelAllNotifications succeed");
            return null;
        }
    }

    class b extends com.xinzhu.overmind.client.hook.common.d {
        b(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String strC = ma.f.a().c(com.xinzhu.overmind.client.f.getVPackageName(), com.xinzhu.overmind.client.f.getUserId(), ((Integer) objArr[r.a(objArr, Integer.class)]).intValue(), (String) objArr[2]);
            if (strC == null) {
                throw new RuntimeException(c() + " solve tag get null");
            }
            objArr[2] = strC;
            Notification notification = (Notification) objArr[4];
            w wVar = new w(notification);
            try {
                if (Build.VERSION.SDK_INT >= 23 && notification.getSmallIcon() != null) {
                    wVar.f(o.b(notification.getSmallIcon()));
                }
            } catch (Throwable th) {
                com.xinzhu.overmind.b.c(BinderInvocationStub.TAG, "replace icon failed ");
                th.printStackTrace();
            }
            return super.d(obj, method, objArr);
        }
    }

    class c extends com.xinzhu.overmind.client.hook.common.d {
        c(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            char c10 = com.xinzhu.overmind.utils.e.g() ? (char) 3 : (char) 2;
            char c11 = com.xinzhu.overmind.utils.e.g() ? (char) 2 : (char) 1;
            objArr[c11] = ma.f.a().e(com.xinzhu.overmind.client.f.getVPackageName(), com.xinzhu.overmind.client.f.getUserId(), ((Integer) objArr[c10]).intValue(), (String) objArr[c11]);
            return super.d(obj, method, objArr);
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.app.d$d, reason: collision with other inner class name */
    class C1108d extends com.xinzhu.overmind.client.hook.common.d {
        C1108d(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr != null && objArr.length >= 2 && objArr[1].equals(DaemonService.f89532d)) {
                return null;
            }
            try {
                return method.invoke(obj, objArr);
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    class e extends com.xinzhu.overmind.client.hook.common.e {
        e(String str, int i10) {
            super(str, i10);
        }

        @Override // com.xinzhu.overmind.client.hook.common.e, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.TRUE;
        }
    }

    public d() {
        super(x.c().asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return x.c();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        x.e((IInterface) getProxyInvocation());
        replaceSystemService("notification");
    }

    @Override // com.xinzhu.overmind.client.hook.b, java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        r.c(objArr);
        return super.invoke(obj, method, objArr);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a("cancelAllNotifications", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new b("enqueueNotificationWithTag", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new c("cancelNotificationWithTag", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new C1108d("deleteNotificationChannel", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getNotificationChannel", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.utils.e.f() ? 1 : com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getConversationNotificationChannel", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getNotificationChannels", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.utils.e.f() ? com.xinzhu.overmind.client.hook.common.d.f89291g : com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getBlockedAppCount", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getNotificationChannelsBypassingDnd", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("registerListener", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("unregisterListener", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("isNotificationListenerAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setNotificationListenerAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setNotificationAssistantAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getEnabledNotificationListeners", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getAllowedNotificationAssistantForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("setNotificationPolicyAccessGrantedForUser", com.xinzhu.overmind.client.hook.common.d.f89289e, 1));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getAppActiveNotifications", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("canNotifyAsPackage", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("removeEdgeNotification", com.xinzhu.overmind.client.hook.common.d.f89289e, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new e("hasPackageBeenManaged", com.xinzhu.overmind.client.hook.common.d.f89291g));
    }
}
