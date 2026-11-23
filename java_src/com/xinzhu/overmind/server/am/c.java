package com.xinzhu.overmind.server.am;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Process;
import android.os.RemoteException;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.C;
import com.xinzhu.haunted.android.app.n;
import com.xinzhu.haunted.android.app.r;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.stub.record.StubActivityRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import com.xinzhu.overmind.utils.v;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import sa.t;

/* JADX INFO: loaded from: classes8.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f89626d = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Integer, h> f89628b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<b> f89629c = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ActivityManager f89627a = (ActivityManager) Overmind.getContext().getSystemService(TTDownloadField.TT_ACTIVITY);

    private int C(int i10, String str, int i11, Intent intent, ActivityInfo activityInfo, String str2, IBinder iBinder, String str3, int i12, int i13, int i14, Bundle bundle, boolean z10) {
        Intent intentF = F(i10, intent, activityInfo, r(intent, activityInfo, iBinder, i10, str, i11), Process.myUid());
        if (z10) {
            intentF.addFlags(134217728);
            intentF.addFlags(524288);
            intentF.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intentF.addFlags(i13);
        z(r.a.a(new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).K()), intentF, str2, iBinder, str3, i12, i14, bundle);
        return 0;
    }

    private int D(Intent intent, String str, IBinder iBinder, String str2, int i10, int i11, Bundle bundle, int i12, String str3, int i13, b bVar, ActivityInfo activityInfo, int i14) {
        b bVarR = r(intent, activityInfo, iBinder, i12, str3, i13);
        bVarR.task = bVar.task;
        bVarR.processRecord = bVar.processRecord;
        Intent intentF = F(i12, intent, activityInfo, bVarR, Process.myUid());
        intentF.addFlags(i14);
        return z(bVar.processRecord.appThread, intentF, str, iBinder, str2, i10, i11, bundle);
    }

    private Intent F(int i10, Intent intent, ActivityInfo activityInfo, b bVar, int i11) {
        StubActivityRecord stubActivityRecord = new StubActivityRecord(i10, activityInfo, intent, bVar);
        ProcessRecord processRecordQ = com.xinzhu.overmind.server.h.d().q(activityInfo.packageName, activityInfo.processName, i10, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (processRecordQ != null) {
            return n(intent, processRecordQ.vpid, i10, stubActivityRecord, activityInfo, processRecordQ.runWithPlugin);
        }
        throw new RuntimeException("Unable to create process, name:" + activityInfo.name);
    }

    private void G() {
        List<ActivityManager.RecentTaskInfo> recentTasksContainPlugin = Overmind.get().getRecentTasksContainPlugin(100, 3);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int size = recentTasksContainPlugin.size() - 1; size >= 0; size--) {
            ActivityManager.RecentTaskInfo recentTaskInfo = recentTasksContainPlugin.get(size);
            h hVar = this.f89628b.get(Integer.valueOf(recentTaskInfo.id));
            if (hVar != null) {
                linkedHashMap.put(Integer.valueOf(recentTaskInfo.id), hVar);
            }
        }
        this.f89628b.clear();
        this.f89628b.putAll(linkedHashMap);
    }

    private void b(b bVar, Intent intent) {
        try {
            bVar.processRecord.client.handleNewIntent(bVar.token, intent);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    private void c(int i10) {
        Iterator<h> it2 = this.f89628b.values().iterator();
        while (it2.hasNext()) {
            Iterator<b> it3 = it2.next().f89638e.iterator();
            while (it3.hasNext()) {
                b next = it3.next();
                if (next.finished) {
                    try {
                        next.processRecord.client.finishActivity(next.token);
                    } catch (RemoteException e10) {
                        e10.printStackTrace();
                    }
                    it3.remove();
                }
            }
        }
    }

    private b d(int i10, ComponentName componentName) {
        b bVar = null;
        for (h hVar : this.f89628b.values()) {
            if (i10 == hVar.f89635b) {
                for (b bVar2 : hVar.f89638e) {
                    if (bVar2.component.equals(componentName)) {
                        bVar = bVar2;
                        break;
                    }
                }
            }
        }
        return bVar;
    }

    private b e(int i10, IBinder iBinder) {
        b bVar = null;
        if (iBinder != null) {
            for (h hVar : this.f89628b.values()) {
                if (i10 == hVar.f89635b) {
                    for (b bVar2 : hVar.f89638e) {
                        if (bVar2.token == iBinder) {
                            bVar = bVar2;
                            break;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    private b f(IBinder iBinder) {
        b bVar = null;
        if (iBinder != null) {
            Iterator<h> it2 = this.f89628b.values().iterator();
            while (it2.hasNext()) {
                for (b bVar2 : it2.next().f89638e) {
                    if (bVar2.token == iBinder) {
                        bVar = bVar2;
                        break;
                    }
                }
            }
        }
        return bVar;
    }

    private h h(int i10, String str) {
        synchronized (this.f89628b) {
            for (h hVar : this.f89628b.values()) {
                if (i10 == hVar.f89635b && hVar.f89636c.equals(str)) {
                    return hVar;
                }
            }
            return null;
        }
    }

    private h i(int i10, IBinder iBinder) {
        synchronized (this.f89628b) {
            for (h hVar : this.f89628b.values()) {
                if (i10 == hVar.f89635b) {
                    Iterator<b> it2 = hVar.f89638e.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().token == iBinder) {
                            return hVar;
                        }
                    }
                }
            }
            return null;
        }
    }

    private Intent n(Intent intent, int i10, int i11, StubActivityRecord stubActivityRecord, ActivityInfo activityInfo, boolean z10) {
        Intent intent2 = new Intent();
        boolean zP = p(activityInfo, i11);
        boolean zQ = q(activityInfo);
        String pluginPkg = z10 ? Overmind.getPluginPkg() : Overmind.getHostPkg();
        if (zP) {
            if (zQ) {
                intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.g.j(i10)));
            } else {
                intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.g.i(i10)));
            }
        } else if (zQ) {
            intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.g.f(i10)));
        } else {
            intent2.setComponent(new ComponentName(pluginPkg, com.xinzhu.overmind.client.g.e(i10)));
        }
        StubActivityRecord.saveStub(intent2, intent, stubActivityRecord.mActivityInfo, stubActivityRecord.mActivityRecord, stubActivityRecord.mUserId);
        intent2.setType(intent.toString());
        return intent2;
    }

    private b o() {
        synchronized (this.f89628b) {
            G();
        }
        LinkedList linkedList = new LinkedList(this.f89628b.values());
        if (linkedList.isEmpty()) {
            return null;
        }
        return ((h) linkedList.get(linkedList.size() - 1)).b();
    }

    private boolean p(ActivityInfo activityInfo, int i10) {
        try {
            Resources appResources = MindPackageManagerService.get().getAppResources(activityInfo.packageName, i10);
            if (appResources == null) {
                throw new RuntimeException("ifActivityFloating get Resources failed");
            }
            TypedArray typedArrayObtainStyledAttributes = appResources.newTheme().obtainStyledAttributes(activityInfo.theme, q9.a.e.R());
            boolean z10 = typedArrayObtainStyledAttributes.getBoolean(q9.a.e.X(), false);
            boolean z11 = true;
            boolean z12 = !typedArrayObtainStyledAttributes.hasValue(q9.a.e.X()) && typedArrayObtainStyledAttributes.getBoolean(q9.a.e.Z(), false);
            if (!typedArrayObtainStyledAttributes.getBoolean(q9.a.e.W(), false) && !z10 && !z12) {
                z11 = false;
            }
            typedArrayObtainStyledAttributes.recycle();
            com.xinzhu.overmind.b.a(f89626d, "ifActivityFloating " + z11);
            return z11;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private boolean q(ActivityInfo activityInfo) {
        int i10 = activityInfo.screenOrientation;
        return i10 == 0 || i10 == 6 || i10 == 8 || i10 == 11;
    }

    private String x(IBinder iBinder) {
        return com.xinzhu.overmind.utils.e.f() ? com.xinzhu.haunted.android.app.f.c().c(iBinder) : new n(com.xinzhu.haunted.android.app.d.c()).i(iBinder);
    }

    private int y(IBinder iBinder) {
        return com.xinzhu.overmind.utils.e.f() ? com.xinzhu.haunted.android.app.f.c().d(iBinder) : new n(com.xinzhu.haunted.android.app.d.c()).j(iBinder);
    }

    private int z(IInterface iInterface, Intent intent, String str, IBinder iBinder, String str2, int i10, int i11, Bundle bundle) {
        try {
            new n(com.xinzhu.haunted.android.app.d.c()).startActivity(iInterface, Overmind.getHostPkg(), intent, str, iBinder, str2, i10, i11, null, bundle);
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    public int A(int i10, String str, int i11, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) {
        if (intentArr == null) {
            throw new NullPointerException("intents is null");
        }
        if (strArr == null) {
            throw new NullPointerException("resolvedTypes is null");
        }
        if (intentArr.length != strArr.length) {
            throw new IllegalArgumentException("intents are length different than resolvedTypes");
        }
        for (int i12 = 0; i12 < intentArr.length; i12++) {
            E(i10, str, i11, intentArr[i12], strArr[i12], iBinder, null, -1, 0, bundle, false);
        }
        return 0;
    }

    public int B(Intent intent) {
        synchronized (this.f89628b) {
            b bVar = (b) StubActivityRecord.create(intent).mActivityRecord;
            if (bVar == null) {
                return -1;
            }
            if (!this.f89629c.contains(bVar)) {
                return -1;
            }
            if (bVar.task == null) {
                Overmind.getContext().startActivity(intent);
                return 0;
            }
            b bVarE = e(bVar.userId, bVar.resultTo);
            if (bVarE == null || bVarE.task != bVar.task) {
                bVarE = bVar.task.b();
            }
            return z(bVarE.processRecord.appThread, intent, null, bVarE.token, null, -1, 0, null);
        }
    }

    @SuppressLint({"MissingPermission"})
    public int E(int i10, String str, int i11, Intent intent, String str2, IBinder iBinder, String str3, int i12, int i13, Bundle bundle, boolean z10) {
        h hVarH;
        h hVar;
        b bVar;
        boolean z11;
        b bVarB;
        IBinder iBinder2;
        b bVar2;
        IBinder iBinder3;
        b bVarE;
        synchronized (this.f89628b) {
            G();
        }
        ResolveInfo resolveInfoResolveActivity = MindPackageManagerService.get().resolveActivity(intent, 1, str2, i10);
        if (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startActivityLocked : ");
        sb2.append(intent);
        ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
        IBinder iBinder4 = iBinder;
        b bVarE2 = e(i10, iBinder4);
        if (bVarE2 == null) {
            iBinder4 = null;
        }
        h hVar2 = bVarE2 != null ? bVarE2.task : null;
        String strF = v.f(activityInfo);
        boolean z12 = a(intent, C.ENCODING_PCM_A_LAW) || activityInfo.launchMode == 1;
        boolean zA = a(intent, C.ENCODING_PCM_MU_LAW);
        boolean zA2 = a(intent, 67108864);
        boolean zA3 = a(intent, 32768);
        boolean zA4 = a(intent, 33554432);
        int flags = intent.getFlags() & 42016768;
        if ((activityInfo.flags & 32) != 0) {
            flags |= 8388608;
        }
        if (zA4) {
            iBinder4 = (bVarE2 == null || (iBinder3 = bVarE2.resultTo) == null || (bVarE = e(i10, iBinder3)) == null) ? null : bVarE.token;
            if (iBinder4 == null) {
                com.xinzhu.overmind.b.c(f89626d, "Unable to forward result from " + intent);
            }
        }
        IBinder iBinder5 = iBinder4;
        int i14 = activityInfo.launchMode;
        if (i14 == 0 || i14 == 1 || i14 == 2) {
            hVarH = h(i10, strF);
            if (hVarH == null && !zA) {
                hVarH = hVar2;
            }
        } else {
            hVarH = i14 != 3 ? null : h(i10, strF);
        }
        if (hVarH == null || hVarH.c()) {
            return C(i10, str, i11, intent, activityInfo, str2, iBinder5, str3, i12, flags, i13, bundle, (hVarH == hVar2 && hVarH == null && !z10) ? false : true);
        }
        this.f89627a.moveTaskToFront(hVarH.f89634a, 0);
        if (!(zA2 || z12 || zA3) && t.a(hVarH.f89637d, intent) && hVarH.f89637d.getFlags() == intent.getFlags()) {
            return 0;
        }
        b bVarB2 = hVarH.b();
        b bVarD = d(i10, t.e(activityInfo));
        if (!zA2 || bVarD == null) {
            hVar = hVar2;
            bVar = null;
        } else {
            synchronized (bVarD.task.f89638e) {
                int size = bVarD.task.f89638e.size() - 1;
                while (true) {
                    if (size < 0) {
                        hVar = hVar2;
                    } else {
                        b bVar3 = bVarD.task.f89638e.get(size);
                        if (bVar3 != bVarD) {
                            bVar3.finished = true;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("makerFinish: ");
                            sb3.append(bVar3.component.toString());
                            size--;
                            hVar2 = hVar2;
                        } else {
                            hVar = hVar2;
                            if (z12) {
                                bVar2 = bVarD;
                                break;
                            }
                            bVarD.finished = true;
                        }
                    }
                    bVar2 = null;
                    break;
                }
            }
            bVar = bVar2;
        }
        if (!z12 || zA2) {
            z11 = false;
        } else if (t.a(bVarB2.intent, intent)) {
            bVar = bVarB2;
            z11 = false;
        } else {
            synchronized (this.f89629c) {
                z11 = false;
                for (b bVar4 : this.f89629c) {
                    if (!bVar4.finished && bVar4.component.equals(intent.getComponent())) {
                        z11 = true;
                    }
                }
            }
        }
        if (activityInfo.launchMode == 2 && !zA2) {
            if (t.a(bVarB2.intent, intent)) {
                bVar = bVarB2;
            } else {
                b bVarD2 = d(i10, t.e(activityInfo));
                if (bVarD2 != null) {
                    synchronized (hVarH.f89638e) {
                        boolean z13 = true;
                        int size2 = hVarH.f89638e.size() - 1;
                        while (size2 >= 0) {
                            b bVar5 = hVarH.f89638e.get(size2);
                            if (bVar5 == bVarD2) {
                                break;
                            }
                            bVar5.finished = z13;
                            size2--;
                            z13 = true;
                        }
                    }
                    bVar = bVarD2;
                }
            }
        }
        if (activityInfo.launchMode == 3) {
            bVar = bVarB2;
        }
        if (zA3 && zA) {
            Iterator<b> it2 = hVarH.f89638e.iterator();
            while (it2.hasNext()) {
                it2.next().finished = true;
            }
        }
        c(i10);
        if (bVar != null) {
            b(bVar, intent);
            return 0;
        }
        if (z11) {
            return 0;
        }
        if (iBinder5 != null) {
            if (hVar != null && (bVarB = hVar.b()) != null) {
                iBinder2 = bVarB.token;
            }
            return D(intent, str2, iBinder2, str3, i12, i13, bundle, i10, str, i11, bVarB2, activityInfo, flags);
        }
        b bVarB3 = hVarH.b();
        if (bVarB3 != null) {
            iBinder5 = bVarB3.token;
        }
        iBinder2 = iBinder5;
        return D(intent, str2, iBinder2, str3, i12, i13, bundle, i10, str, i11, bVarB2, activityInfo, flags);
    }

    public boolean a(Intent intent, int i10) {
        return (intent.getFlags() & i10) != 0;
    }

    public h g(int i10) {
        synchronized (this.f89628b) {
            for (h hVar : this.f89628b.values()) {
                if (hVar.f89634a == i10) {
                    return hVar;
                }
            }
            return null;
        }
    }

    public ComponentName j(int i10, IBinder iBinder) {
        synchronized (this.f89628b) {
            b bVarE = e(i10, iBinder);
            if (bVarE == null) {
                return null;
            }
            b bVarE2 = e(i10, bVarE.resultTo);
            if (bVarE2 == null) {
                return null;
            }
            return bVarE2.component;
        }
    }

    public String k(int i10, IBinder iBinder) {
        synchronized (this.f89628b) {
            b bVarE = e(i10, iBinder);
            if (bVarE == null) {
                return null;
            }
            b bVarE2 = e(i10, bVarE.resultTo);
            if (bVarE2 == null) {
                return null;
            }
            return bVarE2.info.packageName;
        }
    }

    public String l(IBinder iBinder) {
        b bVarF = f(iBinder);
        return bVarF != null ? bVarF.launchedFromPackage : x(iBinder);
    }

    public int m(IBinder iBinder) {
        b bVarF = f(iBinder);
        return bVarF != null ? bVarF.launchedFromUid : y(iBinder);
    }

    b r(Intent intent, ActivityInfo activityInfo, IBinder iBinder, int i10, String str, int i11) {
        b bVarCreate = b.create(intent, activityInfo, iBinder, i10, str, i11);
        synchronized (this.f89629c) {
            this.f89629c.add(bVarCreate);
        }
        return bVarCreate;
    }

    public void s(ProcessRecord processRecord, int i10, IBinder iBinder, b bVar) {
        synchronized (this.f89629c) {
            this.f89629c.remove(bVar);
        }
        synchronized (this.f89628b) {
            G();
            h hVar = this.f89628b.get(Integer.valueOf(i10));
            if (hVar == null) {
                hVar = new h(i10, bVar.userId, v.f(bVar.info));
                hVar.f89637d = bVar.intent;
                this.f89628b.put(Integer.valueOf(i10), hVar);
            }
            bVar.token = iBinder;
            bVar.processRecord = processRecord;
            bVar.task = hVar;
            hVar.a(bVar);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onActivityCreated : ");
            sb2.append(bVar.component.toString());
        }
        c(bVar.userId);
    }

    public void t(int i10, IBinder iBinder) {
        synchronized (this.f89628b) {
            G();
            b bVarE = e(i10, iBinder);
            if (bVarE == null) {
                return;
            }
            bVarE.finished = true;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onActivityDestroyed : ");
            sb2.append(bVarE.component.toString());
            bVarE.task.d(bVarE);
        }
    }

    public void u(int i10, IBinder iBinder) {
        synchronized (this.f89628b) {
            G();
            b bVarE = e(i10, iBinder);
            if (bVarE == null) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onActivityResumed : ");
            sb2.append(bVarE.component.toString());
            bVarE.task.d(bVarE);
            bVarE.task.a(bVarE);
        }
    }

    public void v(int i10, IBinder iBinder) {
        synchronized (this.f89628b) {
            b bVarE = e(i10, iBinder);
            if (bVarE == null) {
                return;
            }
            bVarE.finished = true;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onFinishActivity : ");
            sb2.append(bVarE.component.toString());
        }
    }

    public void w(int i10, IBinder iBinder) {
        synchronized (this.f89628b) {
            b bVarE = e(i10, iBinder);
            if (bVarE == null) {
                return;
            }
            Iterator<b> it2 = bVarE.task.f89638e.iterator();
            while (it2.hasNext()) {
                it2.next().finished = true;
            }
            c(i10);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onFinishActivityAffinity token : ");
            sb2.append(bVarE.component.toString());
        }
    }
}
