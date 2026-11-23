package com.xinzhu.overmind.client.hook.proxies.app;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import androidx.annotation.NonNull;
import com.xinzhu.haunted.android.app.m;
import com.xinzhu.haunted.android.app.n;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubActivityRecord;
import com.xinzhu.overmind.server.pm.q;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes8.dex */
public class b implements com.xinzhu.overmind.client.hook.d, Handler.Callback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f89342d = "HCallbackStub";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler.Callback f89343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicBoolean f89344c = new AtomicBoolean(false);

    private Handler a() {
        return new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).V();
    }

    private Handler.Callback c() {
        return new com.xinzhu.haunted.android.os.f(a()).b();
    }

    private Object d(Object obj) {
        for (Object obj2 : new q8.a(obj).d()) {
            if (q8.b.f96574c.getName().equals(obj2.getClass().getCanonicalName())) {
                return obj2;
            }
        }
        return null;
    }

    private boolean e(Object obj) {
        Intent intentJ;
        IBinder iBinderL;
        q8.b bVar;
        StubActivityRecord stubActivityRecordCreate;
        ActivityInfo activityInfo;
        Object objD = com.xinzhu.overmind.utils.e.z() ? d(obj) : obj;
        if (objD == null) {
            return false;
        }
        if (com.xinzhu.overmind.utils.e.k()) {
            bVar = new q8.b(objD);
            intentJ = bVar.h();
            iBinderL = bVar.b() ? bVar.f() : new q8.a(obj).e();
        } else if (com.xinzhu.overmind.utils.e.z()) {
            bVar = new q8.b(objD);
            intentJ = bVar.h();
            iBinderL = new q8.a(obj).e();
        } else {
            com.xinzhu.haunted.android.app.g.a aVar = new com.xinzhu.haunted.android.app.g.a(objD);
            intentJ = aVar.j();
            iBinderL = aVar.l();
            bVar = null;
        }
        if (intentJ != null && (activityInfo = (stubActivityRecordCreate = StubActivityRecord.create(intentJ)).mActivityInfo) != null) {
            if (com.xinzhu.overmind.client.f.getClientConfig() == null) {
                Overmind.getMindActivityManager().v(activityInfo.packageName, activityInfo.processName, stubActivityRecordCreate.mUserId);
                return true;
            }
            if (!com.xinzhu.overmind.client.f.getClient().isInit()) {
                com.xinzhu.overmind.client.f.getClient().bindApplication(activityInfo.packageName, activityInfo.processName);
                return true;
            }
            activityInfo.applicationInfo = q.b(activityInfo.applicationInfo);
            Overmind.getMindActivityManager().l(!com.xinzhu.overmind.utils.e.k() ? new n(com.xinzhu.haunted.android.app.d.c()).k(iBinderL, false) : new m(com.xinzhu.haunted.android.app.b.c()).b(iBinderL, false), iBinderL, stubActivityRecordCreate.mActivityRecord);
            if (com.xinzhu.overmind.utils.e.z()) {
                bVar.l(stubActivityRecordCreate.mTarget);
                bVar.k(activityInfo);
                com.xinzhu.haunted.android.app.g gVar = new com.xinzhu.haunted.android.app.g(Overmind.mainThread());
                if (com.xinzhu.overmind.utils.e.h()) {
                    if (!com.xinzhu.overmind.utils.e.j()) {
                        if (!gVar.s(iBinderL)) {
                            throw new RuntimeException("break circle");
                        }
                        Object objN = gVar.N(iBinderL);
                        if (objN != null) {
                            com.xinzhu.haunted.android.app.g.a aVar2 = new com.xinzhu.haunted.android.app.g.a(objN);
                            Object objO = gVar.O(activityInfo.applicationInfo, aVar2.i());
                            aVar2.p(stubActivityRecordCreate.mTarget);
                            aVar2.n(activityInfo);
                            aVar2.q(objO);
                        }
                    }
                    if (!bVar.a()) {
                        throw new RuntimeException("break circle");
                    }
                    if (bVar.e() != null) {
                        new com.xinzhu.haunted.android.app.b.a(com.xinzhu.haunted.android.app.b.d()).c(com.xinzhu.overmind.client.hook.proxies.am.a.f89333b);
                    }
                }
            } else {
                com.xinzhu.haunted.android.app.g.a aVar3 = new com.xinzhu.haunted.android.app.g.a(objD);
                aVar3.p(stubActivityRecordCreate.mTarget);
                aVar3.n(activityInfo);
            }
        }
        return false;
    }

    @SuppressLint({"BlockedPrivateApi"})
    private void f() {
        if (com.xinzhu.overmind.utils.e.h()) {
            try {
                com.xinzhu.overmind.b.c(f89342d, "reflectTrickForAndroid12 get " + Class.forName("android.app.ActivityThread").getDeclaredMethod("getLaunchingActivity", IBinder.class) + " " + Class.forName("android.app.servertransaction.LaunchActivityItem").getDeclaredField("mActivityClientController"));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        Handler.Callback callbackC = c();
        return (callbackC == null || callbackC == this) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0084 A[Catch: all -> 0x0094, TRY_LEAVE, TryCatch #0 {all -> 0x0094, blocks: (B:4:0x000a, B:6:0x0010, B:8:0x0018, B:10:0x0025, B:15:0x002f, B:17:0x0035, B:19:0x003b, B:22:0x0043, B:24:0x004b, B:26:0x0053, B:34:0x0080, B:36:0x0084, B:29:0x0064, B:31:0x006c, B:33:0x0074), top: B:45:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:39:0x008e A[DONT_GENERATE] */
    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        Handler.Callback callback;
        Object obj;
        if (this.f89344c.getAndSet(true)) {
            return false;
        }
        try {
            if (!com.xinzhu.overmind.utils.e.z()) {
                if (message.what == com.xinzhu.haunted.android.app.g.d.e() && e(message.obj)) {
                    a().sendMessageAtFrontOfQueue(Message.obtain(message));
                    return true;
                }
                callback = this.f89343b;
                if (callback != null) {
                    return callback.handleMessage(message);
                }
                return false;
            }
            if (message.what == com.xinzhu.haunted.android.app.g.d.d()) {
                q8.a aVar = new q8.a(message.obj);
                boolean z10 = com.xinzhu.overmind.utils.e.k() || aVar.e() != null;
                List<Object> listD = aVar.d();
                if (listD != null && !listD.isEmpty() && (obj = listD.get(0)) != null && z10 && obj.getClass() == q8.b.f96574c && e(message.obj)) {
                    a().sendMessageAtFrontOfQueue(Message.obtain(message));
                    return true;
                }
            }
            callback = this.f89343b;
            if (callback != null) {
                return callback.handleMessage(message);
            }
            return false;
        } finally {
            this.f89344c.set(false);
        }
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public void injectHook() {
        Handler.Callback callbackC = c();
        this.f89343b = callbackC;
        if (callbackC != null && (callbackC == this || callbackC.getClass().getName().equals(getClass().getName()))) {
            this.f89343b = null;
        }
        new com.xinzhu.haunted.android.os.f(a()).c(this);
    }
}
