package com.byazt.wr;

import android.content.SharedPreferences;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1361, 15})
public class uj implements com.byazt.iy.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedPreferences f21663c;

    public uj(SharedPreferences sharedPreferences) {
        this.f21663c = sharedPreferences;
    }

    @Override // com.byazt.iy.n
    public void apply() {
    }

    @Override // com.byazt.iy.n
    public void applySync() {
    }

    @Override // com.byazt.iy.n
    public void clear() {
        try {
            this.f21663c.edit().clear().apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f21663c.contains(str);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this.f21663c.edit();
    }

    @Override // com.byazt.iy.n
    public int get(String str, int i10) {
        try {
            return this.f21663c.getInt(str, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        try {
            return this.f21663c.getAll();
        } catch (Exception unused) {
            return Collections.emptyMap();
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        try {
            return this.f21663c.getBoolean(str, z10);
        } catch (Exception unused) {
            return z10;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        try {
            return this.f21663c.getFloat(str, f10);
        } catch (Exception unused) {
            return f10;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        try {
            return this.f21663c.getInt(str, i10);
        } catch (Exception unused) {
            return i10;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        try {
            return this.f21663c.getLong(str, j10);
        } catch (Exception unused) {
            return j10;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public String getString(String str, String str2) {
        try {
            return this.f21663c.getString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        try {
            return this.f21663c.getStringSet(str, set);
        } catch (Exception unused) {
            return set;
        }
    }

    @Override // com.byazt.iy.n
    public void put(String str, int i10) {
        try {
            this.f21663c.edit().putInt(str, i10).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21663c.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.iy.n
    public void remove(String str) {
        try {
            this.f21663c.edit().remove(str).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21663c.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.iy.n
    public long get(String str, long j10) {
        try {
            return this.f21663c.getLong(str, j10);
        } catch (Exception unused) {
            return j10;
        }
    }

    @Override // com.byazt.iy.n
    public void put(String str, long j10) {
        try {
            this.f21663c.edit().putLong(str, j10).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.iy.n
    public float get(String str, float f10) {
        try {
            return this.f21663c.getFloat(str, f10);
        } catch (Exception unused) {
            return f10;
        }
    }

    @Override // com.byazt.iy.n
    public void put(String str, float f10) {
        try {
            this.f21663c.edit().putFloat(str, f10).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.iy.n
    public boolean get(String str, boolean z10) {
        try {
            return this.f21663c.getBoolean(str, z10);
        } catch (Exception unused) {
            return z10;
        }
    }

    @Override // com.byazt.iy.n
    public void put(String str, boolean z10) {
        try {
            this.f21663c.edit().putBoolean(str, z10).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.iy.n
    public String get(String str, String str2) {
        try {
            return this.f21663c.getString(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    @Override // com.byazt.iy.n
    public void put(String str, String str2) {
        try {
            this.f21663c.edit().putString(str, str2).apply();
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.iy.n
    public Set<String> get(String str, Set<String> set) {
        try {
            return this.f21663c.getStringSet(str, set);
        } catch (Exception unused) {
            return set;
        }
    }

    @Override // com.byazt.iy.n
    public void put(String str, Set<String> set) {
        try {
            this.f21663c.edit().putStringSet(str, set).apply();
        } catch (Throwable unused) {
        }
    }
}
