package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(14)
class Wrapper14 {
    Wrapper14() {
    }

    static boolean ViewConfiguration_hasPermanentMenuKey(ViewConfiguration viewConfiguration) {
        return viewConfiguration.hasPermanentMenuKey();
    }

    public static void disableHomeButton(Activity activity) {
    }
}
