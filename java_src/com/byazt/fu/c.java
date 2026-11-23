package com.byazt.fu;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.byazt.iy.n;
import com.bytedance.keva.Keva;
import com.bytedance.keva.KevaBuilder;
import com.bytedance.keva.KevaMonitor;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2145, 20})
public class c implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Keva f14283c;
    public static final Map<String, n> tt = new HashMap();
    public static volatile boolean ve = false;
    public static volatile boolean uj = true;

    private c(String str, boolean z10, int i10) {
        if (i10 != 1) {
            tt(str, z10);
        } else {
            c(str, z10);
        }
    }

    public static n c(Context context, String str, boolean z10, int i10) {
        if (!uj) {
            return null;
        }
        try {
            if (!ve) {
                ve = c(context);
            }
            if (TextUtils.isEmpty(str)) {
                str = "tt_ad_sdk_keva";
            }
            if (!uj) {
                return null;
            }
            Map<String, n> map = tt;
            n cVar = map.get(str);
            if (cVar == null) {
                cVar = new c(str, z10, i10);
                if (uj) {
                    map.put(str, cVar);
                }
            }
            if (uj) {
                return cVar;
            }
            return null;
        } catch (Throwable unused) {
            uj = false;
            return null;
        }
    }

    private void tt(String str, boolean z10) {
        if (z10) {
            this.f14283c = Keva.getRepoSync(str, 1);
        } else {
            this.f14283c = Keva.getRepoSync(str, 0);
        }
    }

    @Override // com.byazt.iy.n
    public void apply() {
    }

    @Override // com.byazt.iy.n
    public void applySync() {
    }

    @Override // com.byazt.iy.n
    public void clear() {
        this.f14283c.clear();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f14283c.contains(str);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return null;
    }

    @Override // com.byazt.iy.n
    public int get(String str, int i10) {
        return getInt(str, i10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return this.f14283c.getAll();
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        return this.f14283c.getBoolean(str, z10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        return this.f14283c.getFloat(str, f10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        return this.f14283c.getInt(str, i10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        return this.f14283c.getLong(str, j10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return this.f14283c.getString(str, str2);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return this.f14283c.getStringSet(str, set);
    }

    @Override // com.byazt.iy.n
    public void put(String str, int i10) {
        this.f14283c.storeInt(str, i10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.iy.n
    public void remove(String str) {
        this.f14283c.erase(str);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.iy.n
    public long get(String str, long j10) {
        return getLong(str, j10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, long j10) {
        this.f14283c.storeLong(str, j10);
    }

    @Override // com.byazt.iy.n
    public float get(String str, float f10) {
        return getFloat(str, f10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, float f10) {
        this.f14283c.storeFloat(str, f10);
    }

    @Override // com.byazt.iy.n
    public boolean get(String str, boolean z10) {
        return getBoolean(str, z10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, boolean z10) {
        this.f14283c.storeBoolean(str, z10);
    }

    @Override // com.byazt.iy.n
    public String get(String str, String str2) {
        return getString(str, str2);
    }

    @Override // com.byazt.iy.n
    public void put(String str, String str2) {
        this.f14283c.storeString(str, str2);
    }

    @Override // com.byazt.iy.n
    public Set<String> get(String str, Set<String> set) {
        return getStringSet(str, set);
    }

    @Override // com.byazt.iy.n
    public void put(String str, Set<String> set) {
        this.f14283c.getStringSet(str, set);
    }

    private static boolean c(Context context) {
        if (context == null) {
            return false;
        }
        KevaBuilder kevaBuilder = KevaBuilder.getInstance();
        kevaBuilder.setMonitor(new KevaMonitor() { // from class: com.byazt.fu.c.1
        });
        kevaBuilder.setContext(context);
        return true;
    }

    private void c(String str, boolean z10) {
        if (z10) {
            this.f14283c = Keva.getRepo(str, 1);
        } else {
            this.f14283c = Keva.getRepo(str, 0);
        }
    }
}
