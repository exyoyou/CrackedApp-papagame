package com.papa91.arc.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class AchievmentTipsDialog extends PopupWindow {
    public AchievmentTipsDialog(Context context) {
        super(context);
        setContentView(LayoutInflater.from(context).inflate(R.layout.pop_achievement_tips, (ViewGroup) null));
        setBackgroundDrawable(context.getResources().getDrawable(17170445));
        setWidth((int) context.getResources().getDimension(R.dimen.wdp336));
        setOutsideTouchable(true);
    }
}
