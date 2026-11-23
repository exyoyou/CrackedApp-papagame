package com.byazt.zj;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.byazt.bwm.n;
import com.byazt.bwm.sp;
import com.byazt.dna.u;
import com.byazt.dna.zm;
import com.byazt.m.BaseException;
import com.byazt.nr.a;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.nys.PluginConstants;
import com.byazt.omf.gt;
import com.byazt.omf.p;
import com.byazt.omf.x;
import com.byazt.t.DownloadInfo;
import com.byazt.ukr.yp;
import com.byazt.whk.da;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.join.mgps.Util.o0;
import com.join.mgps.dto.Constant;
import com.join.mgps.mod.utils.d;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.tencent.cos.common.COSHttpResponseKey;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22773c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static long f22774i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final ve f22775n;
    public static final HashMap<String, String> sp;
    public static final String tt;
    public static final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static long f22776x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f22777a;
    public FileOutputStream uj;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 2298})
    private static final class uj extends Exception {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f22794c;

        public uj(int i10, String str) {
            super(str);
            this.f22794c = i10;
        }
    }

    /* JADX INFO: renamed from: com.byazt.zj.ve$ve, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 917})
    private static final class C0503ve {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f22795a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f22796c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f22797da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f22798i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f22799n;
        public String sl;
        public boolean sp;
        public int tt;
        public String uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f22800x;

        private C0503ve() {
        }

        public boolean c() {
            return TextUtils.equals(this.f22796c, "com.byted.mixed");
        }

        public String toString() {
            try {
                return new JSONObject().put("package_name", this.f22796c).put("version_code", this.tt).put(Constant.MD5, this.f22799n).put("max_version", this.f22798i).put("min_version", this.f22800x).put("is_revert", this.sp).put(TKDownloadReason.KSAD_TK_MD5, this.f22795a).put("plugin_file", this.sl).toString();
            } catch (JSONException unused) {
                return "";
            }
        }
    }

    static {
        StringBuilder sb2 = new StringBuilder();
        String str = File.separator;
        sb2.append(str);
        sb2.append("next");
        f22773c = sb2.toString();
        tt = str + "tmp";
        ve = str + "conf";
        f22775n = new ve();
        sp = new HashMap<>();
    }

    private ve() {
    }

    private static File a(Context context) {
        return new File(ve(context), ve);
    }

    private static File n(Context context) {
        return new File(ve(context), f22773c);
    }

    private static File uj(Context context) {
        return new File(ve(context), tt);
    }

    private static File ve(Context context) {
        return com.byazt.nys.tt.c(context, "tt_pangle_bykv_file", 0);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD})
    private static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f22792c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f22793n;
        public String tt;
        public boolean uj;
        public boolean ve;

        private tt() {
            this.f22792c = 0;
            this.tt = "";
            this.ve = false;
            this.uj = false;
            this.f22793n = 0;
        }

        public synchronized void c(int i10) {
            this.f22792c = i10;
        }

        public synchronized boolean n() {
            return this.uj;
        }

        public synchronized void tt(boolean z10) {
            this.uj = z10;
        }

        public synchronized boolean uj() {
            return this.ve;
        }

        public synchronized String ve() {
            return this.tt;
        }

        public synchronized void c(String str) {
            this.tt = str;
        }

        public synchronized void tt(int i10) {
            this.f22793n = i10;
        }

        public synchronized void c(boolean z10) {
            this.ve = z10;
        }

        public synchronized int tt() {
            return this.f22792c;
        }

        public synchronized int c() {
            return this.f22793n;
        }
    }

    private static int n(C0503ve c0503ve) {
        int iTt;
        if (tt(c0503ve)) {
            iTt = 7611;
        } else {
            if (!x.m().cu().has(c0503ve.f22796c)) {
                return 0;
            }
            JSONObject jSONObjectOptJSONObject = x.m().cu().optJSONObject(c0503ve.f22796c);
            iTt = jSONObjectOptJSONObject != null ? tt(jSONObjectOptJSONObject.optString(PluginConstants.KEY_PLUGIN_VERSION)) : 0;
        }
        return iTt;
    }

    private void tt(Context context) {
        FileOutputStream fileOutputStream = this.uj;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (Exception e10) {
                m.c(e10);
            }
        }
        File fileUj = uj(context);
        if (fileUj.exists()) {
            for (File file : fileUj.listFiles()) {
                try {
                    if (!"update.lock".equals(file.getName())) {
                        file.delete();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    private static Pair<Boolean, Boolean> uj(C0503ve c0503ve) {
        if (tt(c0503ve)) {
            return new Pair<>(Boolean.valueOf(7611 == c0503ve.tt), Boolean.FALSE);
        }
        JSONObject jSONObjectOptJSONObject = x.m().cu().optJSONObject(c0503ve.f22796c);
        int iTt = jSONObjectOptJSONObject != null ? tt(jSONObjectOptJSONObject.optString(PluginConstants.KEY_PLUGIN_VERSION)) : 0;
        return new Pair<>(Boolean.valueOf(iTt == c0503ve.tt), Boolean.valueOf(iTt != 0));
    }

    private static boolean ve(C0503ve c0503ve) {
        int iTt;
        JSONObject jSONObjectOptJSONObject;
        if (tt(c0503ve)) {
            iTt = p.uj;
        } else {
            iTt = (!x.m().cu().has(c0503ve.f22796c) || (jSONObjectOptJSONObject = x.m().cu().optJSONObject(c0503ve.f22796c)) == null) ? 0 : tt(jSONObjectOptJSONObject.optString("sdk_version"));
        }
        return iTt >= c0503ve.f22800x && iTt <= c0503ve.f22798i;
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG, 24})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f22791c;
        public String tt;
        public int uj;
        public boolean ve;

        public c(int i10, String str, boolean z10, int i11) {
            this.f22791c = i10;
            this.tt = str;
            this.ve = z10;
            this.uj = i11;
        }

        public c(int i10) {
            this(i10, "", false, 0);
        }
    }

    public static ve c() {
        return f22775n;
    }

    public void c(final JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        final Context applicationContext = gt.getContext().getApplicationContext();
        n.tt(new sp("updatePlugin") { // from class: com.byazt.zj.ve.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ve.this.c(applicationContext, (List<C0503ve>) ve.ve(jSONArray));
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<C0503ve> ve(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null) {
                C0503ve c0503ve = new C0503ve();
                c0503ve.f22796c = c(jSONObjectOptJSONObject.optString("package_name"));
                c0503ve.tt = jSONObjectOptJSONObject.optInt("version_code");
                c0503ve.ve = jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
                c0503ve.uj = jSONObjectOptJSONObject.optString(COSHttpResponseKey.DOWNLOAD_URL);
                c0503ve.f22799n = jSONObjectOptJSONObject.optString(Constant.MD5);
                c0503ve.f22800x = tt(jSONObjectOptJSONObject.optString("min_version"));
                c0503ve.f22798i = tt(jSONObjectOptJSONObject.optString("max_version"));
                c0503ve.f22797da = jSONObjectOptJSONObject.optInt("plugin_update_network", -2);
                arrayList.add(c0503ve);
            }
        }
        Collections.sort(arrayList, new Comparator<C0503ve>() { // from class: com.byazt.zj.ve.8
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int compare(C0503ve c0503ve2, C0503ve c0503ve3) {
                if ("com.byted.pangle".equals(c0503ve2.f22796c)) {
                    return -1;
                }
                return "com.byted.pangle".equals(c0503ve3.f22796c) ? 1 : 0;
            }
        });
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0033  */
    private boolean c(Context context, int i10, String str) {
        int iC = x.m().zm().c(str);
        if (x.m().bm()) {
            return c(iC);
        }
        if (i10 == -1) {
            i10 = iC;
        } else if (i10 != 1 && i10 != 2 && i10 != 3) {
            if (i10 == 4 || i10 == 5) {
                return false;
            }
            if (iC == 3) {
                i10 = 1;
            } else {
                i10 = iC;
            }
        }
        return c(i10);
    }

    private static boolean tt(C0503ve c0503ve) {
        return "com.byted.pangle".equals(c0503ve.f22796c);
    }

    private boolean tt(C0503ve c0503ve, int i10) {
        tt(c0503ve);
        return (i10 == 21 || i10 == 18) ? false : true;
    }

    private boolean tt(String str, String str2) {
        File file = new File(str, str2 + ".temp");
        return file.exists() && file.length() > 0;
    }

    private static boolean tt(int i10) {
        File fileC = com.byazt.nys.tt.c(gt.getContext());
        if (fileC == null) {
            return false;
        }
        return new File(fileC.getParent() + "/pangle_p/com.byted.pangle/version-" + i10).exists();
    }

    private boolean c(int i10) {
        if (i10 != 1) {
            if (i10 == 3 || i10 == 4 || i10 == 5) {
                return false;
            }
        } else if (!rh.uj(gt.getContext())) {
            return false;
        }
        return true;
    }

    public void c(Function<SparseArray<Object>, Object> function) {
        this.f22777a = function;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final Context context, List<C0503ve> list) throws Throwable {
        synchronized ("__tt_pl_up_lock__") {
            try {
                try {
                    try {
                        try {
                            if (!c(context)) {
                                tt(context);
                                return;
                            }
                            final boolean zVe = ve();
                            if (zVe && !com.byazt.nr.gt.c(context)) {
                                tt(context);
                                return;
                            }
                            list.size();
                            final CountDownLatch countDownLatch = new CountDownLatch(list.size());
                            for (final C0503ve c0503ve : list) {
                                try {
                                    if (c(c0503ve)) {
                                        countDownLatch.countDown();
                                    } else {
                                        n.tt(new sp("pl download") { // from class: com.byazt.zj.ve.2
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                ve.this.c(context, c0503ve, false, zVe);
                                                countDownLatch.countDown();
                                            }
                                        });
                                    }
                                } catch (Exception e10) {
                                    e = e10;
                                }
                            }
                            countDownLatch.await();
                            zm zmVar = (zm) com.byazt.ut.uj.getService("m_s");
                            if (zmVar != null) {
                                zmVar.setState(0, 64, false);
                            }
                            tt(context);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        tt(context);
                        throw th;
                    }
                } catch (Exception e11) {
                    e = e11;
                } catch (Throwable th3) {
                    th = th3;
                    tt(context);
                    throw th;
                }
                yp.c().c("", 7611, 0, "", 14, e.getMessage(), 0L, false, false, false, false, 0);
                m.tt("PluginUpdater", "Handle file error: " + e);
                tt(context);
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public static String tt() {
        String str;
        String strC = com.byazt.qya.tt.c();
        if ("arm64-v8a".equals(strC)) {
            str = "@64";
        } else if ("armeabi-v7a".equals(strC)) {
            str = "@32";
        } else {
            str = d.f71903e.equals(strC) ? "@armeabi" : "";
        }
        return "com.byted.live.lite" + str;
    }

    private static int tt(String str) {
        if (str != null) {
            try {
                return Integer.parseInt(str.replace(o0.f49827a, ""));
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    private boolean ve() {
        JSONObject jSONObjectPo = gt.tt().po();
        if (jSONObjectPo == null) {
            return false;
        }
        return jSONObjectPo.optBoolean("use_downloader", false);
    }

    private boolean c(Context context) {
        try {
            File fileUj = uj(context);
            if (!fileUj.exists()) {
                fileUj.mkdirs();
            }
            File file = new File(fileUj, "update.lock");
            if (!file.exists()) {
                file.createNewFile();
            }
            if (!file.exists()) {
                m.tt("PluginUpdater", "create lock file failed");
                return false;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            this.uj = fileOutputStream;
            FileLock fileLockTryLock = fileOutputStream.getChannel().tryLock();
            if (fileLockTryLock != null && fileLockTryLock.isValid()) {
                return true;
            }
            m.tt("PluginUpdater", "Acquire file lock failed");
            this.uj.close();
            return false;
        } catch (Throwable th) {
            FileOutputStream fileOutputStream2 = this.uj;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused) {
                }
            }
            m.tt("PluginUpdater", "Try get file lock failed:" + th);
            return false;
        }
    }

    private boolean c(C0503ve c0503ve) {
        String str = c0503ve == null ? null : c0503ve.f22796c;
        boolean z10 = false;
        if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase("com.byted.pangle")) {
            z10 = com.byazt.by.ve.c().x() == 2;
            if (z10) {
                m.tt("PluginUpdater", "force use bst, dont update ad pl");
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context, C0503ve c0503ve, boolean z10, boolean z11) {
        String str;
        int i10;
        boolean z12;
        c cVar = new c(0);
        if (!c(context, c0503ve.f22797da, c0503ve.f22796c)) {
            str = x.m().zm() + ":" + c0503ve.f22797da;
            i10 = 20;
        } else {
            File fileUj = uj(context);
            if (z11) {
                cVar = c(context, fileUj, c0503ve);
            } else {
                cVar = c(context, fileUj, c0503ve, z10, z11);
            }
            str = "";
            i10 = cVar.f22791c;
        }
        if (i10 == 9 || i10 == 14) {
            c(c0503ve.f22796c, 1004);
            z12 = false;
        } else {
            z12 = true;
        }
        yp.c().c(c0503ve.f22796c, tt(c0503ve) ? 7611 : 0, c0503ve.tt, c0503ve.uj, i10, str, f22774i - f22776x, z10, ((Boolean) uj(c0503ve).second).booleanValue(), cVar.ve, z11, cVar.uj);
        if (z12) {
            c(c0503ve, cVar.f22791c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(C0503ve c0503ve, int i10) {
        SparseArray<Object> sparseArrayTt;
        PluginValueSet pluginValueSetTt;
        if (this.f22777a == null || !tt(c0503ve, i10)) {
            return;
        }
        SparseArray<Object> sparseArrayTt2 = com.byazt.yxi.uj.c().c(2, c0503ve.toString()).c(3, c0503ve.f22796c).tt();
        boolean z10 = i10 == 6 || i10 == 10 || i10 == 16;
        SparseArray<Object> sparseArrayTt3 = com.byazt.yxi.n.c().c(z10).c(z10 ? 0 : 1004).c(sparseArrayTt2).tt();
        try {
            if (com.byazt.lq.uj.c(p.uj)) {
                sparseArrayTt = com.byazt.yxi.uj.c(sparseArrayTt3).c(1).c(SparseArray.class).tt();
            } else {
                sparseArrayTt = com.byazt.yxi.uj.c().c(1).c(SparseArray.class).c(-99999979, sparseArrayTt3).tt();
            }
            Object objApply = this.f22777a.apply(sparseArrayTt);
            if (objApply instanceof SparseArray) {
                pluginValueSetTt = com.byazt.rl.c.c((SparseArray<Object>) objApply).tt();
            } else {
                pluginValueSetTt = (com.byazt.lq.uj.c(p.uj) && (objApply instanceof PluginValueSet)) ? (PluginValueSet) objApply : null;
            }
            if (pluginValueSetTt != null && pluginValueSetTt.booleanValue(4) && c0503ve.sl != null) {
                HashMap<String, String> map = sp;
                map.put(c0503ve.f22796c, new File(c0503ve.sl).getName());
                c(c0503ve.f22796c, c0503ve.ve);
                map.values();
            }
            if (c0503ve.f22796c.equals("com.byted.csj.ext")) {
                da.c(null);
            }
        } catch (Exception e10) {
            m.ve("PluginUpdater", "Download pl done, but install error:" + e10.getMessage());
        }
    }

    private static void c(String str, String str2) {
        if (str == null) {
            return;
        }
        x.m().c(str, str2);
    }

    private c c(Context context, File file, final C0503ve c0503ve) {
        if (c0503ve != null) {
            try {
                if (!TextUtils.isEmpty(c0503ve.uj)) {
                    if (TextUtils.isEmpty(c0503ve.f22796c)) {
                        return new c(12);
                    }
                    if (!tt(c0503ve) && !x.m().cu().has(c0503ve.f22796c)) {
                        return new c(17);
                    }
                    final Pair<Boolean, Boolean> pairUj = uj(c0503ve);
                    if (((Boolean) pairUj.first).booleanValue()) {
                        return new c(18);
                    }
                    if (tt(c0503ve.tt)) {
                        return new c(21);
                    }
                    if (!ve(c0503ve)) {
                        return new c(19);
                    }
                    final File fileA = a(context);
                    if (!fileA.exists()) {
                        fileA.mkdirs();
                    }
                    if (tt(c0503ve) && p.uj >= c0503ve.tt) {
                        String str = "-" + a.tt(c0503ve.f22796c) + "-" + p.uj + "-" + p.uj;
                        int i10 = p.uj;
                        c0503ve.f22798i = i10;
                        c0503ve.f22800x = i10;
                        c0503ve.sp = true;
                        c(new File(fileA, str + ".conf"), c0503ve);
                        return new c(10);
                    }
                    if (TextUtils.isEmpty(c0503ve.f22799n) && !c0503ve.c()) {
                        return new c(1);
                    }
                    final String strTt = a.tt(c0503ve.f22796c);
                    StringBuilder sb2 = new StringBuilder();
                    String strTt2 = a.tt(c0503ve.f22799n);
                    if (!TextUtils.isEmpty(strTt2)) {
                        sb2.append(strTt2);
                        sb2.append("-");
                    }
                    sb2.append(strTt);
                    sb2.append("-");
                    sb2.append(c0503ve.f22800x);
                    sb2.append("-");
                    sb2.append(c0503ve.f22798i);
                    String string = sb2.toString();
                    final File fileN = n(context);
                    if (!fileN.exists()) {
                        fileN.mkdirs();
                    }
                    final File file2 = new File(fileN, string + (c0503ve.c() ? ".dex.zip" : ".apk"));
                    if (file2.exists()) {
                        c0503ve.f22795a = a.c(file2);
                        c0503ve.sl = file2.getAbsolutePath();
                        return new c(16);
                    }
                    if (file2.getName().equals(sp.get(c0503ve.f22796c))) {
                        return new c(21);
                    }
                    final int i11 = tt(c0503ve) ? 7611 : 0;
                    final File file3 = new File(file, string);
                    f22776x = System.currentTimeMillis();
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    final tt ttVar = new tt();
                    new com.byazt.zj.c(c0503ve.f22796c, c0503ve.uj, file.getAbsolutePath(), string, c0503ve.f22797da == 1, new com.byazt.zj.c.InterfaceC0502c() { // from class: com.byazt.zj.ve.3

                        /* JADX INFO: renamed from: t, reason: collision with root package name */
                        public long f22786t = 0;

                        @Override // com.byazt.zj.c.InterfaceC0502c
                        public void c(DownloadInfo downloadInfo) {
                            ttVar.c(com.byazt.w.a.a(downloadInfo) > 0);
                            yp ypVarC = yp.c();
                            C0503ve c0503ve2 = c0503ve;
                            ypVarC.c(c0503ve2.f22796c, i11, c0503ve2.tt, c0503ve2.uj, 7, "", 0L, false, ((Boolean) pairUj.second).booleanValue(), ttVar.uj(), true, 1);
                            C0503ve c0503ve3 = c0503ve;
                            yp.ve(c0503ve3.f22796c, String.valueOf(c0503ve3.tt));
                        }

                        @Override // com.byazt.zj.c.InterfaceC0502c
                        public void tt(DownloadInfo downloadInfo) {
                            ttVar.c(ve.this.c(file3, fileA, file2, fileN, strTt, c0503ve));
                            ttVar.tt(1);
                            if (ttVar.n()) {
                                ve.this.c(c0503ve, ttVar.tt());
                            }
                            countDownLatch.countDown();
                        }

                        @Override // com.byazt.zj.c.InterfaceC0502c
                        public void tt(DownloadInfo downloadInfo, int i12) {
                            this.f22786t = System.currentTimeMillis();
                            yp ypVarC = yp.c();
                            C0503ve c0503ve2 = c0503ve;
                            ypVarC.c(c0503ve2.f22796c, i11, c0503ve2.tt, c0503ve2.uj, 7, "", 0L, false, ((Boolean) pairUj.second).booleanValue(), ttVar.uj(), true, i12);
                        }

                        @Override // com.byazt.zj.c.InterfaceC0502c
                        public void c(DownloadInfo downloadInfo, BaseException baseException) {
                            long unused = ve.f22774i = System.currentTimeMillis();
                            ttVar.c(9);
                            ttVar.tt(1);
                            tt ttVar2 = ttVar;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(baseException.getErrorCode());
                            sb3.append(" : ");
                            sb3.append(baseException.getErrorMessage() == null ? "" : baseException.getErrorMessage());
                            ttVar2.c(sb3.toString());
                            countDownLatch.countDown();
                        }

                        @Override // com.byazt.zj.c.InterfaceC0502c
                        public void c(DownloadInfo downloadInfo, int i12) {
                            int iC = ve.this.c(file3, fileA, file2, fileN, strTt, c0503ve);
                            yp ypVarC = yp.c();
                            C0503ve c0503ve2 = c0503ve;
                            ypVarC.c(c0503ve2.f22796c, i11, c0503ve2.tt, c0503ve2.uj, 6, "", System.currentTimeMillis() - this.f22786t, false, ((Boolean) pairUj.second).booleanValue(), ttVar.uj(), true, i12);
                            ve.this.c(c0503ve, iC);
                        }

                        @Override // com.byazt.zj.c.InterfaceC0502c
                        public void c(DownloadInfo downloadInfo, BaseException baseException, int i12) {
                            yp ypVarC = yp.c();
                            C0503ve c0503ve2 = c0503ve;
                            String str2 = c0503ve2.f22796c;
                            int i13 = i11;
                            int i14 = c0503ve2.tt;
                            String str3 = c0503ve2.uj;
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(baseException.getErrorCode());
                            sb3.append(" : ");
                            sb3.append(baseException.getErrorMessage() == null ? "" : baseException.getErrorMessage());
                            ypVarC.c(str2, i13, i14, str3, 9, sb3.toString(), System.currentTimeMillis() - this.f22786t, false, ((Boolean) pairUj.second).booleanValue(), ttVar.uj(), true, i12);
                        }
                    }).c(context);
                    try {
                        ttVar.tt(!countDownLatch.await(600L, TimeUnit.SECONDS));
                    } catch (InterruptedException e10) {
                        ttVar.c(9);
                        ttVar.c("countDownLatch interrupted: " + e10.getMessage());
                    }
                    if (ttVar.n()) {
                        ttVar.c(9);
                        ttVar.c("countDownLatch timeout");
                    }
                    return new c(ttVar.tt(), ttVar.ve(), ttVar.uj(), ttVar.c());
                }
            } catch (Exception e11) {
                m.tt("PluginUpdater", "Download file error: " + e11);
                String message = e11.getMessage();
                try {
                    message = Log.getStackTraceString(e11);
                } catch (Throwable th) {
                    m.c(th);
                }
                return new c(14, message, false, 0);
            }
        }
        return new c(2);
    }

    private c c(Context context, File file, C0503ve c0503ve, boolean z10, boolean z11) {
        com.byazt.hm.tt ttVarC;
        String str;
        if (c0503ve != null) {
            try {
                if (!TextUtils.isEmpty(c0503ve.uj)) {
                    if (TextUtils.isEmpty(c0503ve.f22796c)) {
                        return new c(12);
                    }
                    if (!tt(c0503ve) && !x.m().cu().has(c0503ve.f22796c)) {
                        return new c(17);
                    }
                    Pair<Boolean, Boolean> pairUj = uj(c0503ve);
                    if (((Boolean) pairUj.first).booleanValue()) {
                        return new c(18);
                    }
                    if (tt(c0503ve.tt)) {
                        return new c(21);
                    }
                    if (!ve(c0503ve)) {
                        return new c(19);
                    }
                    File fileA = a(context);
                    if (!fileA.exists()) {
                        fileA.mkdirs();
                    }
                    if (tt(c0503ve) && p.uj >= c0503ve.tt) {
                        String str2 = "-" + a.tt(c0503ve.f22796c) + "-" + p.uj + "-" + p.uj;
                        int i10 = p.uj;
                        c0503ve.f22798i = i10;
                        c0503ve.f22800x = i10;
                        c0503ve.sp = true;
                        c(new File(fileA, str2 + ".conf"), c0503ve);
                        return new c(10);
                    }
                    if (TextUtils.isEmpty(c0503ve.f22799n) && !c0503ve.c()) {
                        return new c(1);
                    }
                    String strTt = a.tt(c0503ve.f22796c);
                    StringBuilder sb2 = new StringBuilder();
                    String strTt2 = a.tt(c0503ve.f22799n);
                    if (!TextUtils.isEmpty(strTt2)) {
                        sb2.append(strTt2);
                        sb2.append("-");
                    }
                    sb2.append(strTt);
                    sb2.append("-");
                    sb2.append(c0503ve.f22800x);
                    sb2.append("-");
                    sb2.append(c0503ve.f22798i);
                    String string = sb2.toString();
                    File fileN = n(context);
                    if (!fileN.exists()) {
                        fileN.mkdirs();
                    }
                    File file2 = new File(fileN, string + (c0503ve.c() ? ".dex.zip" : ".apk"));
                    if (file2.exists()) {
                        c0503ve.f22795a = a.c(file2);
                        c0503ve.sl = file2.getAbsolutePath();
                        return new c(16);
                    }
                    if (file2.getName().equals(sp.get(c0503ve.f22796c))) {
                        return new c(21);
                    }
                    int i11 = tt(c0503ve) ? 7611 : 0;
                    File file3 = new File(file, string);
                    f22776x = System.currentTimeMillis();
                    String absolutePath = file.getAbsolutePath();
                    boolean zTt = tt(absolutePath, string);
                    yp.c().c(c0503ve.f22796c, i11, c0503ve.tt, c0503ve.uj, 7, "", 0L, z10, ((Boolean) pairUj.second).booleanValue(), zTt, false, 0);
                    yp.ve(c0503ve.f22796c, String.valueOf(c0503ve.tt));
                    if (com.byazt.ogz.da.c(c0503ve.f22796c)) {
                        ttVarC = c(com.byazt.hy.n.c().tt().c(c0503ve.uj, absolutePath, string), c0503ve.f22796c);
                    } else {
                        com.byazt.va.tt ttVarUj = com.byazt.hy.n.c().tt().uj();
                        ttVarUj.c(c0503ve.uj);
                        ttVarUj.c(absolutePath, string);
                        ttVarC = ttVarUj.c();
                    }
                    if (ttVarC != null && ttVarC.i()) {
                        return new c(c(file3, fileA, file2, fileN, strTt, c0503ve), "", zTt, 0);
                    }
                    f22774i = System.currentTimeMillis();
                    if (ttVarC != null) {
                        str = ttVarC.tt() + " : " + ttVarC.ve();
                    } else {
                        str = "no response";
                    }
                    return new c(9, str, zTt, 0);
                }
            } catch (Exception e10) {
                m.tt("PluginUpdater", "Download file error: " + e10);
                if (!z11) {
                    c(context, c0503ve);
                }
                String message = e10.getMessage();
                try {
                    message = Log.getStackTraceString(e10);
                } catch (Throwable th) {
                    m.c(th);
                }
                return new c(14, message, false, 0);
            }
        }
        return new c(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c(File file, File file2, File file3, File file4, String str, C0503ve c0503ve) {
        f22774i = System.currentTimeMillis();
        if (!file.exists()) {
            return 13;
        }
        c(file4, str);
        c(file2, str);
        if (!file.renameTo(file3)) {
            return 5;
        }
        File file5 = new File(file2, file.getName() + ".conf");
        c0503ve.f22795a = a.c(file3);
        c0503ve.sl = file3.getAbsolutePath();
        c0503ve.sp = c0503ve.tt < n(c0503ve);
        return c(file5, c0503ve) ? 6 : 15;
    }

    private static com.byazt.hm.tt c(final com.byazt.va.tt ttVar, final String str) throws uj {
        try {
            return (com.byazt.hm.tt) new com.byazt.qya.n.c(new Callable<com.byazt.hm.tt>() { // from class: com.byazt.zj.ve.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public com.byazt.hm.tt call() {
                    return ttVar.c();
                }
            }, new com.byazt.qya.n.tt<com.byazt.hm.tt>() { // from class: com.byazt.zj.ve.5
                @Override // com.byazt.qya.n.tt
                public boolean c(com.byazt.hm.tt ttVar2) {
                    if (((u) com.byazt.ut.uj.getService("device_info_new")).getRealNetworkType(0L) == 0 || ttVar2 == null) {
                        return false;
                    }
                    Throwable thC = ttVar2.c();
                    return thC != null ? com.byazt.qya.n.c(thC) : com.byazt.qya.n.c(ttVar2.tt());
                }

                @Override // com.byazt.qya.n.tt
                public boolean c(Exception exc) {
                    if (((u) com.byazt.ut.uj.getService("device_info_new")).getRealNetworkType(0L) == 0) {
                        return false;
                    }
                    return exc instanceof NullPointerException;
                }
            }).c(com.byazt.ogz.da.tt(str)).c().c();
        } catch (Exception e10) {
            String message = e10.getMessage();
            try {
                message = Log.getStackTraceString(e10);
            } catch (Throwable th) {
                m.c(th);
            }
            throw new uj(14, message);
        }
    }

    private void c(final Context context, final C0503ve c0503ve) {
        if (com.byazt.ogz.da.c(c0503ve.f22796c) && ((u) com.byazt.ut.uj.getService("device_info_new")).getRealNetworkType(0L) == 0) {
            com.byazt.qya.ve.c().c(new com.byazt.qya.ve.tt() { // from class: com.byazt.zj.ve.6
                @Override // com.byazt.qya.ve.tt
                public void c() throws Exception {
                    ve.this.c(context, c0503ve, true, false);
                }
            });
        }
    }

    private static boolean c(File file, C0503ve c0503ve) {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(c0503ve.toString());
            fileWriter.close();
            return true;
        } catch (IOException unused) {
            m.tt("PluginUpdater", "Write config failed;");
            return false;
        }
    }

    private static void c(File file, final String str) {
        file.listFiles(new FilenameFilter() { // from class: com.byazt.zj.ve.7
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                if (str2 == null || !str2.contains(str)) {
                    return false;
                }
                new File(file2, str2).delete();
                m.tt("PluginUpdater", "Delete file: ".concat(str2));
                return false;
            }
        });
    }

    public static String c(String str) {
        return ("com.byted.live.lite@64".equals(str) || "com.byted.live.lite@32".equals(str) || "com.byted.live.lite@armeabi".equals(str)) ? "com.byted.live.lite" : str;
    }

    public void c(String str, int i10) {
        SparseArray<Object> sparseArrayTt;
        if (this.f22777a == null) {
            return;
        }
        SparseArray<Object> sparseArrayTt2 = com.byazt.yxi.n.c().c(false).c(i10).c(com.byazt.yxi.uj.c().c(3, str).tt()).tt();
        int i11 = p.uj;
        if (i11 < 7000 && i11 >= 6800) {
            sparseArrayTt = com.byazt.yxi.uj.c(sparseArrayTt2).c(1).c(Void.class).tt();
        } else {
            sparseArrayTt = com.byazt.yxi.uj.c().c(1).c(Void.class).c(-99999979, sparseArrayTt2).tt();
        }
        this.f22777a.apply(sparseArrayTt);
    }
}
