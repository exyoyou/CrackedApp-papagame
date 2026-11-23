package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubServiceRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f89615c = "ActiveServices";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Intent.FilterComparison, c> f89616a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<IBinder, b> f89617b = new HashMap();

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.am.a$a, reason: collision with other inner class name */
    class C1128a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IBinder f89618b;

        C1128a(IBinder iBinder) {
            this.f89618b = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.f89618b.unlinkToDeath(this, 0);
            a.this.f89617b.remove(this.f89618b);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private IBinder f89620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Intent f89621b;
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AtomicInteger f89622a = new AtomicInteger(1);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AtomicInteger f89623b = new AtomicInteger(0);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b f89624c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Intent f89625d;

        public int g() {
            return this.f89623b.decrementAndGet();
        }

        public int h() {
            return this.f89622a.getAndIncrement();
        }

        public int i() {
            return this.f89623b.incrementAndGet();
        }
    }

    private Intent b(Intent intent, ServiceInfo serviceInfo, ProcessRecord processRecord, int i10, int i11) {
        Intent intent2 = new Intent();
        intent2.setComponent(new ComponentName(processRecord.runWithPlugin ? Overmind.getPluginPkg() : Overmind.getMainPkg(), com.xinzhu.overmind.client.g.m(processRecord.vpid)));
        intent2.setAction(UUID.randomUUID().toString());
        StubServiceRecord.saveStub(intent2, intent, serviceInfo, processRecord.userId, i10, i11);
        return intent2;
    }

    private b c(Intent intent) {
        c cVar = this.f89616a.get(intent);
        if (cVar == null) {
            return null;
        }
        return cVar.f89624c;
    }

    private c d(Intent intent) {
        return this.f89616a.get(new Intent.FilterComparison(intent));
    }

    private c e(Intent intent) {
        c cVarD = d(intent);
        if (cVarD != null) {
            return cVarD;
        }
        c cVar = new c();
        this.f89616a.put(new Intent.FilterComparison(intent), cVar);
        return cVar;
    }

    private ResolveInfo j(Intent intent, String str, int i10) {
        return MindPackageManagerService.get().resolveService(intent, 0, str, i10);
    }

    public Intent bindService(Intent intent, IBinder iBinder, String str, int i10, int i11) {
        c cVarE;
        boolean z10;
        ResolveInfo resolveInfoJ = j(intent, str, i10);
        if (resolveInfoJ == null) {
            return intent;
        }
        ServiceInfo serviceInfo = resolveInfoJ.serviceInfo;
        ProcessRecord processRecordQ = com.xinzhu.overmind.server.h.d().q(serviceInfo.packageName, serviceInfo.processName, i10, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (processRecordQ == null) {
            throw new RuntimeException("Unable to create " + serviceInfo.name);
        }
        synchronized (this.f89616a) {
            cVarE = e(intent);
            if (iBinder != null) {
                b bVar = this.f89617b.get(iBinder);
                if (bVar != null) {
                    z10 = true;
                } else {
                    bVar = new b();
                    try {
                        iBinder.linkToDeath(new C1128a(iBinder), 0);
                    } catch (RemoteException e10) {
                        e10.printStackTrace();
                    }
                    bVar.f89620a = iBinder;
                    bVar.f89621b = intent;
                    this.f89617b.put(iBinder, bVar);
                    z10 = false;
                }
                if (!z10) {
                    cVarE.i();
                }
                cVarE.f89624c = bVar;
            }
        }
        Intent intentB = b(intent, serviceInfo, processRecordQ, cVarE.f89622a.get(), i11);
        cVarE.f89625d = intentB;
        return intentB;
    }

    public void f(Intent intent, int i10) {
        if (intent == null) {
            return;
        }
        this.f89616a.remove(new Intent.FilterComparison(StubServiceRecord.create(intent).mServiceIntent));
    }

    public UnbindRecord g(Intent intent, int i10) throws RemoteException {
        if (intent == null) {
            return null;
        }
        StubServiceRecord stubServiceRecordCreate = StubServiceRecord.create(intent);
        ComponentName component = stubServiceRecordCreate.mServiceIntent.getComponent();
        c cVarD = d(stubServiceRecordCreate.mServiceIntent);
        if (cVarD == null) {
            return null;
        }
        UnbindRecord unbindRecord = new UnbindRecord();
        unbindRecord.y(component);
        unbindRecord.x(cVarD.f89623b.get());
        unbindRecord.z(cVarD.f89622a.get());
        return unbindRecord;
    }

    public void h(Intent intent, int i10) {
    }

    public IBinder i(Intent intent, String str, int i10) {
        ResolveInfo resolveInfoJ = j(intent, str, i10);
        if (resolveInfoJ == null) {
            return null;
        }
        com.xinzhu.overmind.server.h hVarD = com.xinzhu.overmind.server.h.d();
        ServiceInfo serviceInfo = resolveInfoJ.serviceInfo;
        ProcessRecord processRecordC = hVarD.c(serviceInfo.packageName, serviceInfo.processName, i10);
        if (processRecordC == null) {
            return null;
        }
        try {
            return processRecordC.client.peekService(intent);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Intent startService(Intent intent, String str, int i10, int i11) {
        ResolveInfo resolveInfoJ = j(intent, str, i10);
        if (resolveInfoJ == null) {
            return null;
        }
        ServiceInfo serviceInfo = resolveInfoJ.serviceInfo;
        ProcessRecord processRecordQ = com.xinzhu.overmind.server.h.d().q(serviceInfo.packageName, serviceInfo.processName, i10, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (processRecordQ != null) {
            c cVarE = e(intent);
            Intent intentB = b(intent, serviceInfo, processRecordQ, cVarE.h(), i11);
            cVarE.f89625d = intentB;
            return intentB;
        }
        throw new RuntimeException("Unable to create " + serviceInfo.name);
    }

    public Intent stopService(Intent intent, String str, int i10) {
        synchronized (this.f89616a) {
            c cVarD = d(intent);
            if (cVarD == null) {
                return null;
            }
            if (cVarD.f89623b.get() > 0) {
                return null;
            }
            cVarD.f89622a.set(0);
            return cVarD.f89625d;
        }
    }

    public void unbindService(IBinder iBinder, int i10) {
        b bVar = this.f89617b.get(iBinder);
        if (bVar == null) {
            return;
        }
        c cVarE = e(bVar.f89621b);
        cVarE.f89624c = null;
        cVarE.g();
        this.f89617b.remove(iBinder);
    }
}
