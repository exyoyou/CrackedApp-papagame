package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
@TargetApi(11)
public class b {
    public static void a(Activity activity) {
        activity.invalidateOptionsMenu();
    }

    public static void b(MenuItem item, boolean show) {
        item.setShowAsAction(show ? 6 : 0);
    }

    static void c(View view, int visibility) {
        view.setSystemUiVisibility(visibility);
    }

    public static void d(Activity a10) {
    }

    public static void e(Activity a10) {
    }
}
