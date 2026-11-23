package sa;

import android.annotation.SuppressLint;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.SharedLibraryInfo;
import android.os.Build;
import android.os.Parcel;
import android.text.TextUtils;
import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97026a = "p";

    public static ActivityInfo a(Parcel parcel) {
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
    private static ActivityInfo b(Parcel parcel) {
        com.xinzhu.haunted.android.os.q qVar = new com.xinzhu.haunted.android.os.q(parcel);
        ActivityInfo activityInfo = new ActivityInfo();
        com.xinzhu.haunted.android.content.pm.a aVar = new com.xinzhu.haunted.android.content.pm.a(activityInfo);
        com.xinzhu.haunted.android.content.pm.j jVar = new com.xinzhu.haunted.android.content.pm.j(activityInfo);
        String str = f97026a;
        com.xinzhu.overmind.b.c(str, "class name " + parcel.readString());
        activityInfo.name = qVar.e();
        activityInfo.packageName = qVar.e();
        activityInfo.labelRes = parcel.readInt();
        activityInfo.nonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        activityInfo.icon = parcel.readInt();
        activityInfo.logo = parcel.readInt();
        activityInfo.metaData = parcel.readBundle();
        activityInfo.banner = parcel.readInt();
        jVar.c(parcel.readInt());
        if (parcel.readInt() != 0) {
            com.xinzhu.overmind.b.c(str, "unexpected squashed applicationinfo");
            Overmind.getStackTraceElement();
            return null;
        }
        activityInfo.applicationInfo = new ApplicationInfo();
        com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(activityInfo.applicationInfo);
        activityInfo.applicationInfo.name = qVar.e();
        activityInfo.applicationInfo.packageName = qVar.e();
        activityInfo.applicationInfo.labelRes = parcel.readInt();
        activityInfo.applicationInfo.nonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        activityInfo.applicationInfo.icon = parcel.readInt();
        activityInfo.applicationInfo.logo = parcel.readInt();
        activityInfo.applicationInfo.metaData = parcel.readBundle();
        activityInfo.applicationInfo.banner = parcel.readInt();
        new com.xinzhu.haunted.android.content.pm.j(activityInfo).c(parcel.readInt());
        activityInfo.applicationInfo.taskAffinity = qVar.e();
        activityInfo.applicationInfo.permission = qVar.e();
        activityInfo.applicationInfo.processName = qVar.e();
        activityInfo.applicationInfo.className = qVar.e();
        activityInfo.applicationInfo.theme = parcel.readInt();
        activityInfo.applicationInfo.flags = parcel.readInt();
        bVar.c1(parcel.readInt());
        bVar.d1(parcel.readInt());
        activityInfo.applicationInfo.requiresSmallestWidthDp = parcel.readInt();
        activityInfo.applicationInfo.compatibleWidthLimitDp = parcel.readInt();
        activityInfo.applicationInfo.largestWidthLimitDp = parcel.readInt();
        if (parcel.readInt() != 0) {
            activityInfo.applicationInfo.storageUuid = new UUID(parcel.readLong(), parcel.readLong());
            bVar.t1(g9.c.f(activityInfo.applicationInfo.storageUuid));
        }
        bVar.j1(qVar.e());
        bVar.i1(qVar.e());
        activityInfo.applicationInfo.sourceDir = qVar.e();
        activityInfo.applicationInfo.publicSourceDir = qVar.e();
        activityInfo.applicationInfo.splitNames = qVar.d();
        activityInfo.applicationInfo.splitSourceDirs = qVar.d();
        activityInfo.applicationInfo.splitPublicSourceDirs = qVar.d();
        bVar.q1(parcel.readSparseArray(null, int[].class));
        activityInfo.applicationInfo.nativeLibraryDir = qVar.e();
        bVar.n1(qVar.e());
        bVar.X0(qVar.e());
        bVar.Y0(parcel.readInt() != 0);
        bVar.b1(qVar.e());
        bVar.m1(qVar.e());
        bVar.f1(qVar.d());
        bVar.a1(qVar.d());
        bVar.k1(qVar.e());
        bVar.l1(qVar.e());
        activityInfo.applicationInfo.sharedLibraryFiles = qVar.d();
        bVar.o1(parcel.createTypedArrayList(SharedLibraryInfo.CREATOR));
        activityInfo.applicationInfo.dataDir = qVar.e();
        activityInfo.applicationInfo.deviceProtectedDataDir = qVar.e();
        bVar.J0(qVar.e());
        activityInfo.applicationInfo.uid = parcel.readInt();
        activityInfo.applicationInfo.minSdkVersion = parcel.readInt();
        activityInfo.applicationInfo.targetSdkVersion = parcel.readInt();
        bVar.F0(parcel.readLong());
        activityInfo.applicationInfo.enabled = parcel.readInt() != 0;
        bVar.O0(parcel.readInt());
        bVar.T0(parcel.readInt());
        activityInfo.applicationInfo.manageSpaceActivityName = qVar.e();
        activityInfo.applicationInfo.backupAgentName = qVar.e();
        activityInfo.applicationInfo.descriptionRes = parcel.readInt();
        activityInfo.applicationInfo.uiOptions = parcel.readInt();
        bVar.P0(parcel.readInt());
        bVar.L0(parcel.readInt());
        bVar.K0(parcel.readInt() != 0);
        bVar.Z0(parcel.readInt());
        activityInfo.applicationInfo.category = parcel.readInt();
        bVar.r1(parcel.readInt());
        bVar.H0(qVar.e());
        bVar.p1(qVar.d());
        activityInfo.applicationInfo.compileSdkVersion = parcel.readInt();
        activityInfo.applicationInfo.compileSdkVersionCodename = qVar.e();
        activityInfo.applicationInfo.appComponentFactory = qVar.e();
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
        activityInfo.processName = qVar.e();
        activityInfo.splitName = qVar.e();
        activityInfo.attributionTags = qVar.d();
        activityInfo.descriptionRes = parcel.readInt();
        activityInfo.enabled = parcel.readInt() != 0;
        activityInfo.exported = parcel.readInt() != 0;
        activityInfo.directBootAware = parcel.readInt() != 0;
        activityInfo.theme = parcel.readInt();
        activityInfo.launchMode = parcel.readInt();
        activityInfo.documentLaunchMode = parcel.readInt();
        activityInfo.permission = qVar.e();
        activityInfo.taskAffinity = qVar.e();
        activityInfo.targetActivity = qVar.e();
        aVar.w(qVar.e());
        activityInfo.flags = parcel.readInt();
        aVar.B(parcel.readInt());
        activityInfo.screenOrientation = parcel.readInt();
        activityInfo.configChanges = parcel.readInt();
        activityInfo.softInputMode = parcel.readInt();
        activityInfo.uiOptions = parcel.readInt();
        activityInfo.parentActivityName = qVar.e();
        activityInfo.persistableMode = parcel.readInt();
        activityInfo.maxRecents = parcel.readInt();
        aVar.x(parcel.readInt());
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24 && parcel.readInt() == 1) {
            com.xinzhu.haunted.android.content.pm.a.C1097a c1097aB = com.xinzhu.haunted.android.content.pm.a.C1097a.b(parcel);
            Objects.requireNonNull(c1097aB);
            activityInfo.windowLayout = k.a(c1097aB.f88681a);
        }
        aVar.D(parcel.readInt());
        aVar.C(qVar.e());
        aVar.E(parcel.readInt());
        if (i10 >= 26) {
            activityInfo.colorMode = parcel.readInt();
        }
        aVar.z(parcel.readFloat());
        aVar.A(parcel.readFloat());
        aVar.F(parcel.readInt() != 0);
        com.xinzhu.overmind.b.c(f97026a, "wtf " + activityInfo.taskAffinity + " " + activityInfo.processName);
        return activityInfo;
    }
}
