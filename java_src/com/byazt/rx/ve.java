package com.byazt.rx;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.byazt.mg.da;
import com.byazt.nr.m;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 152, 54})
public final class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f19555c;

    public ve(Context context) {
        this.f19555c = context;
    }

    private void tt() {
        File[] fileArrC = c(com.byazt.mg.x.c(this.f19555c), ".npth");
        if (fileArrC == null) {
            return;
        }
        Arrays.sort(fileArrC, Collections.reverseOrder());
        for (int i10 = 0; i10 < fileArrC.length && i10 < 50; i10++) {
            File file = fileArrC[i10];
            try {
                if (com.byazt.kr.c.c().c(file.getAbsolutePath())) {
                    com.byazt.mg.uj.c(file);
                } else {
                    com.byazt.xz.ve veVarVe = com.byazt.mg.uj.ve(file.getAbsolutePath());
                    if (veVarVe != null && veVarVe.tt() != null) {
                        JSONObject jSONObjectTt = veVarVe.tt();
                        c(file.getName(), jSONObjectTt);
                        veVarVe.tt().put("upload_scene", "launch_scan");
                        if (com.byazt.jz.tt.c(veVarVe.c(), jSONObjectTt.toString(), veVarVe.ve()).c() && !com.byazt.mg.uj.c(file)) {
                            com.byazt.kr.c.c().c(com.byazt.bk.c.c(file.getAbsolutePath()));
                        }
                    }
                }
            } catch (Exception e10) {
                da.tt(e10);
            }
        }
    }

    public void c(boolean z10) {
        c();
        if (z10) {
            tt();
        }
    }

    private void c() {
        try {
            SharedPreferences sharedPreferencesTt = com.byazt.nys.tt.tt(this.f19555c, "npth", 0);
            long j10 = sharedPreferencesTt.getLong("history_time", -1L);
            if (j10 < 0) {
                sharedPreferencesTt.edit().putLong("history_time", System.currentTimeMillis()).apply();
            } else if (System.currentTimeMillis() - j10 > 86400000) {
                com.byazt.mg.uj.c(com.byazt.mg.x.tt(this.f19555c));
                sharedPreferencesTt.edit().putLong("history_time", System.currentTimeMillis()).apply();
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    private com.byazt.uy.ve c(String str, JSONObject jSONObject) {
        if (jSONObject == null && TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("launch_")) {
            return com.byazt.uy.ve.LAUNCH;
        }
        if (str.startsWith("anr_")) {
            return com.byazt.uy.ve.ANR;
        }
        if (str.startsWith("java_")) {
            if (jSONObject.optInt("is_dart") == 1) {
                return com.byazt.uy.ve.DART;
            }
            if (jSONObject.optInt("isJava") == 1) {
                return com.byazt.uy.ve.JAVA;
            }
        }
        return null;
    }

    @Nullable
    private File[] c(File file, String str) {
        if (!file.exists()) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            return file.listFiles();
        }
        return file.listFiles(new FilenameFilter() { // from class: com.byazt.rx.ve.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                return str2 != null && str2.endsWith(".npth");
            }
        });
    }
}
