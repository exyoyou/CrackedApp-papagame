package com.efs.sdk.launch;

import android.content.Context;
import android.content.SharedPreferences;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.base.samplingwhitelist.SamplingWhiteListUtil;
import com.efs.sdk.pa.config.ConfigManager;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class LaunchConfigManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26428a = "LaunchConfigManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26429b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EfsReporter f26430c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f26431d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f26432e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f26433f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f26434g;

    public LaunchConfigManager(Context context, EfsReporter efsReporter) {
        boolean z10;
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorEdit2;
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor editorEdit3;
        SharedPreferences.Editor editorEdit4;
        SharedPreferences.Editor editorEdit5;
        this.f26431d = 100;
        this.f26433f = false;
        Context applicationContext = context.getApplicationContext();
        this.f26434g = applicationContext;
        this.f26430c = efsReporter;
        SharedPreferences sharedPreferences2 = applicationContext.getSharedPreferences("efs_launch", 0);
        if (sharedPreferences2 != null) {
            this.f26432e = sharedPreferences2.getInt("apm_startperf_sampling_rate_last", 0);
        }
        SharedPreferences sharedPreferences3 = this.f26434g.getSharedPreferences("efs_launch", 0);
        int i10 = sharedPreferences3 != null ? sharedPreferences3.getInt("apm_startperf_sampling_rate", -1) : -1;
        this.f26430c.getAllSdkConfig(new String[]{"apm_startperf_sampling_rate"}, new IConfigCallback() { // from class: com.efs.sdk.launch.LaunchConfigManager.1
            @Override // com.efs.sdk.base.observer.IConfigCallback
            public final void onChange(Map<String, Object> map) {
                SharedPreferences sharedPreferences4;
                SharedPreferences.Editor editorEdit6;
                try {
                    Object obj = map.get("apm_startperf_sampling_rate");
                    if (obj == null || (sharedPreferences4 = LaunchConfigManager.this.f26434g.getSharedPreferences("efs_launch", 0)) == null || (editorEdit6 = sharedPreferences4.edit()) == null) {
                        return;
                    }
                    editorEdit6.putInt("apm_startperf_sampling_rate", Integer.parseInt(obj.toString()));
                    editorEdit6.commit();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        if (i10 != -1) {
            this.f26431d = i10;
        }
        SharedPreferences sharedPreferences4 = this.f26434g.getSharedPreferences("efs_launch", 0);
        long j10 = sharedPreferences4 != null ? sharedPreferences4.getLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, 0L) : 0L;
        boolean z11 = sharedPreferences4 != null ? sharedPreferences4.getBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, false) : false;
        if (this.f26431d != 0) {
            z10 = true;
            if (!SamplingWhiteListUtil.isHitWL()) {
                boolean z12 = this.f26431d != this.f26432e;
                Long lValueOf = Long.valueOf(j10);
                int i11 = this.f26431d;
                Long lValueOf2 = Long.valueOf(System.currentTimeMillis());
                Long lValueOf3 = Long.valueOf(lValueOf2.longValue() - lValueOf.longValue());
                if (z11 && lValueOf3.longValue() < 86400000 && !z12) {
                    boolean z13 = LaunchManager.isDebug;
                } else if (lValueOf3.longValue() >= 86400000 || z12) {
                    if (i11 != 0 && (i11 == 100 || new Random().nextInt(100) <= i11)) {
                        boolean z14 = LaunchManager.isDebug;
                    } else {
                        boolean z15 = LaunchManager.isDebug;
                        z10 = false;
                    }
                    SharedPreferences sharedPreferences5 = this.f26434g.getSharedPreferences("efs_launch", 0);
                    if (sharedPreferences5 != null && (editorEdit2 = sharedPreferences5.edit()) != null) {
                        editorEdit2.putBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, z10);
                        editorEdit2.commit();
                    }
                    if (sharedPreferences5 != null && (editorEdit = sharedPreferences5.edit()) != null) {
                        editorEdit.putLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, lValueOf2.longValue());
                        editorEdit.commit();
                    }
                } else {
                    boolean z16 = LaunchManager.isDebug;
                }
            }
            this.f26433f = z10;
            sharedPreferences = this.f26434g.getSharedPreferences("efs_launch", 0);
            if (sharedPreferences != null || (editorEdit3 = sharedPreferences.edit()) == null) {
            }
            editorEdit3.putInt("apm_startperf_sampling_rate_last", this.f26431d);
            editorEdit3.commit();
            return;
        }
        if (z11 && sharedPreferences4 != null && (editorEdit5 = sharedPreferences4.edit()) != null) {
            editorEdit5.putBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, false);
            editorEdit5.commit();
        }
        if (j10 != 0 && sharedPreferences4 != null && (editorEdit4 = sharedPreferences4.edit()) != null) {
            editorEdit4.putLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, 0L);
            editorEdit4.commit();
        }
        z10 = false;
        this.f26433f = z10;
        sharedPreferences = this.f26434g.getSharedPreferences("efs_launch", 0);
        if (sharedPreferences != null) {
        }
    }

    public boolean enableTracer() {
        return this.f26433f;
    }
}
