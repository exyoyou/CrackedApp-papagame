package com.byazt.vx;

import android.os.Build;
import android.text.TextUtils;
import com.byazt.dna.or;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 482})
public class zm {
    public static final CharSequence ve = "sony";
    public static final CharSequence uj = "amigo";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final CharSequence f21421n = "funtouch";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f21419a = com.byazt.eu.n.c("romutils", 2, new RejectedExecutionHandler() { // from class: com.byazt.vx.zm.1
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f21420c = false;
    public static boolean tt = false;

    @com.byazt.zqa.c(c = {0, 1, 962, 21})
    public static class c implements Callable<String> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f21422c;

        public c(String str) {
            this.f21422c = str;
        }

        @Override // java.util.concurrent.Callable
        public String call() throws Exception {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strTt = zm.tt(this.f21422c);
            com.byazt.eu.tt.c("RomUtils", "property:" + strTt + ",getSystemProperty use time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
            if (!TextUtils.isEmpty(strTt)) {
                try {
                    com.byazt.eu.tt.ve("RomUtils", "SP-getPropertyFromSP:".concat(String.valueOf(strTt)));
                    com.byazt.it.ve veVarRl = zm.rl();
                    if (veVarRl != null) {
                        veVarRl.put("rom_property_info", strTt);
                    }
                } catch (Throwable unused) {
                }
            }
            return strTt;
        }
    }

    public static String a() {
        return ve("ro.vivo.os.build.display.id") + "_" + ve("ro.vivo.product.version");
    }

    public static String da() {
        if (!sl()) {
            return "";
        }
        return "eui_" + ve("ro.letv.release.version") + "_" + Build.DISPLAY;
    }

    public static String i() {
        return Build.DISPLAY + "_" + ve("ro.gn.sv.version");
    }

    public static String m() {
        if (z()) {
            try {
                return "smartisan_".concat(String.valueOf(ve("ro.smartisan.version")));
            } catch (Throwable unused) {
            }
        }
        return Build.DISPLAY;
    }

    public static String my() {
        if (!rh()) {
            return "";
        }
        return "coloros_" + ve("ro.build.version.opporom") + "_" + Build.DISPLAY;
    }

    public static boolean n() {
        if (!tt) {
            try {
                Class.forName("miui.os.Build");
                f21420c = true;
                tt = true;
                return true;
            } catch (Exception unused) {
                tt = true;
            }
        }
        return f21420c;
    }

    public static String nu() {
        String str = Build.DISPLAY;
        return (str == null || !str.toLowerCase().contains("flyme")) ? "" : str;
    }

    private static String qy() {
        try {
            com.byazt.it.ve veVarRl = rl();
            String string = veVarRl != null ? veVarRl.getString("rom_property_info", "") : "";
            com.byazt.eu.tt.tt("RomUtils", "get Property From SP...=".concat(String.valueOf(string)));
            return string;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean rh() {
        String str = Build.MANUFACTURER;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains("oppo");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.it.ve rl() {
        try {
            if (com.byazt.bp.c.t() != null) {
                return com.byazt.vif.uj.c(null, "gm_rom_info");
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean sl() {
        return !TextUtils.isEmpty(ve("ro.letv.release.version"));
    }

    public static boolean sp() {
        String strVe = ve("ro.vivo.os.build.display.id");
        return !TextUtils.isEmpty(strVe) && strVe.toLowerCase().contains(f21421n);
    }

    public static String t() {
        if (!n()) {
            return "";
        }
        return "miui_" + ve("ro.miui.ui.version.name") + "_" + Build.VERSION.INCREMENTAL;
    }

    public static boolean tt() {
        return Build.DISPLAY.contains("Flyme") || Build.USER.equals("flyme");
    }

    public static String u() {
        String strYp = yp();
        if (strYp == null || !strYp.toLowerCase().contains("emotionui")) {
            return "";
        }
        return strYp + "_" + Build.DISPLAY;
    }

    public static boolean uj() {
        String str = Build.MANUFACTURER + Build.BRAND;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.contains("360") || lowerCase.contains("qiku");
    }

    public static String ve() {
        return ve("ro.build.uiversion") + "_" + Build.DISPLAY;
    }

    public static boolean x() {
        String str = Build.DISPLAY;
        return !TextUtils.isEmpty(str) && str.toLowerCase().contains(uj);
    }

    public static String yp() {
        return ve("ro.build.version.emui");
    }

    public static boolean z() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER) || "smartisan".equalsIgnoreCase(Build.BRAND);
    }

    public static String c() {
        if (z()) {
            return m();
        }
        if (n()) {
            return t();
        }
        if (tt()) {
            return nu();
        }
        if (rh()) {
            return my();
        }
        String strU = u();
        if (!TextUtils.isEmpty(strU)) {
            return strU;
        }
        if (sp()) {
            return a();
        }
        if (x()) {
            return i();
        }
        if (uj()) {
            return ve();
        }
        String strDa = da();
        return !TextUtils.isEmpty(strDa) ? strDa : Build.DISPLAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String tt(String str) {
        or orVar = (or) com.byazt.ut.uj.getService("system_info");
        return orVar != null ? orVar.get(str) : "";
    }

    private static String ve(String str) {
        String strQy;
        try {
            strQy = qy();
            try {
                if (TextUtils.isEmpty(strQy)) {
                    FutureTask futureTask = new FutureTask(new c(str));
                    f21419a.execute(futureTask);
                    strQy = (String) futureTask.get(1L, TimeUnit.SECONDS);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            strQy = "";
        }
        return strQy == null ? "" : strQy;
    }
}
