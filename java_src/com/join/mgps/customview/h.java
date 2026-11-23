package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class h extends PopupWindow {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Context f66438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected View f66439c;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            h.this.dismiss();
            return true;
        }
    }

    public h(Context context) {
        super(context);
        this.f66438b = context;
        c();
    }

    private void a() {
        Activity activity = (Activity) this.f66438b;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 0.3f;
        activity.getWindow().setAttributes(attributes);
    }

    private void c() {
        setAnimationStyle(R.style.animation_image_pager_popup);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    public void b() {
        Activity activity = (Activity) this.f66438b;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 1.0f;
        activity.getWindow().setAttributes(attributes);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        b();
        super.dismiss();
    }

    @Override // android.widget.PopupWindow
    public int getHeight() {
        View view = this.f66439c;
        return view != null ? view.getMeasuredHeight() : super.getHeight();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor) {
        super.showAsDropDown(anchor);
        a();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View parent, int gravity, int x10, int y10) {
        super.showAtLocation(parent, gravity, x10, y10);
        a();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor, int xoff, int yoff) {
        super.showAsDropDown(anchor, xoff, yoff);
        a();
    }

    public h(Context context, View parent, int width, int height) {
        super(parent, width, height, true);
        this.f66438b = context;
        this.f66439c = parent;
        c();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor, int xoff, int yoff, int gravity) {
        super.showAsDropDown(anchor, xoff, yoff, gravity);
        a();
    }
}
