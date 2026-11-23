package com.byazt.lvl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.byazt.aas.rl;
import com.byazt.bzd.uj;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.eti.n;
import com.byazt.nr.m;
import com.byazt.nr.sp;
import com.byazt.nr.x;
import com.byazt.omf.gt;
import com.tencent.stat.DeviceInfo;
import java.io.File;
import java.io.FileFilter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2208, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile c f16797c;
    public final Context tt;
    public long uj;
    public final tt ve;

    private c(Context context) {
        this.tt = context == null ? gt.getContext() : context.getApplicationContext();
        this.ve = new tt();
    }

    public static c c() {
        if (f16797c == null) {
            synchronized (c.class) {
                if (f16797c == null) {
                    f16797c = new c(gt.getContext());
                }
            }
        }
        return f16797c;
    }

    public void tt() {
        File[] fileArrListFiles;
        n.c(7).c();
        n.c(8).c();
        File fileUj = (("mounted".equals(uj.c()) || !Environment.isExternalStorageRemovable()) && sp.uj(this.tt, false, null) != null) ? sp.uj(this.tt, false, null) : sp.tt(this.tt, false, null);
        if (fileUj == null || !fileUj.exists() || !fileUj.isDirectory() || (fileArrListFiles = fileUj.listFiles(new FileFilter() { // from class: com.byazt.lvl.c.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                if (file != null) {
                    return file.getName().contains("reward_video_cache");
                }
                return false;
            }
        })) == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file : fileArrListFiles) {
            try {
                x.ve(file);
            } catch (Throwable unused) {
            }
        }
    }

    public String c(boolean z10, String str) {
        long jVe = gt.tt().ve(str);
        if (jVe > 0 && System.currentTimeMillis() - this.uj < jVe) {
            return "1";
        }
        int i10 = z10 ? 7 : 8;
        ic icVarTt = tt(z10, str);
        if (icVarTt == null) {
            return "0";
        }
        if (icVarTt.dz() + icVarTt.b() < System.currentTimeMillis()) {
            n.c(i10).c(str);
            return "1";
        }
        JSONObject jSONObjectC = c(icVarTt);
        if (jSONObjectC == null) {
            return "0";
        }
        this.uj = System.currentTimeMillis();
        return jSONObjectC.toString();
    }

    public void tt(com.byazt.dj.tt ttVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c(ttVar, str);
    }

    public synchronized ic tt(boolean z10, String str) {
        ic icVarC;
        try {
            if (z10) {
                icVarC = com.byazt.cf.sp.c().c(str, 0);
            } else {
                icVarC = com.byazt.cf.tt.c().c(str, 0);
            }
            if (icVarC == null) {
                return null;
            }
            if (rl.ve(icVarC)) {
                if (TextUtils.isEmpty(str) || !str.endsWith("again")) {
                    return icVarC;
                }
                return null;
            }
            if (com.byazt.ex.c.c(icVarC)) {
                return icVarC;
            }
            if (xd.z(icVarC) == null) {
                return null;
            }
            return icVarC;
        } catch (Throwable th) {
            throw th;
        }
    }

    private JSONObject c(ic icVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("req_id", icVar.oz());
            jSONObject.put(DeviceInfo.TAG_ANDROID_ID, Long.valueOf(icVar.gu()));
            jSONObject.put("cid", Long.valueOf(icVar.uj()));
            jSONObject.put("price", icVar.j());
            jSONObject.put("material_key", icVar.y());
            jSONObject.put("s_send_ts", icVar.dz());
            jSONObject.put("cache_time", icVar.b());
            jSONObject.put("ext", icVar.q());
            return jSONObject;
        } catch (JSONException e10) {
            m.c(e10);
            return null;
        }
    }

    public void c(com.byazt.dj.tt ttVar, String str) {
        this.ve.c(str, ttVar);
    }

    public com.byazt.dj.tt c(ic icVar, String str) {
        return this.ve.c(icVar == null ? null : icVar.jl(), str);
    }
}
