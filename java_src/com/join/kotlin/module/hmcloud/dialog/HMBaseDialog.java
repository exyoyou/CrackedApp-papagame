package com.join.kotlin.module.hmcloud.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Window;
import android.view.WindowManager;
import com.join.android.app.mgsim.wufun.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f¨\u0006\u000e"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "themeResId", "", "(Landroid/content/Context;I)V", "setWindowSize", "", "widthF", "", "heightF", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class HMBaseDialog extends Dialog {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMBaseDialog(@NotNull Context context) {
        super(context, R.style.HKDialogLoading);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void setWindowSize(float widthF, float heightF) {
        Window window = getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        Object systemService = getContext().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        WindowManager windowManager = (WindowManager) systemService;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        int i10 = displayMetrics.widthPixels;
        int i11 = displayMetrics.heightPixels;
        attributes.width = (int) (i10 * widthF);
        attributes.height = (int) (i11 * heightF);
        attributes.gravity = 17;
        window.setAttributes(attributes);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMBaseDialog(@NotNull Context context, int i10) {
        super(context, R.style.HKDialogLoading);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
