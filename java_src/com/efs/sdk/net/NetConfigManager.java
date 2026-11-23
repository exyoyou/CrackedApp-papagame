package com.efs.sdk.net;

import android.content.Context;
import android.content.SharedPreferences;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.base.samplingwhitelist.SamplingWhiteListUtil;
import com.efs.sdk.pa.config.ConfigManager;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class NetConfigManager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EfsReporter f26492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f26493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f26494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f26495f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f26496g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f26497h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f26498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f26499j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f26500k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f26501l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26490a = "NetConfigManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26491b = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f26502m = false;

    public NetConfigManager(Context context, EfsReporter efsReporter) {
        int i10;
        boolean z10;
        SharedPreferences.Editor editorEdit;
        SharedPreferences.Editor editorEdit2;
        SharedPreferences.Editor editorEdit3;
        SharedPreferences.Editor editorEdit4;
        SharedPreferences.Editor editorEdit5;
        this.f26493d = 0;
        this.f26494e = 0;
        this.f26497h = 100;
        this.f26498i = 10;
        this.f26499j = false;
        this.f26501l = -1;
        Context applicationContext = context.getApplicationContext();
        this.f26500k = applicationContext;
        this.f26492c = efsReporter;
        SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("net_launch", 0);
        if (sharedPreferences != null) {
            this.f26495f = sharedPreferences.getInt("apm_netperf_sampling_rate_last", 0);
            this.f26496g = sharedPreferences.getInt("apm_netperf_extra_last", 0);
        }
        SharedPreferences sharedPreferences2 = this.f26500k.getSharedPreferences("net_launch", 0);
        if (sharedPreferences2 != null) {
            i10 = sharedPreferences2.getInt("apm_netperf_sampling_rate", -1);
            this.f26494e = sharedPreferences2.getInt("apm_netperf_extra", -1);
        } else {
            i10 = -1;
        }
        this.f26492c.getAllSdkConfig(new String[]{"apm_netperf_sampling_rate", "apm_netperf_day_limit", "apm_netperf_data_rate", "apm_netperf_extra"}, new IConfigCallback() { // from class: com.efs.sdk.net.NetConfigManager.1
            @Override // com.efs.sdk.base.observer.IConfigCallback
            public final void onChange(Map<String, Object> map) {
                SharedPreferences sharedPreferences3;
                final SharedPreferences.Editor editorEdit6;
                SharedPreferences sharedPreferences4;
                final SharedPreferences.Editor editorEdit7;
                try {
                    final Object obj = map.get("apm_netperf_sampling_rate");
                    if (obj != null && (sharedPreferences4 = NetConfigManager.this.f26500k.getSharedPreferences("net_launch", 0)) != null && (editorEdit7 = sharedPreferences4.edit()) != null) {
                        new Thread(new Runnable() { // from class: com.efs.sdk.net.NetConfigManager.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                editorEdit7.putInt("apm_netperf_sampling_rate", Integer.parseInt(obj.toString()));
                                editorEdit7.commit();
                            }
                        }).start();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                try {
                    final Object obj2 = map.get("apm_netperf_extra");
                    if (obj2 != null && (sharedPreferences3 = NetConfigManager.this.f26500k.getSharedPreferences("net_launch", 0)) != null && (editorEdit6 = sharedPreferences3.edit()) != null) {
                        new Thread(new Runnable() { // from class: com.efs.sdk.net.NetConfigManager.1.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                editorEdit6.putInt("apm_netperf_extra", Integer.parseInt(obj2.toString()));
                                editorEdit6.commit();
                            }
                        }).start();
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                try {
                    NetConfigManager.this.f26497h = Integer.parseInt(map.get("apm_netperf_day_limit").toString());
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
                try {
                    Object obj3 = map.get("apm_netperf_data_rate");
                    if (obj3 != null) {
                        NetConfigManager.this.f26498i = Integer.parseInt(obj3.toString());
                    }
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            }
        });
        if (i10 != -1) {
            this.f26493d = i10;
        }
        if (SamplingWhiteListUtil.isHitWL()) {
            z10 = true;
        } else {
            SharedPreferences sharedPreferences3 = this.f26500k.getSharedPreferences("net_launch", 0);
            long j10 = sharedPreferences3 != null ? sharedPreferences3.getLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, 0L) : 0L;
            boolean z11 = sharedPreferences3 != null ? sharedPreferences3.getBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, false) : false;
            int i11 = this.f26493d;
            if (i11 == 0) {
                if (z11 && sharedPreferences3 != null && (editorEdit4 = sharedPreferences3.edit()) != null) {
                    editorEdit4.putBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, false);
                    editorEdit4.commit();
                }
                if (j10 != 0 && sharedPreferences3 != null && (editorEdit3 = sharedPreferences3.edit()) != null) {
                    editorEdit3.putLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, 0L);
                    editorEdit3.commit();
                }
            } else {
                boolean z12 = Math.max(i11, this.f26494e) != Math.max(this.f26495f, this.f26496g);
                Long lValueOf = Long.valueOf(j10);
                int iMax = Math.max(this.f26493d, this.f26494e);
                Long lValueOf2 = Long.valueOf(System.currentTimeMillis());
                Long lValueOf3 = Long.valueOf(lValueOf2.longValue() - lValueOf.longValue());
                if (z11 && lValueOf3.longValue() < 86400000 && !z12) {
                    Log.d("NetConfigManager", " check in allready");
                    z10 = true;
                } else if (lValueOf3.longValue() >= 86400000 || z12) {
                    if (a(iMax)) {
                        Log.d("NetConfigManager", "random check in");
                        z10 = true;
                    } else {
                        Log.d("NetConfigManager", "random not check in!");
                        z10 = false;
                    }
                    SharedPreferences sharedPreferences4 = this.f26500k.getSharedPreferences("net_launch", 0);
                    if (sharedPreferences4 != null && (editorEdit2 = sharedPreferences4.edit()) != null) {
                        editorEdit2.putBoolean(ConfigManager.FLAG_PA_CHECK_IN_STATE, z10);
                        editorEdit2.commit();
                    }
                    if (sharedPreferences4 != null && (editorEdit = sharedPreferences4.edit()) != null) {
                        editorEdit.putLong(ConfigManager.FLAG_PA_FORE_CHECK_TIME, lValueOf2.longValue());
                        editorEdit.commit();
                    }
                } else {
                    Log.d("NetConfigManager", "un repeat check in 24 hour!");
                }
            }
            z10 = false;
        }
        this.f26499j = z10;
        SharedPreferences sharedPreferences5 = this.f26500k.getSharedPreferences("net_launch", 0);
        if (sharedPreferences5 != null && (editorEdit5 = sharedPreferences5.edit()) != null) {
            editorEdit5.putInt("apm_netperf_sampling_rate_last", this.f26493d);
            editorEdit5.putInt("apm_netperf_extra_last", this.f26494e);
            editorEdit5.commit();
        }
        SharedPreferences sharedPreferences6 = this.f26500k.getSharedPreferences("net_launch", 0);
        if (sharedPreferences6 != null) {
            this.f26497h = sharedPreferences6.getInt("apm_netperf_day_limit", 0);
            this.f26498i = sharedPreferences6.getInt("apm_netperf_data_rate", 0);
        }
        int i12 = this.f26493d;
        int i13 = this.f26494e;
        if (i12 >= i13) {
            this.f26501l = 0;
            return;
        }
        if (i13 == 0) {
            this.f26501l = 0;
        } else if (a((i12 * 100) / i13)) {
            this.f26501l = 0;
        } else {
            this.f26501l = 1;
        }
    }

    public boolean enableTracer() {
        return this.f26499j;
    }

    public int getDataRate() {
        return this.f26498i;
    }

    public int getDayLimit() {
        return this.f26497h;
    }

    public int getExtraRateFlag() {
        return this.f26501l;
    }

    public boolean getNetRequestBodyCollectState() {
        return this.f26502m;
    }

    public void setNetRequestBodyCollectState(boolean z10) {
        this.f26502m = z10;
    }

    private static boolean a(int i10) {
        if (i10 == 0) {
            return false;
        }
        return i10 == 100 || new Random().nextInt(100) <= i10;
    }
}
