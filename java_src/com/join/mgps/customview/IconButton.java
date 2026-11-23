package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.Button;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class IconButton extends Button {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f65125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected DrawablePositions f65126c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f65127d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Rect f65128e;

    private enum DrawablePositions {
        NONE,
        LEFT_AND_RIGHT,
        LEFT,
        RIGHT
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f65129a;

        static {
            int[] iArr = new int[DrawablePositions.values().length];
            f65129a = iArr;
            try {
                iArr[DrawablePositions.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f65129a[DrawablePositions.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f65129a[DrawablePositions.LEFT_AND_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public IconButton(Context context) {
        super(context);
        this.f65128e = new Rect();
    }

    protected void a(AttributeSet attrs) {
        if (this.f65128e == null) {
            this.f65128e = new Rect();
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.IconButton);
        setIconPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        TextPaint paint = getPaint();
        String string = getText().toString();
        paint.getTextBounds(string, 0, string.length(), this.f65128e);
        int width = (int) ((((double) getWidth()) / 2.0d) - (((double) ((this.f65125b + (this.f65127d * (this.f65126c == DrawablePositions.LEFT_AND_RIGHT ? 2 : 1))) + this.f65128e.width())) / 2.0d));
        setCompoundDrawablePadding((-width) + this.f65127d);
        int i10 = a.f65129a[this.f65126c.ordinal()];
        if (i10 == 1) {
            setPadding(width, getPaddingTop(), 0, getPaddingBottom());
            return;
        }
        if (i10 == 2) {
            setPadding(0, getPaddingTop(), width, getPaddingBottom());
        } else if (i10 != 3) {
            setPadding(0, getPaddingTop(), 0, getPaddingBottom());
        } else {
            setPadding(width, getPaddingTop(), width, getPaddingBottom());
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(Drawable left, Drawable top, Drawable right, Drawable bottom) {
        super.setCompoundDrawablesWithIntrinsicBounds(left, top, right, bottom);
        if (left != null && right != null) {
            this.f65125b = left.getIntrinsicWidth() + right.getIntrinsicWidth();
            this.f65126c = DrawablePositions.LEFT_AND_RIGHT;
        } else if (left != null) {
            this.f65125b = left.getIntrinsicWidth();
            this.f65126c = DrawablePositions.LEFT;
        } else if (right != null) {
            this.f65125b = right.getIntrinsicWidth();
            this.f65126c = DrawablePositions.RIGHT;
        } else {
            this.f65126c = DrawablePositions.NONE;
        }
        requestLayout();
    }

    public void setIconPadding(int padding) {
        this.f65127d = padding;
        requestLayout();
    }

    public IconButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65128e = new Rect();
        a(attrs);
    }

    public IconButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65128e = new Rect();
        a(attrs);
    }
}
