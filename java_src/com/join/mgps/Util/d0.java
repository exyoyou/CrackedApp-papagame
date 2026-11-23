package com.join.mgps.Util;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes4.dex */
public class d0 extends LinkMovementMethod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d0 f49540a;

    public static d0 a() {
        if (f49540a == null) {
            f49540a = new d0();
        }
        return f49540a;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView widget, Spannable buffer, MotionEvent event) {
        boolean zOnTouchEvent = super.onTouchEvent(widget, buffer, event);
        if (!zOnTouchEvent && event.getAction() == 1) {
            ViewParent parent = widget.getParent();
            if (parent instanceof ViewGroup) {
                return ((ViewGroup) parent).performClick();
            }
        }
        return zOnTouchEvent;
    }
}
