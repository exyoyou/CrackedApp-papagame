package com.papa91.arc.interfaces;

import android.app.Dialog;
import com.papa91.arc.bean.ButtonBean;
import com.papa91.arc.bean.PopwindowBean;

/* JADX INFO: loaded from: classes2.dex */
public interface RealNameCallBack {
    void onCancel(Dialog dialog, ButtonBean buttonBean);

    void onEvent(String str, String str2);

    void onFail(int i10);

    void onSuccess(Dialog dialog, PopwindowBean popwindowBean);
}
