package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class v extends PopupWindow {
    protected final Context mContext;
    protected View parentView;

    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v10, MotionEvent event) {
            if (event.getAction() != 4) {
                return false;
            }
            v.this.dismiss();
            return true;
        }
    }

    public v(Context context) {
        super(context);
        this.mContext = context;
        b();
    }

    private void a() {
        Activity activity = (Activity) this.mContext;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 0.3f;
        activity.getWindow().setAttributes(attributes);
    }

    private void b() {
        setAnimationStyle(R.style.animation_image_pager_popup);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
        if (Build.VERSION.SDK_INT >= 22) {
            setAttachedInDecor(false);
        }
    }

    public void clearBackground() {
        Activity activity = (Activity) this.mContext;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 1.0f;
        activity.getWindow().setAttributes(attributes);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        clearBackground();
        super.dismiss();
    }

    @Override // android.widget.PopupWindow
    public int getHeight() {
        View view = this.parentView;
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

    public v(Context context, View parent, int width, int height) {
        super(parent, width, height, true);
        this.mContext = context;
        this.parentView = parent;
        b();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View anchor, int xoff, int yoff, int gravity) {
        super.showAsDropDown(anchor, xoff, yoff, gravity);
        a();
    }
}
