package com.xinzhu.overmind.server.pm;

import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.os.Parcel;
import android.util.ArrayMap;
import android.util.AtomicFile;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.utils.y;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
class u {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f89924d = "Settings";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayMap<String, MindPackageSettings> f89925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<String, Integer> f89926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f89927c;

    public u() {
        ArrayMap<String, MindPackageSettings> arrayMap = new ArrayMap<>();
        this.f89925a = arrayMap;
        this.f89926b = new HashMap();
        this.f89927c = 0;
        synchronized (arrayMap) {
            f();
        }
    }

    private int a(MindPackageSettings mindPackageSettings) {
        int iIntValue;
        MindPackage mindPackage = mindPackageSettings.f89829b;
        String str = mindPackage.f89745o;
        if (str == null) {
            str = mindPackage.f89743m;
        }
        Integer num = this.f89926b.get(str);
        if (num != null) {
            iIntValue = num.intValue();
        } else {
            int i10 = this.f89927c;
            if (i10 >= 19999) {
                return -1;
            }
            int i11 = i10 + 1;
            this.f89927c = i11;
            this.f89926b.put(str, Integer.valueOf(i11));
            iIntValue = this.f89927c;
        }
        return iIntValue + 10000;
    }

    private int b(MindPackageSettings mindPackageSettings, int i10) {
        MindPackage mindPackage = mindPackageSettings.f89829b;
        String str = mindPackage.f89745o;
        if (str == null) {
            str = mindPackage.f89743m;
        }
        Integer num = this.f89926b.get(str);
        if (num != null) {
            return num.intValue() + 10000;
        }
        if (i10 >= 19999) {
            return -1;
        }
        this.f89927c = Math.max(this.f89927c, i10);
        this.f89926b.put(str, Integer.valueOf(i10));
        return i10 + 10000;
    }

    private void f() {
        Parcel parcelObtain = Parcel.obtain();
        try {
            byte[] bArrV = com.xinzhu.overmind.utils.l.v(com.xinzhu.overmind.a.W());
            parcelObtain.unmarshall(bArrV, 0, bArrV.length);
            parcelObtain.setDataPosition(0);
            this.f89927c = parcelObtain.readInt();
            HashMap hashMap = parcelObtain.readHashMap(HashMap.class.getClassLoader());
            synchronized (this.f89926b) {
                this.f89926b.clear();
                this.f89926b.putAll(hashMap);
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            parcelObtain.recycle();
            throw th;
        }
        parcelObtain.recycle();
    }

    private void i() {
        Parcel parcelObtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(com.xinzhu.overmind.a.W());
        FileOutputStream fileOutputStreamStartWrite = null;
        try {
            try {
                parcelObtain.writeInt(this.f89927c);
                parcelObtain.writeMap(this.f89926b);
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

    private void k(File file) {
        String name = file.getName();
        Parcel parcelObtain = Parcel.obtain();
        File fileQ = com.xinzhu.overmind.a.Q(name);
        if (!fileQ.exists()) {
            return;
        }
        try {
            if (!com.xinzhu.overmind.a.R(name).exists() || !com.xinzhu.overmind.a.c0(name).exists()) {
                com.xinzhu.overmind.b.c(f89924d, "package settings run into old normal routine");
                byte[] bArrV = com.xinzhu.overmind.utils.l.v(fileQ);
                parcelObtain.unmarshall(bArrV, 0, bArrV.length);
                parcelObtain.setDataPosition(0);
                MindPackageSettings mindPackageSettings = new MindPackageSettings(parcelObtain);
                if (mindPackageSettings.f89831d.f(1)) {
                    String str = Overmind.getContext().getPackageManager().getPackageInfo(name, 128).applicationInfo.sourceDir;
                    if (!str.equals(mindPackageSettings.f89829b.f89752v)) {
                        com.xinzhu.overmind.server.h.d().k(mindPackageSettings.f89829b.f89743m);
                        mindPackageSettings.f89829b.f89752v = str;
                        i.get().updatePackage(mindPackageSettings);
                    }
                }
                this.f89925a.put(mindPackageSettings.f89829b.f89743m, mindPackageSettings);
                MindPackage mindPackage = mindPackageSettings.f89829b;
                mindPackage.f89749s = q.f(mindPackage, 0, MindPackageUserState.b(), 0);
                mindPackageSettings.F();
                com.xinzhu.overmind.b.c(f89924d, "new mps save success");
                return;
            }
            com.xinzhu.overmind.b.c(f89924d, "package settings run into new routine");
            MindReliablePackageSettings mindReliablePackageSettingsC = MindReliablePackageSettings.c(name);
            try {
                MindVolatilePackageSettings mindVolatilePackageSettingsA = MindVolatilePackageSettings.a(name);
                if (mindVolatilePackageSettingsA == null || mindReliablePackageSettingsC == null) {
                    y.c(f89924d, "fatal error when fetch package settings, check it!!!!!!!!!");
                } else {
                    MindPackageSettings mindPackageSettings2 = new MindPackageSettings(mindReliablePackageSettingsC, mindVolatilePackageSettingsA);
                    if (mindReliablePackageSettingsC.f89849d.f(1)) {
                        String str2 = Overmind.getContext().getPackageManager().getPackageInfo(name, 128).applicationInfo.sourceDir;
                        if (!str2.equals(mindVolatilePackageSettingsA.f89855c.f89752v)) {
                            com.xinzhu.overmind.server.h.d().k(mindVolatilePackageSettingsA.f89855c.f89743m);
                            mindVolatilePackageSettingsA.f89855c.f89752v = str2;
                            i.get().updatePackage(mindPackageSettings2);
                        }
                    }
                    this.f89925a.put(mindPackageSettings2.f89829b.f89743m, mindPackageSettings2);
                    MindPackage mindPackage2 = mindVolatilePackageSettingsA.f89855c;
                    mindPackage2.f89749s = q.f(mindPackage2, 0, MindPackageUserState.b(), 0);
                    mindPackageSettings2.F();
                }
                parcelObtain.recycle();
            } catch (Throwable th) {
                th.printStackTrace();
                com.xinzhu.overmind.b.c(f89924d, "package settings run into new ambulance routine");
                if (mindReliablePackageSettingsC != null) {
                    if (mindReliablePackageSettingsC.f89849d.f89486b == 1) {
                        try {
                            MindPackageManagerService.get().installPackageAsUser(Overmind.getContext().getPackageManager().getPackageInfo(name, 0).applicationInfo.publicSourceDir, InstallOption.d(), -1);
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                    } else {
                        File fileD = com.xinzhu.overmind.a.d(name);
                        for (Map.Entry<Integer, MindPackageUserState> entry : mindReliablePackageSettingsC.f89853h.entrySet()) {
                            int iIntValue = entry.getKey().intValue();
                            entry.getValue();
                            com.xinzhu.overmind.b.c(f89924d, "try to fix corrupted settings by transfer, userId: " + iIntValue + " path: " + fileD);
                            MindPackageManagerService.get().installPackageAsTransfer(fileD.getAbsolutePath(), iIntValue, mindReliablePackageSettingsC.f89848c);
                        }
                    }
                }
                parcelObtain.recycle();
            }
        } catch (Throwable th2) {
            try {
                th2.printStackTrace();
                parcelObtain.setDataPosition(0);
                com.xinzhu.overmind.b.c(f89924d, "package settings run into old ambulance routine");
                MindPackageSettingsAmbulance mindPackageSettingsAmbulance = new MindPackageSettingsAmbulance(parcelObtain);
                MindPackageSettings mindPackageSettings3 = new MindPackageSettings();
                mindPackageSettings3.f89830c = mindPackageSettingsAmbulance.f89838c;
                InstallOption installOption = mindPackageSettingsAmbulance.f89839d;
                mindPackageSettings3.f89831d = installOption;
                mindPackageSettings3.f89835h = mindPackageSettingsAmbulance.f89843h;
                mindPackageSettings3.f89832e = mindPackageSettingsAmbulance.f89840e;
                mindPackageSettings3.f89833f = mindPackageSettingsAmbulance.f89841f;
                mindPackageSettings3.f89834g = mindPackageSettingsAmbulance.f89842g;
                if (installOption.f89486b == 1) {
                    try {
                        MindPackageManagerService.get().installPackageAsUser(Overmind.getContext().getPackageManager().getPackageInfo(name, 0).applicationInfo.publicSourceDir, InstallOption.d(), -1);
                    } catch (PackageManager.NameNotFoundException unused2) {
                    }
                } else {
                    File fileD2 = com.xinzhu.overmind.a.d(name);
                    for (Map.Entry<Integer, MindPackageUserState> entry2 : mindPackageSettings3.f89835h.entrySet()) {
                        int iIntValue2 = entry2.getKey().intValue();
                        entry2.getValue();
                        com.xinzhu.overmind.b.c(f89924d, "try to fix corrupted settings by transfer, userId: " + iIntValue2 + " path: " + fileD2);
                        MindPackageManagerService.get().installPackageAsTransfer(fileD2.getAbsolutePath(), iIntValue2, mindPackageSettings3.f89830c);
                    }
                }
            } finally {
                parcelObtain.recycle();
            }
        }
    }

    MindPackageSettings c(String str, PackageParser.Package r10, InstallOption installOption) {
        MindPackageSettings mindPackageSettings = new MindPackageSettings();
        mindPackageSettings.f89831d = installOption;
        mindPackageSettings.f89829b = new MindPackage(r10);
        synchronized (this.f89925a) {
            MindPackageSettings mindPackageSettings2 = this.f89925a.get(str);
            if (mindPackageSettings2 != null) {
                mindPackageSettings.f89830c = mindPackageSettings2.f89830c;
                mindPackageSettings.f89835h = mindPackageSettings2.f89835h;
                mindPackageSettings.f89833f = mindPackageSettings2.f89833f;
                mindPackageSettings.f89834g = mindPackageSettings2.f89834g;
            } else if (!g(mindPackageSettings)) {
                throw new RuntimeException("registerAppIdLPw err.");
            }
        }
        this.f89925a.put(mindPackageSettings.f89829b.f89743m, mindPackageSettings);
        MindPackage mindPackage = mindPackageSettings.f89829b;
        mindPackage.f89749s = q.f(mindPackage, 0, MindPackageUserState.b(), 0);
        if (na.d.f(str) && Overmind.get().use32BitMainPackage() && mindPackageSettings.L()) {
            mindPackageSettings.I(true);
        }
        return mindPackageSettings;
    }

    MindPackageSettings d(String str, PackageParser.Package r10, int i10) {
        MindPackageSettings mindPackageSettings = new MindPackageSettings();
        mindPackageSettings.f89829b = new MindPackage(r10);
        synchronized (this.f89925a) {
            MindPackageSettings mindPackageSettings2 = this.f89925a.get(str);
            if (mindPackageSettings2 != null) {
                mindPackageSettings.f89830c = mindPackageSettings2.f89830c;
                mindPackageSettings.f89835h = mindPackageSettings2.f89835h;
            } else if (!h(mindPackageSettings, i10)) {
                throw new RuntimeException("registerAppIdLPw err.");
            }
        }
        this.f89925a.put(mindPackageSettings.f89829b.f89743m, mindPackageSettings);
        MindPackage mindPackage = mindPackageSettings.f89829b;
        mindPackage.f89749s = q.f(mindPackage, 0, MindPackageUserState.b(), 0);
        return mindPackageSettings;
    }

    public MindPackageSettings e(int i10) {
        synchronized (this.f89925a) {
            for (MindPackageSettings mindPackageSettings : this.f89925a.values()) {
                if (mindPackageSettings.f89830c == i10) {
                    return mindPackageSettings;
                }
            }
            return null;
        }
    }

    boolean g(MindPackageSettings mindPackageSettings) {
        boolean z10;
        if (mindPackageSettings.f89830c == 0) {
            mindPackageSettings.f89830c = a(mindPackageSettings);
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = mindPackageSettings.f89830c >= 0 ? z10 : false;
        i();
        return z11;
    }

    boolean h(MindPackageSettings mindPackageSettings, int i10) {
        boolean z10;
        com.xinzhu.overmind.b.a(f89924d, "registerAppIdTransfer " + mindPackageSettings.f89829b.f89743m + " " + i10);
        if (mindPackageSettings.f89830c == 0) {
            mindPackageSettings.f89830c = b(mindPackageSettings, i10);
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = mindPackageSettings.f89830c >= 0 ? z10 : false;
        i();
        return z11;
    }

    public void j() {
        synchronized (this.f89925a) {
            File fileH = com.xinzhu.overmind.a.h();
            com.xinzhu.overmind.utils.l.p(fileH);
            File[] fileArrListFiles = fileH.listFiles();
            if (!com.xinzhu.overmind.utils.d.o(fileArrListFiles)) {
                for (File file : fileArrListFiles) {
                    if (file.isDirectory() && !file.getName().equals("system")) {
                        k(file);
                    }
                }
            }
        }
    }
}
