package com.xinzhu.overmind.client.hook.proxies.app;

import android.app.job.JobInfo;
import com.xinzhu.haunted.android.os.t;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public class c extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89345b = "JobServiceStub";

    class a extends com.xinzhu.overmind.client.hook.e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "schedule";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            boolean zK = com.xinzhu.overmind.utils.e.k();
            objArr[zK ? 1 : 0] = Overmind.getMindJobManager().f((JobInfo) objArr[zK ? 1 : 0]);
            return method.invoke(obj, objArr);
        }
    }

    class b extends com.xinzhu.overmind.client.hook.e {
        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "enqueue";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            boolean zK = com.xinzhu.overmind.utils.e.k();
            objArr[zK ? 1 : 0] = Overmind.getMindJobManager().f((JobInfo) objArr[zK ? 1 : 0]);
            return method.invoke(obj, objArr);
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.app.c$c, reason: collision with other inner class name */
    class C1107c extends com.xinzhu.overmind.client.hook.e {
        C1107c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "cancel";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            boolean zK = com.xinzhu.overmind.utils.e.k();
            objArr[zK ? 1 : 0] = Integer.valueOf(Overmind.getMindJobManager().a(com.xinzhu.overmind.client.f.getClientConfig().f89461c, ((Integer) objArr[zK ? 1 : 0]).intValue()));
            return method.invoke(obj, objArr);
        }
    }

    class d extends com.xinzhu.overmind.client.hook.e {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "cancelAll";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Overmind.getMindJobManager().b(com.xinzhu.overmind.client.f.getClientConfig().f89461c);
            return method.invoke(obj, objArr);
        }
    }

    public c() {
        super(t.i("jobscheduler"));
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return o8.a.C1219a.a(t.i("jobscheduler"));
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        replaceSystemService("jobscheduler");
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new a());
        addMethodHook(new b());
        addMethodHook(new C1107c());
        addMethodHook(new d());
    }
}
