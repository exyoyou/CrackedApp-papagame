package com.byazt.it;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public interface c extends SharedPreferences {
    void apply();

    void applySync();

    void clear();

    @Override // android.content.SharedPreferences
    boolean contains(String str);

    @Override // android.content.SharedPreferences
    SharedPreferences.Editor edit();

    float get(String str, float f10);

    int get(String str, int i10);

    long get(String str, long j10);

    String get(String str, String str2);

    Set<String> get(String str, Set<String> set);

    boolean get(String str, boolean z10);

    @Override // android.content.SharedPreferences
    Map getAll();

    @Override // android.content.SharedPreferences
    boolean getBoolean(String str, boolean z10);

    @Override // android.content.SharedPreferences
    float getFloat(String str, float f10);

    @Override // android.content.SharedPreferences
    int getInt(String str, int i10);

    @Override // android.content.SharedPreferences
    long getLong(String str, long j10);

    @Override // android.content.SharedPreferences
    String getString(String str, String str2);

    @Override // android.content.SharedPreferences
    Set<String> getStringSet(String str, Set<String> set);

    void put(String str, float f10);

    void put(String str, int i10);

    void put(String str, long j10);

    void put(String str, String str2);

    void put(String str, Set<String> set);

    void put(String str, boolean z10);

    @Override // android.content.SharedPreferences
    void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);

    void remove(String str);

    @Override // android.content.SharedPreferences
    void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);
}
