package com.switfpass.pay.utils;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import com.switfpass.pay.MainApplication;

/* JADX INFO: loaded from: classes2.dex */
public class MyPopupWindowUtils implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private w f82734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f82735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f82736d = "pay.qq.jspay";

    public MyPopupWindowUtils(Context context, w wVar) {
        this.f82735c = context;
        this.f82734b = wVar;
    }

    public PopupWindow a(String str, int i10) {
        Resources resources;
        int i11;
        View viewInflate = View.inflate(this.f82735c, com.join.android.app.mgsim.wufun.R.array.materia_colors, null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, i10, -1);
        ImageView imageView = (ImageView) viewInflate.findViewById(com.join.android.app.mgsim.wufun.R.dimen.abc_dialog_list_padding_bottom_no_buttons);
        if (str.equals(MainApplication.f82451k) || str.equalsIgnoreCase(this.f82736d)) {
            resources = this.f82735c.getResources();
            i11 = 2130837549;
        } else if (str.startsWith(MainApplication.f82454n)) {
            resources = this.f82735c.getResources();
            i11 = 2130837551;
        } else {
            resources = this.f82735c.getResources();
            i11 = 2130837550;
        }
        imageView.setImageDrawable(resources.getDrawable(i11));
        imageView.setOnClickListener(new g1(popupWindow));
        popupWindow.setWidth(i10);
        popupWindow.setAnimationStyle(android.R.style.Animation.Dialog);
        popupWindow.update();
        popupWindow.setBackgroundDrawable(this.f82735c.getResources().getDrawable(17170445));
        popupWindow.setFocusable(true);
        popupWindow.setTouchable(true);
        popupWindow.setOutsideTouchable(false);
        return popupWindow;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        w wVar = this.f82734b;
        if (wVar != null) {
            wVar.a(view);
        }
    }
}
