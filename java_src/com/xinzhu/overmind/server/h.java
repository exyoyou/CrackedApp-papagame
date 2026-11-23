package com.xinzhu.overmind.server;

import android.app.ActivityManager;
import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import com.xinzhu.haunted.android.app.r;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.StubContentProvider;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.utils.wrappers.ContentProviderWrapper;
import com.xinzhu.overmind.utils.y;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import sa.s;

/* JADX INFO: loaded from: classes8.dex */
public class h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f89665e = "MindProcessManager";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static h f89666f = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Integer, Map<String, ProcessRecord>> f89667a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Integer, ProcessRecord> f89668b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f89669c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AtomicInteger f89670d = new AtomicInteger(0);

    class a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ProcessRecord f89671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ IBinder f89672c;

        a(ProcessRecord processRecord, IBinder iBinder) {
            this.f89671b = processRecord;
            this.f89672c = iBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Client Died: ");
            sb2.append(this.f89671b.processName);
            this.f89672c.unlinkToDeath(this, 0);
            h.this.m(this.f89671b);
        }
    }

    private void a(ProcessRecord processRecord, IBinder iBinder, int i10) {
        com.xinzhu.overmind.client.c cVarAsInterface = com.xinzhu.overmind.client.c.b.asInterface(iBinder);
        if (cVarAsInterface == null) {
            processRecord.kill();
            return;
        }
        try {
            iBinder.linkToDeath(new a(processRecord, iBinder), 0);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
        processRecord.client = cVarAsInterface;
        processRecord.pid = i10;
        try {
            if (com.xinzhu.overmind.utils.e.x()) {
                processRecord.appThread = r.a.a(cVarAsInterface.getActivityThread());
            } else {
                processRecord.appThread = com.xinzhu.haunted.android.app.k.a(cVarAsInterface.getActivityThread());
            }
        } catch (RemoteException e11) {
            e11.printStackTrace();
        }
        processRecord.initLock.open();
    }

    public static h d() {
        return f89666f;
    }

    public static int e(String str) {
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : Overmind.get().getRunningAppProcessesContainPlugin()) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    return runningAppProcessInfo.pid;
                }
            }
            return -1;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:11:0x0023  */
    private static String f(int i10) {
        String str;
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : Overmind.get().getRunningAppProcessesContainPlugin()) {
            if (runningAppProcessInfo.pid == i10) {
                str = runningAppProcessInfo.processName;
                if (str != null) {
                    return str;
                }
                throw new RuntimeException("processName = null");
            }
        }
        str = null;
        if (str != null) {
            return str;
        }
        throw new RuntimeException("processName = null");
    }

    private int i() {
        boolean z10;
        for (int i10 = 0; i10 < 100; i10++) {
            Iterator<ProcessRecord> it2 = this.f89668b.values().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = false;
                    break;
                }
                if (it2.next().vpid == i10) {
                    z10 = true;
                    break;
                }
            }
            if (!z10) {
                return i10;
            }
        }
        return -1;
    }

    private boolean j(ProcessRecord processRecord) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("initProcess: ");
        sb2.append(processRecord.processName);
        ClientConfig clientConfig = processRecord.getClientConfig();
        Bundle bundle = new Bundle();
        bundle.putParcelable(StubContentProvider.f89449c, clientConfig);
        Bundle bundleAcquire = ContentProviderWrapper.acquire(processRecord.getProviderAuthority(), StubContentProvider.f89448b, null, bundle);
        IBinder iBinderB = s.b(bundleAcquire, StubContentProvider.f89450d);
        int i10 = bundleAcquire.getInt(StubContentProvider.f89451e);
        if (iBinderB == null || !iBinderB.isBinderAlive()) {
            return false;
        }
        a(processRecord, iBinderB, i10);
        return true;
    }

    private int n(String str) {
        if (str == null) {
            return -1;
        }
        String str2 = Overmind.getHostPkg() + ":p";
        if (str.startsWith(str2)) {
            try {
                return Integer.parseInt(str.substring(str2.length()));
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    private void p() {
    }

    public ProcessRecord b(int i10) {
        ProcessRecord processRecord;
        if (i10 == Process.myPid()) {
            return new ProcessRecord(null, null, 1000, 0, 0);
        }
        synchronized (this.f89668b) {
            processRecord = this.f89668b.get(Integer.valueOf(i10));
        }
        return processRecord;
    }

    public ProcessRecord c(String str, String str2, int i10) {
        synchronized (this.f89669c) {
            Map<String, ProcessRecord> map = this.f89667a.get(Integer.valueOf(MindUserHandle.t(i10, MindPackageManagerService.get().getAppId(str))));
            if (map == null) {
                return null;
            }
            return map.get(str2);
        }
    }

    public Map<Integer, ProcessRecord> g() {
        return this.f89668b;
    }

    public int h(int i10) {
        synchronized (this.f89669c) {
            ProcessRecord processRecordB = d().b(i10);
            if (processRecordB == null) {
                return 0;
            }
            return processRecordB.userId;
        }
    }

    public void k(String str) {
        synchronized (this.f89669c) {
            synchronized (this.f89668b) {
                HashMap map = new HashMap(this.f89668b);
                int appId = MindPackageManagerService.get().getAppId(str);
                for (ProcessRecord processRecord : this.f89668b.values()) {
                    if (appId == MindUserHandle.a(processRecord.vuid)) {
                        this.f89667a.remove(Integer.valueOf(processRecord.vuid));
                        map.remove(Integer.valueOf(processRecord.pid));
                        processRecord.kill();
                    }
                }
                this.f89668b.clear();
                this.f89668b.putAll(map);
            }
        }
    }

    public void l(String str, int i10) {
        synchronized (this.f89669c) {
            Map<String, ProcessRecord> map = this.f89667a.get(Integer.valueOf(MindUserHandle.t(i10, MindPackageManagerService.get().getAppId(str))));
            if (map == null) {
                return;
            }
            for (ProcessRecord processRecord : map.values()) {
                if (processRecord.runWithPlugin) {
                    com.xinzhu.overmind.plugin.b.l(processRecord.pid);
                } else {
                    processRecord.kill();
                }
            }
        }
    }

    public void m(ProcessRecord processRecord) {
        synchronized (this.f89669c) {
            processRecord.kill();
            Map<String, ProcessRecord> map = this.f89667a.get(Integer.valueOf(processRecord.vuid));
            if (map != null) {
                map.remove(processRecord.processName);
            }
            this.f89668b.remove(Integer.valueOf(processRecord.pid));
        }
    }

    public void o(String str, String str2, int i10) {
        ProcessRecord processRecordB;
        synchronized (this.f89669c) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            synchronized (this.f89669c) {
                processRecordB = b(callingPid);
            }
            if (processRecordB == null) {
                q(str, str2, i10, n(f(callingPid)), callingUid, callingPid);
            }
        }
    }

    public ProcessRecord q(String str, String str2, int i10, int i11, int i12, int i13) {
        p();
        ApplicationInfo applicationInfo = MindPackageManagerService.get().getApplicationInfo(str, 0, i10);
        ProcessRecord processRecord = null;
        if (applicationInfo == null) {
            return null;
        }
        int iT = MindUserHandle.t(i10, MindPackageManagerService.get().getAppId(str));
        Map<String, ProcessRecord> map = this.f89667a.get(Integer.valueOf(iT));
        if (map == null) {
            map = new HashMap<>();
        }
        Map<String, ProcessRecord> map2 = map;
        synchronized (this.f89669c) {
            if (i11 == -1) {
                try {
                    ProcessRecord processRecord2 = map2.get(str2);
                    if (processRecord2 != null) {
                        ConditionVariable conditionVariable = processRecord2.initLock;
                        if (conditionVariable != null) {
                            conditionVariable.block();
                        }
                        if (processRecord2.client != null) {
                            return processRecord2;
                        }
                    }
                    i11 = i();
                    y.a(f89665e, "init vUid = " + iT + ", vPid = " + i11);
                } catch (Throwable th) {
                    throw th;
                }
            }
            int i14 = i11;
            if (i14 == -1) {
                throw new RuntimeException("No processes available");
            }
            ProcessRecord processRecord3 = new ProcessRecord(applicationInfo, str2, 0, i14, i12);
            processRecord3.uid = iT;
            processRecord3.vuid = iT;
            processRecord3.userId = i10;
            processRecord3.baseVUid = MindUserHandle.a(iT);
            processRecord3.runWithPlugin = MindPackageManagerService.get().getMindPackageSettings(str).E();
            map2.put(str2, processRecord3);
            this.f89667a.put(Integer.valueOf(processRecord3.vuid), map2);
            if (j(processRecord3)) {
                int iE = e(com.xinzhu.overmind.client.g.d(processRecord3.vpid, processRecord3.runWithPlugin));
                processRecord3.pid = iE;
                this.f89668b.put(Integer.valueOf(iE), processRecord3);
                processRecord = processRecord3;
            } else {
                map2.remove(str2);
            }
            return processRecord;
        }
    }
}
