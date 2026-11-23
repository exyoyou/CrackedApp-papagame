package sa;

import android.annotation.SuppressLint;
import android.content.pm.ApplicationInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.os.Parcel;
import android.text.TextUtils;
import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Method;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97012a = "f0";

    public static ServiceInfo a(Parcel parcel) {
        try {
            if (com.xinzhu.overmind.utils.e.j()) {
                return b(parcel);
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    private static ServiceInfo b(Parcel parcel) {
        com.xinzhu.haunted.android.os.q qVar = new com.xinzhu.haunted.android.os.q(parcel);
        ServiceInfo serviceInfo = new ServiceInfo();
        com.xinzhu.haunted.android.content.pm.p pVar = new com.xinzhu.haunted.android.content.pm.p(serviceInfo);
        com.xinzhu.haunted.android.content.pm.j jVar = new com.xinzhu.haunted.android.content.pm.j(serviceInfo);
        String string = parcel.readString();
        String str = f97012a;
        com.xinzhu.overmind.b.c(str, "class name " + string);
        serviceInfo.name = qVar.e();
        serviceInfo.packageName = qVar.e();
        serviceInfo.labelRes = parcel.readInt();
        serviceInfo.nonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        serviceInfo.icon = parcel.readInt();
        serviceInfo.logo = parcel.readInt();
        serviceInfo.metaData = parcel.readBundle();
        serviceInfo.banner = parcel.readInt();
        jVar.c(parcel.readInt());
        if (parcel.readInt() != 0) {
            com.xinzhu.overmind.b.c(str, "unexpected squashed applicationinfo");
            Overmind.getStackTraceElement();
            return null;
        }
        serviceInfo.applicationInfo = new ApplicationInfo();
        com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(serviceInfo.applicationInfo);
        serviceInfo.applicationInfo.name = qVar.e();
        serviceInfo.applicationInfo.packageName = qVar.e();
        serviceInfo.applicationInfo.labelRes = parcel.readInt();
        serviceInfo.applicationInfo.nonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        serviceInfo.applicationInfo.icon = parcel.readInt();
        serviceInfo.applicationInfo.logo = parcel.readInt();
        serviceInfo.applicationInfo.metaData = parcel.readBundle();
        serviceInfo.applicationInfo.banner = parcel.readInt();
        new com.xinzhu.haunted.android.content.pm.j(serviceInfo).c(parcel.readInt());
        serviceInfo.applicationInfo.taskAffinity = qVar.e();
        serviceInfo.applicationInfo.permission = qVar.e();
        serviceInfo.applicationInfo.processName = qVar.e();
        serviceInfo.applicationInfo.className = qVar.e();
        serviceInfo.applicationInfo.theme = parcel.readInt();
        serviceInfo.applicationInfo.flags = parcel.readInt();
        bVar.c1(parcel.readInt());
        bVar.d1(parcel.readInt());
        serviceInfo.applicationInfo.requiresSmallestWidthDp = parcel.readInt();
        serviceInfo.applicationInfo.compatibleWidthLimitDp = parcel.readInt();
        serviceInfo.applicationInfo.largestWidthLimitDp = parcel.readInt();
        if (parcel.readInt() != 0) {
            serviceInfo.applicationInfo.storageUuid = new UUID(parcel.readLong(), parcel.readLong());
            bVar.t1(g9.c.f(serviceInfo.applicationInfo.storageUuid));
        }
        bVar.j1(qVar.e());
        bVar.i1(qVar.e());
        serviceInfo.applicationInfo.sourceDir = qVar.e();
        serviceInfo.applicationInfo.publicSourceDir = qVar.e();
        serviceInfo.applicationInfo.splitNames = qVar.d();
        serviceInfo.applicationInfo.splitSourceDirs = qVar.d();
        serviceInfo.applicationInfo.splitPublicSourceDirs = qVar.d();
        bVar.q1(parcel.readSparseArray(null, int[].class));
        serviceInfo.applicationInfo.nativeLibraryDir = qVar.e();
        bVar.n1(qVar.e());
        bVar.X0(qVar.e());
        bVar.Y0(parcel.readInt() != 0);
        bVar.b1(qVar.e());
        bVar.m1(qVar.e());
        bVar.f1(qVar.d());
        bVar.a1(qVar.d());
        bVar.k1(qVar.e());
        bVar.l1(qVar.e());
        serviceInfo.applicationInfo.sharedLibraryFiles = qVar.d();
        bVar.o1(parcel.createTypedArrayList(SharedLibraryInfo.CREATOR));
        serviceInfo.applicationInfo.dataDir = qVar.e();
        serviceInfo.applicationInfo.deviceProtectedDataDir = qVar.e();
        bVar.J0(qVar.e());
        serviceInfo.applicationInfo.uid = parcel.readInt();
        serviceInfo.applicationInfo.minSdkVersion = parcel.readInt();
        serviceInfo.applicationInfo.targetSdkVersion = parcel.readInt();
        bVar.F0(parcel.readLong());
        serviceInfo.applicationInfo.enabled = parcel.readInt() != 0;
        bVar.O0(parcel.readInt());
        bVar.T0(parcel.readInt());
        serviceInfo.applicationInfo.manageSpaceActivityName = qVar.e();
        serviceInfo.applicationInfo.backupAgentName = qVar.e();
        serviceInfo.applicationInfo.descriptionRes = parcel.readInt();
        serviceInfo.applicationInfo.uiOptions = parcel.readInt();
        bVar.P0(parcel.readInt());
        bVar.L0(parcel.readInt());
        bVar.K0(parcel.readInt() != 0);
        bVar.Z0(parcel.readInt());
        serviceInfo.applicationInfo.category = parcel.readInt();
        bVar.r1(parcel.readInt());
        bVar.H0(qVar.e());
        bVar.p1(qVar.d());
        serviceInfo.applicationInfo.compileSdkVersion = parcel.readInt();
        serviceInfo.applicationInfo.compileSdkVersionCodename = qVar.e();
        serviceInfo.applicationInfo.appComponentFactory = qVar.e();
        bVar.S0(parcel.readInt());
        bVar.g1(parcel.readInt());
        bVar.U0(parcel.readInt());
        bVar.R0(parcel.readInt() != 0);
        bVar.u1(qVar.e());
        bVar.Q0(parcel.readInt());
        bVar.V0(parcel.readInt());
        bVar.W0(parcel.readInt());
        Object objR0 = com.xinzhu.haunted.android.content.pm.b.r0();
        try {
            Method declaredMethod = objR0.getClass().getDeclaredMethod("unparcel", Parcel.class);
            declaredMethod.setAccessible(true);
            bVar.e1((Boolean) declaredMethod.invoke(objR0, parcel));
        } catch (Throwable th) {
            th.printStackTrace();
        }
        serviceInfo.processName = qVar.e();
        serviceInfo.splitName = qVar.e();
        serviceInfo.attributionTags = qVar.d();
        serviceInfo.descriptionRes = parcel.readInt();
        serviceInfo.enabled = parcel.readInt() != 0;
        serviceInfo.exported = parcel.readInt() != 0;
        serviceInfo.directBootAware = parcel.readInt() != 0;
        serviceInfo.permission = qVar.e();
        serviceInfo.flags = parcel.readInt();
        pVar.c(parcel.readInt());
        com.xinzhu.overmind.b.c(f97012a, "wtf " + serviceInfo.processName);
        return serviceInfo;
    }
}
