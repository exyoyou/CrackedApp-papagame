package com.byazt.ti;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2161, 20})
public class c implements com.byazt.iy.n {
    public static final Map<String, com.byazt.iy.n> tt = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20188c;

    private c(String str) {
        this.f20188c = str;
    }

    public static com.byazt.iy.n c(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_ad_sdk_multi_sp";
        }
        Map<String, com.byazt.iy.n> map = tt;
        com.byazt.iy.n nVar = map.get(str);
        if (nVar != null) {
            return nVar;
        }
        c cVar = new c(str);
        map.put(str, cVar);
        return cVar;
    }

    @Override // com.byazt.iy.n
    public void apply() {
    }

    @Override // com.byazt.iy.n
    public void applySync() {
    }

    @Override // com.byazt.iy.n
    public void clear() {
        tt.c(this.f20188c);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean contains(String str) {
        return tt.c(this.f20188c, str);
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
        return tt.tt(this.f20188c);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        return tt.c(this.f20188c, str, z10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        return tt.c(this.f20188c, str, f10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        return tt.c(this.f20188c, str, i10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        return tt.c(this.f20188c, str, j10);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return tt.tt(this.f20188c, str, str2);
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return tt.tt(this.f20188c, str, set);
    }

    @Override // com.byazt.iy.n
    public void put(String str, int i10) {
        tt.c(this.f20188c, str, Integer.valueOf(i10));
    }

    @Override // com.byazt.iy.n, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // com.byazt.iy.n
    public void remove(String str) {
        tt.tt(this.f20188c, str);
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
        tt.c(this.f20188c, str, Long.valueOf(j10));
    }

    @Override // com.byazt.iy.n
    public float get(String str, float f10) {
        return getFloat(str, f10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, float f10) {
        tt.c(this.f20188c, str, Float.valueOf(f10));
    }

    @Override // com.byazt.iy.n
    public boolean get(String str, boolean z10) {
        return getBoolean(str, z10);
    }

    @Override // com.byazt.iy.n
    public void put(String str, boolean z10) {
        tt.c(this.f20188c, str, Boolean.valueOf(z10));
    }

    @Override // com.byazt.iy.n
    public String get(String str, String str2) {
        return getString(str, str2);
    }

    @Override // com.byazt.iy.n
    public void put(String str, String str2) {
        tt.c(this.f20188c, str, str2);
    }

    @Override // com.byazt.iy.n
    public Set<String> get(String str, Set<String> set) {
        return getStringSet(str, set);
    }

    @Override // com.byazt.iy.n
    public void put(String str, Set<String> set) {
        tt.c(this.f20188c, str, set);
    }
}
