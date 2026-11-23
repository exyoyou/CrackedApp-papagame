package na;

import android.content.pm.PackageManager;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.server.user.MindUserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import ma.i;

/* JADX INFO: loaded from: classes8.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94508a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ArrayList<String> f94509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f94510c = "com.google.android.gms";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f94511d = "com.google.android.gsf";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f94512e = "com.android.vending";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f94513f = "com.google.android.gsf.login";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f94514g = "com.google.android.play.games";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ArrayList<String> f94515h;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f94509b = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        f94515h = arrayList2;
        arrayList.add(f94510c);
        arrayList.add(f94511d);
        arrayList.add(f94512e);
        arrayList.add(f94513f);
        arrayList.add(f94514g);
        arrayList2.add(f94510c);
        arrayList2.add(f94511d);
        arrayList2.add(f94512e);
        arrayList2.add(f94513f);
        arrayList2.add(f94514g);
        arrayList2.add("com.google.android.backuptransport");
        arrayList2.add("com.google.android.backup");
        arrayList2.add("com.google.android.configupdater");
        arrayList2.add("com.google.android.syncadapters.contacts");
        arrayList2.add("com.google.android.feedback");
        arrayList2.add("com.google.android.onetimeinitializer");
        arrayList2.add("com.google.android.partnersetup");
        arrayList2.add("com.google.android.setupwizard");
        arrayList2.add("com.google.android.syncadapters.calendar");
    }

    public static boolean a() {
        return Overmind.get().isInstalled(f94510c) && Overmind.get().isInstalled(f94511d) && Overmind.get().isInstalled(f94512e);
    }

    public static boolean b() {
        return Overmind.isPkgInstalledOutside(f94510c) && Overmind.isPkgInstalledOutside(f94511d) && Overmind.isPkgInstalledOutside(f94512e);
    }

    public static void c() {
        if (a()) {
            return;
        }
        d(0);
        Iterator<MindUserInfo> it2 = i.d().f().iterator();
        while (it2.hasNext()) {
            d(it2.next().f89950b);
        }
    }

    public static void d(int i10) {
        for (String str : f94509b) {
            try {
                if (Overmind.get().isInstalled(str)) {
                    Overmind.get().installPackageAsUser_Exist(str, i10);
                } else {
                    Overmind.get().installPackageAsUser_Storage(new File(Overmind.getPackageManager().getPackageInfo(str, 0).applicationInfo.publicSourceDir), i10);
                }
            } catch (PackageManager.NameNotFoundException e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void e() {
        File[] fileArrListFiles;
        File externalFilesDir = Overmind.getContext().getExternalFilesDir("GmsApkDir");
        if (!externalFilesDir.exists() || (fileArrListFiles = externalFilesDir.listFiles()) == null || fileArrListFiles.length == 0) {
            return;
        }
        for (MindUserInfo mindUserInfo : i.d().f()) {
            for (File file : fileArrListFiles) {
                Overmind.get().installPackageAsUser_Storage(file, mindUserInfo.f89950b);
            }
        }
    }

    public static boolean f(String str) {
        return f94515h.contains(str);
    }

    public static void g(boolean z10) {
        Iterator<String> it2 = f94509b.iterator();
        while (it2.hasNext()) {
            Overmind.getMindPackageManager().D(it2.next(), z10);
        }
    }
}
