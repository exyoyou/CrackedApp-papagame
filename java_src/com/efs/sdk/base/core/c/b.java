package com.efs.sdk.base.core.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.config.GlobalInfoManager;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.newsharedpreferences.SharedPreferencesUtils;
import com.kuaishou.weapon.p0.bg;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class b extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, Long> f26259a = new HashMap<String, Long>() { // from class: com.efs.sdk.base.core.c.b.1
        {
            put("flow_5min", Long.valueOf(e0.a.f90863b));
            put("flow_hour", Long.valueOf(bg.f74510s));
            put("flow_day", 86400000L);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<String, Long> f26260b = new HashMap<String, Long>() { // from class: com.efs.sdk.base.core.c.b.2
        {
            put("flow_5min", 1048576L);
            put("flow_hour", 1048576L);
            put("flow_day", Long.valueOf(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE));
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, AtomicInteger> f26261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile SharedPreferences f26262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile SharedPreferences.Editor f26263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f26264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f26265g;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f26266a = new b(0);
    }

    /* synthetic */ b(byte b10) {
        this();
    }

    public static b a() {
        return a.f26266a;
    }

    private void b() {
        try {
            c();
        } catch (Throwable th) {
            Log.e("efs.flow", "init sharedpreferences error", th);
        }
    }

    private void c() {
        if (this.f26262d == null) {
            synchronized (b.class) {
                if (this.f26262d == null) {
                    this.f26262d = SharedPreferencesUtils.getSharedPreferences(this.f26264f, this.f26265g.toLowerCase() + "_flow");
                }
            }
        }
        if (this.f26263e == null) {
            synchronized (b.class) {
                if (this.f26263e == null) {
                    this.f26263e = this.f26262d.edit();
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(@NonNull Message message) {
        super.handleMessage(message);
        int i10 = message.what;
        if (i10 == 0) {
            b();
            if (this.f26262d == null) {
                Log.w("efs.flow", "sharedpreferences is null, cann't get last flow stat");
                return;
            }
            if (this.f26263e == null) {
                Log.w("efs.flow", "sharedpreferences editor is null, cann't refresh flow stat");
                return;
            }
            String strValueOf = String.valueOf(message.obj);
            long j10 = message.arg1;
            String netStatus = GlobalInfoManager.getInstance().getNetStatus();
            for (String str : f26259a.keySet()) {
                String strConcat = "curr_time_".concat(String.valueOf(str));
                if (!this.f26262d.contains(strConcat)) {
                    this.f26263e.putLong(strConcat, System.currentTimeMillis());
                }
                for (String str2 : a(str, strValueOf, netStatus)) {
                    this.f26263e.putLong(str2, this.f26262d.getLong(str2, 0L) + j10);
                }
            }
            this.f26263e.apply();
            return;
        }
        if (i10 != 1) {
            Log.w("efs.flow", "flow stat listener not support action '" + message.what + "'");
            return;
        }
        String strValueOf2 = String.valueOf(message.obj);
        long j11 = message.arg1;
        b();
        if (this.f26262d == null) {
            Log.w("efs.flow", "sharedpreferences is null, cann't get last refresh timestamp");
            return;
        }
        if (this.f26263e == null) {
            Log.w("efs.flow", "sharedpreferences editor is null, cann't refresh timestamp");
            return;
        }
        String strConcat2 = "curr_time_".concat(strValueOf2);
        if (Math.abs(System.currentTimeMillis() - this.f26262d.getLong(strConcat2, System.currentTimeMillis())) >= j11) {
            for (String str3 : this.f26262d.getAll().keySet()) {
                if (str3.startsWith(strValueOf2)) {
                    this.f26263e.putLong(str3, 0L);
                }
            }
            this.f26263e.putLong(strConcat2, System.currentTimeMillis());
            this.f26263e.apply();
            this.f26261c.clear();
        }
    }

    private b() {
        super(com.efs.sdk.base.core.util.concurrent.a.f26397a.getLooper());
        this.f26261c = new ConcurrentHashMap(5);
        this.f26264f = ControllerCenter.getGlobalEnvStruct().mAppContext;
        this.f26265g = ControllerCenter.getGlobalEnvStruct().getAppid();
        b();
        File fileC = com.efs.sdk.base.core.util.a.c(ControllerCenter.getGlobalEnvStruct().mAppContext, ControllerCenter.getGlobalEnvStruct().getAppid());
        if (fileC.exists()) {
            com.efs.sdk.base.core.util.b.b(fileC);
        }
    }

    public final boolean a(@NonNull String str, long j10) {
        String netStatus = GlobalInfoManager.getInstance().getNetStatus();
        boolean zA = true;
        for (Map.Entry<String, Long> entry : f26259a.entrySet()) {
            zA = a(entry.getKey(), entry.getValue().longValue(), str, netStatus, j10);
            if (!zA) {
                break;
            }
        }
        return zA;
    }

    private boolean a(@NonNull String str, long j10, @NonNull String str2, @NonNull String str3, long j11) {
        b();
        if (this.f26262d == null) {
            Log.w("efs.flow", "sharedpreferences is null, cann't get last flow stat");
            return false;
        }
        List<String> listA = a(str, str2, str3);
        Map<String, String> mapC = com.efs.sdk.base.core.config.a.c.a().c();
        for (String str4 : listA) {
            if (Math.abs(System.currentTimeMillis() - this.f26262d.getLong("curr_time_".concat(String.valueOf(str)), System.currentTimeMillis())) > j10) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 1;
                messageObtain.obj = str;
                messageObtain.arg1 = Long.valueOf(j10).intValue();
                sendMessage(messageObtain);
            }
            long jA = a(mapC, str, str4);
            long j12 = this.f26262d.getLong(str4, 0L);
            if (j12 + j11 > jA) {
                Log.i("efs.flow", "flow limit, key: " + str4 + ", max: " + jA + ", now: " + j12 + ", size: " + j11);
                a(str4);
                return false;
            }
        }
        return true;
    }

    private void a(String str) {
        if (!this.f26261c.containsKey(str) || this.f26261c.get(str) == null || this.f26261c.get(str).get() <= 10) {
            com.efs.sdk.base.core.f.f.a.f26372a.a(com.efs.sdk.base.core.config.a.c.a().f26314d.f26302a, str);
            if (str.equals("flow_day")) {
                com.efs.sdk.base.core.f.f.a.f26372a.a(com.efs.sdk.base.core.config.a.c.a().f26314d.f26302a);
            }
            if (!this.f26261c.containsKey(str)) {
                this.f26261c.put(str, new AtomicInteger());
            }
            this.f26261c.get(str).incrementAndGet();
        }
    }

    private static long a(Map<String, String> map, @NonNull String str, @NonNull String str2) {
        long jLongValue = f26260b.get(str).longValue();
        if (map == null || !map.containsKey(str2) || TextUtils.isEmpty(map.get(str2))) {
            return jLongValue;
        }
        try {
            return Long.parseLong(map.get(str2));
        } catch (Throwable th) {
            Log.w("efs.flow", "get max flow error", th);
            return jLongValue;
        }
    }

    private static List<String> a(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str + "_" + str2);
        }
        if (!TextUtils.isEmpty(str3) && !"unknown".equalsIgnoreCase(str3)) {
            arrayList.add(str + "_" + str3);
        }
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            arrayList.add(str + "_" + str2 + "_" + str3);
        }
        return arrayList;
    }
}
