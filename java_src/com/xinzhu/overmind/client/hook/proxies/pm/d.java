package com.xinzhu.overmind.client.hook.proxies.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IInterface;
import android.os.Process;
import com.byazt.quv.AbsServerManager;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
public class d extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89405b = "PackageManagerStub";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f89406c = 4194304;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f89407d = 2097152;

    class a extends com.xinzhu.overmind.client.hook.common.d {
        a(String str, int i10, int i11) {
            super(str, i10, i11);
        }

        @Override // com.xinzhu.overmind.client.hook.common.d, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            PermissionInfo[] permissionInfoArr;
            String[] strArr;
            String str = (String) objArr[0];
            PackageInfo packageInfoL = Overmind.getMindPackageManager().l(com.xinzhu.overmind.client.f.getVPackageName(), 4096, com.xinzhu.overmind.client.f.getUserId());
            if (packageInfoL != null && (permissionInfoArr = packageInfoL.permissions) != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && (strArr = packageInfoL.requestedPermissions) != null && Arrays.asList(strArr).contains(str)) {
                        return 0;
                    }
                }
            }
            return super.d(obj, method, objArr);
        }
    }

    static class a0 extends com.xinzhu.overmind.client.hook.e {
        a0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setApplicationEnabledSetting";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return 0;
        }
    }

    static class b extends com.xinzhu.overmind.client.hook.e {
        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "canRequestPackageInstalls";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            sa.r.d(objArr);
            return method.invoke(obj, objArr);
        }
    }

    static class b0 extends com.xinzhu.overmind.client.hook.e {
        b0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setComponentEnabledSetting";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            ma.g.d().p().setComponentEnabledSetting((ComponentName) objArr[0], ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue(), com.xinzhu.overmind.client.f.getUserId());
            return 0;
        }
    }

    static class c extends com.xinzhu.overmind.client.hook.e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "freeStorage";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            IntentSender intentSender = (IntentSender) objArr[com.xinzhu.overmind.utils.d.h(objArr, IntentSender.class)];
            if (intentSender == null) {
                return null;
            }
            intentSender.sendIntent(Overmind.getContext(), 0, null, null, null);
            return null;
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.pm.d$d, reason: collision with other inner class name */
    static class C1116d extends com.xinzhu.overmind.client.hook.e {
        C1116d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "freeStorageAndNotify";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            IPackageDataObserver iPackageDataObserver = (IPackageDataObserver) objArr[objArr.length - 1];
            if (iPackageDataObserver == null) {
                return null;
            }
            iPackageDataObserver.onRemoveCompleted(com.xinzhu.overmind.client.f.getVPackageName(), true);
            return null;
        }
    }

    static class e extends com.xinzhu.overmind.client.hook.e {
        e() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getActivityInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ComponentName componentName = (ComponentName) objArr[0];
            ActivityInfo activityInfoE = Overmind.getMindPackageManager().e(componentName, com.xinzhu.overmind.utils.u.a(objArr[1]), com.xinzhu.overmind.client.f.getUserId());
            if (activityInfoE != null) {
                return activityInfoE;
            }
            if (na.c.e(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    static class f extends com.xinzhu.overmind.client.hook.e {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getApplicationEnabledSetting";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            String str = (String) objArr[0];
            if (Overmind.get().isInstalled(str)) {
                return 1;
            }
            if (!na.c.f(str)) {
                return 2;
            }
            sa.r.f(objArr);
            return method.invoke(obj, objArr);
        }
    }

    static class g extends com.xinzhu.overmind.client.hook.e {
        g() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getApplicationInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            String str = (String) objArr[0];
            ApplicationInfo applicationInfoB = com.xinzhu.overmind.server.pm.q.b(Overmind.getMindPackageManager().f(str, com.xinzhu.overmind.utils.u.a(objArr[1]), com.xinzhu.overmind.client.f.getUserId()));
            if (applicationInfoB != null) {
                return applicationInfoB;
            }
            if (na.c.f(str)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    static class h extends com.xinzhu.overmind.client.hook.e {
        h() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getComponentEnabledSetting";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Integer.valueOf(ma.g.d().p().getComponentEnabledSetting((ComponentName) objArr[0], com.xinzhu.overmind.client.f.getUserId()));
        }
    }

    static class i extends com.xinzhu.overmind.client.hook.e {
        i() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getInstalledApplications";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            List<ApplicationInfo> listG = Overmind.getMindPackageManager().g(com.xinzhu.overmind.utils.u.a(objArr[0]), com.xinzhu.overmind.client.f.getUserId());
            List<?> listF = new com.xinzhu.haunted.android.content.pm.o(method.invoke(obj, objArr)).f();
            if (listF != null && !listF.isEmpty()) {
                Iterator<?> it2 = listF.iterator();
                while (it2.hasNext()) {
                    ApplicationInfo applicationInfo = (ApplicationInfo) it2.next();
                    if (!Overmind.get().isInstalled(applicationInfo.packageName) && ((applicationInfo.flags & 9) != 0 || na.c.f(applicationInfo.packageName))) {
                        if (!na.c.d(applicationInfo.packageName)) {
                            listG.add(applicationInfo);
                        }
                    }
                }
            }
            return sa.w.a(listG);
        }
    }

    static class j extends com.xinzhu.overmind.client.hook.e {
        j() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getInstalledPackages";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            List<PackageInfo> listH = Overmind.getMindPackageManager().h(com.xinzhu.overmind.utils.u.a(objArr[0]), com.xinzhu.overmind.client.f.getUserId());
            List<?> listF = new com.xinzhu.haunted.android.content.pm.o(method.invoke(obj, objArr)).f();
            if (listF != null && !listF.isEmpty()) {
                Iterator<?> it2 = listF.iterator();
                while (it2.hasNext()) {
                    PackageInfo packageInfo = (PackageInfo) it2.next();
                    if (!Overmind.get().isInstalled(packageInfo.packageName) && ((packageInfo.applicationInfo.flags & 9) != 0 || na.c.f(packageInfo.packageName))) {
                        if (!na.c.d(packageInfo.packageName)) {
                            listH.add(packageInfo);
                        }
                    }
                }
            }
            return sa.w.a(listH);
        }
    }

    static class k extends com.xinzhu.overmind.client.hook.e {
        k() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPackageInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            String str = (String) objArr[0];
            int iA = com.xinzhu.overmind.utils.u.a(objArr[1]);
            if ((4194304 & iA) != 0) {
                iA &= -4194305;
                objArr[1] = Integer.valueOf(iA);
            }
            if ((2097152 & iA) != 0) {
                return method.invoke(obj, objArr);
            }
            PackageInfo packageInfoD = com.xinzhu.overmind.server.pm.q.d(Overmind.getMindPackageManager().l(str, iA, com.xinzhu.overmind.client.f.getUserId()));
            if (packageInfoD != null) {
                return packageInfoD;
            }
            if (na.c.f(str)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    static class l extends com.xinzhu.overmind.client.hook.e {

        class a implements InvocationHandler {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ IInterface f89409b;

            a(IInterface iInterface) {
                this.f89409b = iInterface;
            }

            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                String name = method.getName();
                name.hashCode();
                byte b10 = -1;
                switch (name.hashCode()) {
                    case -1776922004:
                        if (name.equals("toString")) {
                            b10 = 0;
                        }
                        break;
                    case -1663319615:
                        if (name.equals("bypassNextStagedInstallerCheck")) {
                            b10 = 1;
                        }
                        break;
                    case -1273119136:
                        if (name.equals("getSession")) {
                            b10 = 2;
                        }
                        break;
                    case -663066834:
                        if (name.equals("getSessionInfo")) {
                            b10 = 3;
                        }
                        break;
                    case -652885011:
                        if (name.equals("updateSessionAppIcon")) {
                            b10 = 4;
                        }
                        break;
                    case -625596190:
                        if (name.equals("uninstall")) {
                            b10 = 5;
                        }
                        break;
                    case -403218424:
                        if (name.equals("registerCallback")) {
                            b10 = 6;
                        }
                        break;
                    case -298116903:
                        if (name.equals("getStagedSessions")) {
                            b10 = 7;
                        }
                        break;
                    case -93516191:
                        if (name.equals("abandonSession")) {
                            b10 = 8;
                        }
                        break;
                    case -63461894:
                        if (name.equals("createSession")) {
                            b10 = 9;
                        }
                        break;
                    case 938656808:
                        if (name.equals("getAllSessions")) {
                            b10 = 10;
                        }
                        break;
                    case 1081646368:
                        if (name.equals("installExistingPackage")) {
                            b10 = 11;
                        }
                        break;
                    case 1170196863:
                        if (name.equals("setPermissionsResult")) {
                            b10 = 12;
                        }
                        break;
                    case 1238099456:
                        if (name.equals("updateSessionAppLabel")) {
                            b10 = 13;
                        }
                        break;
                    case 1316930297:
                        if (name.equals("uninstallExistingPackage")) {
                            b10 = 14;
                        }
                        break;
                    case 1568181855:
                        if (name.equals("getMySessions")) {
                            b10 = 15;
                        }
                        break;
                    case 1738611873:
                        if (name.equals("unregisterCallback")) {
                            b10 = 16;
                        }
                        break;
                    case 1788161260:
                        if (name.equals("openSession")) {
                            b10 = BinaryMemcacheOpcodes.SETQ;
                        }
                        break;
                }
                switch (b10) {
                    case 0:
                        return "PackageInstaller";
                    case 1:
                    case 16:
                        sa.r.d(objArr);
                        return method.invoke(this.f89409b, objArr);
                    case 2:
                    case 3:
                    case 4:
                    case 7:
                    case 8:
                    case 11:
                    case 12:
                    case 13:
                    case 17:
                        return method.invoke(this.f89409b, objArr);
                    case 5:
                    case 14:
                    case 15:
                        sa.r.d(objArr);
                        sa.r.f(objArr);
                        return method.invoke(this.f89409b, objArr);
                    case 6:
                    case 10:
                        sa.r.f(objArr);
                        return method.invoke(this.f89409b, objArr);
                    case 9:
                        new com.xinzhu.haunted.android.content.pm.i.a((PackageInstaller.SessionParams) objArr[0]).c(Overmind.getHostPkg());
                        sa.r.d(objArr);
                        sa.r.f(objArr);
                        return method.invoke(this.f89409b, objArr);
                    default:
                        throw new RuntimeException("Unknown package installer interface " + method.getName());
                }
            }
        }

        l() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPackageInstaller";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            IInterface iInterface = (IInterface) method.invoke(obj, objArr);
            if (iInterface == null) {
                return null;
            }
            return (IInterface) Proxy.newProxyInstance(iInterface.getClass().getClassLoader(), iInterface.getClass().getInterfaces(), new a(iInterface));
        }
    }

    static class m extends com.xinzhu.overmind.client.hook.e {
        m() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPackageUid";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            sa.r.d(objArr);
            int iIntValue = ((Integer) method.invoke(obj, objArr)).intValue();
            return iIntValue == Overmind.getHostUid() ? Integer.valueOf(com.xinzhu.overmind.client.f.getVUid()) : Integer.valueOf(iIntValue);
        }
    }

    static class n extends com.xinzhu.overmind.client.hook.e {
        n() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPackagesForUid";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iIntValue = ((Integer) objArr[0]).intValue();
            if (iIntValue == 1000) {
                return method.invoke(obj, objArr);
            }
            if (iIntValue == Overmind.getHostUid()) {
                iIntValue = com.xinzhu.overmind.client.f.getVUid();
            }
            String[] strArrM = ma.g.d().m(iIntValue);
            com.xinzhu.overmind.b.c(d.f89405b, "getPackagesForUid result " + iIntValue + " " + Arrays.toString(strArrM));
            return strArrM;
        }
    }

    static class o extends com.xinzhu.overmind.client.hook.e {
        o() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getProviderInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ComponentName componentName = (ComponentName) objArr[0];
            ProviderInfo providerInfoN = Overmind.getMindPackageManager().n(componentName, com.xinzhu.overmind.utils.u.a(objArr[1]), com.xinzhu.overmind.client.f.getUserId());
            if (providerInfoN != null) {
                return providerInfoN;
            }
            if (na.c.e(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    static class p extends com.xinzhu.overmind.client.hook.e {
        p() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getReceiverInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ComponentName componentName = (ComponentName) objArr[0];
            ActivityInfo activityInfoO = Overmind.getMindPackageManager().o(componentName, com.xinzhu.overmind.utils.u.a(objArr[1]), com.xinzhu.overmind.client.f.getUserId());
            if (activityInfoO != null) {
                return activityInfoO;
            }
            if (na.c.e(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    static class q extends com.xinzhu.overmind.client.hook.e {
        q() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getServiceInfo";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ComponentName componentName = (ComponentName) objArr[0];
            ServiceInfo serviceInfoQ = Overmind.getMindPackageManager().q(componentName, com.xinzhu.overmind.utils.u.a(objArr[1]), com.xinzhu.overmind.client.f.getUserId());
            if (serviceInfoQ != null) {
                return serviceInfoQ;
            }
            if (na.c.e(componentName)) {
                return method.invoke(obj, objArr);
            }
            return null;
        }
    }

    static class r extends com.xinzhu.overmind.client.hook.e {
        r() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getSharedLibraries";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.d(objArr);
            sa.r.f(objArr);
            int iA = com.xinzhu.overmind.utils.u.a(objArr[1]);
            if ((4194304 & iA) != 0) {
                objArr[1] = Integer.valueOf(iA & (-4194305));
            }
            return method.invoke(obj, objArr);
        }
    }

    static class s extends com.xinzhu.overmind.client.hook.e {
        s() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "queryContentProviders";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            objArr[1] = Integer.valueOf(com.xinzhu.overmind.client.f.getUid());
            return sa.w.a(Overmind.getMindPackageManager().u(com.xinzhu.overmind.client.f.getVProcessName(), Process.myUid(), com.xinzhu.overmind.utils.u.a(objArr[2]), com.xinzhu.overmind.client.f.getUserId()));
        }
    }

    static class t extends com.xinzhu.overmind.client.hook.e {
        t() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "queryIntentActivities";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ArrayList arrayList = new ArrayList();
            try {
                Object objInvoke = method.invoke(obj, objArr);
                if (objInvoke != null) {
                    Method declaredMethod = objInvoke.getClass().getDeclaredMethod("getList", new Class[0]);
                    declaredMethod.setAccessible(true);
                    List<ResolveInfo> list = (List) declaredMethod.invoke(objInvoke, new Object[0]);
                    if (list != null) {
                        for (ResolveInfo resolveInfo : list) {
                            if (na.c.f(resolveInfo.activityInfo.packageName)) {
                                arrayList.add(resolveInfo);
                            }
                        }
                    }
                }
                Intent intent = (Intent) objArr[0];
                String str = (String) objArr[1];
                List<ResolveInfo> listV = ma.g.d().v(intent, com.xinzhu.overmind.utils.u.a(objArr[2]), str, ((Integer) objArr[3]).intValue());
                if (listV != null) {
                    arrayList.addAll(listV);
                }
                com.xinzhu.haunted.android.content.pm.o oVarD = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD);
                return oVarD.f88863a;
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.haunted.android.content.pm.o oVarD2 = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD2);
                return oVarD2.f88863a;
            }
        }
    }

    static class u extends com.xinzhu.overmind.client.hook.e {
        u() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "queryIntentContentProviders";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ArrayList arrayList = new ArrayList();
            try {
                Object objInvoke = method.invoke(obj, objArr);
                if (objInvoke != null) {
                    Method declaredMethod = objInvoke.getClass().getDeclaredMethod("getList", new Class[0]);
                    declaredMethod.setAccessible(true);
                    List<ResolveInfo> list = (List) declaredMethod.invoke(objInvoke, new Object[0]);
                    if (list != null) {
                        for (ResolveInfo resolveInfo : list) {
                            if (na.c.f(resolveInfo.providerInfo.packageName)) {
                                arrayList.add(resolveInfo);
                            }
                        }
                    }
                }
                Intent intent = (Intent) objArr[0];
                String str = (String) objArr[1];
                List<ResolveInfo> listX = ma.g.d().x(intent, com.xinzhu.overmind.utils.u.a(objArr[2]), str, ((Integer) objArr[3]).intValue());
                if (listX != null) {
                    arrayList.addAll(listX);
                }
                com.xinzhu.haunted.android.content.pm.o oVarD = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD);
                return oVarD.f88863a;
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.haunted.android.content.pm.o oVarD2 = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD2);
                return oVarD2.f88863a;
            }
        }
    }

    static class v extends com.xinzhu.overmind.client.hook.e {
        v() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "queryIntentReceivers";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ArrayList arrayList = new ArrayList();
            try {
                Object objInvoke = method.invoke(obj, objArr);
                if (objInvoke != null) {
                    Method declaredMethod = objInvoke.getClass().getDeclaredMethod("getList", new Class[0]);
                    declaredMethod.setAccessible(true);
                    List<ResolveInfo> list = (List) declaredMethod.invoke(objInvoke, new Object[0]);
                    if (list != null) {
                        for (ResolveInfo resolveInfo : list) {
                            if (na.c.f(resolveInfo.activityInfo.packageName)) {
                                arrayList.add(resolveInfo);
                            }
                        }
                    }
                }
                Intent intent = (Intent) objArr[0];
                String str = (String) objArr[1];
                List<ResolveInfo> listW = ma.g.d().w(intent, com.xinzhu.overmind.utils.u.a(objArr[2]), str, ((Integer) objArr[3]).intValue());
                if (listW != null) {
                    arrayList.addAll(listW);
                }
                com.xinzhu.haunted.android.content.pm.o oVarD = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD);
                return oVarD.f88863a;
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.haunted.android.content.pm.o oVarD2 = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD2);
                return oVarD2.f88863a;
            }
        }
    }

    static class w extends com.xinzhu.overmind.client.hook.e {
        w() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "queryIntentServices";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ArrayList arrayList = new ArrayList();
            try {
                Object objInvoke = method.invoke(obj, objArr);
                if (objInvoke != null) {
                    Method declaredMethod = objInvoke.getClass().getDeclaredMethod("getList", new Class[0]);
                    declaredMethod.setAccessible(true);
                    List<ResolveInfo> list = (List) declaredMethod.invoke(objInvoke, new Object[0]);
                    if (list != null) {
                        for (ResolveInfo resolveInfo : list) {
                            if (na.c.f(resolveInfo.serviceInfo.packageName)) {
                                arrayList.add(resolveInfo);
                            }
                        }
                    }
                }
                Intent intent = (Intent) objArr[0];
                String str = (String) objArr[1];
                List<ResolveInfo> listY = ma.g.d().y(intent, com.xinzhu.overmind.utils.u.a(objArr[2]), str, ((Integer) objArr[3]).intValue());
                if (listY != null) {
                    arrayList.addAll(listY);
                }
                com.xinzhu.haunted.android.content.pm.o oVarD = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD);
                return oVarD.f88863a;
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.haunted.android.content.pm.o oVarD2 = com.xinzhu.haunted.android.content.pm.o.d(arrayList);
                Objects.requireNonNull(oVarD2);
                return oVarD2.f88863a;
            }
        }
    }

    static class x extends com.xinzhu.overmind.client.hook.e {
        x() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "resolveContentProvider";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ProviderInfo providerInfoA = Overmind.getMindPackageManager().A((String) objArr[0], com.xinzhu.overmind.utils.u.a(objArr[1]), com.xinzhu.overmind.client.f.getUserId());
            return providerInfoA == null ? method.invoke(obj, objArr) : providerInfoA;
        }
    }

    static class y extends com.xinzhu.overmind.client.hook.e {
        y() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "resolveIntent";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            ResolveInfo resolveInfoB = Overmind.getMindPackageManager().B((Intent) objArr[0], (String) objArr[1], com.xinzhu.overmind.utils.u.a(objArr[2]), com.xinzhu.overmind.client.f.getUserId());
            if (resolveInfoB != null) {
                return resolveInfoB;
            }
            ResolveInfo resolveInfo = (ResolveInfo) method.invoke(obj, objArr);
            if (resolveInfo == null || !na.c.f(resolveInfo.activityInfo.packageName)) {
                return null;
            }
            return resolveInfo;
        }
    }

    static class z extends com.xinzhu.overmind.client.hook.e {
        z() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "resolveService";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Intent intent = (Intent) objArr[0];
            String str = (String) objArr[1];
            ResolveInfo resolveInfoC = ma.g.d().C(intent, com.xinzhu.overmind.utils.u.a(objArr[2]), str, com.xinzhu.overmind.client.f.getUserId());
            if (resolveInfoC != null) {
                return resolveInfoC;
            }
            sa.r.f(objArr);
            ResolveInfo resolveInfo = (ResolveInfo) method.invoke(obj, objArr);
            if (resolveInfo == null || !na.c.f(resolveInfo.serviceInfo.packageName)) {
                return null;
            }
            return resolveInfo;
        }
    }

    public d() {
        super(com.xinzhu.haunted.android.app.g.b0().asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        PackageManager packageManagerN = new com.xinzhu.haunted.android.app.l(new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).R()).n();
        if (packageManagerN != null) {
            try {
                if (com.xinzhu.overmind.utils.w.n("android.app.ApplicationPackageManager").f("mPM").j(packageManagerN) != getProxyInvocation()) {
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return getProxyInvocation() != com.xinzhu.haunted.android.app.g.b0();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return com.xinzhu.haunted.android.app.g.b0();
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        com.xinzhu.haunted.android.app.g.s0((IInterface) obj2);
        replaceSystemService(AbsServerManager.PACKAGE_QUERY_BINDER);
        PackageManager packageManagerN = new com.xinzhu.haunted.android.app.l(new com.xinzhu.haunted.android.app.g(Overmind.mainThread()).R()).n();
        if (packageManagerN != null) {
            try {
                com.xinzhu.overmind.utils.w.n("android.app.ApplicationPackageManager").f("mPM").r(packageManagerN, obj2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        ContextFixer.fix(Overmind.getContext());
        try {
            Class.forName("huawei.android.app.HwApiCacheMangerEx");
            p9.a aVarC = p9.a.c();
            if (aVarC.a()) {
                aVarC.e(Overmind.getPackageManager());
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new y());
        addMethodHook(new h());
        addMethodHook(new b0());
        addMethodHook(new k());
        addMethodHook(new o());
        addMethodHook(new q());
        addMethodHook(new e());
        addMethodHook(new p());
        addMethodHook(new i());
        addMethodHook(new j());
        addMethodHook(new g());
        addMethodHook(new s());
        addMethodHook(new z());
        addMethodHook(new x());
        addMethodHook(new b());
        addMethodHook(new m());
        addMethodHook(new n());
        addMethodHook(new f());
        addMethodHook(new a0());
        addMethodHook(new a("checkPermission", 1, com.xinzhu.overmind.client.hook.common.d.f89291g));
        addMethodHook(new t());
        addMethodHook(new w());
        addMethodHook(new v());
        addMethodHook(new u());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("getInstallerPackageName", na.d.f94512e));
        if (com.xinzhu.overmind.utils.e.x()) {
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("notifyDexLoad", 0));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("notifyPackageUse", 0));
            Boolean bool = Boolean.FALSE;
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("setInstantAppCookie", bool));
            addMethodHook(new com.xinzhu.overmind.client.hook.common.c("isInstantApp", bool));
        }
        Boolean bool2 = Boolean.TRUE;
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("performDexOpt", bool2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("performDexOptIfNeeded", Boolean.FALSE));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("performDexOptSecondary", bool2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("addOnPermissionsChangeListener", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("removeOnPermissionsChangeListener", 0));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("addPermissionAsync", bool2));
        addMethodHook(new com.xinzhu.overmind.client.hook.common.c("addPermission", bool2));
        addMethodHook(new C1116d());
        addMethodHook(new c());
        addMethodHook(new r());
        addMethodHook(new l());
        addMethodHook(new com.xinzhu.overmind.client.hook.common.d("shouldShowRequestPermissionRationale", com.xinzhu.overmind.client.hook.common.d.f89290f, com.xinzhu.overmind.client.hook.common.d.f89291g));
    }
}
