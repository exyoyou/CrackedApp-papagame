package ma;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.C;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledPackage;
import com.xinzhu.overmind.server.l;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f94224b = "g";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static g f94225c = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.xinzhu.overmind.server.pm.e f94226a;

    private void a(Throwable th) {
        th.printStackTrace();
    }

    public static g d() {
        return f94225c;
    }

    public ProviderInfo A(String str, int i10, int i11) {
        try {
            return p().resolveContentProvider(str, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public ResolveInfo B(Intent intent, String str, int i10, int i11) {
        try {
            return p().resolveIntent(intent, str, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public ResolveInfo C(Intent intent, int i10, String str, int i11) {
        try {
            return p().resolveService(intent, i10, str, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public void D(String str, boolean z10) {
        try {
            p().setMindPackageRunWithPlugin(str, z10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void E(String str) {
        try {
            p().uninstallPackage(str);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void F(String str, int i10) {
        try {
            p().uninstallPackageAsUser(str, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void b() {
        try {
            p().doTransferInstalls();
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public void c() {
        try {
            p().doTransferInstallsOnlyForMainPackage();
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    public ActivityInfo e(ComponentName componentName, int i10, int i11) {
        try {
            return p().getActivityInfo(componentName, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public ApplicationInfo f(String str, int i10, int i11) {
        try {
            return p().getApplicationInfo(str, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public List<ApplicationInfo> g(int i10, int i11) {
        try {
            return p().getInstalledApplications(i10, i11);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return Collections.emptyList();
        }
    }

    public List<PackageInfo> h(int i10, int i11) {
        try {
            return p().getInstalledPackages(i10, i11);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return Collections.emptyList();
        }
    }

    public List<InstalledPackage> i(int i10) {
        try {
            return p().getInstalledPackagesAsUser(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return Collections.emptyList();
        }
    }

    public Intent j(String str, int i10) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.INFO");
        intent.setPackage(str);
        List<ResolveInfo> listV = v(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), i10);
        if (listV == null || listV.size() <= 0) {
            intent.removeCategory("android.intent.category.INFO");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(str);
            listV = v(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), i10);
        }
        if (listV == null || listV.size() <= 0) {
            intent.removeCategory("android.intent.category.LAUNCHER");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.setPackage(str);
            listV = v(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), i10);
        }
        if (listV == null || listV.size() <= 0) {
            intent.removeCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.default");
            intent.setPackage(str);
            listV = v(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), i10);
        }
        if (listV == null || listV.size() <= 0) {
            intent.removeCategory("android.intent.category.default");
            intent.setPackage(str);
            intent.setAction("android.intent.action.MAIN");
            listV = v(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), i10);
        }
        if (listV == null || listV.size() <= 0) {
            return null;
        }
        com.xinzhu.overmind.b.a(f94224b, "getLaunchIntentForPackage get " + listV.get(0).activityInfo.name);
        Intent intent2 = new Intent(intent);
        intent2.setFlags(C.ENCODING_PCM_MU_LAW);
        intent2.setClassName(listV.get(0).activityInfo.packageName, listV.get(0).activityInfo.name);
        return intent2;
    }

    public MindPackageSettings k(String str) {
        try {
            return p().getMindPackageSettings(str);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public PackageInfo l(String str, int i10, int i11) {
        try {
            return p().getPackageInfo(str, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public String[] m(int i10) {
        try {
            return p().getPackagesForUid(i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ProviderInfo n(ComponentName componentName, int i10, int i11) {
        try {
            return p().getProviderInfo(componentName, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public ActivityInfo o(ComponentName componentName, int i10, int i11) {
        try {
            return p().getReceiverInfo(componentName, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public com.xinzhu.overmind.server.pm.e p() {
        com.xinzhu.overmind.server.pm.e eVar = this.f94226a;
        if (eVar != null && eVar.asBinder().isBinderAlive()) {
            return this.f94226a;
        }
        this.f94226a = com.xinzhu.overmind.server.pm.e.b.asInterface(Overmind.get().getService(l.f89692f));
        return p();
    }

    public ServiceInfo q(ComponentName componentName, int i10, int i11) {
        try {
            return p().getServiceInfo(componentName, i10, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public InstallResult r(String str, int i10) {
        try {
            return p().installPackageAsExist(str, i10);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public InstallResult s(String str, InstallOption installOption, int i10) {
        try {
            return p().installPackageAsUser(str, installOption, i10);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public boolean t(String str, int i10) {
        try {
            return p().isInstalled(str, i10);
        } catch (RemoteException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public List<ProviderInfo> u(String str, int i10, int i11, int i12) {
        try {
            return p().queryContentProviders(str, i10, i11, i12);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public List<ResolveInfo> v(Intent intent, int i10, String str, int i11) {
        try {
            return p().queryIntentActivities(intent, i10, str, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public List<ResolveInfo> w(Intent intent, int i10, String str, int i11) {
        try {
            return p().queryIntentBroadcastReceivers(intent, i10, str, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public List<ResolveInfo> x(Intent intent, int i10, String str, int i11) {
        try {
            return p().queryIntentContentProviders(intent, i10, str, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public List<ResolveInfo> y(Intent intent, int i10, String str, int i11) {
        try {
            return p().queryIntentServices(intent, i10, str, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }

    public ResolveInfo z(Intent intent, int i10, String str, int i11) {
        try {
            return p().resolveActivity(intent, i10, str, i11);
        } catch (RemoteException e10) {
            a(e10);
            return null;
        }
    }
}
