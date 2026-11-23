package com.join.mgps.callbacks;

import android.app.Activity;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;

/* JADX INFO: loaded from: classes3.dex */
public interface r extends IDialogActivityCallback {
    void onEvent(Activity activity, int event, String jsonParams);
}
