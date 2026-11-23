package com.join.kotlin.quark.callback.impl;

import android.app.Activity;
import com.byazt.hv.TTDownloadField;
import com.join.kotlin.quark.callback.IDialogShareSourceCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/join/kotlin/quark/callback/impl/DialogShareSourceCallbackImpl;", "Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;", "<init>", "()V", "onSuccess", "", "onActivityShow", TTDownloadField.TT_ACTIVITY, "Landroid/app/Activity;", "onActivityDismiss", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class DialogShareSourceCallbackImpl implements IDialogShareSourceCallback {
    @Override // com.join.kotlin.base.dialog.callback.IDialogActivityCallback
    public void onActivityDismiss(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.join.kotlin.base.dialog.callback.IDialogActivityCallback
    public void onActivityShow(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.join.kotlin.quark.callback.IDialogShareSourceCallback
    public void onSuccess() {
    }
}
