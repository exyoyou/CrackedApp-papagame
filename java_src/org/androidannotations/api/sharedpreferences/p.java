package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class p extends b<String> {
    p(SharedPreferences sharedPreferences, String str, String str2) {
        super(sharedPreferences, str, str2);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public String e(String str) {
        return this.f95035b.getString(this.f95036c, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void h(String str) {
        a(b().putString(this.f95036c, str));
    }
}
