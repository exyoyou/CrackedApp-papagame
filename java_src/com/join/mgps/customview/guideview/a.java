package com.join.mgps.customview.guideview;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
class a {
    a() {
    }

    static View a(LayoutInflater inflater, b c10) {
        View view = c10.getView(inflater);
        MaskView.LayoutParams layoutParams = new MaskView.LayoutParams(-2, -2);
        layoutParams.f66414c = c10.getXOffset();
        layoutParams.f66415d = c10.getYOffset();
        layoutParams.f66412a = c10.getAnchor();
        layoutParams.f66413b = c10.getFitPosition();
        view.setLayoutParams(layoutParams);
        return view;
    }

    static Rect b(View view, int parentX, int parentY) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        Rect rect = new Rect();
        int i10 = iArr[0];
        rect.set(i10, iArr[1], view.getMeasuredWidth() + i10, iArr[1] + view.getMeasuredHeight());
        rect.offset(-parentX, -parentY);
        return rect;
    }
}
