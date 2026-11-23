package com.switfpass.pay.utils;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes2.dex */
public class c0 {
    static {
        new Handler();
        new v0();
    }

    public void a(Context context, String str) {
        View viewInflate = View.inflate(context, com.join.android.app.mgsim.wufun.R.array.smssdk_country_group_e, null);
        ((TextView) viewInflate.findViewById(com.join.android.app.mgsim.wufun.R.dimen.bottom_button_height)).setText(str);
        Toast toast = new Toast(context);
        toast.setGravity(17, 0, 0);
        toast.setDuration(1);
        toast.setView(viewInflate);
        toast.show();
    }
}
