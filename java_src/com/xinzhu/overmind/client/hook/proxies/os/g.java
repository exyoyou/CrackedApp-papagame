package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.WorkSource;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class g extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f89392b = "power";

    class a extends com.xinzhu.overmind.client.hook.common.d {
        a(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        public Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iL = com.xinzhu.overmind.utils.d.l(objArr, WorkSource.class);
            if (iL >= 0) {
                objArr[iL] = null;
            }
            try {
                return super.d(obj, method, objArr);
            } catch (InvocationTargetException e10) {
                throw e10.getCause();
            }
        }
    }

    class b extends com.xinzhu.overmind.client.hook.common.d {
        b(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        public Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iL = com.xinzhu.overmind.utils.d.l(objArr, WorkSource.class);
            if (iL >= 0) {
                objArr[iL] = null;
            }
            int iIntValue = ((Integer) objArr[objArr.length - 1]).intValue();
            if (iIntValue == com.xinzhu.overmind.client.f.getBaseVUid() || iIntValue == com.xinzhu.overmind.client.f.getVUid()) {
                objArr[objArr.length - 1] = Integer.valueOf(Overmind.getHostUid());
            }
            try {
                return super.d(obj, method, objArr);
            } catch (InvocationTargetException e10) {
                throw e10.getCause();
            }
        }
    }

    public g() {
        super(t.i(f89392b));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return com.xinzhu.haunted.android.os.k.a.a(t.i(f89392b));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService(f89392b);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a("acquireWakeLock", 3, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new b("acquireWakeLockWithUid", 3, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("updateWakeLockWorkSource", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("wakeUp", com.xinzhu.overmind.client.hook.common.d.f89291g, com.xinzhu.overmind.client.hook.common.d.f89289e));
    }
}
