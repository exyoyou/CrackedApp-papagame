package com.join.android.app.common.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.CycleInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes5.dex */
public class ClearEditText extends EditText implements View.OnFocusChangeListener, TextWatcher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Drawable f34821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f34822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f34823d;

    public ClearEditText(Context context) {
        this(context, null);
    }

    private void a() {
        Drawable drawable = getCompoundDrawables()[2];
        this.f34821b = drawable;
        if (drawable == null) {
            this.f34821b = getResources().getDrawable(R.drawable.delete_selector);
        }
        Drawable drawable2 = this.f34821b;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f34821b.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    public static Animation b(int counts) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 10.0f, 0.0f, 0.0f);
        translateAnimation.setInterpolator(new CycleInterpolator(counts));
        translateAnimation.setDuration(1000L);
        return translateAnimation;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable s10) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View v10, boolean hasFocus) {
        this.f34822c = hasFocus;
        if (hasFocus) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence s10, int start, int count, int after) {
        if (this.f34822c) {
            setClearIconVisible(s10.length() > 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 1 && getCompoundDrawables()[2] != null) {
            int intrinsicHeight = this.f34821b.getIntrinsicHeight();
            if (event.getX() > ((float) (getWidth() - getTotalPaddingRight())) && event.getX() < ((float) (getWidth() - getPaddingRight())) && event.getY() >= ((float) ((getHeight() - intrinsicHeight) / 2)) && event.getY() <= ((float) ((getHeight() + intrinsicHeight) / 2))) {
                setText("");
            }
        }
        return super.onTouchEvent(event);
    }

    protected void setClearIconVisible(boolean visible) {
        if (!this.f34823d) {
            visible = false;
        }
        Drawable drawable = visible ? this.f34821b : null;
        setCompoundDrawablePadding(20);
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], drawable, getCompoundDrawables()[3]);
    }

    public void setShowDeleteIcon(boolean showDeleteIcon) {
        this.f34823d = showDeleteIcon;
    }

    public ClearEditText(Context context, AttributeSet attrs) {
        this(context, attrs, android.R.attr.editTextStyle);
    }

    public ClearEditText(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f34823d = true;
        a();
    }
}
