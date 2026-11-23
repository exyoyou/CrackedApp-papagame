package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b<Boolean> {
    d(SharedPreferences sharedPreferences, String str, Boolean bool) {
        super(sharedPreferences, str, bool);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Boolean e(Boolean bool) {
        return Boolean.valueOf(this.f95035b.getBoolean(this.f95036c, bool.booleanValue()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void h(Boolean bool) {
        a(b().putBoolean(this.f95036c, bool.booleanValue()));
    }
}
