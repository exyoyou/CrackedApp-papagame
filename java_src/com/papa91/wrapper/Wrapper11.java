package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(11)
class Wrapper11 {
    Wrapper11() {
    }

    public static void Activity_invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
    }

    public static void MenuItem_setShowAsAction(MenuItem menuItem, boolean z10) {
        menuItem.setShowAsAction(z10 ? 6 : 0);
    }

    static void View_setSystemUiVisibility(View view, int i10) {
        view.setSystemUiVisibility(i10);
    }

    public static void displayActionBar(Activity activity) {
    }

    public static void displayHomeAsUp(Activity activity) {
    }
}
