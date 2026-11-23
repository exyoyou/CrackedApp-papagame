package org.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class r extends b<Set<String>> {
    r(SharedPreferences sharedPreferences, String str, Set<String> set) {
        super(sharedPreferences, str, set);
    }

    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Set<String> e(Set<String> set) {
        return m.c(this.f95035b, this.f95036c, set);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.androidannotations.api.sharedpreferences.b
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void h(Set<String> set) {
        SharedPreferences.Editor editorEdit = this.f95035b.edit();
        m.e(editorEdit, this.f95036c, set);
        a(editorEdit);
    }
}
