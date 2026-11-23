package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class k extends b<Long> {
    k(SharedPreferences sharedPreferences, String str, Long l10) {
        super(sharedPreferences, str, l10);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Long e(Long l10) {
        try {
            return Long.valueOf(this.f95035b.getLong(this.f95036c, l10.longValue()));
        } catch (ClassCastException e10) {
            try {
                return Long.valueOf(Long.parseLong(this.f95035b.getString(this.f95036c, "" + l10)));
            } catch (Exception unused) {
                throw e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void h(Long l10) {
        a(b().putLong(this.f95036c, l10.longValue()));
    }
}
