package com.xinzhu.overmind.client.hook.proxies.app;

import android.os.WorkSource;
import androidx.core.app.NotificationCompat;
import com.xinzhu.haunted.android.app.p;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.app.a$a, reason: collision with other inner class name */
    class C1106a extends com.xinzhu.overmind.client.hook.common.d {
        C1106a(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iL = com.xinzhu.overmind.utils.d.l(objArr, WorkSource.class);
            if (iL >= 0) {
                objArr[iL] = null;
            }
            return super.d(obj, method, objArr);
        }
    }

    public a() {
        super(t.i(NotificationCompat.CATEGORY_ALARM));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return p.a.a(t.i(NotificationCompat.CATEGORY_ALARM));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new C1106a("set", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getNextAlarmClock", com.xinzhu.overmind.client.hook.common.d.f89289e, 0));
    }
}
