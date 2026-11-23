package com.efs.sdk.fluttersdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.os.StatFs;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.core.config.GlobalInfoManager;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.base.samplingwhitelist.SamplingWhiteListUtil;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes9.dex */
public class FlutterConfigManager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EfsReporter f26404c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f26410i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26402a = "FlutterConfigManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26403b = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f26405d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f26406e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f26407f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f26408g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f26409h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f26411j = false;

    public FlutterConfigManager(Context context, EfsReporter efsReporter) {
        this.f26410i = context;
        this.f26404c = efsReporter;
        efsReporter.getAllSdkConfig(new String[]{"flutter_pv_sampling_rate", "flutter_pv_max_count", "flutter_dart_exception_state", "flutter_dart_exception_max_count"}, new IConfigCallback() { // from class: com.efs.sdk.fluttersdk.FlutterConfigManager.1
            @Override // com.efs.sdk.base.observer.IConfigCallback
            public final void onChange(Map<String, Object> map) {
                try {
                    Object obj = map.get("flutter_pv_sampling_rate");
                    if (obj != null) {
                        FlutterConfigManager.this.f26405d = Integer.parseInt(obj.toString());
                        FlutterConfigManager flutterConfigManager = FlutterConfigManager.this;
                        flutterConfigManager.f26409h = FlutterConfigManager.a(flutterConfigManager.f26405d);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                try {
                    Object obj2 = map.get("flutter_pv_max_count");
                    if (obj2 != null) {
                        FlutterConfigManager.this.f26406e = Integer.parseInt(obj2.toString());
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                try {
                    Object obj3 = map.get("flutter_dart_exception_state");
                    if (obj3 != null) {
                        FlutterConfigManager.this.f26407f = Integer.parseInt(obj3.toString());
                    }
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
                try {
                    Object obj4 = map.get("flutter_dart_exception_max_count");
                    if (obj4 != null) {
                        FlutterConfigManager.this.f26408g = Integer.parseInt(obj4.toString());
                    }
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
                FlutterConfigManager.b(FlutterConfigManager.this);
            }
        });
    }

    public Map<String, Object> getCloudConfig() {
        if (!this.f26411j) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("flutter_pv_max_count", Integer.valueOf(this.f26406e));
        map.put("flutter_dart_exception_state", Integer.valueOf(this.f26407f));
        map.put("flutter_dart_exception_max_count", Integer.valueOf(this.f26408g));
        map.put("flutter_pv_sampling_hit", Boolean.valueOf(this.f26409h));
        return map;
    }

    public Map<String, Object> getNativeParams() {
        HashMap map = null;
        if (!this.f26411j) {
            return null;
        }
        try {
            HashMap map2 = new HashMap();
            try {
                Intent intentRegisterReceiver = this.f26410i.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                map2.put(bm.Z, Integer.valueOf(intentRegisterReceiver.getIntExtra("level", 0)));
                map2.put("temperature", Integer.valueOf(intentRegisterReceiver.getIntExtra("temperature", 0)));
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                long blockSizeLong = statFs.getBlockSizeLong();
                map2.put("disk_ratio", String.format(Locale.getDefault(), "%.2f", Double.valueOf(((statFs.getAvailableBlocksLong() * blockSizeLong) / (statFs.getBlockCountLong() * blockSizeLong)) * 100.0d)));
                map2.putAll(GlobalInfoManager.getInstance().getGlobalInfo().getGlobalInfoMap());
                map2.putAll(ControllerCenter.getGlobalEnvStruct().getPublicParamMap());
                return map2;
            } catch (Throwable unused) {
                map = map2;
                return map;
            }
        } catch (Throwable unused2) {
        }
    }

    public boolean isFlutterEnable() {
        return this.f26409h;
    }

    static /* synthetic */ boolean b(FlutterConfigManager flutterConfigManager) {
        flutterConfigManager.f26411j = true;
        return true;
    }

    static /* synthetic */ boolean a(int i10) {
        if (SamplingWhiteListUtil.isHitWL()) {
            return true;
        }
        if (i10 != 0) {
            return i10 == 100 || new Random().nextInt(100) <= i10;
        }
        return false;
    }
}
