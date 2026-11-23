package com.byazt.vif;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2075, 20})
public class c implements com.byazt.it.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.iy.n f21202c;

    public c(com.byazt.iy.n nVar) {
        this.f21202c = nVar;
    }

    @Override // com.byazt.it.c
    public void apply() {
        this.f21202c.apply();
    }

    @Override // com.byazt.it.c
    public void applySync() {
        this.f21202c.applySync();
    }

    @Override // com.byazt.it.c
    public void clear() {
        this.f21202c.clear();
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f21202c.contains(str);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this.f21202c.edit();
    }

    @Override // com.byazt.it.c
    public int get(String str, int i10) {
        return this.f21202c.getInt(str, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return this.f21202c.getAll();
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        return this.f21202c.getBoolean(str, z10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        return this.f21202c.getFloat(str, f10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        return this.f21202c.getInt(str, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        return this.f21202c.getLong(str, j10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return this.f21202c.getString(str, str2);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return this.f21202c.getStringSet(str, set);
    }

    @Override // com.byazt.it.c
    public void put(String str, int i10) {
        this.f21202c.put(str, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21202c.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.it.c
    public void remove(String str) {
        this.f21202c.remove(str);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21202c.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.it.c
    public long get(String str, long j10) {
        return this.f21202c.getLong(str, j10);
    }

    @Override // com.byazt.it.c
    public void put(String str, long j10) {
        this.f21202c.put(str, j10);
    }

    @Override // com.byazt.it.c
    public float get(String str, float f10) {
        return this.f21202c.getFloat(str, f10);
    }

    @Override // com.byazt.it.c
    public void put(String str, float f10) {
        this.f21202c.put(str, f10);
    }

    @Override // com.byazt.it.c
    public boolean get(String str, boolean z10) {
        return this.f21202c.getBoolean(str, z10);
    }

    @Override // com.byazt.it.c
    public void put(String str, boolean z10) {
        this.f21202c.put(str, z10);
    }

    @Override // com.byazt.it.c
    public String get(String str, String str2) {
        return this.f21202c.getString(str, str2);
    }

    @Override // com.byazt.it.c
    public void put(String str, String str2) {
        this.f21202c.put(str, str2);
    }

    @Override // com.byazt.it.c
    public Set<String> get(String str, Set<String> set) {
        return this.f21202c.getStringSet(str, set);
    }

    @Override // com.byazt.it.c
    public void put(String str, Set<String> set) {
        this.f21202c.put(str, set);
    }
}
