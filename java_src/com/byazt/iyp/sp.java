package com.byazt.iyp;

import android.R;
import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.baidu.mobads.sdk.internal.bn;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.MainThread;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.sigmob.sdk.archives.tar.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 91})
public final class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f15643a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set<String> f15644c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static final Set<String> f15645da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final WeakHashMap<Activity, c> f15646i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f15647n;
    public static volatile int sl;
    public static String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final Map<String, Boolean> f15648t;
    public static final Map<String, Boolean> tt;
    public static String uj;
    public static List<String> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static WeakReference<Activity> f15649x;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER, 180})
    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f15653a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f15654c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public Runnable f15655da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f15656i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f15657n;
        public Runnable sl;
        public int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public Runnable f15658t;
        public long tt;
        public long uj;
        public long ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f15659x;

        public c(String str) {
            this.f15654c = str;
        }
    }

    static {
        ConcurrentHashMap.KeySetView keySetViewNewKeySet = ConcurrentHashMap.newKeySet();
        f15644c = keySetViewNewKeySet;
        keySetViewNewKeySet.addAll(Arrays.asList("d22096b358acef645e49e08ad7de4bb6", "ff4b9977c134ab22a2d3618b51a36045", "7e2d432c1679374070821b28b7145c19", "b9304799be85d7222baa15927a7e3cd1", "6edca895469b266a9e12387b11115808", "8d432dfb8327eab8ced7b97f00221d4f", "2e934727248ee0cd7787256613245ba6", "07c1627688f39f4b050d7180bab92f34", "149a05b3da0f19e3ce840afe6f6c67f3", "529bd4093e440a920d7c99c8ba781a4d", "cbd09814ff5652055c2af0bb0f9d4314"));
        tt = new ConcurrentHashMap();
        ve = null;
        f15646i = new WeakHashMap<>();
        f15645da = Collections.newSetFromMap(new ConcurrentHashMap());
        sl = -1;
        f15648t = new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static boolean da(Activity activity) {
        String strTt = tt();
        return (TextUtils.isEmpty(strTt) || strTt.equals(my(activity))) ? false : true;
    }

    private static View gt(Activity activity) {
        if (activity == null) {
            return null;
        }
        try {
            if (activity.getWindow() != null) {
                return activity.getWindow().getDecorView();
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    @MainThread
    private static void i(final Activity activity) {
        if (activity == null) {
            return;
        }
        final c cVarVe = ve(activity, my(activity));
        int i10 = cVarVe.sp + 1;
        if (i10 > 2) {
            activity.hashCode();
            if (m(activity)) {
                c(activity, cVarVe.f15654c);
                return;
            }
            return;
        }
        cVarVe.sp = i10;
        long j10 = ((long) i10) * BaseCloudFileManager.ACK_TIMEOUT;
        activity.hashCode();
        final WeakReference weakReference = new WeakReference(activity);
        Runnable runnable = new Runnable() { // from class: com.byazt.iyp.sp.3
            @Override // java.lang.Runnable
            public void run() {
                cVarVe.sl = null;
                Activity activity2 = (Activity) weakReference.get();
                if (activity2 == null || activity2.isFinishing()) {
                    activity.hashCode();
                } else if (sp.rh(activity) && !sp.a(sp.my(activity2))) {
                    activity.hashCode();
                    sp.tt(activity2, 5, true);
                }
            }
        };
        cVarVe.sl = runnable;
        View viewGt = gt(activity);
        if (viewGt != null) {
            viewGt.postDelayed(runnable, j10);
        } else {
            activity.hashCode();
            cVarVe.sl = null;
        }
    }

    private static boolean m(Activity activity) {
        View decorView;
        if (activity == null) {
            return false;
        }
        try {
            Window window = activity.getWindow();
            if (window != null && (decorView = window.getDecorView()) != null && decorView.getWidth() != 0 && decorView.getHeight() != 0) {
                View viewFindViewById = decorView.findViewById(R.id.content);
                return !(viewFindViewById instanceof ViewGroup) || ((ViewGroup) viewFindViewById).getChildCount() > 0;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String my(Activity activity) {
        if (activity == null) {
            return "";
        }
        try {
            Object objC = sl.c(activity);
            return objC == null ? activity.getClass().getName() : objC.getClass().getName();
        } catch (Throwable unused) {
            return activity.getClass().getName();
        }
    }

    @MainThread
    private static void nu(Activity activity) {
        if (activity == null) {
            return;
        }
        f15646i.remove(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean rh(Activity activity) {
        if (ve.uj() != 1) {
            return false;
        }
        if (sl == -1 && activity != null) {
            com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
            if (veVarC == null) {
                return true;
            }
            try {
                if (veVarC.get("no_tab_global", false)) {
                    long j10 = veVarC.get("no_tab_global_version", -1L);
                    long jU = u(activity);
                    if (jU <= 0 || j10 <= 0 || j10 == jU) {
                        sl = 0;
                    } else {
                        veVarC.put("no_tab_global", false);
                        veVarC.put("no_tab_global_class_count", 0);
                        sl = 1;
                    }
                } else {
                    sl = 1;
                }
            } catch (Throwable unused) {
                sl = 1;
            }
        }
        return sl != 0;
    }

    private static void rl(Activity activity) {
        c cVar = f15646i.get(activity);
        if (cVar == null) {
            return;
        }
        View viewGt = gt(activity);
        if (viewGt != null) {
            Runnable runnable = cVar.f15655da;
            if (runnable != null) {
                viewGt.removeCallbacks(runnable);
            }
            Runnable runnable2 = cVar.sl;
            if (runnable2 != null) {
                viewGt.removeCallbacks(runnable2);
            }
            Runnable runnable3 = cVar.f15658t;
            if (runnable3 != null) {
                viewGt.removeCallbacks(runnable3);
            }
        }
        cVar.f15655da = null;
        cVar.sl = null;
        cVar.f15658t = null;
        cVar.f15659x = false;
    }

    @MainThread
    private static boolean sl(Activity activity) {
        String strTt = tt();
        return !TextUtils.isEmpty(strTt) && strTt.equals(my(activity));
    }

    @MainThread
    private static boolean t(Activity activity) {
        return activity != null && f15647n && activity.hashCode() == f15643a && my(activity).equals(sp);
    }

    @MainThread
    public static void tt(Activity activity) {
        if (activity != null && rh(activity)) {
            String strMy = my(activity);
            if (tt(activity, strMy)) {
                return;
            }
            if (sl(activity)) {
                uj.uj();
            }
            if (ve(activity, 2, true)) {
                return;
            }
            if (a(strMy)) {
                nu(activity);
                return;
            }
            c cVarVe = ve(activity, strMy);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (cVarVe.tt == 0) {
                cVarVe.tt = jCurrentTimeMillis;
            }
            cVarVe.ve = jCurrentTimeMillis;
            cVarVe.f15653a = activity.isTaskRoot();
            activity.hashCode();
            n();
            if (!uj(strMy) || (!activity.isTaskRoot() && !n())) {
                x(activity);
                return;
            }
            activity.isTaskRoot();
            n();
            tt(activity, 3, true);
        }
    }

    private static long u(Activity activity) {
        PackageInfo packageInfo;
        if (activity == null) {
            return -1L;
        }
        try {
            PackageManager packageManager = activity.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo(activity.getPackageName(), 0)) == null) {
                return -1L;
            }
            return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private static Iterable<String> uj() {
        Set<String> setLx;
        com.byazt.ogz.sl slVarTt = gt.tt();
        if (slVarTt != null && (setLx = slVarTt.lx()) != null && !setLx.isEmpty()) {
            return setLx;
        }
        if (ve == null) {
            ArrayList arrayList = new ArrayList();
            ve = arrayList;
            arrayList.add(c(new byte[]{e.R, 117, 113, 102, e.R, 109}));
            ve.add(c(new byte[]{108, 122, 110, 105, 106}));
            ve.add(c(new byte[]{124, 106, 113, 104, 116, 114, 106}));
            ve.add(c(new byte[]{110, 115, 121, 106, 119, e.R, 121, 110, 121, 110, 102, 113}));
            ve.add(c(new byte[]{119, 116, 122, 121, 106, 119}));
            ve.add(c(new byte[]{119, 116, 122, 121, 106}));
            ve.add(c(new byte[]{121, 119, 102, 115, e.R, 110, 121, 110, 116, 115}));
            ve.add(c(new byte[]{119, 106, 124, 102, 119, 105}));
        }
        return ve;
    }

    @MainThread
    public static void ve(Activity activity) {
        c cVar;
        if (activity == null) {
            return;
        }
        rl(activity);
        if (rh(activity)) {
            if (sl(activity)) {
                uj.n();
            }
            if (ve(activity, 6, false) || (cVar = f15646i.get(activity)) == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            cVar.uj = jCurrentTimeMillis;
            long j10 = cVar.ve;
            if (j10 <= 0 || jCurrentTimeMillis - j10 >= 1200) {
                activity.hashCode();
            } else {
                activity.hashCode();
                nu(activity);
            }
        }
    }

    @MainThread
    private static void x(final Activity activity) {
        if (activity == null) {
            return;
        }
        final c cVarVe = ve(activity, my(activity));
        if (cVarVe.f15659x) {
            activity.hashCode();
            return;
        }
        cVarVe.f15659x = true;
        activity.hashCode();
        final WeakReference weakReference = new WeakReference(activity);
        Runnable runnable = new Runnable() { // from class: com.byazt.iyp.sp.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    cVarVe.f15658t = null;
                    Activity activity2 = (Activity) weakReference.get();
                    if (activity2 != null && !activity2.isFinishing()) {
                        if (!sp.rh(activity)) {
                            c cVar = cVarVe;
                            cVar.f15659x = false;
                            cVar.f15658t = null;
                            return;
                        }
                        if (sp.da(activity2)) {
                            sp.my(activity2);
                            sp.tt();
                            c cVar2 = cVarVe;
                            cVar2.f15659x = false;
                            cVar2.f15658t = null;
                            return;
                        }
                        if (sp.a(sp.my(activity2))) {
                            sp.my(activity2);
                            c cVar3 = cVarVe;
                            cVar3.f15659x = false;
                            cVar3.f15658t = null;
                            return;
                        }
                        c cVar4 = cVarVe;
                        long j10 = cVar4.ve;
                        long j11 = cVar4.uj;
                        long j12 = cVar4.f15657n;
                        if (j10 > 0 && j11 < j10 && j12 <= 0) {
                            if (System.currentTimeMillis() - j10 >= BaseCloudFileManager.ACK_TIMEOUT) {
                                sp.tt(activity2, 4, true);
                            }
                            c cVar5 = cVarVe;
                            cVar5.f15659x = false;
                            cVar5.f15658t = null;
                            return;
                        }
                        cVar4.f15659x = false;
                        cVar4.f15658t = null;
                        return;
                    }
                    activity.hashCode();
                    c cVar6 = cVarVe;
                    cVar6.f15659x = false;
                    cVar6.f15658t = null;
                } catch (Throwable th) {
                    c cVar7 = cVarVe;
                    cVar7.f15659x = false;
                    cVar7.f15658t = null;
                    throw th;
                }
            }
        };
        cVarVe.f15658t = runnable;
        View viewGt = gt(activity);
        if (viewGt != null) {
            viewGt.postDelayed(runnable, 4500L);
            return;
        }
        activity.hashCode();
        cVarVe.f15659x = false;
        cVarVe.f15658t = null;
    }

    private static boolean yp(Activity activity) {
        if (activity == null) {
            return false;
        }
        try {
            if (activity.getResources() != null && activity.getResources().getConfiguration() != null && activity.getResources().getConfiguration().orientation == 2) {
                return true;
            }
        } catch (Throwable unused) {
        }
        try {
            return (activity.getWindow() == null || activity.getWindow().getAttributes() == null || (activity.getWindow().getAttributes().flags & 1024) == 0) ? false : true;
        } catch (Throwable unused2) {
        }
    }

    private static boolean z(Activity activity) {
        if (activity == null) {
            return false;
        }
        String name = activity.getClass().getName();
        if (name.contains("UnityPlayerActivity") || name.contains("Cocos2dxActivity") || name.contains("NativeActivity") || name.contains("GameActivity")) {
            return true;
        }
        try {
            ApplicationInfo applicationInfo = activity.getApplicationInfo();
            return applicationInfo != null && ((Build.VERSION.SDK_INT >= 26 && applicationInfo.category == 0) || (applicationInfo.flags & 33554432) != 0);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x0026 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0028 A[RETURN] */
    public static boolean a(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        for (String str2 : uj()) {
            if (lowerCase.contains(str2)) {
                if (str2 != null) {
                    return true;
                }
                return false;
            }
        }
        str2 = null;
        if (str2 != null) {
            return true;
        }
        return false;
    }

    private static boolean n(String str) {
        try {
            String strC = com.byazt.as.ve.c(str.toLowerCase());
            return strC != null && f15644c.contains(strC);
        } catch (Exception unused) {
        }
    }

    private static String sp(String str) {
        if (str == null) {
            return "";
        }
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf >= 0 ? str.substring(iLastIndexOf + 1) : str;
    }

    private static String c(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr2[i10] = (byte) (bArr[i10] - 5);
        }
        return new String(bArr2);
    }

    private static boolean n() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i10 = 0;
        for (c cVar : f15646i.values()) {
            if (cVar != null) {
                long j10 = cVar.ve;
                if (j10 > 0 && cVar.f15657n == 0 && cVar.uj < j10 && jCurrentTimeMillis - j10 < 86400000) {
                    i10++;
                }
            }
        }
        return i10 <= 2;
    }

    @MainThread
    public static void c(Activity activity) {
        if (activity != null && rh(activity)) {
            String strMy = my(activity);
            if (tt(activity, strMy) || ve(activity, 1, true) || a(strMy)) {
                return;
            }
            c cVarVe = ve(activity, strMy);
            cVarVe.tt = System.currentTimeMillis();
            cVarVe.f15653a = activity.isTaskRoot();
            activity.hashCode();
        }
    }

    @MainThread
    private static boolean ve(Activity activity, int i10, boolean z10) {
        String strTt = tt();
        if (TextUtils.isEmpty(strTt)) {
            return false;
        }
        if (!strTt.equals(my(activity))) {
            return true;
        }
        if (!t(activity)) {
            if (z10) {
                activity.hashCode();
                tt(activity, i10, false);
            } else {
                activity.hashCode();
            }
            return true;
        }
        if (!n.c()) {
            activity.hashCode();
            uj.c();
            f15647n = false;
            f15643a = -1;
            sp = "";
            tt(activity, i10, false);
            return true;
        }
        activity.hashCode();
        return true;
    }

    @MainThread
    public static void uj(Activity activity) {
        if (activity == null) {
            return;
        }
        rl(activity);
        if (rh(activity)) {
            if (t(activity)) {
                my(activity);
                activity.hashCode();
                n.tt();
                uj.sp();
                f15647n = false;
                f15643a = -1;
                sp = "";
                f15649x = null;
                return;
            }
            if (ve(activity, 7, false)) {
                return;
            }
            c cVar = f15646i.get(activity);
            if (cVar == null) {
                my(activity);
                activity.hashCode();
                nu(activity);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            cVar.f15657n = jCurrentTimeMillis;
            long j10 = cVar.tt;
            if (j10 > 0 && jCurrentTimeMillis - j10 < 1200) {
                activity.hashCode();
                nu(activity);
            } else {
                activity.hashCode();
                nu(activity);
            }
        }
    }

    @MainThread
    public static Activity c() {
        WeakReference<Activity> weakReference = f15649x;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private static void c(Activity activity, String str) {
        if (activity == null || TextUtils.isEmpty(str)) {
            return;
        }
        Map<String, Boolean> map = f15648t;
        Boolean bool = Boolean.TRUE;
        map.put(str, bool);
        if (f15645da.add(str)) {
            try {
                com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
                if (veVarC == null) {
                    return;
                }
                long jU = u(activity);
                long j10 = veVarC.get("no_tab_fail_version_".concat(String.valueOf(str)), -1L);
                int i10 = veVarC.get("no_tab_fail_count_".concat(String.valueOf(str)), 0);
                if (jU > 0 && j10 > 0 && j10 != jU) {
                    i10 = 0;
                }
                int i11 = i10 + 1;
                if (i11 >= 3) {
                    veVarC.put("no_tab_arch_".concat(String.valueOf(str)), true);
                    veVarC.put("no_tab_app_version_".concat(String.valueOf(str)), jU);
                    map.put(str, bool);
                    int i12 = veVarC.get("no_tab_global_class_count", 0) + 1;
                    veVarC.put("no_tab_global_class_count", i12);
                    if (uj(str) || i12 >= 4) {
                        veVarC.put("no_tab_global", true);
                        veVarC.put("no_tab_global_version", jU);
                        sl = 0;
                        return;
                    }
                    return;
                }
                veVarC.put("no_tab_fail_count_".concat(String.valueOf(str)), i11);
                veVarC.put("no_tab_fail_version_".concat(String.valueOf(str)), jU);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static void tt(Activity activity, final int i10, boolean z10) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        String strMy = my(activity);
        if (!yp(activity) && !z(activity)) {
            if (tt(activity, strMy)) {
                activity.hashCode();
                return;
            }
            if (t(activity)) {
                activity.hashCode();
                return;
            }
            final c cVarVe = ve(activity, strMy);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!z10) {
                long j10 = cVarVe.f15656i;
                if (j10 > 0 && jCurrentTimeMillis - j10 < 2000) {
                    return;
                }
            }
            cVarVe.f15656i = jCurrentTimeMillis;
            activity.hashCode();
            final WeakReference weakReference = new WeakReference(activity);
            final int iHashCode = activity.hashCode();
            Runnable runnable = new Runnable() { // from class: com.byazt.iyp.sp.1
                @Override // java.lang.Runnable
                public void run() {
                    cVarVe.f15655da = null;
                    Activity activity2 = (Activity) weakReference.get();
                    if (activity2 == null || activity2.isFinishing()) {
                        return;
                    }
                    sp.tt(activity2, sp.my(activity2), activity2.hashCode(), i10);
                }
            };
            cVarVe.f15655da = runnable;
            View viewGt = gt(activity);
            if (viewGt != null) {
                viewGt.post(runnable);
                return;
            } else {
                cVarVe.f15655da = null;
                return;
            }
        }
        activity.hashCode();
    }

    public static int ve() {
        if (sl != -1) {
            return sl == 0 ? 0 : -1;
        }
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        if (veVarC == null) {
            return -1;
        }
        try {
            return veVarC.get("no_tab_global", false) ? 0 : -1;
        } catch (Throwable unused) {
        }
    }

    private static void ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
            if (veVarC == null) {
                return;
            }
            veVarC.put("no_tab_arch_".concat(String.valueOf(str)), false);
            veVarC.put("no_tab_fail_count_".concat(String.valueOf(str)), 0);
            veVarC.put("no_tab_fail_version_".concat(String.valueOf(str)), 0L);
            veVarC.put("no_tab_app_version_".concat(String.valueOf(str)), 0L);
            f15648t.put(str, Boolean.FALSE);
            if (sl == 0 || veVarC.get("no_tab_global", false)) {
                veVarC.put("no_tab_global", false);
                veVarC.put("no_tab_global_class_count", 0);
                sl = 1;
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean uj(String str) {
        Set<String> setXl;
        String strSp = sp(str);
        boolean zN = false;
        if (TextUtils.isEmpty(strSp)) {
            return false;
        }
        Map<String, Boolean> map = tt;
        Boolean bool = map.get(strSp);
        if (bool != null) {
            bool.booleanValue();
            return bool.booleanValue();
        }
        com.byazt.ogz.sl slVarTt = gt.tt();
        if (slVarTt != null && (setXl = slVarTt.xl()) != null && setXl.contains(strSp)) {
            zN = true;
        }
        if (!zN) {
            zN = n(strSp);
        }
        map.put(strSp, Boolean.valueOf(zN));
        return zN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @MainThread
    public static void tt(Activity activity, String str, int i10, int i11) {
        List<n.C0348n> list;
        if (activity == null || activity.isFinishing() || t(activity)) {
            return;
        }
        n.tt ttVarC = n.c(activity);
        if (!((ttVarC == null || (list = ttVarC.uj) == null || list.isEmpty()) ? false : true)) {
            sl(activity);
            uj(str);
            if (i11 == 2 || i11 == 1 || i11 == 4 || i11 == 3 || i11 == 5) {
                i(activity);
                return;
            }
            return;
        }
        ve(str);
        if (TextUtils.isEmpty(tt())) {
            tt(str);
        }
        f15647n = true;
        f15643a = i10;
        sp = str;
        f15649x = new WeakReference<>(activity);
        f15646i.clear();
        ttVarC.uj.size();
    }

    @MainThread
    private static c ve(Activity activity, String str) {
        WeakHashMap<Activity, c> weakHashMap = f15646i;
        c cVar = weakHashMap.get(activity);
        if (cVar == null) {
            c cVar2 = new c(str);
            weakHashMap.put(activity, cVar2);
            return cVar2;
        }
        if (TextUtils.isEmpty(str)) {
            return cVar;
        }
        cVar.f15654c = str;
        return cVar;
    }

    @MainThread
    public static String tt() {
        if (!TextUtils.isEmpty(uj)) {
            return uj;
        }
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        if (veVarC == null) {
            return "";
        }
        String str = veVarC.get("mc_c_name", "");
        long j10 = veVarC.get("mc_c_name_cache_time", 0L);
        if (!TextUtils.isEmpty(str) && System.currentTimeMillis() - j10 > bn.f7592d) {
            veVarC.put("mc_c_name", "");
            veVarC.put("mc_c_name_cache_time", 0L);
            return "";
        }
        uj = str;
        return str;
    }

    @MainThread
    private static void tt(String str) {
        if (str == null || TextUtils.isEmpty(str)) {
            return;
        }
        uj = str;
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        if (veVarC != null) {
            veVarC.put("mc_c_name", str);
            veVarC.put("mc_c_name_cache_time", System.currentTimeMillis());
        }
    }

    private static boolean tt(Activity activity, String str) {
        if (activity != null && !TextUtils.isEmpty(str)) {
            Map<String, Boolean> map = f15648t;
            Boolean bool = map.get(str);
            if (bool != null) {
                return bool.booleanValue();
            }
            com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
            if (veVarC == null) {
                return false;
            }
            try {
                if (!veVarC.get("no_tab_arch_".concat(String.valueOf(str)), false)) {
                    map.put(str, Boolean.FALSE);
                    return false;
                }
                long j10 = veVarC.get("no_tab_app_version_".concat(String.valueOf(str)), -1L);
                long jU = u(activity);
                if (jU > 0 && j10 > 0 && j10 != jU) {
                    ve(str);
                    return false;
                }
                map.put(str, Boolean.TRUE);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
