package com.xinzhu.overmind.client.hook;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.VMCore;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import ma.g;

/* JADX INFO: loaded from: classes8.dex */
@SuppressLint({"SdCardPath"})
public class IOManager {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "IOManager";
    private static ArrayList<String> sdcard_alias;
    private static final IOManager sIOManager = new IOManager();
    private static final Map<String, Map<String, String>> sCachePackageRedirect = new HashMap();
    private final Map<String, String> mRedirectMap = new LinkedHashMap();
    private final List<String> mBlacklist = new ArrayList();

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        sdcard_alias = arrayList;
        arrayList.add("/storage/emulated/" + Overmind.getHostUserId());
        sdcard_alias.add("/sdcard");
        sdcard_alias.add("/mnt/sdcard");
    }

    private void addHidePath(Map<String, String> map, String str) {
        map.put(str, str + "-fake");
    }

    public static IOManager get() {
        return sIOManager;
    }

    private void hideRoot(Map<String, String> map) {
        addHidePath(map, "/system/bin/failsafe/su");
        addHidePath(map, "/data/local/su");
        addHidePath(map, "/data/local/bin/su");
        addHidePath(map, "/data/local/xbin/su");
        addHidePath(map, "/system/sd/bin/su");
        addHidePath(map, "/system/sd/xbin/su");
        addHidePath(map, "/sbin");
        addHidePath(map, "/data/local/sbin");
        addHidePath(map, "/su");
        addHidePath(map, "/system/sbin");
        addHidePath(map, "/system/sd/sbin");
        addHidePath(map, "/apex/com.android.runtime/bin/daemonsu");
        addHidePath(map, "/apex/com.android.runtime/bin/su");
        addHidePath(map, "/data/adb/magisk/magisk");
        addHidePath(map, "/data/data-lib/com.kingroot.RushRoot");
        addHidePath(map, "/data/data-lib/com.kingroot.kinguser");
        addHidePath(map, "/data/data/com.kingoapp.apk");
        addHidePath(map, "/data/data/com.kingroot.kinguser");
        addHidePath(map, "/data/data/com.topjohnwu.magisk");
        addHidePath(map, "/data/app/com.topjohnwu.magisk");
        addHidePath(map, "/data/data/eu.chainfire.supersu");
        addHidePath(map, "/data/data/kingoroot.supersu");
        addHidePath(map, "/data/user/0/com.kingroot.kinguser");
        addHidePath(map, "/data/user_de/0/com.kingroot.kinguser");
        addHidePath(map, "/data/user_de/0/eu.chainfire.supersu");
        addHidePath(map, "/dev/__properties__/u:object_r:supersu_prop:s0");
        addHidePath(map, "/dev/com.koushikdutta.superuser.daemon");
        addHidePath(map, "/dev/kingroot");
        addHidePath(map, "/dev/kinguser_req_cache");
        addHidePath(map, "/init.supersu.rc");
        addHidePath(map, "/magisk");
        addHidePath(map, "/root/magisk");
        addHidePath(map, "/storage/emulated/0/daemonsu");
        addHidePath(map, "/storage/emulated/0/su");
        addHidePath(map, "/system/addon.d/51-addonsu.sh");
        addHidePath(map, "/system/app/KingoUser.apk");
        addHidePath(map, "/system/app/Superuser.apk");
        addHidePath(map, "/system/app/SuperSU.apk");
        addHidePath(map, "/system/app/Superuser");
        addHidePath(map, "/system/app/SuperSU");
        addHidePath(map, "/system/bin/.ext/.su");
        addHidePath(map, "/system/bin/su");
        addHidePath(map, "/system/etc/.has_su_daemon");
        addHidePath(map, "/system/etc/.installed_su_daemon");
        addHidePath(map, "/system/etc/init.d/99SuperSUDaemon");
        addHidePath(map, "/system/etc/init/superuser.rc");
        addHidePath(map, "/system/su");
        addHidePath(map, "/system/usr/we-need-root/su-backup");
        addHidePath(map, "/system/xbin/daemonsu");
        addHidePath(map, "/system/xbin/ku.sud");
        addHidePath(map, "/system/xbin/mu");
        addHidePath(map, "/system/xbin/start_kusud.sh");
        addHidePath(map, "/system/xbin/su");
        addHidePath(map, "/vendor/bin/daemonsu");
        addHidePath(map, "/vendor/bin/su");
        addHidePath(map, "root/magiskinit");
        addHidePath(map, "root/magiskinit");
    }

    public void addBlacklist(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mBlacklist.add(str);
        if (str.endsWith(net.lingala.zip4j.util.e.F0)) {
            str = str.substring(0, str.length() - 1);
        }
        com.xinzhu.overmind.b.c(TAG, "addRedirectBlacklist " + str);
        VMCore.addIOBlacklist(str);
    }

    public void addRedirect(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || this.mRedirectMap.get(str) != null) {
            return;
        }
        this.mRedirectMap.put(str, str2);
        if (str2.contains("/Android")) {
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        if (str.endsWith(net.lingala.zip4j.util.e.F0)) {
            str = str.substring(0, str.length() - 1);
        }
        if (str2.endsWith(net.lingala.zip4j.util.e.F0)) {
            str2 = str2.substring(0, str2.length() - 1);
        }
        com.xinzhu.overmind.b.c(TAG, "addRedirect " + str + " --> " + str2);
        VMCore.addIORule(str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0425 A[LOOP:4: B:71:0x041f->B:73:0x0425, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:77:0x0441 A[LOOP:5: B:75:0x043b->B:77:0x0441, LOOP_END] */
    public void enableRedirect(String str, Map<String, String> map, int i10) {
        Iterator it2;
        Map<String, String> linkedHashMap = new LinkedHashMap<>();
        ArrayList arrayList = new ArrayList();
        try {
            int iE = MindUserHandle.E();
            if (Overmind.isInPlugin()) {
                try {
                    if (g.d().k(str).f89831d.f(2)) {
                        com.xinzhu.overmind.b.a(TAG, "FLAG_STORAGE redirect apk");
                        linkedHashMap.put(com.xinzhu.overmind.a.H(str).getAbsolutePath(), com.xinzhu.overmind.a.k(str).getAbsolutePath());
                    }
                } catch (SecurityException unused) {
                    linkedHashMap.put(com.xinzhu.overmind.a.H(str).getAbsolutePath(), com.xinzhu.overmind.a.k(str).getAbsolutePath());
                }
                linkedHashMap.put(com.xinzhu.overmind.a.J(str).getAbsolutePath(), com.xinzhu.overmind.a.g(str).getAbsolutePath());
                linkedHashMap.put(com.xinzhu.overmind.a.I(str).getAbsolutePath(), com.xinzhu.overmind.a.e(str).getAbsolutePath());
                linkedHashMap.put("/data/data/" + str + "/lib", com.xinzhu.overmind.a.g(str).getAbsolutePath());
                linkedHashMap.put("/data/user/" + iE + net.lingala.zip4j.util.e.F0 + str + "/lib", com.xinzhu.overmind.a.g(str).getAbsolutePath());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("/data/user_de/");
                sb2.append(iE);
                sb2.append(net.lingala.zip4j.util.e.F0);
                sb2.append(str);
                linkedHashMap.put(sb2.toString(), com.xinzhu.overmind.a.y(str, f.getUserId()).getAbsolutePath());
                linkedHashMap.put(com.xinzhu.overmind.a.w(str, iE).getAbsolutePath(), com.xinzhu.overmind.a.g(str).getAbsolutePath());
                linkedHashMap.put("/tmp/", com.xinzhu.overmind.a.o(str, f.getUserId()).getAbsolutePath());
                linkedHashMap.put("/data/data/" + str, com.xinzhu.overmind.a.s(str, f.getUserId()).getAbsolutePath());
                linkedHashMap.put("/data/user/" + iE + net.lingala.zip4j.util.e.F0 + str, com.xinzhu.overmind.a.s(str, f.getUserId()).getAbsolutePath());
            } else {
                try {
                    if (g.d().k(str).f89831d.f(2)) {
                        com.xinzhu.overmind.b.a(TAG, "FLAG_STORAGE redirect apk");
                        linkedHashMap.put(com.xinzhu.overmind.a.H(str).getAbsolutePath(), com.xinzhu.overmind.a.j(str).getAbsolutePath());
                    }
                } catch (SecurityException unused2) {
                    linkedHashMap.put(com.xinzhu.overmind.a.H(str).getAbsolutePath(), com.xinzhu.overmind.a.j(str).getAbsolutePath());
                }
                linkedHashMap.put(com.xinzhu.overmind.a.J(str).getAbsolutePath(), com.xinzhu.overmind.a.f(str).getAbsolutePath());
                linkedHashMap.put(com.xinzhu.overmind.a.I(str).getAbsolutePath(), com.xinzhu.overmind.a.d(str).getAbsolutePath());
                linkedHashMap.put("/data/data/" + str + "/lib", com.xinzhu.overmind.a.f(str).getAbsolutePath());
                linkedHashMap.put("/data/user/" + iE + net.lingala.zip4j.util.e.F0 + str + "/lib", com.xinzhu.overmind.a.f(str).getAbsolutePath());
                StringBuilder sb3 = new StringBuilder();
                sb3.append("/data/user_de/");
                sb3.append(iE);
                sb3.append(net.lingala.zip4j.util.e.F0);
                sb3.append(str);
                linkedHashMap.put(sb3.toString(), com.xinzhu.overmind.a.x(str, f.getUserId()).getAbsolutePath());
                linkedHashMap.put(com.xinzhu.overmind.a.v(str, iE).getAbsolutePath(), com.xinzhu.overmind.a.f(str).getAbsolutePath());
                linkedHashMap.put("/tmp/", com.xinzhu.overmind.a.n(str, f.getUserId()).getAbsolutePath());
                linkedHashMap.put("/data/data/" + str, com.xinzhu.overmind.a.r(str, f.getUserId()).getAbsolutePath());
                linkedHashMap.put("/data/user/" + iE + net.lingala.zip4j.util.e.F0 + str, com.xinzhu.overmind.a.r(str, f.getUserId()).getAbsolutePath());
            }
            com.xinzhu.overmind.b.c(TAG, "check external cache " + Overmind.getContext().getExternalCacheDir());
            if (Overmind.getContext().getExternalCacheDir() != null) {
                String absolutePath = com.xinzhu.overmind.a.F(f.getUserId()).getAbsolutePath();
                if (map == null || map.isEmpty()) {
                    ArrayList<String> arrayList2 = sdcard_alias;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        for (String str2 : sdcard_alias) {
                            linkedHashMap.put(str2 + "/Android/data/" + str, absolutePath + "/Android/data/" + str);
                            linkedHashMap.put(str2 + "/android/data/" + str, absolutePath + "/Android/data/" + str);
                            linkedHashMap.put(str2 + "/Android/media/" + str, absolutePath + "/Android/media/" + str);
                            linkedHashMap.put(str2 + "/android/media/" + str, absolutePath + "/Android/media/" + str);
                        }
                    }
                    int i11 = Overmind.getContext().getApplicationInfo().targetSdkVersion;
                    if (com.xinzhu.overmind.utils.e.g() && i11 >= 30 && i10 < 30) {
                        ArrayList<String> arrayList3 = sdcard_alias;
                        if (arrayList3 != null && !arrayList3.isEmpty()) {
                            Iterator<String> it3 = sdcard_alias.iterator();
                            while (it3.hasNext()) {
                                linkedHashMap.put(it3.next(), absolutePath + net.lingala.zip4j.util.e.F0);
                            }
                        }
                        for (String str3 : com.xinzhu.haunted.android.os.c.l()) {
                            Iterator<String> it4 = sdcard_alias.iterator();
                            while (it4.hasNext()) {
                                arrayList.add(it4.next() + net.lingala.zip4j.util.e.F0 + str3);
                            }
                        }
                    }
                } else {
                    linkedHashMap.putAll(map);
                }
            }
            if (Overmind.get().isHideRoot()) {
                try {
                    hideRoot(linkedHashMap);
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e = e11;
            e.printStackTrace();
            it2 = arrayList.iterator();
            while (it2.hasNext()) {
                get().addBlacklist((String) it2.next());
            }
            for (String str4 : linkedHashMap.keySet()) {
                get().addRedirect(str4, linkedHashMap.get(str4));
            }
        }
        it2 = arrayList.iterator();
        while (it2.hasNext()) {
            get().addBlacklist((String) it2.next());
        }
        while (r0.hasNext()) {
            get().addRedirect(str4, linkedHashMap.get(str4));
        }
    }

    public String redirectPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Iterator<String> it2 = this.mBlacklist.iterator();
        while (it2.hasNext()) {
            if (str.startsWith(it2.next())) {
                return str;
            }
        }
        for (String str2 : this.mRedirectMap.keySet()) {
            if (str.startsWith(str2)) {
                String str3 = this.mRedirectMap.get(str2);
                Objects.requireNonNull(str3);
                return str.replace(str2, str3);
            }
        }
        return str;
    }

    public String restoreRedirectPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Iterator<String> it2 = this.mBlacklist.iterator();
        while (it2.hasNext()) {
            if (str.startsWith(it2.next())) {
                return str;
            }
        }
        for (String str2 : this.mRedirectMap.keySet()) {
            String str3 = this.mRedirectMap.get(str2);
            if (str3 != null && str.startsWith(str3)) {
                return str.replace(str3, str2);
            }
        }
        return str;
    }

    public File redirectPath(File file) {
        if (file == null) {
            return null;
        }
        return new File(redirectPath(file.getAbsolutePath()));
    }

    public String redirectPath(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Iterator<String> it2 = this.mBlacklist.iterator();
        while (it2.hasNext()) {
            if (str.startsWith(it2.next())) {
                return str;
            }
        }
        for (String str2 : map.keySet()) {
            if (str.startsWith(str2)) {
                String str3 = map.get(str2);
                Objects.requireNonNull(str3);
                return str.replace(str2, str3);
            }
        }
        return str;
    }

    public File redirectPath(File file, Map<String, String> map) {
        if (file == null) {
            return null;
        }
        return new File(redirectPath(file.getAbsolutePath(), map));
    }
}
