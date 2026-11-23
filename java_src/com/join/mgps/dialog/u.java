package com.join.mgps.dialog;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes3.dex */
public class u extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f67849a;

    public interface a {
        void cloesCallBack();
    }

    public u(View mView, int width, int height, boolean bool, a mOnCloesCallBack) {
        super(mView, width, height, bool);
        this.f67849a = mOnCloesCallBack;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        a aVar = this.f67849a;
        if (aVar != null) {
            aVar.cloesCallBack();
        }
        super.dismiss();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor) {
        if (Build.VERSION.SDK_INT >= 24) {
            Rect rect = new Rect();
            anchor.getGlobalVisibleRect(rect);
            setHeight(anchor.getResources().getDisplayMetrics().heightPixels - rect.bottom);
        }
        super.showAsDropDown(anchor);
    }
}
