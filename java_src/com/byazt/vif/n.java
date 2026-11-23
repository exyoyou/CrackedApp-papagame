package com.byazt.vif;

import android.content.SharedPreferences;
import com.byazt.it.sp;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 2075, 46})
public class n implements sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.iy.n f21203c;

    @com.byazt.zqa.c(c = {0, 1, 2075, 151})
    private static class c implements SharedPreferences.Editor {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SharedPreferences.Editor f21204c;
        public final com.byazt.iy.n tt;

        public c(SharedPreferences.Editor editor, com.byazt.iy.n nVar) {
            this.f21204c = editor;
            this.tt = nVar;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            this.f21204c.apply();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f21204c.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return this.f21204c.commit();
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z10) {
            com.byazt.bnf.tt.c(str, Boolean.valueOf(z10), this.tt);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f10) {
            com.byazt.bnf.tt.c(str, Float.valueOf(f10), this.tt);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i10) {
            com.byazt.bnf.tt.c(str, Integer.valueOf(i10), this.tt);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j10) {
            com.byazt.bnf.tt.c(str, Long.valueOf(j10), this.tt);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            com.byazt.bnf.tt.c(str, str2, this.tt);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            com.byazt.bnf.tt.c(str, set, this.tt);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            com.byazt.bnf.tt.tt(str, this.tt);
            return this;
        }
    }

    public n(com.byazt.iy.n nVar) {
        this.f21203c = nVar;
    }

    @Override // com.byazt.it.c
    public void apply() {
        this.f21203c.apply();
    }

    @Override // com.byazt.it.c
    public void applySync() {
        this.f21203c.applySync();
    }

    @Override // com.byazt.it.c
    public void clear() {
        this.f21203c.clear();
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public boolean contains(String str) {
        return this.f21203c.contains(str);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return new c(this.f21203c.edit(), this.f21203c);
    }

    @Override // com.byazt.it.c
    public int get(String str, int i10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public Map<String, String> getAll() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f21203c.getAll().entrySet()) {
            map.put((String) entry.getKey(), com.byazt.bnf.tt.c((String) entry.getValue()));
        }
        return map;
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, z10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, f10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public int getInt(String str, int i10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, i10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public long getLong(String str, long j10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, j10);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public String getString(String str, String str2) {
        return com.byazt.bnf.tt.c(str, this.f21203c, str2);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return com.byazt.bnf.tt.c(str, this.f21203c, set);
    }

    @Override // com.byazt.it.c
    public void put(String str, int i10) {
        com.byazt.bnf.tt.c(str, Integer.valueOf(i10), this.f21203c);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21203c.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.it.c
    public void remove(String str) {
        com.byazt.bnf.tt.tt(str, this.f21203c);
    }

    @Override // com.byazt.it.c, android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.f21203c.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // com.byazt.it.c
    public long get(String str, long j10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, j10);
    }

    @Override // com.byazt.it.c
    public void put(String str, long j10) {
        com.byazt.bnf.tt.c(str, Long.valueOf(j10), this.f21203c);
    }

    @Override // com.byazt.it.c
    public float get(String str, float f10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, f10);
    }

    @Override // com.byazt.it.c
    public void put(String str, float f10) {
        com.byazt.bnf.tt.c(str, Float.valueOf(f10), this.f21203c);
    }

    @Override // com.byazt.it.c
    public boolean get(String str, boolean z10) {
        return com.byazt.bnf.tt.c(str, this.f21203c, z10);
    }

    @Override // com.byazt.it.c
    public void put(String str, boolean z10) {
        com.byazt.bnf.tt.c(str, Boolean.valueOf(z10), this.f21203c);
    }

    @Override // com.byazt.it.c
    public String get(String str, String str2) {
        return com.byazt.bnf.tt.c(str, this.f21203c, str2);
    }

    @Override // com.byazt.it.c
    public void put(String str, String str2) {
        com.byazt.bnf.tt.c(str, str2, this.f21203c);
    }

    @Override // com.byazt.it.c
    public Set<String> get(String str, Set<String> set) {
        return com.byazt.bnf.tt.c(str, this.f21203c, set);
    }

    @Override // com.byazt.it.c
    public void put(String str, Set<String> set) {
        com.byazt.bnf.tt.c(str, set, this.f21203c);
    }
}
