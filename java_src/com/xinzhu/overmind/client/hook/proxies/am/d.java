package com.xinzhu.overmind.client.hook.proxies.am;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.accounts.ChooseTypeAndAccountActivity;
import com.xinzhu.overmind.client.stub.StubTrampolineActivity;
import com.xinzhu.overmind.client.stub.StubTrampolineReceiver;
import com.xinzhu.overmind.client.stub.StubTrampolineService;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
import com.xinzhu.overmind.entity.PendingIntentRecord;
import com.xinzhu.overmind.server.am.MindTaskInfo;
import java.lang.reflect.Method;
import java.util.List;
import java.util.ListIterator;
import sa.h0;
import sa.w;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f89340a = "CommonStub";

    static class a extends com.xinzhu.overmind.client.hook.e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "activityDestroyed";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Overmind.getMindActivityManager().m((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    static class b extends com.xinzhu.overmind.client.hook.e {
        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "activityResumed";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Overmind.getMindActivityManager().n((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    static class c extends com.xinzhu.overmind.client.hook.e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "finishActivity";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Overmind.getMindActivityManager().o((IBinder) objArr[0]);
            return method.invoke(obj, objArr);
        }
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.am.d$d, reason: collision with other inner class name */
    static class C1105d extends com.xinzhu.overmind.client.hook.e {
        C1105d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "finishActivityAffinity";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Overmind.getMindActivityManager().p((IBinder) objArr[0]);
            return Boolean.FALSE;
        }
    }

    static class e extends com.xinzhu.overmind.client.hook.e {
        e() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAppTasks";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.d(objArr);
            return method.invoke(obj, objArr);
        }
    }

    static class f extends com.xinzhu.overmind.client.hook.e {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getCallingActivity";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Overmind.getMindActivityManager().e((IBinder) objArr[0]);
        }
    }

    static class g extends com.xinzhu.overmind.client.hook.e {
        g() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getCallingPackage";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Overmind.getMindActivityManager().f((IBinder) objArr[0]);
        }
    }

    static class h extends com.xinzhu.overmind.client.hook.e {
        h() {
        }

        private int f() {
            return com.xinzhu.overmind.utils.e.g() ? 6 : 5;
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getIntentSender";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Intent intent;
            String str = (String) objArr[1];
            sa.r.d(objArr);
            int iA = sa.r.a(objArr, Intent[].class);
            if (iA < 0) {
                iA = f();
            }
            Intent[] intentArr = (Intent[]) objArr[iA];
            int i10 = iA + 2;
            int iIntValue = ((Integer) objArr[i10]).intValue();
            objArr[i10] = Integer.valueOf((Build.VERSION.SDK_INT >= 23 ? (-67108865) & iIntValue : iIntValue) & (-9) & (-129));
            sa.r.f(objArr);
            int iIntValue2 = ((Integer) objArr[0]).intValue();
            if (intentArr.length <= 0) {
                intent = null;
            } else {
                if (intentArr.length != 1) {
                    throw new RuntimeException("getIntentSender failed, more than 1 intent in array.");
                }
                intent = intentArr[0];
            }
            Intent intent2 = new Intent(intent);
            intent2.replaceExtras(new Intent());
            intent2.setComponent(null);
            if (iIntValue2 == 1) {
                intent2.setComponent(new ComponentName(Overmind.get().getMainPackageName(), StubTrampolineReceiver.class.getName()));
            } else if (iIntValue2 == 2 || iIntValue2 == 3) {
                intent2.setComponent(new ComponentName(Overmind.get().getMainPackageName(), StubTrampolineActivity.class.getName()));
            } else {
                if (iIntValue2 == 5) {
                    objArr[0] = 4;
                }
                intent2.setComponent(new ComponentName(Overmind.get().getMainPackageName(), StubTrampolineService.class.getName()));
            }
            StubTrampolineRecord.saveStub(intent2, intent, com.xinzhu.overmind.client.f.getUserId());
            objArr[iA] = new Intent[]{intent2};
            IInterface iInterface = (IInterface) method.invoke(obj, objArr);
            if (iInterface != null) {
                ma.a.d().u(new PendingIntentRecord(str, com.xinzhu.overmind.client.f.getVUid(), com.xinzhu.overmind.client.f.getUserId(), iInterface.asBinder(), intent, iIntValue, iIntValue2));
            }
            return iInterface;
        }
    }

    static class i extends h {
        i() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.h, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getIntentSenderWithFeature";
        }
    }

    static class j extends h {
        j() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.h, com.xinzhu.overmind.client.hook.e
        public String c() {
            return "getIntentSenderWithSourceToken";
        }
    }

    static class k extends com.xinzhu.overmind.client.hook.e {
        k() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getRecentTasks";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                sa.r.f(objArr);
                Object objInvoke = method.invoke(obj, objArr);
                boolean zB = w.b(objInvoke);
                List<?> listF = zB ? new com.xinzhu.haunted.android.content.pm.o(objInvoke).f() : (List) objInvoke;
                if (listF != null && listF.size() != 0) {
                    ListIterator<?> listIterator = listF.listIterator();
                    while (listIterator.hasNext()) {
                        ActivityManager.RecentTaskInfo recentTaskInfo = (ActivityManager.RecentTaskInfo) listIterator.next();
                        MindTaskInfo mindTaskInfoJ = ma.a.d().j(recentTaskInfo.id);
                        if (mindTaskInfoJ != null) {
                            try {
                                recentTaskInfo.origActivity = mindTaskInfoJ.f89613d;
                                recentTaskInfo.baseIntent = mindTaskInfoJ.f89612c;
                                if (Build.VERSION.SDK_INT >= 23) {
                                    recentTaskInfo.topActivity = mindTaskInfoJ.f89614e;
                                    recentTaskInfo.baseActivity = mindTaskInfoJ.f89613d;
                                }
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        } else {
                            listIterator.remove();
                        }
                    }
                }
                return zB ? w.a(listF) : listF;
            } catch (Throwable th2) {
                th2.printStackTrace();
                return null;
            }
        }
    }

    static class l extends com.xinzhu.overmind.client.hook.e {
        l() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getTasks";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            List list = (List) method.invoke(obj, objArr);
            if (list != null && list.size() != 0) {
                ListIterator listIterator = list.listIterator();
                while (listIterator.hasNext()) {
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) listIterator.next();
                    MindTaskInfo mindTaskInfoJ = ma.a.d().j(runningTaskInfo.id);
                    if (mindTaskInfoJ != null) {
                        try {
                            if (Build.VERSION.SDK_INT >= 29) {
                                runningTaskInfo.origActivity = mindTaskInfoJ.f89613d;
                                runningTaskInfo.baseIntent = mindTaskInfoJ.f89612c;
                            }
                            runningTaskInfo.topActivity = mindTaskInfoJ.f89614e;
                            runningTaskInfo.baseActivity = mindTaskInfoJ.f89613d;
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    } else {
                        listIterator.remove();
                    }
                }
            }
            return list;
        }
    }

    static class m extends com.xinzhu.overmind.client.hook.e {
        m() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "overridePendingTransition";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            if (ma.g.d().k(com.xinzhu.overmind.client.f.getVPackageName()).f89831d.f(1)) {
                return method.invoke(obj, objArr);
            }
            return 0;
        }
    }

    static class n extends com.xinzhu.overmind.client.hook.e {
        n() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startActivities";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Intent[] intentArr = (Intent[]) objArr[2];
            String[] strArr = (String[]) objArr[3];
            IBinder iBinder = (IBinder) objArr[4];
            Bundle bundle = (Bundle) objArr[5];
            if (!sa.t.d(intentArr)) {
                return method.invoke(obj, objArr);
            }
            for (Intent intent : intentArr) {
                intent.setExtrasClassLoader(obj.getClass().getClassLoader());
            }
            return Integer.valueOf(Overmind.getMindActivityManager().x(com.xinzhu.overmind.client.f.getUserId(), com.xinzhu.overmind.client.f.getVPackageName(), intentArr, strArr, iBinder, bundle));
        }
    }

    static class o extends com.xinzhu.overmind.client.hook.e {
        o() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startActivity";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2 = objArr[sa.r.a(objArr, Intent.class)];
            sa.r.d(objArr);
            if (!(obj2 instanceof Intent)) {
                return method.invoke(obj, objArr);
            }
            Intent intent = (Intent) obj2;
            if (intent.getParcelableExtra("_VM_|_target_") != null) {
                return method.invoke(obj, objArr);
            }
            if (sa.t.b(intent)) {
                intent.setData(com.xinzhu.overmind.client.hook.provider.a.a(com.xinzhu.overmind.client.f.getApplication(), intent.getData()));
                return method.invoke(obj, objArr);
            }
            String dataString = intent.getDataString();
            if (dataString != null) {
                if (dataString.equals("package:" + com.xinzhu.overmind.client.f.getVPackageName())) {
                    intent.setData(Uri.parse("package:" + Overmind.getHostPkg()));
                }
            }
            if (ChooseTypeAndAccountActivity.h(intent)) {
                Intent intent2 = new Intent();
                intent2.setComponent(new ComponentName(Overmind.getMainPkg(), ChooseTypeAndAccountActivity.class.getName()));
                intent2.putExtras(intent);
                objArr[f()] = intent2;
                return method.invoke(obj, objArr);
            }
            if (intent.getPackage() != null) {
                String str = intent.getPackage();
                if (str.equals(Overmind.getMainPkg()) || str.equals(Overmind.getPluginPkg())) {
                    return method.invoke(obj, objArr);
                }
            }
            ResolveInfo resolveInfoZ = Overmind.getMindPackageManager().z(intent, 128, h0.o(objArr), com.xinzhu.overmind.client.f.getUserId());
            if (resolveInfoZ == null) {
                if (intent.getPackage() == null || !Overmind.get().isInstalled(intent.getPackage())) {
                    return method.invoke(obj, objArr);
                }
                return 0;
            }
            intent.setExtrasClassLoader(obj.getClass().getClassLoader());
            Intent intent3 = new Intent(intent);
            if (intent3.getComponent() == null) {
                ActivityInfo activityInfo = resolveInfoZ.activityInfo;
                intent3.setClassName(activityInfo.packageName, activityInfo.name);
            }
            Overmind.getMindActivityManager().y(com.xinzhu.overmind.client.f.getUserId(), com.xinzhu.overmind.client.f.getVPackageName(), intent3, h0.o(objArr), h0.q(objArr), h0.s(objArr), h0.m(objArr), h0.d(objArr), h0.i(objArr));
            return 0;
        }

        protected int f() {
            return com.xinzhu.overmind.utils.e.g() ? 3 : 2;
        }
    }

    static class p extends o {
        p() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startActivityAndWait";
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            return super.d(obj, method, objArr);
        }
    }

    static class q extends o {
        q() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startActivityAsCaller";
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            return super.d(obj, method, objArr);
        }
    }

    static class r extends o {
        r() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startActivityAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            return super.d(obj, method, objArr);
        }
    }

    static class s extends com.xinzhu.overmind.client.hook.e {
        s() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startActivityIntentSender";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int i10 = com.xinzhu.overmind.utils.e.x() ? 3 : 2;
            int i11 = i10 + 2;
            int i12 = i10 + 3;
            int i13 = i10 + 4;
            Intent intent = (Intent) objArr[i10];
            IBinder iBinder = (IBinder) objArr[i11];
            String str = (String) objArr[i12];
            int iIntValue = ((Integer) objArr[i13]).intValue();
            int iIntValue2 = ((Integer) objArr[i10 + 5]).intValue();
            int iIntValue3 = ((Integer) objArr[i10 + 6]).intValue();
            Bundle bundle = (Bundle) objArr[i10 + 7];
            if (intent == null) {
                intent = new Intent();
                objArr[i10] = intent;
            }
            new t8.m(intent).d("_VM_|_trampoline_result_to_", iBinder);
            intent.putExtra("_VM_|_trampoline_result_who_", str);
            intent.putExtra("_VM_|_trampoline_request_code_", iIntValue);
            intent.putExtra("_VM_|_trampoline_options_", bundle);
            intent.putExtra("_VM_|_trampoline_calling_package_", com.xinzhu.overmind.client.f.getVPackageName());
            intent.putExtra("_VM_|_trampoline_flagsMask_", iIntValue2);
            intent.putExtra("_VM_|_trampoline_flagsValues_", iIntValue3);
            objArr[i11] = null;
            objArr[i12] = null;
            objArr[i13] = -1;
            return method.invoke(obj, objArr);
        }
    }

    static class t extends o {
        t() {
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startActivityWithConfig";
        }

        @Override // com.xinzhu.overmind.client.hook.proxies.am.d.o, com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            sa.r.f(objArr);
            return super.d(obj, method, objArr);
        }
    }
}
