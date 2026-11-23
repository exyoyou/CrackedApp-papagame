package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class i extends b<Integer> {
    i(SharedPreferences sharedPreferences, String str, Integer num) {
        super(sharedPreferences, str, num);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Integer e(Integer num) {
        try {
            return Integer.valueOf(this.f95035b.getInt(this.f95036c, num.intValue()));
        } catch (ClassCastException e10) {
            try {
                return Integer.valueOf(Integer.parseInt(this.f95035b.getString(this.f95036c, "" + num)));
            } catch (Exception unused) {
                throw e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void h(Integer num) {
        a(b().putInt(this.f95036c, num.intValue()));
    }
}
