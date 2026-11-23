package com.join.kotlin.base.dialog.callback;

import android.app.Activity;
import com.byazt.hv.TTDownloadField;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;", "", "onActivityShow", "", TTDownloadField.TT_ACTIVITY, "Landroid/app/Activity;", "onActivityDismiss", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface IDialogActivityCallback {
    void onActivityDismiss(@NotNull Activity activity);

    void onActivityShow(@NotNull Activity activity);
}
