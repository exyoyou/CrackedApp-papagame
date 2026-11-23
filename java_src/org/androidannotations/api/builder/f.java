package org.androidannotations.api.builder;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f95004a;

    public f(Context context) {
        this.f95004a = context;
    }

    public void a(int i10, int i11) {
        Context context = this.f95004a;
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(i10, i11);
        }
    }
}
