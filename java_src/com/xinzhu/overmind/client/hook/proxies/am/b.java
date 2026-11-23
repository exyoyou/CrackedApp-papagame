package com.xinzhu.overmind.client.hook.proxies.am;

import android.app.ActivityManager;
import android.app.IServiceConnection;
import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.util.LogPrinter;
import com.byazt.hv.TTDownloadField;
import com.haima.hmcp.widgets.AbsIjkVideoView;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
import com.xinzhu.overmind.entity.ClientConfig;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.server.ProcessRecord;
import com.xinzhu.overmind.server.user.MindUserHandle;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes8.dex */
public class b extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89334b = "ActivityManagerStub";

    class a extends XC_MethodHook {
        a() {
        }

        @Override // de.robv.android.xposed.XC_MethodHook
        protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) throws Throwable {
            super.beforeHookedMethod(methodHookParam);
            methodHookParam.args[0] = na.c.i((Intent) methodHookParam.args[0]);
        }
    }

    static class a0 extends com.xinzhu.overmind.client.hook.e {
        a0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startService";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Intent intent = (Intent) objArr[1];
            if (intent == null) {
                return null;
            }
            if (intent.getComponent() != null && Overmind.isOvermindPkg(intent.getComponent().getPackageName())) {
                sa.r.f(objArr);
                return method.invoke(obj, objArr);
            }
            String str = (String) objArr[2];
            if (com.xinzhu.overmind.utils.e.x()) {
                Object obj2 = objArr[3];
                if ((obj2 instanceof Boolean) && ((Boolean) obj2).booleanValue()) {
                    objArr[3] = Boolean.FALSE;
                }
            }
            sa.r.f(objArr);
            ResolveInfo resolveInfoC = Overmind.getMindPackageManager().C(intent, 0, str, com.xinzhu.overmind.client.f.getUserId());
            if (resolveInfoC == null) {
                if (na.c.e(intent.getComponent())) {
                    return method.invoke(obj, objArr);
                }
                com.xinzhu.overmind.b.c(b.f89334b, "startService failed and skip " + intent);
                return null;
            }
            try {
                Intent intentStartService = Overmind.getMindActivityManager().startService(intent, str, com.xinzhu.overmind.client.f.getUserId(), 0);
                intentStartService.putExtra(AbsIjkVideoView.JSON_TAG_OPERATION, "start_service");
                objArr[1] = intentStartService;
                if (((ComponentName) method.invoke(obj, objArr)) != null) {
                    ServiceInfo serviceInfo = resolveInfoC.serviceInfo;
                    return new ComponentName(serviceInfo.packageName, serviceInfo.name);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.am.b$b, reason: collision with other inner class name */
    static class C1103b extends com.xinzhu.overmind.client.hook.e {
        C1103b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addPackageDependency";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.d(objArr);
            return method.invoke(obj, objArr);
        }
    }

    static class b0 extends com.xinzhu.overmind.client.hook.e {
        b0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "stopService";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String packageName;
            Intent intent = (Intent) objArr[1];
            String str = (String) objArr[2];
            sa.r.f(objArr);
            if (intent.getComponent() != null && (packageName = intent.getComponent().getPackageName()) != null && na.c.f(packageName)) {
                return method.invoke(obj, objArr);
            }
            Intent intentStopService = Overmind.getMindActivityManager().stopService(intent, str, com.xinzhu.overmind.client.f.getUserId());
            if (intentStopService == null) {
                return 0;
            }
            com.xinzhu.overmind.b.c(b.f89334b, "stopService called " + intentStopService);
            intentStopService.putExtra(AbsIjkVideoView.JSON_TAG_OPERATION, "stop_service");
            Overmind.getContext().startService(intentStopService);
            return 1;
        }
    }

    static class c extends d {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.d, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "bindIsolatedService";
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.d
        protected boolean f() {
            return true;
        }
    }

    static class c0 extends com.xinzhu.overmind.client.hook.e {
        c0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "stopServiceToken";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String packageName;
            ComponentName componentName = (ComponentName) objArr[0];
            if (componentName != null && (packageName = componentName.getPackageName()) != null && na.c.f(packageName)) {
                return method.invoke(obj, objArr);
            }
            Intent intent = new Intent();
            intent.setPackage(componentName.getPackageName());
            intent.setClassName(componentName.getPackageName(), componentName.getClassName());
            Intent intentStopService = Overmind.getMindActivityManager().stopService(intent, "", com.xinzhu.overmind.client.f.getUserId());
            if (intentStopService == null) {
                return Boolean.FALSE;
            }
            com.xinzhu.overmind.b.c(b.f89334b, "stopService called " + intentStopService);
            intentStopService.putExtra(AbsIjkVideoView.JSON_TAG_OPERATION, "stop_service");
            Overmind.getContext().startService(intentStopService);
            return Boolean.TRUE;
        }
    }

    static class d extends com.xinzhu.overmind.client.hook.e {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "bindService";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            Intent intent = (Intent) objArr[2];
            String str = (String) objArr[3];
            int iA = com.xinzhu.overmind.utils.u.a(objArr[5]);
            IServiceConnection iServiceConnection = (IServiceConnection) objArr[4];
            sa.r.f(objArr);
            sa.r.e(objArr);
            ResolveInfo resolveInfoC = Overmind.getMindPackageManager().C(intent, 0, str, com.xinzhu.overmind.client.f.getUserId());
            if (resolveInfoC != null) {
                if (f()) {
                    objArr[6] = null;
                }
                Intent intentBindService = Overmind.getMindActivityManager().bindService(intent, iServiceConnection != null ? iServiceConnection.asBinder() : null, str, com.xinzhu.overmind.client.f.getUserId(), iA);
                if (iServiceConnection != null) {
                    ServiceInfo serviceInfo = resolveInfoC.serviceInfo;
                    objArr[4] = com.xinzhu.overmind.client.hook.delegate.c.createProxy(iServiceConnection, new ComponentName(serviceInfo.packageName, serviceInfo.name));
                }
                if (intentBindService != null) {
                    objArr[2] = intentBindService;
                    return method.invoke(obj, objArr);
                }
            }
            if (na.c.e(intent.getComponent())) {
                sa.r.f(objArr);
                return method.invoke(obj, objArr);
            }
            com.xinzhu.overmind.b.c(b.f89334b, "bindService failed and skip " + intent);
            return 0;
        }

        protected boolean f() {
            return false;
        }
    }

    static class d0 extends com.xinzhu.overmind.client.hook.e {
        d0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "unbindService";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            IServiceConnection iServiceConnection = (IServiceConnection) objArr[0];
            if (iServiceConnection == null) {
                return method.invoke(obj, objArr);
            }
            Overmind.getMindActivityManager().unbindService(iServiceConnection.asBinder(), com.xinzhu.overmind.client.f.getUserId());
            com.xinzhu.overmind.client.hook.delegate.c delegate = com.xinzhu.overmind.client.hook.delegate.c.getDelegate(iServiceConnection.asBinder());
            if (delegate != null) {
                objArr[0] = delegate;
            }
            return method.invoke(obj, objArr);
        }
    }

    static class e extends c {
        e() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.c, com.xinzhu.overmind.client.hook.proxies.am.b.d, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "bindServiceInstance";
        }
    }

    static class f extends com.xinzhu.overmind.client.hook.e {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "broadcastIntent";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iF = f(objArr);
            Intent intent = (Intent) objArr[iF];
            String str = (String) objArr[iF + 1];
            sa.r.f(objArr);
            Intent intentK = na.c.k(Overmind.getMindActivityManager().w(intent, str, com.xinzhu.overmind.client.f.getUserId()));
            if (intentK != null) {
                objArr[iF] = intentK;
            }
            for (int i10 = 0; i10 < objArr.length; i10++) {
                if (objArr[i10] instanceof String[]) {
                    objArr[i10] = null;
                }
            }
            return method.invoke(obj, objArr);
        }

        int f(Object[] objArr) {
            for (int i10 = 0; i10 < objArr.length; i10++) {
                if (objArr[i10] instanceof Intent) {
                    return i10;
                }
            }
            return 1;
        }
    }

    static class g extends f {
        g() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.f, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "broadcastIntentWithFeature";
        }
    }

    static class h extends com.xinzhu.overmind.client.hook.e {
        h() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "checkPermission";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            PermissionInfo[] permissionInfoArr;
            String[] strArr;
            String str = (String) objArr[0];
            if (na.c.b(str)) {
                return 0;
            }
            PackageInfo packageInfoL = Overmind.getMindPackageManager().l(com.xinzhu.overmind.client.f.getVPackageName(), 4096, com.xinzhu.overmind.client.f.getUserId());
            if (packageInfoL != null && (permissionInfoArr = packageInfoL.permissions) != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && (strArr = packageInfoL.requestedPermissions) != null && Arrays.asList(strArr).contains(str)) {
                        return 0;
                    }
                }
            }
            objArr[2] = Integer.valueOf(Overmind.getHostUid());
            return method.invoke(obj, objArr);
        }
    }

    static class i extends h {
        i() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.h, com.xinzhu.overmind.client.hook.e
        public String c() {
            return "checkPermissionForDevice";
        }
    }

    static class j extends h {
        j() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.h, com.xinzhu.overmind.client.hook.e
        public String c() {
            return "checkPermissionWithToken";
        }
    }

    static class k extends com.xinzhu.overmind.client.hook.e {
        k() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "checkUriPermission";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2 = objArr[0];
            if (!(obj2 instanceof Uri) || !obj2.toString().equals("content://telephony/carriers/preferapn")) {
                return 0;
            }
            int i10 = Overmind.get().hostCheckPermission("Manifest.permission.WRITE_APN_SETTINGS", com.xinzhu.overmind.client.f.getClientConfig().f89468j) ? 0 : -1;
            com.xinzhu.overmind.b.a(b.f89334b, "check preferapn perm " + i10);
            return Integer.valueOf(i10);
        }
    }

    static class l extends com.xinzhu.overmind.client.hook.e {
        l() {
        }

        private int f() {
            return com.xinzhu.overmind.utils.e.f() ? 2 : 1;
        }

        private int g() {
            return f() + 1;
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getContentProvider";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Exception {
            Object objI;
            IBinder iBinderA;
            int iF = f();
            Object obj2 = objArr[iF];
            e(objArr, g());
            if (!(obj2 instanceof String)) {
                return method.invoke(obj, objArr);
            }
            String str = ((String) obj2).split(";")[0];
            objArr[iF] = str;
            if (com.xinzhu.overmind.client.g.n(str)) {
                return method.invoke(obj, objArr);
            }
            if (com.xinzhu.overmind.utils.e.f()) {
                objArr[1] = Overmind.getHostPkg();
            }
            if (str.equals("settings") || str.equals("media") || str.equals("telephony") || str.equals("downloads")) {
                Object objInvoke = method.invoke(obj, objArr);
                com.xinzhu.overmind.client.hook.delegate.b.update(objInvoke, str);
                return objInvoke;
            }
            com.xinzhu.overmind.b.a(b.f89334b, "hook getContentProvider: " + str);
            ProviderInfo providerInfoA = Overmind.getMindPackageManager().A(str, 128, com.xinzhu.overmind.client.f.getUserId());
            if (providerInfoA == null || !Overmind.get().isInstalled(providerInfoA.packageName)) {
                try {
                    Object objInvoke2 = method.invoke(obj, objArr);
                    if (objInvoke2 != null && (objI = com.xinzhu.overmind.utils.w.t(objInvoke2).f(com.umeng.analytics.pro.f.M).i()) != null && !(objI instanceof Proxy)) {
                        com.xinzhu.overmind.utils.w.t(objInvoke2).f(com.umeng.analytics.pro.f.M).q(new com.xinzhu.overmind.client.hook.proxies.context.providers.a().a((IInterface) objI, Overmind.getHostPkg()));
                    }
                    return objInvoke2;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return null;
                }
            }
            if (com.xinzhu.overmind.client.f.getVPid() != -1) {
                ClientConfig clientConfigK = Overmind.getMindActivityManager().k(providerInfoA.packageName, providerInfoA.processName, com.xinzhu.overmind.client.f.getUserId());
                iBinderA = clientConfigK.f89462d != com.xinzhu.overmind.client.f.getVPid() ? Overmind.getMindActivityManager().a(providerInfoA) : null;
                objArr[iF] = clientConfigK.f89468j ? com.xinzhu.overmind.client.g.c(clientConfigK.f89462d) : com.xinzhu.overmind.client.g.g(clientConfigK.f89462d);
                objArr[g()] = Integer.valueOf(MindUserHandle.x(Overmind.getHostUid()));
            } else {
                iBinderA = null;
            }
            Object objInvoke3 = method.invoke(obj, objArr);
            if (objInvoke3 == null) {
                return null;
            }
            com.xinzhu.overmind.utils.w.t(objInvoke3).f(PapayPayDetialActivity_.INFO_EXTRA).q(providerInfoA);
            if (iBinderA != null) {
                com.xinzhu.overmind.utils.w.t(objInvoke3).f(com.umeng.analytics.pro.f.M).q(new com.xinzhu.overmind.client.hook.proxies.context.providers.a().a((IInterface) t8.g.a(iBinderA), Overmind.getHostPkg()));
            }
            return objInvoke3;
        }
    }

    static class m extends com.xinzhu.overmind.client.hook.e {
        m() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getCurrentUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                com.xinzhu.haunted.android.content.pm.w wVarC = com.xinzhu.haunted.android.content.pm.w.c(com.xinzhu.overmind.client.f.getUserId(), "Admin", com.xinzhu.haunted.android.content.pm.w.d());
                Objects.requireNonNull(wVarC);
                return wVarC.f88915a;
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    static class n extends com.xinzhu.overmind.client.hook.e {
        n() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getInfoForIntentSender";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            PendingIntentRecord pendingIntentRecordB;
            IInterface iInterface = (IInterface) objArr[0];
            if (iInterface != null && (pendingIntentRecordB = ma.a.d().b(iInterface.asBinder())) != null) {
                com.xinzhu.haunted.android.app.c.a aVarF = com.xinzhu.haunted.android.app.c.a.f(pendingIntentRecordB.f89472b, pendingIntentRecordB.f89473c, (pendingIntentRecordB.f89477g & 67108864) != 0, pendingIntentRecordB.f89478h);
                if (aVarF != null) {
                    return aVarF.f88295a;
                }
            }
            Object objInvoke = method.invoke(obj, objArr);
            com.xinzhu.overmind.b.c(b.f89334b, "<Bug likely> getInfoForIntentSender fallback to system, CreatorPackage: " + new com.xinzhu.haunted.android.app.c.a(objInvoke).g() + " " + iInterface);
            return objInvoke;
        }
    }

    static class o extends com.xinzhu.overmind.client.hook.e {
        o() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getIntentForIntentSender";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Intent intent = (Intent) method.invoke(obj, objArr);
            if (intent != null) {
                return StubTrampolineRecord.create(intent).mTarget;
            }
            return null;
        }
    }

    static class p extends com.xinzhu.overmind.client.hook.e {
        p() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getPackageForIntentSender";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            PendingIntentRecord pendingIntentRecordB;
            IInterface iInterface = (IInterface) objArr[0];
            return (iInterface == null || (pendingIntentRecordB = ma.a.d().b(iInterface.asBinder())) == null) ? method.invoke(obj, objArr) : pendingIntentRecordB.f89472b;
        }
    }

    static class q extends com.xinzhu.overmind.client.hook.e {
        q() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getRunningAppProcesses";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            List list = (List) method.invoke(obj, objArr);
            if (list == null || com.xinzhu.overmind.client.f.getClientConfig() == null) {
                return null;
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) it2.next();
                if (runningAppProcessInfo.uid == Overmind.getHostUid()) {
                    ProcessRecord processRecordC = ma.a.d().c(runningAppProcessInfo.pid);
                    if (processRecordC == null) {
                        if (runningAppProcessInfo.processName.startsWith(Overmind.getMainPkg()) || runningAppProcessInfo.processName.startsWith(Overmind.getPluginPkg())) {
                            it2.remove();
                        }
                    } else if (processRecordC.userId != com.xinzhu.overmind.client.f.getUserId()) {
                        it2.remove();
                    } else {
                        runningAppProcessInfo.uid = processRecordC.vuid;
                        String str = processRecordC.processName;
                        if (str != null) {
                            runningAppProcessInfo.importanceReasonCode = 0;
                            runningAppProcessInfo.importanceReasonPid = 0;
                            runningAppProcessInfo.importanceReasonComponent = null;
                            runningAppProcessInfo.processName = str;
                        }
                    }
                }
            }
            return list;
        }
    }

    static class r extends com.xinzhu.overmind.client.hook.e {
        r() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getUidForIntentSender";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            PendingIntentRecord pendingIntentRecordB;
            IInterface iInterface = (IInterface) objArr[0];
            return (iInterface == null || (pendingIntentRecordB = ma.a.d().b(iInterface.asBinder())) == null) ? method.invoke(obj, objArr) : Integer.valueOf(pendingIntentRecordB.f89473c);
        }
    }

    static class s extends com.xinzhu.overmind.client.hook.e {
        s() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "grantUriPermission";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    static class t extends com.xinzhu.overmind.client.hook.e {
        t() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "handleApplicationWtf";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Overmind.getStackTraceElement();
            new com.xinzhu.haunted.android.app.i.a(objArr[3]).b(new LogPrinter(2, b.f89334b), "");
            return method.invoke(obj, objArr);
        }
    }

    static class u extends com.xinzhu.overmind.client.hook.e {
        u() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        public String c() {
            return "handleIncomingUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            objArr[1] = Integer.valueOf(Overmind.getHostUid());
            objArr[2] = Integer.valueOf(Overmind.getHostUserId());
            if (objArr[objArr.length - 1] instanceof String) {
                objArr[objArr.length - 1] = Overmind.getHostPkg();
            }
            return method.invoke(obj, objArr);
        }
    }

    static class v extends com.xinzhu.overmind.client.hook.e {
        v() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "peekService";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.e(objArr);
            return Overmind.getMindActivityManager().t((Intent) objArr[0], (String) objArr[1], com.xinzhu.overmind.client.f.getUserId());
        }
    }

    static class w extends com.xinzhu.overmind.client.hook.e {
        w() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "publishService";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return method.invoke(obj, objArr);
        }
    }

    static class x extends com.xinzhu.overmind.client.hook.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakHashMap<IBinder, IIntentReceiver> f89336a = new WeakHashMap<>();

        class a implements IBinder.DeathRecipient {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ IBinder f89337b;

            a(IBinder iBinder) {
                this.f89337b = iBinder;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                this.f89337b.unlinkToDeath(this, 0);
                x.this.f89336a.remove(this.f89337b);
            }
        }

        /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.am.b$x$b, reason: collision with other inner class name */
        private static class BinderC1104b extends IIntentReceiver.Stub {
            IntentFilter mFilter;
            IInterface mOrigin;

            BinderC1104b(IInterface iInterface, IntentFilter intentFilter) {
                this.mOrigin = iInterface;
                this.mFilter = intentFilter;
            }

            @Override // android.content.IIntentReceiver
            public void performReceive(Intent intent, int i10, String str, Bundle bundle, boolean z10, boolean z11, int i11) {
                new t8.k(this.mOrigin).b(na.c.i(intent), i10, str, bundle, z10, z11, i11);
            }
        }

        x() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "registerReceiver";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iA = sa.r.a(objArr, IntentFilter.class);
            if (iA == -1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("registerReceiver stub get no arg with type IntentFilter ");
                sb2.append(objArr);
                return method.invoke(obj, objArr);
            }
            int i10 = iA - 1;
            int i11 = iA + 1;
            sa.r.d(objArr);
            objArr[i11] = null;
            e(objArr, i11 + 1);
            IntentFilter intentFilter = (IntentFilter) objArr[iA];
            na.c.l(intentFilter);
            objArr[iA] = intentFilter;
            IInterface iInterface = (IInterface) objArr[i10];
            if (iInterface != null && !(iInterface instanceof BinderC1104b) && !com.xinzhu.overmind.utils.e.k()) {
                IBinder iBinderAsBinder = iInterface.asBinder();
                iBinderAsBinder.linkToDeath(new a(iBinderAsBinder), 0);
                IIntentReceiver binderC1104b = this.f89336a.get(iBinderAsBinder);
                if (binderC1104b == null) {
                    binderC1104b = new BinderC1104b(iInterface, intentFilter);
                    this.f89336a.put(iBinderAsBinder, binderC1104b);
                }
                WeakReference weakReference = (WeakReference) new com.xinzhu.haunted.android.app.v.a.b(iInterface).b();
                if (weakReference != null) {
                    new com.xinzhu.haunted.android.app.v.a(weakReference.get()).c(binderC1104b);
                    objArr[i10] = binderC1104b;
                }
            }
            return na.c.i((Intent) method.invoke(obj, objArr));
        }
    }

    static class y extends x {
        y() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.b.x, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "registerReceiverWithFeature";
        }
    }

    static class z extends com.xinzhu.overmind.client.hook.e {
        z() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "sendIntentSender";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return method.invoke(obj, objArr);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public b() {
        IInterface iInterfaceC = com.xinzhu.haunted.android.app.d.c();
        Objects.requireNonNull(iInterfaceC);
        super(iInterfaceC.asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return com.xinzhu.haunted.android.app.d.c() != getProxyInvocation();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        IInterface iInterfaceC = com.xinzhu.haunted.android.app.d.c();
        Objects.requireNonNull(iInterfaceC);
        return com.xinzhu.haunted.android.app.n.b.a(iInterfaceC.asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        Object objD;
        if (com.xinzhu.overmind.utils.e.x()) {
            objD = com.xinzhu.haunted.android.app.e.d();
        } else {
            objD = com.xinzhu.overmind.utils.e.a() ? com.xinzhu.haunted.android.app.d.d() : null;
        }
        new l9.b(objD).e(obj2);
        replaceSystemService(TTDownloadField.TT_ACTIVITY);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        addMethodHook(new l());
        addMethodHook(new a0());
        addMethodHook(new b0());
        addMethodHook(new c0());
        addMethodHook(new d());
        addMethodHook(new c());
        addMethodHook(new d0());
        addMethodHook(new q());
        addMethodHook(new p());
        addMethodHook(new r());
        addMethodHook(new o());
        addMethodHook(new w());
        addMethodHook(new v());
        addMethodHook(new z());
        addMethodHook(new f());
        addMethodHook(new g());
        addMethodHook(new x());
        addMethodHook(new y());
        if (com.xinzhu.overmind.utils.e.k()) {
            Class<?> cls = com.xinzhu.haunted.android.app.v.a.f88600b;
            Class cls2 = Integer.TYPE;
            Class cls3 = Boolean.TYPE;
            XposedHelpers.findAndHookMethod(cls, "performReceive", Intent.class, cls2, String.class, Bundle.class, cls3, cls3, cls3, cls2, cls2, String.class, new a());
        }
        addMethodHook(new s());
        addMethodHook(new k());
        addMethodHook(new h());
        addMethodHook(new j());
        addMethodHook(new i());
        addMethodHook(new u());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("setServiceForeground", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getPackageProcessState", 4));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getHistoricalProcessExitReasons", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89289e));
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.o());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.n());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.a());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.b());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.c());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.C1105d());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.f());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.g());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.s());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.p());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.r());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.t());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.q());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.l());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.e());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.k());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.h());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.i());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.j());
        addMethodHook(new com.xinzhu.overmind.client.hook.proxies.am.d.m());
        addMethodHook(new m());
        addMethodHook(new C1103b());
        addMethodHook(new t());
        if (com.xinzhu.overmind.utils.e.h()) {
            addMethodHook(new n());
            addMethodHook(new e());
        }
        if (com.xinzhu.overmind.utils.e.g()) {
            addMethodHook(new com.xinzhu.overmind.client.hook.common.d("getHistoricalProcessExitReasons", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89291g));
        }
    }
}
