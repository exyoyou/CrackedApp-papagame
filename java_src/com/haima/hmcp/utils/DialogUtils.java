package com.haima.hmcp.utils;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes5.dex */
public class DialogUtils {
    public static void dismissDialogSafely(Dialog dialog) {
        if (dialog == null) {
            return;
        }
        try {
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
        } catch (Exception e10) {
            LogUtils.e("DialogUtils", "Exception when dismissing dialog: " + e10.getMessage());
        }
    }

    private static boolean isActivityValid(Activity activity) {
        return (activity == null || activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public static boolean isContextValid(Context context) {
        if (context == null) {
            return false;
        }
        if (context instanceof Activity) {
            return isActivityValid((Activity) context);
        }
        return true;
    }

    public static boolean showDialogSafely(Context context, Dialog dialog) {
        if (context != null && dialog != null) {
            if ((context instanceof Activity) && !isActivityValid((Activity) context)) {
                return false;
            }
            try {
                dialog.show();
                return true;
            } catch (WindowManager.BadTokenException e10) {
                LogUtils.e("DialogUtils", "BadTokenException when showing dialog: " + e10.getMessage());
            } catch (IllegalArgumentException e11) {
                LogUtils.e("DialogUtils", "IllegalArgumentException when showing dialog: " + e11.getMessage());
                return false;
            } catch (Exception e12) {
                LogUtils.e("DialogUtils", "Exception when showing dialog: " + e12.getMessage());
                return false;
            }
        }
        return false;
    }
}
