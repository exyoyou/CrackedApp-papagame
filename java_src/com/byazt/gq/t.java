package com.byazt.gq;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.bv.BaseConstants;
import com.byazt.m.BaseException;
import com.byazt.ou.gt;
import com.byazt.ou.m;
import com.byazt.ou.nu;
import com.byazt.ou.qy;
import com.byazt.ou.rh;
import com.byazt.su.DownloadController;
import com.byazt.su.DownloadEventConfig;
import com.byazt.su.DownloadModel;
import com.byazt.t.DownloadInfo;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 52, 66})
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static com.byazt.ou.x f14643a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JSONObject f14644c = new JSONObject();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static com.byazt.ou.tt f14645da;
    public static com.byazt.pd.c gt;
    public static com.byazt.ou.da gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static com.byazt.e.c f14646i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static qy f14647m;
    public static nu my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static com.byazt.ou.u f14648n;
    public static com.byazt.ou.z nu;
    public static gt qy;
    public static com.byazt.ou.yp rh;
    public static rh rl;
    public static com.byazt.s.i sl;
    public static com.byazt.ou.i sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static com.byazt.ou.uj f14649t;
    public static Context tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static com.byazt.ou.n f14650u;
    public static com.byazt.ou.ve uj;
    public static com.byazt.ou.sp ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static com.byazt.ou.sl f14651x;
    public static m yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static com.byazt.ou.t f14652z;

    public static com.byazt.s.i a() {
        if (sl == null) {
            sl = new com.byazt.s.i() { // from class: com.byazt.gq.t.2
                @Override // com.byazt.s.i
                public void c(DownloadInfo downloadInfo, BaseException baseException, int i10) {
                }
            };
        }
        return sl;
    }

    public static void c(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            throw new IllegalArgumentException("Context is null");
        }
        tt = context.getApplicationContext();
    }

    @NonNull
    public static com.byazt.e.c da() {
        if (f14646i == null) {
            f14646i = new com.byazt.e.c.C0299c().c();
        }
        return f14646i;
    }

    public static Context getContext() {
        Context context = tt;
        if (context != null) {
            return context;
        }
        throw new IllegalArgumentException("Context is null");
    }

    public static boolean gr() {
        return (ve == null || f14643a == null || f14651x == null || f14645da == null || rl == null) ? false : true;
    }

    @NonNull
    public static com.byazt.pd.c gt() {
        if (gt == null) {
            gt = new com.byazt.pd.c() { // from class: com.byazt.gq.t.4
                @Override // com.byazt.pd.c
                public void c(Throwable th, String str) {
                }
            };
        }
        return gt;
    }

    public static String gu() {
        try {
            int i10 = getContext().getApplicationInfo().targetSdkVersion;
            if (Build.VERSION.SDK_INT >= 29 && ((i10 == 29 && !Environment.isExternalStorageLegacy()) || i10 > 29)) {
                return getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
            }
            return Environment.getExternalStorageDirectory().getPath() + File.separator + i().optString("default_save_dir_name", BaseConstants.DOWNLOAD_DIR);
        } catch (Throwable unused) {
            return null;
        }
    }

    @NonNull
    public static JSONObject i() {
        com.byazt.ou.sl slVar = f14651x;
        return (slVar == null || slVar.c() == null) ? f14644c : f14651x.c();
    }

    public static com.byazt.ou.n m() {
        return f14650u;
    }

    public static qy my() {
        return f14647m;
    }

    @NonNull
    public static com.byazt.ou.i n() {
        if (sp == null) {
            sp = new com.byazt.uw.tt();
        }
        return sp;
    }

    public static com.byazt.ou.t nu() {
        return f14652z;
    }

    public static com.byazt.ou.da qy() {
        return gu;
    }

    @NonNull
    public static rh rh() {
        return rl;
    }

    @NonNull
    public static gt rl() {
        if (qy == null) {
            qy = new gt() { // from class: com.byazt.gq.t.5
                @Override // com.byazt.ou.gt
                public void c(@Nullable Context context, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, int i10) {
                }
            };
        }
        return qy;
    }

    public static com.byazt.ou.yp sl() {
        return rh;
    }

    public static m sp() {
        return yp;
    }

    @Nullable
    public static com.byazt.ou.tt t() {
        return f14645da;
    }

    public static void tt(Context context) {
        if (tt != null || context == null || context.getApplicationContext() == null) {
            return;
        }
        tt = context.getApplicationContext();
    }

    @Nullable
    public static com.byazt.ou.z u() {
        return nu;
    }

    public static com.byazt.ou.x uj() {
        return f14643a;
    }

    @NonNull
    public static com.byazt.ou.u ve() {
        if (f14648n == null) {
            f14648n = new com.byazt.uw.c();
        }
        return f14648n;
    }

    @NonNull
    public static nu x() {
        if (my == null) {
            my = new nu() { // from class: com.byazt.gq.t.3
            };
        }
        return my;
    }

    public static String yp() {
        return "1.7.0";
    }

    public static com.byazt.ou.uj z() {
        return f14649t;
    }

    @NonNull
    public static com.byazt.ou.ve tt() {
        if (uj == null) {
            uj = new com.byazt.ou.ve() { // from class: com.byazt.gq.t.1
                @Override // com.byazt.ou.ve
                public void c(@Nullable Context context, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, @NonNull String str2) {
                }
            };
        }
        return uj;
    }

    public static void c(@NonNull com.byazt.ou.sp spVar) {
        ve = spVar;
    }

    public static void c(@NonNull com.byazt.ou.ve veVar) {
        uj = veVar;
    }

    public static void c(@NonNull com.byazt.ou.u uVar) {
        f14648n = uVar;
    }

    public static void c(@NonNull com.byazt.ou.x xVar) {
        f14643a = xVar;
    }

    public static void c(@NonNull com.byazt.ou.i iVar) {
        sp = iVar;
    }

    public static void c(@NonNull com.byazt.ou.sl slVar) {
        f14651x = slVar;
    }

    public static void c(@NonNull com.byazt.e.c cVar) {
        f14646i = cVar;
    }

    public static void c(@NonNull com.byazt.ou.tt ttVar) {
        f14645da = ttVar;
    }

    public static com.byazt.ou.sp c() {
        return ve;
    }

    public static void c(String str) {
        com.byazt.z.uj.sl().c(str);
    }

    public static void c(com.byazt.s.ve veVar) {
        com.byazt.z.uj.sl().c(veVar);
    }

    public static void c(rh rhVar) {
        rl = rhVar;
    }

    public static void c(com.byazt.pd.c cVar) {
        gt = cVar;
    }

    public static void c(gt gtVar) {
        qy = gtVar;
    }

    public static void c(com.byazt.ou.da daVar) {
        gu = daVar;
    }
}
