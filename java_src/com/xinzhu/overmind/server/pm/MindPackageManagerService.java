package com.xinzhu.overmind.server.pm;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Binder;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.AtomicFile;
import androidx.core.util.ObjectsCompat;
import androidx.documentfile.provider.DocumentFile;
import com.byazt.quv.AbsServerManager;
import com.join.mgps.Util.o0;
import com.join.mgps.receiver.BootReceiver_;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.entity.pm.InstallResult;
import com.xinzhu.overmind.entity.pm.InstalledPackage;
import com.xinzhu.overmind.os.BinderHelper;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.server.user.MindUserInfo;
import com.xinzhu.overmind.utils.wrappers.ObjectsWrapper;
import com.xinzhu.overmind.utils.y;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class MindPackageManagerService extends e.b implements com.xinzhu.overmind.server.g {
    public static final String TAG = "MindPackageManagerService";
    public static MindPackageManagerService sService = new MindPackageManagerService();
    private static com.xinzhu.overmind.server.user.c sUserManager = com.xinzhu.overmind.server.user.c.get();
    final a mComponentEnabledSettings;
    private b mComponentResolver;
    final Object mInstallLock;
    private BroadcastReceiver mPackageChangedHandler;
    private List<r> mPackageMonitors;
    final Map<String, MindPackageSettings> mPackages;
    private final u mSettings;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap<Integer, HashMap<ComponentName, Integer>> f89828a = new HashMap<>();

        public a() {
            c();
        }

        public void a(int i10) {
            synchronized (this.f89828a) {
                if (this.f89828a.containsKey(Integer.valueOf(i10))) {
                    this.f89828a.remove(Integer.valueOf(i10));
                }
                d();
            }
        }

        public int b(ComponentName componentName, int i10) {
            synchronized (this.f89828a) {
                if (this.f89828a.containsKey(Integer.valueOf(i10))) {
                    HashMap<ComponentName, Integer> map = this.f89828a.get(Integer.valueOf(i10));
                    if (map.containsKey(componentName)) {
                        return map.get(componentName).intValue();
                    }
                }
                return 0;
            }
        }

        public void c() {
            Parcel parcelObtain = Parcel.obtain();
            try {
                byte[] bArrV = com.xinzhu.overmind.utils.l.v(com.xinzhu.overmind.a.A());
                parcelObtain.unmarshall(bArrV, 0, bArrV.length);
                parcelObtain.setDataPosition(0);
                HashMap hashMap = parcelObtain.readHashMap(HashMap.class.getClassLoader());
                synchronized (this.f89828a) {
                    this.f89828a.clear();
                    this.f89828a.putAll(hashMap);
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
            parcelObtain.recycle();
        }

        public void d() {
            Parcel parcelObtain = Parcel.obtain();
            AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.A());
            FileOutputStream fileOutputStreamStartWrite = null;
            try {
                try {
                    parcelObtain.writeMap(this.f89828a);
                    fileOutputStreamStartWrite = atomicFile.startWrite();
                    com.xinzhu.overmind.utils.l.z(parcelObtain, fileOutputStreamStartWrite);
                    atomicFile.finishWrite(fileOutputStreamStartWrite);
                } catch (Exception e10) {
                    e10.printStackTrace();
                    atomicFile.failWrite(fileOutputStreamStartWrite);
                }
            } finally {
                parcelObtain.recycle();
            }
        }

        public void e(ComponentName componentName, int i10, int i11, int i12) {
            synchronized (this.f89828a) {
                HashMap<ComponentName, Integer> map = this.f89828a.containsKey(Integer.valueOf(i12)) ? this.f89828a.get(Integer.valueOf(i12)) : new HashMap<>();
                map.put(componentName, Integer.valueOf(i10));
                this.f89828a.put(Integer.valueOf(i12), map);
                d();
            }
        }
    }

    public MindPackageManagerService() {
        u uVar = new u();
        this.mSettings = uVar;
        this.mPackages = uVar.f89925a;
        this.mInstallLock = new Object();
        this.mPackageMonitors = new ArrayList();
        this.mComponentEnabledSettings = new a();
        this.mPackageChangedHandler = new BroadcastReceiver() { // from class: com.xinzhu.overmind.server.pm.MindPackageManagerService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (TextUtils.isEmpty(action)) {
                    return;
                }
                if (BootReceiver_.f72254a.equals(action) || BootReceiver_.f72255b.equals(action)) {
                    MindPackageManagerService.this.mSettings.j();
                }
            }
        };
        this.mComponentResolver = new b();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(BootReceiver_.f72254a);
        intentFilter.addAction(BootReceiver_.f72255b);
        intentFilter.addDataScheme(AbsServerManager.PACKAGE_QUERY_BINDER);
        Overmind.getContext().registerReceiver(this.mPackageChangedHandler, intentFilter);
    }

    private ResolveInfo chooseBestActivity(Intent intent, String str, int i10, List<ResolveInfo> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        if (size == 1) {
            return list.get(0);
        }
        if (size <= 1) {
            return null;
        }
        ResolveInfo resolveInfo = list.get(0);
        ResolveInfo resolveInfo2 = list.get(1);
        return (resolveInfo.priority == resolveInfo2.priority && resolveInfo.preferredOrder == resolveInfo2.preferredOrder && resolveInfo.isDefault == resolveInfo2.isDefault) ? list.get(0) : list.get(0);
    }

    static int compareSignatures(Signature[] signatureArr, Signature[] signatureArr2) {
        if (signatureArr == null) {
            return signatureArr2 == null ? 1 : -1;
        }
        if (signatureArr2 == null) {
            return -2;
        }
        if (signatureArr.length != signatureArr2.length) {
            return -3;
        }
        if (signatureArr.length == 1) {
            return signatureArr[0].equals(signatureArr2[0]) ? 0 : -3;
        }
        HashSet hashSet = new HashSet();
        for (Signature signature : signatureArr) {
            hashSet.add(signature);
        }
        HashSet hashSet2 = new HashSet();
        for (Signature signature2 : signatureArr2) {
            hashSet2.add(signature2);
        }
        return hashSet.equals(hashSet2) ? 0 : -3;
    }

    static String fixProcessName(String str, String str2) {
        return str2 == null ? str : str2;
    }

    public static MindPackageManagerService get() {
        return sService;
    }

    private ActivityInfo getActivity(ComponentName componentName, int i10, int i11) {
        int iUpdateFlags = updateFlags(i10, i11);
        synchronized (this.mPackages) {
            MindPackage.b activity = this.mComponentResolver.getActivity(componentName);
            if (activity == null) {
                return null;
            }
            MindPackageSettings mindPackageSettings = this.mSettings.f89925a.get(componentName.getPackageName());
            if (mindPackageSettings == null) {
                return null;
            }
            return q.e(activity, iUpdateFlags, mindPackageSettings.C(i11), i11);
        }
    }

    private List<ApplicationInfo> getInstalledApplicationsListInternal(int i10, int i11, int i12) {
        ArrayList arrayList;
        if (!sUserManager.exists(i11)) {
            return Collections.emptyList();
        }
        synchronized (this.mPackages) {
            arrayList = new ArrayList(this.mPackages.size());
            for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
                ApplicationInfo applicationInfoF = q.f(mindPackageSettings.f89829b, i10, mindPackageSettings.C(i11), i11);
                if (applicationInfoF != null) {
                    arrayList.add(applicationInfoF);
                }
            }
        }
        return arrayList;
    }

    private int getPackageUidInternal(String str, int i10, int i11, int i12) {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            if (mindPackageSettings == null) {
                return -1;
            }
            return MindUserHandle.t(i11, mindPackageSettings.f89830c);
        }
    }

    private PackageParser.SigningDetails getSigningDetails(int i10) {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettingsE = this.mSettings.e(MindUserHandle.a(i10));
            if (mindPackageSettingsE != null) {
                return mindPackageSettingsE.f89829b.f89741k;
            }
            return PackageParser.SigningDetails.UNKNOWN;
        }
    }

    private InstallResult installPackageAsExistLocked(String str, int i10) {
        InstallResult installResult = new InstallResult();
        try {
            if (!sUserManager.exists(i10)) {
                sUserManager.createUser(i10);
            }
            installResult.f89489c = str;
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            com.xinzhu.overmind.server.h.d().l(str, i10);
            if (i.get().installPackageAsExist(mindPackageSettings, i10) < 0) {
                return installResult.a("install apk error.");
            }
            synchronized (this.mPackages) {
                mindPackageSettings.H(true, i10);
                mindPackageSettings.F();
            }
            this.mSettings.j();
            onPackageInstalled(mindPackageSettings, i10);
            return installResult;
        } catch (Throwable th) {
            installResult.a("install as exist failed " + th.getMessage());
            th.printStackTrace();
            return installResult;
        }
    }

    private InstallResult installPackageAsTransferLocked(String str, int i10, int i11) {
        boolean z10;
        InstallOption installOptionB = InstallOption.b();
        InstallResult installResult = new InstallResult();
        try {
            if (!sUserManager.exists(i10)) {
                sUserManager.createUser(i10);
            }
            File file = new File(str);
            if (!file.exists()) {
                return installResult.a("installPackageAsTransferLocked apk not found.");
            }
            PackageParser.Package r10 = parserApk(file.getAbsolutePath());
            if (r10 == null) {
                return installResult.a("parser apk error.");
            }
            String str2 = r10.packageName;
            installResult.f89489c = str2;
            File fileF = com.xinzhu.overmind.a.f(str2);
            File[] fileArrListFiles = fileF.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                z10 = false;
            } else {
                z10 = false;
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory() && (file2.getName().equals("arm") || file2.getName().equals(com.join.mgps.mod.utils.d.f71902d))) {
                        z10 = true;
                    }
                }
            }
            if (!z10) {
                com.xinzhu.overmind.b.c(TAG, "Ancient legacy package detected.");
                File file3 = new File(fileF, "arm");
                com.xinzhu.overmind.utils.l.p(file3);
                if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                    for (File file4 : fileArrListFiles) {
                        String name = file4.getName();
                        if (!file4.isDirectory() && name.endsWith(".so")) {
                            com.xinzhu.overmind.b.c(TAG, "Ancient legacy package detected, transfer lib " + name);
                            com.xinzhu.overmind.utils.l.r(file4, new File(file3, name));
                        }
                    }
                }
            }
            MindPackageSettings mindPackageSettingsD = this.mPackages.get(installResult.f89489c);
            if (mindPackageSettingsD == null || mindPackageSettingsD.f(i10)) {
                mindPackageSettingsD = this.mSettings.d(r10.packageName, r10, i11);
                mindPackageSettingsD.f89831d = installOptionB;
                mindPackageSettingsD.f89832e = com.xinzhu.overmind.utils.a.a(file);
                com.xinzhu.overmind.server.h.d().l(r10.packageName, i10);
                this.mComponentResolver.c(mindPackageSettingsD.f89829b);
                com.xinzhu.overmind.b.a(TAG, "installPackageAsTransfer execute fully.");
            } else {
                com.xinzhu.overmind.b.a(TAG, "installPackageAsTransfer execute package exist, user not exist.");
            }
            synchronized (this.mPackages) {
                mindPackageSettingsD.H(true, i10);
                mindPackageSettingsD.F();
            }
            this.mSettings.j();
            onPackageInstalled(mindPackageSettingsD, i10);
            String str3 = r10.packageName;
            if (com.xinzhu.overmind.a.Q(str3).exists()) {
                return installResult;
            }
            throw new RuntimeException("Data transfer failed for package " + str3);
        } catch (Throwable th) {
            installResult.a("install as transfer failed " + th.getMessage());
            th.printStackTrace();
            return installResult;
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x012f A[Catch: all -> 0x01c6, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x013b  */
    /* JADX WARN: Code duplicated, block: B:49:0x013f A[Catch: all -> 0x01c6, TRY_ENTER, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x014b A[Catch: all -> 0x01c6, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0173 A[Catch: all -> 0x01c6, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0187 A[Catch: all -> 0x01c6, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0193  */
    /* JADX WARN: Code duplicated, block: B:62:0x0197 A[Catch: all -> 0x01c6, TRY_ENTER, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x01af A[Catch: all -> 0x01c6, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01b3 A[Catch: all -> 0x01c6, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0008, B:5:0x0010, B:6:0x0015, B:8:0x001c, B:10:0x0046, B:12:0x004e, B:14:0x0064, B:16:0x006c, B:42:0x0125, B:44:0x012f, B:49:0x013f, B:51:0x014b, B:52:0x015c, B:54:0x0173, B:55:0x017d, B:57:0x0187, B:62:0x0197, B:63:0x01a0, B:66:0x01a8, B:68:0x01af, B:69:0x01b3, B:76:0x01c2, B:21:0x008b, B:23:0x0099, B:25:0x009f, B:37:0x0114, B:39:0x011b, B:64:0x01a1, B:65:0x01a7), top: B:100:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:94:0x01a1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private InstallResult installPackageAsUserLocked(String str, InstallOption installOption, int i10) {
        PackageParser.Package r10;
        String str2;
        MindPackageSettings mindPackageSettingsC;
        File file;
        String name;
        File file2;
        InstallResult installResult = new InstallResult();
        File parentFile = null;
        if (!sUserManager.exists(i10)) {
            sUserManager.createUser(i10);
        }
        boolean z10 = false;
        if (installOption.f(8)) {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String str3 = TAG;
            com.xinzhu.overmind.b.c(str3, "Install FLAG_URI_FILE get scheme " + uri.getScheme());
            if (!scheme.equals("file") && !scheme.equals("content")) {
                return installResult.a("Unexpected uri scheme: " + scheme);
            }
            if (scheme.equals("file")) {
                file = new File(uri.getPath());
                try {
                    name = file.getName();
                    file2 = new File(com.xinzhu.overmind.a.l(), name);
                    com.xinzhu.overmind.utils.l.b(file, file2);
                } catch (Throwable th) {
                    parentFile = file;
                    th = th;
                }
            } else {
                DocumentFile documentFileFromSingleUri = DocumentFile.fromSingleUri(Overmind.getContext(), Uri.parse(str));
                if (documentFileFromSingleUri == null || documentFileFromSingleUri.getName() == null) {
                    return installResult.a("Unexpected DocumentFile null");
                }
                String name2 = documentFileFromSingleUri.getName();
                File file3 = new File(com.xinzhu.overmind.a.l(), name2);
                InputStream inputStreamOpenInputStream = Overmind.getContext().getContentResolver().openInputStream(Uri.parse(str));
                com.xinzhu.overmind.utils.l.e(inputStreamOpenInputStream, file3);
                inputStreamOpenInputStream.close();
                file = null;
                name = name2;
                file2 = file3;
            }
            if (name.endsWith(".apks") || name.endsWith(".xapk")) {
                com.xinzhu.overmind.b.c(str3, "special split apk archive detected " + name);
                File file4 = new File(com.xinzhu.overmind.a.l(), name.substring(0, name.lastIndexOf(o0.f49827a)));
                file4.mkdir();
                com.xinzhu.overmind.utils.l.y(file2.getAbsolutePath(), file4.getAbsolutePath());
                try {
                    com.xinzhu.overmind.utils.l.j(file2);
                    file2 = file4;
                } catch (Throwable th2) {
                    th = th2;
                    parentFile = file4;
                }
            }
            parentFile = file2;
            r10 = parserApk(parentFile.getAbsolutePath());
            if (r10 == null) {
                InstallResult installResultA = installResult.a("parser apk error.");
                if (installOption.f(8)) {
                    com.xinzhu.overmind.utils.l.j(parentFile);
                }
                return installResultA;
            }
            str2 = r10.packageName;
            installResult.f89489c = str2;
            if (this.mPackages.get(str2) != null) {
                this.mComponentResolver.v(this.mPackages.get(installResult.f89489c).f89829b);
            }
            mindPackageSettingsC = this.mSettings.c(r10.packageName, r10, installOption);
            mindPackageSettingsC.f89832e = com.xinzhu.overmind.utils.a.a(parentFile);
            if (isInstalled(r10.packageName, i10)) {
                com.xinzhu.overmind.server.h.d().l(r10.packageName, i10);
                z10 = true;
            }
            if (i.get().installPackageAsUser(mindPackageSettingsC, i10) < 0) {
                InstallResult installResultA2 = installResult.a("install apk error.");
                if (installOption.f(8)) {
                    com.xinzhu.overmind.utils.l.j(parentFile);
                }
                return installResultA2;
            }
            this.mComponentResolver.c(mindPackageSettingsC.f89829b);
            synchronized (this.mPackages) {
                mindPackageSettingsC.H(true, i10);
                mindPackageSettingsC.F();
            }
            this.mSettings.j();
            if (z10) {
                onPackageChanged(mindPackageSettingsC, i10);
            } else {
                onPackageInstalled(mindPackageSettingsC, i10);
            }
            if (installOption.f(8)) {
                com.xinzhu.overmind.utils.l.j(parentFile);
            }
            return installResult;
        }
        File file5 = new File(str);
        try {
            parentFile = file5.getParentFile();
            r10 = parserApk(parentFile.getAbsolutePath());
            if (r10 == null) {
                InstallResult installResultA3 = installResult.a("parser apk error.");
                if (installOption.f(8)) {
                    com.xinzhu.overmind.utils.l.j(parentFile);
                }
                return installResultA3;
            }
            str2 = r10.packageName;
            installResult.f89489c = str2;
            if (this.mPackages.get(str2) != null) {
                this.mComponentResolver.v(this.mPackages.get(installResult.f89489c).f89829b);
            }
            mindPackageSettingsC = this.mSettings.c(r10.packageName, r10, installOption);
            mindPackageSettingsC.f89832e = com.xinzhu.overmind.utils.a.a(parentFile);
            if (isInstalled(r10.packageName, i10)) {
                com.xinzhu.overmind.server.h.d().l(r10.packageName, i10);
                z10 = true;
            }
            if (i.get().installPackageAsUser(mindPackageSettingsC, i10) < 0) {
                InstallResult installResultA4 = installResult.a("install apk error.");
                if (installOption.f(8)) {
                    com.xinzhu.overmind.utils.l.j(parentFile);
                }
                return installResultA4;
            }
            this.mComponentResolver.c(mindPackageSettingsC.f89829b);
            synchronized (this.mPackages) {
                mindPackageSettingsC.H(true, i10);
                mindPackageSettingsC.F();
                this.mSettings.j();
                if (z10) {
                    onPackageChanged(mindPackageSettingsC, i10);
                } else {
                    onPackageInstalled(mindPackageSettingsC, i10);
                }
                if (installOption.f(8)) {
                    com.xinzhu.overmind.utils.l.j(parentFile);
                }
                return installResult;
            }
        } catch (Throwable th3) {
            th = th3;
            parentFile = file5;
        }
        th = th;
        try {
            installResult.a("install as user locked failed " + th.getMessage());
            th.printStackTrace();
            return installResult;
        } finally {
            if (parentFile != null && installOption.f(8)) {
                com.xinzhu.overmind.utils.l.j(parentFile);
            }
        }
    }

    private PackageParser.Package parserApk(String str) {
        try {
            com.xinzhu.haunted.android.content.pm.n nVarK = com.xinzhu.haunted.android.content.pm.n.k();
            PackageParser.Package r10 = (PackageParser.Package) nVarK.l(new File(str), 0);
            try {
                if (com.xinzhu.overmind.utils.e.z()) {
                    nVarK.j(r10, true);
                } else {
                    nVarK.i(r10, 0);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            return r10;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    private List<ResolveInfo> queryIntentServicesInternal(Intent intent, String str, int i10, int i11) {
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        Intent intent2 = intent;
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ServiceInfo serviceInfo = getServiceInfo(component, i10, i11);
            if (serviceInfo != null && isEnabledAndMatchLPr(serviceInfo, i10, i11)) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.serviceInfo = serviceInfo;
                arrayList.add(resolveInfo);
            }
            return arrayList;
        }
        synchronized (this.mPackages) {
            String str2 = intent2.getPackage();
            if (str2 == null) {
                return this.mComponentResolver.t(intent2, str, i10, i11);
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(str2);
            if (mindPackageSettings == null) {
                return Collections.emptyList();
            }
            return this.mComponentResolver.u(intent2, str, i10, mindPackageSettings.f89829b.f89735e, i11);
        }
    }

    private int updateFlags(int i10, int i11) {
        return (i10 & 786432) != 0 ? i10 : i10 | 786432;
    }

    public void addPackageMonitor(r rVar) {
        this.mPackageMonitors.add(rVar);
    }

    public int checkUidSignatures(int i10, int i11) {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettingsE = this.mSettings.e(MindUserHandle.a(i10));
            if (mindPackageSettingsE == null) {
                return -4;
            }
            MindPackageSettings mindPackageSettingsE2 = this.mSettings.e(MindUserHandle.a(i11));
            if (mindPackageSettingsE2 == null) {
                return -4;
            }
            return compareSignatures(mindPackageSettingsE.f89829b.f89740j, mindPackageSettingsE2.f89829b.f89740j);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x002b */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        return;
     */
    @Override // com.xinzhu.overmind.server.pm.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void deleteUser(int r4) throws android.os.RemoteException {
        /*
            r3 = this;
            java.util.Map<java.lang.String, com.xinzhu.overmind.server.pm.MindPackageSettings> r0 = r3.mPackages     // Catch: java.lang.Throwable -> L2b
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L2b
            java.util.Map<java.lang.String, com.xinzhu.overmind.server.pm.MindPackageSettings> r1 = r3.mPackages     // Catch: java.lang.Throwable -> L28
            java.util.Collection r1 = r1.values()     // Catch: java.lang.Throwable -> L28
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L28
        Ld:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L28
            if (r2 == 0) goto L21
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L28
            com.xinzhu.overmind.server.pm.MindPackageSettings r2 = (com.xinzhu.overmind.server.pm.MindPackageSettings) r2     // Catch: java.lang.Throwable -> L28
            com.xinzhu.overmind.server.pm.MindPackage r2 = r2.f89829b     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = r2.f89743m     // Catch: java.lang.Throwable -> L28
            r3.uninstallPackageAsUser(r2, r4)     // Catch: java.lang.Throwable -> L28
            goto Ld
        L21:
            com.xinzhu.overmind.server.pm.MindPackageManagerService$a r1 = r3.mComponentEnabledSettings     // Catch: java.lang.Throwable -> L28
            r1.a(r4)     // Catch: java.lang.Throwable -> L28
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L28
            goto L2f
        L28:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L28
            throw r4     // Catch: java.lang.Throwable -> L2b
        L2b:
            r4 = move-exception
            r4.printStackTrace()
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xinzhu.overmind.server.pm.MindPackageManagerService.deleteUser(int):void");
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public void doTransferInstalls() throws RemoteException {
        com.xinzhu.overmind.b.a(TAG, "doTransferInstalls");
        com.xinzhu.datatransfer.a.a();
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public void doTransferInstallsOnlyForMainPackage() throws RemoteException {
        com.xinzhu.overmind.b.a(TAG, "doTransferInstallsOnlyForMainPackage");
        com.xinzhu.datatransfer.a.b();
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ActivityInfo getActivityInfo(ComponentName componentName, int i10, int i11) {
        if (!sUserManager.exists(i11)) {
            return null;
        }
        synchronized (this.mPackages) {
            MindPackage.b activity = this.mComponentResolver.getActivity(componentName);
            if (activity == null) {
                return null;
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (mindPackageSettings != null && isEnabledAndMatchLPr(activity.f89768f, i10, i11)) {
                return q.e(activity, i10, mindPackageSettings.C(i11), i11);
            }
            return null;
        }
    }

    public int getAppId(String str) {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            if (mindPackageSettings == null) {
                return -1;
            }
            return mindPackageSettings.f89830c;
        }
    }

    public Resources getAppResources(String str, int i10) {
        try {
            ApplicationInfo applicationInfoB = q.b(getApplicationInfo(str, 0, i10));
            u8.b bVarE = u8.b.e();
            bVarE.a(applicationInfoB.publicSourceDir);
            Resources resources = Overmind.getContext().getResources();
            return new Resources((AssetManager) bVarE.f97466a, resources.getDisplayMetrics(), resources.getConfiguration());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ApplicationInfo getApplicationInfo(String str, int i10, int i11) {
        if (!sUserManager.exists(i11)) {
            return null;
        }
        if (ObjectsWrapper.equals(str, Overmind.getMainPkg()) || ObjectsWrapper.equals(str, Overmind.getPluginPkg())) {
            try {
                return Overmind.getContext().getPackageManager().getApplicationInfo(str, i10);
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                return null;
            }
        }
        int iUpdateFlags = updateFlags(i10, i11);
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            if (mindPackageSettings == null) {
                return null;
            }
            return q.f(mindPackageSettings.f89829b, iUpdateFlags, mindPackageSettings.C(i11), i11);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public int getComponentEnabledSetting(ComponentName componentName, int i10) throws RemoteException {
        int iB;
        synchronized (this.mComponentEnabledSettings) {
            iB = this.mComponentEnabledSettings.b(componentName, i10);
        }
        return iB;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<ApplicationInfo> getInstalledApplications(int i10, int i11) {
        return getInstalledApplicationsListInternal(i10, i11, Binder.getCallingUid());
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<PackageInfo> getInstalledPackages(int i10, int i11) {
        ArrayList arrayList;
        Binder.getCallingUid();
        if (!sUserManager.exists(i11)) {
            return Collections.emptyList();
        }
        synchronized (this.mPackages) {
            ArrayList arrayList2 = new ArrayList(this.mPackages.size());
            Iterator<MindPackageSettings> it2 = this.mPackages.values().iterator();
            while (it2.hasNext()) {
                PackageInfo packageInfo = getPackageInfo(it2.next().f89829b.f89743m, i10, i11);
                if (packageInfo != null) {
                    arrayList2.add(packageInfo);
                }
            }
            arrayList = new ArrayList(arrayList2);
        }
        return arrayList;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<InstalledPackage> getInstalledPackagesAsUser(int i10) {
        ArrayList arrayList;
        if (!sUserManager.exists(i10)) {
            return Collections.emptyList();
        }
        synchronized (this.mPackages) {
            arrayList = new ArrayList();
            for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
                if (mindPackageSettings.f(i10)) {
                    InstalledPackage installedPackage = new InstalledPackage();
                    installedPackage.f89496b = i10;
                    installedPackage.f89497c = mindPackageSettings.f89829b.f89743m;
                    arrayList.add(installedPackage);
                }
            }
        }
        return arrayList;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public MindPackageSettings getMindPackageSettings(String str) {
        try {
            MindPackageSettings mindPackageSettingsInternal = getMindPackageSettingsInternal(str);
            if (mindPackageSettingsInternal != null) {
                Parcel parcelObtain = Parcel.obtain();
                mindPackageSettingsInternal.writeToParcel(parcelObtain, 0);
                parcelObtain.setDataPosition(0);
                MindPackageSettings mindPackageSettingsCreateFromParcel = MindPackageSettings.CREATOR.createFromParcel(parcelObtain);
                mindPackageSettingsCreateFromParcel.f89829b = null;
                parcelObtain.recycle();
                return mindPackageSettingsCreateFromParcel;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public MindPackageSettings getMindPackageSettingsInternal(String str) {
        return this.mPackages.get(str);
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public PackageInfo getPackageInfo(String str, int i10, int i11) {
        if (!sUserManager.exists(i11)) {
            return null;
        }
        if (ObjectsCompat.equals(str, Overmind.getMainPkg()) || ObjectsCompat.equals(str, Overmind.getPluginPkg())) {
            try {
                return Overmind.getContext().getPackageManager().getPackageInfo(str, i10);
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
                return null;
            }
        }
        int iUpdateFlags = updateFlags(i10, i11);
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            if (mindPackageSettings == null) {
                return null;
            }
            return q.i(mindPackageSettings, iUpdateFlags, mindPackageSettings.C(i11), i11);
        }
    }

    public int getPackageUid(String str, int i10, int i11) {
        if (!com.xinzhu.overmind.server.user.c.get().exists(i11)) {
            return -1;
        }
        if (str.equals("android") || str.equals(Overmind.getHostPkg())) {
            return 1000;
        }
        return getPackageUidInternal(str, i10, i11, BinderHelper.b().f89521c);
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public String[] getPackagesForUid(int i10) {
        int iX = MindUserHandle.x(i10);
        ArrayList arrayList = new ArrayList();
        for (MindPackageSettings mindPackageSettings : this.mPackages.values()) {
            if (MindUserHandle.t(iX, mindPackageSettings.f89830c) == i10) {
                arrayList.add(mindPackageSettings.f89829b.f89743m);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ProviderInfo getProviderInfo(ComponentName componentName, int i10, int i11) {
        if (!sUserManager.exists(i11)) {
            return null;
        }
        synchronized (this.mPackages) {
            MindPackage.g gVarG = this.mComponentResolver.g(componentName);
            if (gVarG == null) {
                return null;
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (mindPackageSettings != null && isEnabledAndMatchLPr(gVarG.f89777f, i10, i11)) {
                return q.k(gVarG, i10, mindPackageSettings.C(i11), i11);
            }
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ActivityInfo getReceiverInfo(ComponentName componentName, int i10, int i11) {
        if (!sUserManager.exists(i11)) {
            return null;
        }
        synchronized (this.mPackages) {
            MindPackage.b bVarH = this.mComponentResolver.h(componentName);
            if (bVarH == null) {
                return null;
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (mindPackageSettings != null && isEnabledAndMatchLPr(bVarH.f89768f, i10, i11)) {
                return q.e(bVarH, i10, mindPackageSettings.C(i11), i11);
            }
            return null;
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ServiceInfo getServiceInfo(ComponentName componentName, int i10, int i11) {
        if (!sUserManager.exists(i11)) {
            return null;
        }
        synchronized (this.mPackages) {
            MindPackage.h hVarI = this.mComponentResolver.i(componentName);
            if (hVarI == null) {
                return null;
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (mindPackageSettings != null && isEnabledAndMatchLPr(hVarI.f89778f, i10, i11)) {
                return q.l(hVarI, i10, mindPackageSettings.C(i11), i11);
            }
            return null;
        }
    }

    u getSettings() {
        return this.mSettings;
    }

    public boolean hasSignatureCapability(int i10, int i11, int i12) {
        String[] packagesForUid = Overmind.getContext().getPackageManager().getPackagesForUid(i11);
        if (packagesForUid != null && packagesForUid.length > 0) {
            for (String str : packagesForUid) {
                if (str.equals(Overmind.getMainPkg()) || str.equals(Overmind.getPluginPkg())) {
                    return true;
                }
            }
        }
        if (!com.xinzhu.overmind.utils.e.v()) {
            return i10 == i11 || checkUidSignatures(i10, i11) == 0;
        }
        PackageParser.SigningDetails signingDetails = getSigningDetails(i10);
        PackageParser.SigningDetails signingDetails2 = getSigningDetails(i11);
        return signingDetails.checkCapability(signingDetails2, i12) || signingDetails2.hasAncestorOrSelf(signingDetails);
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public InstallResult installPackageAsExist(String str, int i10) {
        InstallResult installResultInstallPackageAsExistLocked;
        synchronized (this.mInstallLock) {
            com.xinzhu.overmind.b.c(TAG, "installPackageAsExist " + str + " " + i10);
            installResultInstallPackageAsExistLocked = installPackageAsExistLocked(str, i10);
        }
        return installResultInstallPackageAsExistLocked;
    }

    public InstallResult installPackageAsTransfer(String str, int i10, int i11) {
        InstallResult installResultInstallPackageAsTransferLocked;
        com.xinzhu.overmind.b.a(TAG, "installPackageAsTransfer " + str + " " + i10 + " " + i11);
        synchronized (this.mInstallLock) {
            installResultInstallPackageAsTransferLocked = installPackageAsTransferLocked(str, i10, i11);
        }
        return installResultInstallPackageAsTransferLocked;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public InstallResult installPackageAsUser(String str, InstallOption installOption, int i10) {
        synchronized (this.mInstallLock) {
            try {
                if (i10 != -1) {
                    return installPackageAsUserLocked(str, installOption, i10);
                }
                if (com.xinzhu.overmind.server.user.c.get().getUsers() != null && !com.xinzhu.overmind.server.user.c.get().getUsers().isEmpty()) {
                    Iterator<MindUserInfo> it2 = com.xinzhu.overmind.server.user.c.get().getUsers().iterator();
                    InstallResult installResultInstallPackageAsUserLocked = null;
                    while (it2.hasNext()) {
                        installResultInstallPackageAsUserLocked = installPackageAsUserLocked(str, installOption, it2.next().f89950b);
                        if (!installResultInstallPackageAsUserLocked.f89488b) {
                            return installResultInstallPackageAsUserLocked;
                        }
                    }
                    return installResultInstallPackageAsUserLocked;
                }
                return new InstallResult().a("no user exist");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isComponentEnabled(ComponentInfo componentInfo, int i10) {
        int iB;
        synchronized (this.mComponentEnabledSettings) {
            iB = this.mComponentEnabledSettings.b(new ComponentName(componentInfo.packageName, componentInfo.name), i10);
        }
        if (iB != 0) {
            return iB == 1;
        }
        return componentInfo.enabled;
    }

    public boolean isEnabledAndMatchLPr(ComponentInfo componentInfo, int i10, int i11) {
        if ((i10 & 512) != 0) {
            return true;
        }
        return isComponentEnabled(componentInfo, i11);
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public boolean isInstalled(String str, int i10) {
        if (!sUserManager.exists(i10)) {
            return false;
        }
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            if (mindPackageSettings == null) {
                return false;
            }
            return mindPackageSettings.f(i10);
        }
    }

    void onPackageChanged(MindPackageSettings mindPackageSettings, int i10) {
        String str = mindPackageSettings.f89829b.f89743m;
        if (!Overmind.get().ifDisablePluginPackageAutoManage()) {
            if (mindPackageSettings.M()) {
                com.xinzhu.overmind.plugin.b.q(str, i10);
            }
            com.xinzhu.overmind.plugin.b.p();
        }
        Iterator<r> it2 = this.mPackageMonitors.iterator();
        while (it2.hasNext()) {
            it2.next().c(str, i10);
        }
        y.a(TAG, "onPackageChanged: " + str + ", userId: " + i10);
    }

    void onPackageInstalled(MindPackageSettings mindPackageSettings, int i10) {
        String str = mindPackageSettings.f89829b.f89743m;
        try {
            if (mindPackageSettings.f89831d.f(2)) {
                com.xinzhu.overmind.utils.g.a(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!Overmind.get().ifDisablePluginPackageAutoManage()) {
            if (mindPackageSettings.M()) {
                com.xinzhu.overmind.plugin.b.q(str, i10);
            }
            com.xinzhu.overmind.plugin.b.p();
        }
        Iterator<r> it2 = this.mPackageMonitors.iterator();
        while (it2.hasNext()) {
            it2.next().b(str, i10);
        }
        y.a(TAG, "onPackageInstalled: " + str + ", userId: " + i10);
        if (str.equals("com.tencent.mm")) {
            Overmind.get().preStartMM();
        }
    }

    void onPackageUninstalled(String str, int i10) {
        if (!Overmind.get().ifDisablePluginPackageAutoManage()) {
            com.xinzhu.overmind.plugin.b.p();
        }
        Iterator<r> it2 = this.mPackageMonitors.iterator();
        while (it2.hasNext()) {
            it2.next().a(str, i10);
        }
        y.a(TAG, "onPackageUninstalled: " + str + ", userId: " + i10);
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<ProviderInfo> queryContentProviders(String str, int i10, int i11, int i12) throws RemoteException {
        if (!sUserManager.exists(i12)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        arrayList.addAll(this.mComponentResolver.q(str, null, i11, i12));
        return arrayList;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i10, String str, int i11) {
        List<ResolveInfo> arrayList;
        if (!sUserManager.exists(i11)) {
            return Collections.emptyList();
        }
        String str2 = intent.getPackage();
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        Intent intent2 = intent;
        if (component != null) {
            ArrayList arrayList2 = new ArrayList(1);
            ActivityInfo activityInfo = getActivityInfo(component, i10, i11);
            if (activityInfo != null && isEnabledAndMatchLPr(activityInfo, i10, i11)) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = activityInfo;
                arrayList2.add(resolveInfo);
            }
            return arrayList2;
        }
        synchronized (this.mPackages) {
            try {
                if (str2 == null) {
                    List<ResolveInfo> listM = this.mComponentResolver.m(intent2, str, i10, i11);
                    if ((listM == null || listM.size() == 0) && listM == null) {
                        listM = new ArrayList<>();
                    }
                    return listM;
                }
                MindPackageSettings mindPackageSettings = this.mPackages.get(str2);
                if (mindPackageSettings != null) {
                    arrayList = this.mComponentResolver.l(intent2, str, i10, mindPackageSettings.f89829b.f89732b, i11);
                } else {
                    arrayList = null;
                }
                if ((arrayList == null || arrayList.size() == 0) && arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                return arrayList;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<ResolveInfo> queryIntentBroadcastReceivers(Intent intent, int i10, String str, int i11) {
        if (!sUserManager.exists(i11)) {
            return Collections.emptyList();
        }
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        Intent intent2 = intent;
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ActivityInfo receiverInfo = getReceiverInfo(component, i10, i11);
            if (receiverInfo != null && isEnabledAndMatchLPr(receiverInfo, i10, i11)) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = receiverInfo;
                arrayList.add(resolveInfo);
            }
            return arrayList;
        }
        synchronized (this.mPackages) {
            String str2 = intent2.getPackage();
            if (str2 == null) {
                return this.mComponentResolver.r(intent2, str, i10, i11);
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(str2);
            if (mindPackageSettings == null) {
                return Collections.emptyList();
            }
            return this.mComponentResolver.s(intent2, str, i10, mindPackageSettings.f89829b.f89733c, i11);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i10, String str, int i11) {
        if (!sUserManager.exists(i11)) {
            return Collections.emptyList();
        }
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        Intent intent2 = intent;
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ProviderInfo providerInfo = getProviderInfo(component, i10, i11);
            if (providerInfo != null && isEnabledAndMatchLPr(providerInfo, i10, i11)) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.providerInfo = providerInfo;
                arrayList.add(resolveInfo);
            }
            return arrayList;
        }
        synchronized (this.mPackages) {
            String str2 = intent2.getPackage();
            if (str2 == null) {
                return this.mComponentResolver.o(intent2, str, i10, i11);
            }
            MindPackageSettings mindPackageSettings = this.mPackages.get(str2);
            if (mindPackageSettings == null) {
                return Collections.emptyList();
            }
            return this.mComponentResolver.p(intent2, str, i10, mindPackageSettings.f89829b.f89734d, i11);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public List<ResolveInfo> queryIntentServices(Intent intent, int i10, String str, int i11) {
        return queryIntentServicesInternal(intent, str, i10, i11);
    }

    public void removePackageMonitor(r rVar) {
        this.mPackageMonitors.add(rVar);
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ResolveInfo resolveActivity(Intent intent, int i10, String str, int i11) {
        if (sUserManager.exists(i11)) {
            return chooseBestActivity(intent, str, i10, queryIntentActivities(intent, i10, str, i11));
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ProviderInfo resolveContentProvider(String str, int i10, int i11) {
        if (sUserManager.exists(i11)) {
            return this.mComponentResolver.n(str, i10, i11);
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ResolveInfo resolveIntent(Intent intent, String str, int i10, int i11) {
        if (sUserManager.exists(i11)) {
            return chooseBestActivity(intent, str, i10, queryIntentActivities(intent, i10, str, i11));
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public ResolveInfo resolveService(Intent intent, int i10, String str, int i11) {
        List<ResolveInfo> listQueryIntentServicesInternal;
        if (sUserManager.exists(i11) && (listQueryIntentServicesInternal = queryIntentServicesInternal(intent, str, i10, i11)) != null && listQueryIntentServicesInternal.size() >= 1) {
            return listQueryIntentServicesInternal.get(0);
        }
        return null;
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public void setComponentEnabledSetting(ComponentName componentName, int i10, int i11, int i12) throws RemoteException {
        synchronized (this.mComponentEnabledSettings) {
            this.mComponentEnabledSettings.e(componentName, i10, i11, i12);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public void setMindPackageRunWithPlugin(String str, boolean z10) throws RemoteException {
        synchronized (this.mPackages) {
            MindPackageSettings mindPackageSettings = this.mPackages.get(str);
            if (mindPackageSettings != null) {
                mindPackageSettings.I(z10);
                mindPackageSettings.F();
                try {
                    if (mindPackageSettings.f89831d.f(2)) {
                        com.xinzhu.overmind.utils.l.j(com.xinzhu.overmind.a.L(str));
                        com.xinzhu.overmind.utils.g.a(str);
                        com.xinzhu.overmind.plugin.b.q(str, 0);
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() {
        this.mSettings.j();
        Iterator<MindPackageSettings> it2 = this.mPackages.values().iterator();
        while (it2.hasNext()) {
            this.mComponentResolver.c(it2.next().f89829b);
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public void uninstallPackage(String str) {
        synchronized (this.mInstallLock) {
            synchronized (this.mPackages) {
                MindPackageSettings mindPackageSettings = this.mPackages.get(str);
                if (mindPackageSettings == null) {
                    return;
                }
                com.xinzhu.overmind.server.h.d().k(str);
                for (Integer num : mindPackageSettings.y()) {
                    if (i.get().uninstallPackageAsUser(mindPackageSettings, true, num.intValue()) >= 0) {
                        onPackageUninstalled(str, num.intValue());
                    }
                }
                this.mPackages.remove(str);
                this.mComponentResolver.v(mindPackageSettings.f89829b);
                this.mSettings.j();
            }
        }
    }

    @Override // com.xinzhu.overmind.server.pm.e
    public void uninstallPackageAsUser(String str, int i10) throws RemoteException {
        try {
            synchronized (this.mInstallLock) {
                synchronized (this.mPackages) {
                    MindPackageSettings mindPackageSettings = this.mPackages.get(str);
                    if (mindPackageSettings == null) {
                        return;
                    }
                    if (isInstalled(str, i10)) {
                        boolean z10 = true;
                        if (mindPackageSettings.A().size() > 1) {
                            z10 = false;
                        }
                        com.xinzhu.overmind.server.h.d().l(str, i10);
                        i.get().uninstallPackageAsUser(mindPackageSettings, z10, i10);
                        if (z10) {
                            this.mPackages.remove(str);
                            this.mComponentResolver.v(mindPackageSettings.f89829b);
                            this.mSettings.j();
                        } else {
                            mindPackageSettings.D(i10);
                            mindPackageSettings.F();
                        }
                        onPackageUninstalled(str, i10);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
