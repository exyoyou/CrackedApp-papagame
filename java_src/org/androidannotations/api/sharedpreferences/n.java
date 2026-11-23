package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class n {
    private final SharedPreferences sharedPreferences;

    public n(SharedPreferences sharedPreferences) {
        this.sharedPreferences = sharedPreferences;
    }

    protected d booleanField(String str, boolean z10) {
        return new d(this.sharedPreferences, str, Boolean.valueOf(z10));
    }

    public final void clear() {
        m.a(this.sharedPreferences.edit().clear());
    }

    protected g floatField(String str, float f10) {
        return new g(this.sharedPreferences, str, Float.valueOf(f10));
    }

    public final SharedPreferences getSharedPreferences() {
        return this.sharedPreferences;
    }

    protected i intField(String str, int i10) {
        return new i(this.sharedPreferences, str, Integer.valueOf(i10));
    }

    protected k longField(String str, long j10) {
        return new k(this.sharedPreferences, str, Long.valueOf(j10));
    }

    protected p stringField(String str, String str2) {
        return new p(this.sharedPreferences, str, str2);
    }

    protected r stringSetField(String str, Set<String> set) {
        return new r(this.sharedPreferences, str, set);
    }
}
