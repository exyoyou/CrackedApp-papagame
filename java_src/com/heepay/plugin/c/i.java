package com.heepay.plugin.c;

import android.content.Context;
import android.widget.Toast;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static i f34301b = new i();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Toast f34302a;

    public static i a() {
        return f34301b;
    }

    public void a(Context context, CharSequence charSequence) {
        Toast toast = this.f34302a;
        if (toast == null) {
            this.f34302a = Toast.makeText(context, charSequence, 1);
        } else {
            toast.setText(charSequence);
        }
        this.f34302a.show();
    }
}
