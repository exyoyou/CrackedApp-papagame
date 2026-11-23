package sa;

import android.annotation.SuppressLint;
import android.content.pm.ApplicationInfo;
import android.content.pm.SharedLibraryInfo;
import android.os.Parcel;
import android.text.TextUtils;
import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Method;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97027a = "q";

    public static ApplicationInfo a(Parcel parcel) {
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
    private static ApplicationInfo b(Parcel parcel) {
        com.xinzhu.haunted.android.os.q qVar = new com.xinzhu.haunted.android.os.q(parcel);
        ApplicationInfo applicationInfo = new ApplicationInfo();
        parcel.readString();
        if (parcel.readInt() != 0) {
            com.xinzhu.overmind.b.c(f97027a, "unexpected squashed applicationinfo");
            Overmind.getStackTraceElement();
            return null;
        }
        com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(applicationInfo);
        applicationInfo.name = qVar.e();
        applicationInfo.packageName = qVar.e();
        applicationInfo.labelRes = parcel.readInt();
        applicationInfo.nonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        applicationInfo.icon = parcel.readInt();
        applicationInfo.logo = parcel.readInt();
        applicationInfo.metaData = parcel.readBundle();
        applicationInfo.banner = parcel.readInt();
        new com.xinzhu.haunted.android.content.pm.j(applicationInfo).c(parcel.readInt());
        applicationInfo.taskAffinity = qVar.e();
        applicationInfo.permission = qVar.e();
        applicationInfo.processName = qVar.e();
        applicationInfo.className = qVar.e();
        applicationInfo.theme = parcel.readInt();
        applicationInfo.flags = parcel.readInt();
        bVar.c1(parcel.readInt());
        bVar.d1(parcel.readInt());
        applicationInfo.requiresSmallestWidthDp = parcel.readInt();
        applicationInfo.compatibleWidthLimitDp = parcel.readInt();
        applicationInfo.largestWidthLimitDp = parcel.readInt();
        if (parcel.readInt() != 0) {
            applicationInfo.storageUuid = new UUID(parcel.readLong(), parcel.readLong());
            bVar.t1(g9.c.f(applicationInfo.storageUuid));
        }
        bVar.j1(qVar.e());
        bVar.i1(qVar.e());
        applicationInfo.sourceDir = qVar.e();
        applicationInfo.publicSourceDir = qVar.e();
        applicationInfo.splitNames = qVar.d();
        applicationInfo.splitSourceDirs = qVar.d();
        applicationInfo.splitPublicSourceDirs = qVar.d();
        bVar.q1(parcel.readSparseArray(null, int[].class));
        applicationInfo.nativeLibraryDir = qVar.e();
        bVar.n1(qVar.e());
        bVar.X0(qVar.e());
        bVar.Y0(parcel.readInt() != 0);
        bVar.b1(qVar.e());
        bVar.m1(qVar.e());
        bVar.f1(qVar.d());
        bVar.a1(qVar.d());
        bVar.k1(qVar.e());
        bVar.l1(qVar.e());
        applicationInfo.sharedLibraryFiles = qVar.d();
        bVar.o1(parcel.createTypedArrayList(SharedLibraryInfo.CREATOR));
        applicationInfo.dataDir = qVar.e();
        applicationInfo.deviceProtectedDataDir = qVar.e();
        bVar.J0(qVar.e());
        applicationInfo.uid = parcel.readInt();
        applicationInfo.minSdkVersion = parcel.readInt();
        applicationInfo.targetSdkVersion = parcel.readInt();
        bVar.F0(parcel.readLong());
        applicationInfo.enabled = parcel.readInt() != 0;
        bVar.O0(parcel.readInt());
        bVar.T0(parcel.readInt());
        applicationInfo.manageSpaceActivityName = qVar.e();
        applicationInfo.backupAgentName = qVar.e();
        applicationInfo.descriptionRes = parcel.readInt();
        applicationInfo.uiOptions = parcel.readInt();
        bVar.P0(parcel.readInt());
        bVar.L0(parcel.readInt());
        bVar.K0(parcel.readInt() != 0);
        bVar.Z0(parcel.readInt());
        applicationInfo.category = parcel.readInt();
        bVar.r1(parcel.readInt());
        bVar.H0(qVar.e());
        bVar.p1(qVar.d());
        applicationInfo.compileSdkVersion = parcel.readInt();
        applicationInfo.compileSdkVersionCodename = qVar.e();
        applicationInfo.appComponentFactory = qVar.e();
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
        com.xinzhu.overmind.b.c(f97027a, "wtf application" + applicationInfo.processName);
        return applicationInfo;
    }
}
