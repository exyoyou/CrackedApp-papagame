package com.haima.hmcp.utils;

import android.content.Context;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;

/* JADX INFO: loaded from: classes5.dex */
public class ToastUtil {
    private static final int DEFAULT_DURATION = 0;
    private static final int DEFAULT_TEXT_COLOR = -1;
    private static final int DEFAULT_TEXT_SIZE_SP = 16;
    private static final int LAYOUT_HEIGHT_DP = 48;
    private static final int LAYOUT_WIDTH_DP = 136;
    private static final int PADDING_HORIZONTAL_DP = 36;
    private static final int PADDING_VERTICAL_DP = 12;
    private static Toast sToast;

    private ToastUtil() {
    }

    public static void cancelCurrentToast() {
        Toast toast = sToast;
        if (toast != null) {
            toast.cancel();
            sToast = null;
        }
    }

    private static LinearLayout createToastLayout(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setBackgroundResource(R.drawable.hm_custom_toast_bg);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(dp2px(context, 136.0f), dp2px(context, 48.0f)));
        int iDp2px = dp2px(context, 36.0f);
        int iDp2px2 = dp2px(context, 12.0f);
        linearLayout.setPadding(iDp2px, iDp2px2, iDp2px, iDp2px2);
        return linearLayout;
    }

    private static TextView createToastTextView(Context context, String str) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(-1);
        textView.setTextSize(16.0f);
        textView.setGravity(17);
        return textView;
    }

    private static int dp2px(Context context, float f10) {
        return (int) TypedValue.applyDimension(1, f10, ResourceManager.getInstance().getResources().getDisplayMetrics());
    }

    private static void showCustomToast(Context context, String str) {
        LinearLayout linearLayoutCreateToastLayout = createToastLayout(context);
        linearLayoutCreateToastLayout.addView(createToastTextView(context, str));
        Toast toast = new Toast(context);
        sToast = toast;
        toast.setDuration(0);
        sToast.setView(linearLayoutCreateToastLayout);
        sToast.show();
    }

    public static void showToast(@NonNull Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        cancelCurrentToast();
        showCustomToast(applicationContext, str);
    }

    public static void showToast(@NonNull Context context, @StringRes int i10) {
        if (context == null) {
            return;
        }
        showToast(context, context.getString(i10));
    }
}
