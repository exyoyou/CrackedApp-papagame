package com.byazt.vif;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2075, 13})
public class tt implements com.byazt.it.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.iy.n f21205c;

    public tt(com.byazt.iy.n nVar) {
        this.f21205c = nVar;
    }

    @Override // com.byazt.it.c
    public void apply() {
        this.f21205c.apply();
    }

    @Override // com.byazt.it.c
    public void applySync() {
        this.f21205c.applySync();
    }

    @Override // com.byazt.it.c
    public void clear() {
        this.f21205c.clear();
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f21205c.contains(str);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this.f21205c.edit();
    }

    @Override // com.byazt.it.c
    public int get(String str, int i10) {
        return this.f21205c.getInt(str, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public Map<String, ?> getAll() {
        return this.f21205c.getAll();
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        return this.f21205c.getBoolean(str, z10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        return this.f21205c.getFloat(str, f10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        return this.f21205c.getInt(str, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        return this.f21205c.getLong(str, j10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return this.f21205c.getString(str, str2);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return this.f21205c.getStringSet(str, set);
    }

    @Override // com.byazt.it.c
    public void put(String str, int i10) {
        this.f21205c.put(str, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21205c.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.it.c
    public void remove(String str) {
        this.f21205c.remove(str);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21205c.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.it.c
    public long get(String str, long j10) {
        return this.f21205c.getLong(str, j10);
    }

    @Override // com.byazt.it.c
    public void put(String str, long j10) {
        this.f21205c.put(str, j10);
    }

    @Override // com.byazt.it.c
    public float get(String str, float f10) {
        return this.f21205c.getFloat(str, f10);
    }

    @Override // com.byazt.it.c
    public void put(String str, float f10) {
        this.f21205c.put(str, f10);
    }

    @Override // com.byazt.it.c
    public boolean get(String str, boolean z10) {
        return this.f21205c.getBoolean(str, z10);
    }

    @Override // com.byazt.it.c
    public void put(String str, boolean z10) {
        this.f21205c.put(str, z10);
    }

    @Override // com.byazt.it.c
    public String get(String str, String str2) {
        return this.f21205c.getString(str, str2);
    }

    @Override // com.byazt.it.c
    public void put(String str, String str2) {
        this.f21205c.put(str, str2);
    }

    @Override // com.byazt.it.c
    public Set<String> get(String str, Set<String> set) {
        return this.f21205c.getStringSet(str, set);
    }

    @Override // com.byazt.it.c
    public void put(String str, Set<String> set) {
        this.f21205c.put(str, set);
    }
}
