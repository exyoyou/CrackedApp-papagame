package sa;

import android.annotation.SuppressLint;
import android.content.pm.ApplicationInfo;
import android.content.pm.PathPermission;
import android.content.pm.ProviderInfo;
import android.content.pm.SharedLibraryInfo;
import android.os.Parcel;
import android.os.PatternMatcher;
import android.text.TextUtils;
import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Method;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
public class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97011a = "b0";

    public static ProviderInfo a(Parcel parcel) {
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
    private static ProviderInfo b(Parcel parcel) {
        com.xinzhu.haunted.android.os.q qVar = new com.xinzhu.haunted.android.os.q(parcel);
        ProviderInfo providerInfo = new ProviderInfo();
        com.xinzhu.haunted.android.content.pm.j jVar = new com.xinzhu.haunted.android.content.pm.j(providerInfo);
        String string = parcel.readString();
        String str = f97011a;
        com.xinzhu.overmind.b.c(str, "class name " + string);
        providerInfo.name = qVar.e();
        providerInfo.packageName = qVar.e();
        providerInfo.labelRes = parcel.readInt();
        providerInfo.nonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        providerInfo.icon = parcel.readInt();
        providerInfo.logo = parcel.readInt();
        providerInfo.metaData = parcel.readBundle();
        providerInfo.banner = parcel.readInt();
        jVar.c(parcel.readInt());
        if (parcel.readInt() != 0) {
            com.xinzhu.overmind.b.c(str, "unexpected squashed applicationinfo");
            Overmind.getStackTraceElement();
            return null;
        }
        providerInfo.applicationInfo = new ApplicationInfo();
        com.xinzhu.haunted.android.content.pm.b bVar = new com.xinzhu.haunted.android.content.pm.b(providerInfo.applicationInfo);
        providerInfo.applicationInfo.name = qVar.e();
        providerInfo.applicationInfo.packageName = qVar.e();
        providerInfo.applicationInfo.labelRes = parcel.readInt();
        providerInfo.applicationInfo.nonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        providerInfo.applicationInfo.icon = parcel.readInt();
        providerInfo.applicationInfo.logo = parcel.readInt();
        providerInfo.applicationInfo.metaData = parcel.readBundle();
        providerInfo.applicationInfo.banner = parcel.readInt();
        new com.xinzhu.haunted.android.content.pm.j(providerInfo).c(parcel.readInt());
        providerInfo.applicationInfo.taskAffinity = qVar.e();
        providerInfo.applicationInfo.permission = qVar.e();
        providerInfo.applicationInfo.processName = qVar.e();
        providerInfo.applicationInfo.className = qVar.e();
        providerInfo.applicationInfo.theme = parcel.readInt();
        providerInfo.applicationInfo.flags = parcel.readInt();
        bVar.c1(parcel.readInt());
        bVar.d1(parcel.readInt());
        providerInfo.applicationInfo.requiresSmallestWidthDp = parcel.readInt();
        providerInfo.applicationInfo.compatibleWidthLimitDp = parcel.readInt();
        providerInfo.applicationInfo.largestWidthLimitDp = parcel.readInt();
        if (parcel.readInt() != 0) {
            providerInfo.applicationInfo.storageUuid = new UUID(parcel.readLong(), parcel.readLong());
            bVar.t1(g9.c.f(providerInfo.applicationInfo.storageUuid));
        }
        bVar.j1(qVar.e());
        bVar.i1(qVar.e());
        providerInfo.applicationInfo.sourceDir = qVar.e();
        providerInfo.applicationInfo.publicSourceDir = qVar.e();
        providerInfo.applicationInfo.splitNames = qVar.d();
        providerInfo.applicationInfo.splitSourceDirs = qVar.d();
        providerInfo.applicationInfo.splitPublicSourceDirs = qVar.d();
        bVar.q1(parcel.readSparseArray(null, int[].class));
        providerInfo.applicationInfo.nativeLibraryDir = qVar.e();
        bVar.n1(qVar.e());
        bVar.X0(qVar.e());
        bVar.Y0(parcel.readInt() != 0);
        bVar.b1(qVar.e());
        bVar.m1(qVar.e());
        bVar.f1(qVar.d());
        bVar.a1(qVar.d());
        bVar.k1(qVar.e());
        bVar.l1(qVar.e());
        providerInfo.applicationInfo.sharedLibraryFiles = qVar.d();
        bVar.o1(parcel.createTypedArrayList(SharedLibraryInfo.CREATOR));
        providerInfo.applicationInfo.dataDir = qVar.e();
        providerInfo.applicationInfo.deviceProtectedDataDir = qVar.e();
        bVar.J0(qVar.e());
        providerInfo.applicationInfo.uid = parcel.readInt();
        providerInfo.applicationInfo.minSdkVersion = parcel.readInt();
        providerInfo.applicationInfo.targetSdkVersion = parcel.readInt();
        bVar.F0(parcel.readLong());
        providerInfo.applicationInfo.enabled = parcel.readInt() != 0;
        bVar.O0(parcel.readInt());
        bVar.T0(parcel.readInt());
        providerInfo.applicationInfo.manageSpaceActivityName = qVar.e();
        providerInfo.applicationInfo.backupAgentName = qVar.e();
        providerInfo.applicationInfo.descriptionRes = parcel.readInt();
        providerInfo.applicationInfo.uiOptions = parcel.readInt();
        bVar.P0(parcel.readInt());
        bVar.L0(parcel.readInt());
        bVar.K0(parcel.readInt() != 0);
        bVar.Z0(parcel.readInt());
        providerInfo.applicationInfo.category = parcel.readInt();
        bVar.r1(parcel.readInt());
        bVar.H0(qVar.e());
        bVar.p1(qVar.d());
        providerInfo.applicationInfo.compileSdkVersion = parcel.readInt();
        providerInfo.applicationInfo.compileSdkVersionCodename = qVar.e();
        providerInfo.applicationInfo.appComponentFactory = qVar.e();
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
        providerInfo.processName = qVar.e();
        providerInfo.splitName = qVar.e();
        providerInfo.attributionTags = qVar.d();
        providerInfo.descriptionRes = parcel.readInt();
        providerInfo.enabled = parcel.readInt() != 0;
        providerInfo.exported = parcel.readInt() != 0;
        providerInfo.directBootAware = parcel.readInt() != 0;
        providerInfo.authority = qVar.e();
        providerInfo.readPermission = qVar.e();
        providerInfo.writePermission = qVar.e();
        providerInfo.grantUriPermissions = parcel.readInt() != 0;
        providerInfo.forceUriPermissions = parcel.readInt() != 0;
        providerInfo.uriPermissionPatterns = (PatternMatcher[]) parcel.createTypedArray(PatternMatcher.CREATOR);
        providerInfo.pathPermissions = (PathPermission[]) parcel.createTypedArray(PathPermission.CREATOR);
        providerInfo.multiprocess = parcel.readInt() != 0;
        providerInfo.initOrder = parcel.readInt();
        providerInfo.flags = parcel.readInt();
        providerInfo.isSyncable = parcel.readInt() != 0;
        com.xinzhu.overmind.b.c(f97011a, "wtf provider" + providerInfo.processName);
        return providerInfo;
    }
}
