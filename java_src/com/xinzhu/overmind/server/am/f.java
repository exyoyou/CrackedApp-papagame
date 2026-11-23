package com.xinzhu.overmind.server.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.entity.UnbindRecord;
import com.xinzhu.overmind.os.BinderHelper;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class f extends d.b implements com.xinzhu.overmind.server.g {
    public static final String TAG = "f";
    private static f sService = new f();
    private final Map<Integer, i> mUserSpace = new HashMap();
    private final Map<IBinder, PendingIntentRecord> mPendingIntentRecords = new HashMap();

    public static f get() {
        return sService;
    }

    private i getOrCreateSpaceLocked(int i10) {
        synchronized (this.mUserSpace) {
            i iVar = this.mUserSpace.get(Integer.valueOf(i10));
            if (iVar != null) {
                return iVar;
            }
            i iVar2 = new i();
            this.mUserSpace.put(Integer.valueOf(i10), iVar2);
            return iVar2;
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public IBinder acquireContentProviderClient(ProviderInfo providerInfo) throws RemoteException {
        ProcessRecord processRecordQ = com.xinzhu.overmind.server.h.d().q(providerInfo.packageName, providerInfo.processName, com.xinzhu.overmind.server.h.d().h(Binder.getCallingPid()), -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (processRecordQ != null) {
            return processRecordQ.client.acquireContentProviderClient(providerInfo);
        }
        throw new RuntimeException("Unable to create process " + providerInfo.name);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent bindService(Intent intent, IBinder iBinder, String str, int i10, int i11) throws RemoteException {
        Intent intentBindService;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            intentBindService = orCreateSpaceLocked.f89639a.bindService(intent, iBinder, str, i10, i11);
        }
        return intentBindService;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public PendingIntentRecord findPendingIntent(IBinder iBinder) throws RemoteException {
        try {
            PendingIntentRecord pendingIntentRecord = this.mPendingIntentRecords.get(iBinder);
            if (pendingIntentRecord == null) {
                return null;
            }
            com.xinzhu.overmind.b.c(TAG, "try findPendingIntent result " + pendingIntentRecord + " realIntent: " + pendingIntentRecord.f89476f + " uid: " + pendingIntentRecord.f89473c);
            return pendingIntentRecord;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public ProcessRecord findProcessRecordByPid(int i10) throws RemoteException {
        return com.xinzhu.overmind.server.h.d().b(i10);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public ComponentName getCallingActivity(IBinder iBinder) throws RemoteException {
        ComponentName componentNameJ;
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            componentNameJ = orCreateSpaceLocked.f89640b.j(processRecordB.userId, iBinder);
        }
        return componentNameJ;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public String getCallingPackage(IBinder iBinder) throws RemoteException {
        String strK;
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            strK = orCreateSpaceLocked.f89640b.k(processRecordB.userId, iBinder);
        }
        return strK;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public String getLaunchedFromPackage(IBinder iBinder) throws RemoteException {
        String strL;
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            strL = orCreateSpaceLocked.f89640b.l(iBinder);
        }
        return strL;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int getLaunchedFromUid(IBinder iBinder) throws RemoteException {
        int iM;
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return -1;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            iM = orCreateSpaceLocked.f89640b.m(iBinder);
        }
        return iM;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public MindTaskInfo getTaskInfo(int i10) throws RemoteException {
        List<b> list;
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return null;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            h hVarG = orCreateSpaceLocked.f89640b.g(i10);
            if (hVarG != null && (list = hVarG.f89638e) != null) {
                int size = list.size();
                if (size == 0) {
                    return null;
                }
                ComponentName componentName = hVarG.f89638e.get(size - 1).component;
                Intent intent = hVarG.f89637d;
                return new MindTaskInfo(i10, intent, intent.getComponent(), componentName);
            }
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public ClientConfig initProcess(String str, String str2, int i10) throws RemoteException {
        ProcessRecord processRecordQ = com.xinzhu.overmind.server.h.d().q(str, str2, i10, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (processRecordQ == null) {
            return null;
        }
        return processRecordQ.getClientConfig();
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onActivityCreated(int i10, IBinder iBinder, IBinder iBinder2) throws RemoteException {
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return;
        }
        b bVar = (b) iBinder2;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            orCreateSpaceLocked.f89640b.s(processRecordB, i10, iBinder, bVar);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onActivityDestroyed(IBinder iBinder) throws RemoteException {
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            orCreateSpaceLocked.f89640b.t(processRecordB.userId, iBinder);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onActivityResumed(IBinder iBinder) throws RemoteException {
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            orCreateSpaceLocked.f89640b.u(processRecordB.userId, iBinder);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onFinishActivity(IBinder iBinder) throws RemoteException {
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            orCreateSpaceLocked.f89640b.v(processRecordB.userId, iBinder);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onFinishActivityAffinity(IBinder iBinder) throws RemoteException {
        ProcessRecord processRecordB = com.xinzhu.overmind.server.h.d().b(Binder.getCallingPid());
        if (processRecordB == null) {
            return;
        }
        i orCreateSpaceLocked = getOrCreateSpaceLocked(processRecordB.userId);
        synchronized (orCreateSpaceLocked.f89640b) {
            orCreateSpaceLocked.f89640b.w(processRecordB.userId, iBinder);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onServiceDestroy(Intent intent, int i10) throws RemoteException {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            orCreateSpaceLocked.f89639a.f(intent, i10);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public UnbindRecord onServiceUnbind(Intent intent, int i10) throws RemoteException {
        UnbindRecord unbindRecordG;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            unbindRecordG = orCreateSpaceLocked.f89639a.g(intent, i10);
        }
        return unbindRecordG;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void onStartCommand(Intent intent, int i10) throws RemoteException {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            orCreateSpaceLocked.f89639a.h(intent, i10);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public IBinder peekService(Intent intent, String str, int i10) throws RemoteException {
        IBinder iBinderI;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            iBinderI = orCreateSpaceLocked.f89639a.i(intent, str, i10);
        }
        return iBinderI;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void registerPendingIntent(PendingIntentRecord pendingIntentRecord) throws RemoteException {
        this.mPendingIntentRecords.put(pendingIntentRecord.f89475e, pendingIntentRecord);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void restartProcess(String str, String str2, int i10) throws RemoteException {
        com.xinzhu.overmind.server.h.d().o(str, str2, i10);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent sendBroadcast(Intent intent, String str, int i10) throws RemoteException {
        for (ResolveInfo resolveInfo : MindPackageManagerService.get().queryIntentBroadcastReceivers(intent, 128, str, i10)) {
            com.xinzhu.overmind.server.h hVarD = com.xinzhu.overmind.server.h.d();
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            ProcessRecord processRecordQ = hVarD.q(activityInfo.packageName, activityInfo.processName, i10, -1, Binder.getCallingUid(), Binder.getCallingPid());
            if (processRecordQ != null) {
                try {
                    processRecordQ.client.bindApplication();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        if (intent.getPackage() != null) {
            intent.setPackage(Overmind.getHostPkg());
        }
        return intent;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int startActivities(int i10, String str, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws RemoteException {
        int iA;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        synchronized (orCreateSpaceLocked.f89640b) {
            iA = orCreateSpaceLocked.f89640b.A(i10, str, callingInfoB.f89521c, intentArr, strArr, iBinder, bundle);
        }
        return iA;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void startActivity(Intent intent, int i10) {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        synchronized (orCreateSpaceLocked.f89640b) {
            orCreateSpaceLocked.f89640b.E(i10, null, callingInfoB.f89521c, intent, null, null, null, -1, 0, null, true);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int startActivityAms(int i10, String str, Intent intent, String str2, IBinder iBinder, String str3, int i11, int i12, Bundle bundle) throws RemoteException {
        int iE;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        synchronized (orCreateSpaceLocked.f89640b) {
            iE = orCreateSpaceLocked.f89640b.E(i10, str, callingInfoB.f89521c, intent, str2, iBinder, str3, i11, i12, bundle, false);
        }
        return iE;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public int startActivityFromExistTask(Intent intent, int i10) throws RemoteException {
        int iB;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89640b) {
            iB = orCreateSpaceLocked.f89640b.B(intent);
        }
        return iB;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent startService(Intent intent, String str, int i10, int i11) {
        Intent intentStartService;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            intentStartService = orCreateSpaceLocked.f89639a.startService(intent, str, i10, i11);
        }
        return intentStartService;
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void stopPackage(String str, int i10) throws RemoteException {
        com.xinzhu.overmind.server.h.d().l(str, i10);
    }

    @Override // com.xinzhu.overmind.server.am.d
    public Intent stopService(Intent intent, String str, int i10) {
        Intent intentStopService;
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            intentStopService = orCreateSpaceLocked.f89639a.stopService(intent, str, i10);
        }
        return intentStopService;
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void unbindService(IBinder iBinder, int i10) throws RemoteException {
        i orCreateSpaceLocked = getOrCreateSpaceLocked(i10);
        synchronized (orCreateSpaceLocked.f89639a) {
            orCreateSpaceLocked.f89639a.unbindService(iBinder, i10);
        }
    }

    @Override // com.xinzhu.overmind.server.am.d
    public void unregisterPendingIntent(IBinder iBinder) throws RemoteException {
        this.mPendingIntentRecords.remove(iBinder);
    }
}
