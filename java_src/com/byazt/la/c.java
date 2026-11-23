package com.byazt.la;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.aas.gr;
import com.byazt.aas.my;
import com.byazt.ete.yf;
import com.byazt.hs.sl;
import com.byazt.hv.TTDownloadField;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 719, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f16564c = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f16566i;
    public yf sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f16568x;
    public String tt = "";
    public String ve = "";
    public String uj = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f16567n = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public JSONArray f16565a = new JSONArray();

    private c() {
    }

    public static c c() {
        return f16564c;
    }

    private String tt() {
        String strVe = my.ve();
        this.tt = strVe;
        return strVe;
    }

    private Long uj() {
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        this.f16567n = String.valueOf(jCurrentTimeMillis);
        return Long.valueOf(jCurrentTimeMillis);
    }

    private Long ve() {
        Long lValueOf = Long.valueOf(new StatFs(Environment.getExternalStorageDirectory().getPath()).getTotalBytes());
        this.ve = lValueOf.toString();
        return lValueOf;
    }

    private ActivityManager.MemoryInfo tt(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getMemoryInfo(memoryInfo);
        this.uj = String.valueOf(memoryInfo.totalMem);
        return memoryInfo;
    }

    public void c(Context context) {
        if (!gt.tt().rl()) {
            this.f16568x = false;
            return;
        }
        if (this.f16568x) {
            return;
        }
        try {
            tt();
            uj();
            ve();
            tt(context);
            ve(context);
            this.sp = gr.sl();
            this.f16568x = true;
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private JSONArray ve(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            HashMap map = new HashMap();
            map.put("com.ss.android.ugc.aweme", "a");
            map.put("com.ss.android.ugc.aweme.lite", "al");
            map.put("com.dragon.read", "r");
            map.put("com.ss.android.article.news", "n");
            map.put("com.ss.android.article.lite", "nl");
            PackageManager packageManager = context.getPackageManager();
            for (Map.Entry entry : map.entrySet()) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo((String) entry.getKey(), 0);
                    long j10 = packageInfo.firstInstallTime;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", entry.getValue());
                    jSONObject.put("i", j10);
                    if (TextUtils.equals((CharSequence) entry.getValue(), "a") || TextUtils.equals((CharSequence) entry.getValue(), "n")) {
                        jSONObject.put("u", packageInfo.lastUpdateTime);
                    }
                    jSONArray.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
            this.f16565a = jSONArray;
        } catch (Throwable unused2) {
        }
        return jSONArray;
    }

    public void c(yf yfVar) {
        this.sp = yfVar;
    }

    public void c(int[] iArr) {
        this.f16566i = iArr;
    }

    public void c(JSONObject jSONObject) {
        if (gt.tt().rl()) {
            try {
                yf yfVar = this.sp;
                if (yfVar != null) {
                    JSONObject jSONObjectVe = yfVar.ve();
                    jSONObjectVe.put(sl.f15090c, 0);
                    jSONObject.put("u_t", jSONObjectVe);
                }
                jSONObject.put("boot_time_sec", this.f16567n);
                jSONObject.put("memory", this.uj);
                jSONObject.put("disk", this.ve);
                jSONObject.put("client_tun", this.tt);
                jSONObject.put("pkg_info", this.f16565a);
                int[] iArr = this.f16566i;
                if (iArr != null) {
                    jSONObject.put("inode", Arrays.toString(iArr));
                }
            } catch (Exception e10) {
                m.c(e10);
            }
        }
    }
}
