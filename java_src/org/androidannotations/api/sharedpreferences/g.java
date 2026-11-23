package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class g extends b<Float> {
    g(SharedPreferences sharedPreferences, String str, Float f10) {
        super(sharedPreferences, str, f10);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Float e(Float f10) {
        try {
            return Float.valueOf(this.f95035b.getFloat(this.f95036c, f10.floatValue()));
        } catch (ClassCastException e10) {
            try {
                return Float.valueOf(Float.parseFloat(this.f95035b.getString(this.f95036c, "" + f10)));
            } catch (Exception unused) {
                throw e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void h(Float f10) {
        a(b().putFloat(this.f95036c, f10.floatValue()));
    }
}
