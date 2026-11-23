package com.join.mgps.callbacks;

import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.wufan.user.service.protobuf.UserInfo;

/* JADX INFO: loaded from: classes3.dex */
public interface b extends IDialogActivityCallback {
    void onBindSuccess(UserInfo userInfo);
}
