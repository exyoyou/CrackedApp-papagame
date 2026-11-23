package com.join.mgps.customview.textview;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class MovementTextView extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f67001b;

    public interface a {
        void onClickText();
    }

    public MovementTextView(Context context) {
        super(context);
    }

    private ClickableSpan[] a(CharSequence text, int off) {
        if (text instanceof SpannableStringBuilder) {
            return (ClickableSpan[]) ((SpannableStringBuilder) text).getSpans(off, off, p6.a.class);
        }
        return text instanceof SpannableString ? (ClickableSpan[]) ((SpannableString) text).getSpans(off, off, p6.a.class) : (ClickableSpan[]) ((SpannedString) text).getSpans(off, off, p6.a.class);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (event.getAction() == 1) {
            CharSequence text = getText();
            if ((text instanceof SpannableStringBuilder) || (text instanceof SpannedString) || (text instanceof SpannableString)) {
                int x10 = (int) event.getX();
                int y10 = (int) event.getY();
                int totalPaddingLeft = x10 - getTotalPaddingLeft();
                int totalPaddingTop = y10 - getTotalPaddingTop();
                ClickableSpan[] clickableSpanArrA = a(text, getLayout().getOffsetForHorizontal(getLayout().getLineForVertical(totalPaddingTop + getScrollY()), totalPaddingLeft + getScrollX()));
                if (clickableSpanArrA.length != 0) {
                    clickableSpanArrA[0].onClick(this);
                    return true;
                }
                a aVar = this.f67001b;
                if (aVar != null) {
                    aVar.onClickText();
                }
            }
        }
        return true;
    }

    public void setClickTextListener(a listener) {
        this.f67001b = listener;
    }

    public MovementTextView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public MovementTextView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
