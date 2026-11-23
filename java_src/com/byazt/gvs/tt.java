package com.byazt.gvs;

import androidx.annotation.NonNull;
import com.byazt.bog.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 193, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f14771a = "7z_unzip_start";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f14772c = "request_finish";

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static String f14773da = "rm_entry_finish";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f14774i = "load_finish";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f14775n = "install_finish";
    public static String sl = "e_create_ac_failed";
    public static String sp = "7z_unzip_finish";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile tt f14776t = null;
    public static String tt = "download_start";
    public static String uj = "install_start";
    public static String ve = "download_finish";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static String f14777x = "load_start";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List<com.byazt.gvs.c> f14778u = new ArrayList();

    @com.byazt.zqa.c(c = {0, 1, 193, 194})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f14779a = 12001;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static int f14780c = 1;
        public static int cu = 50004;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static int f14781d = 40000;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public static int f14782da = 20000;
        public static int eo = 41000;
        public static int gr = 32004;
        public static int gt = 32000;
        public static int gu = 32003;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static int f14783h = 32999;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static int f14784i = 12004;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static int f14785m = 22002;
        public static int md = 32008;
        public static int my = 31000;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static int f14786n = 12000;
        public static int nu = 22999;
        public static int or = 50000;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static int f14787p = 32007;
        public static int qy = 32002;
        public static int rh = 30000;
        public static int rl = 32001;
        public static int sl = 21000;
        public static int sp = 12002;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public static int f14788t = 21001;
        public static int tt = 2;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public static int f14789u = 21002;
        public static int uj = -2;
        public static int ve = -1;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static int f14790x = 12003;
        public static int yp = 22000;
        public static int yv = 32006;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static int f14791z = 22001;

        /* JADX INFO: renamed from: zb, reason: collision with root package name */
        public static int f14792zb = 42000;
        public static int zm = 32005;
    }

    private tt() {
    }

    public static tt c() {
        if (f14776t == null) {
            synchronized (tt.class) {
                f14776t = new tt();
            }
        }
        return f14776t;
    }

    public void c(@NonNull com.byazt.gvs.c cVar) {
        synchronized (this.f14778u) {
            this.f14778u.add(cVar);
        }
    }

    public void c(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        synchronized (this.f14778u) {
            Iterator<com.byazt.gvs.c> it2 = this.f14778u.iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().c(str, jSONObject, jSONObject2, jSONObject3);
                } catch (Throwable th) {
                    a.c(th);
                }
            }
        }
    }
}
