package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

/* JADX INFO: loaded from: classes3.dex */
public class CopyTextView extends EditText {
    public CopyTextView(Context context) {
        super(context);
    }

    @Override // android.widget.EditText, android.widget.TextView
    protected boolean getDefaultEditable() {
        return false;
    }

    public CopyTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CopyTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }
}
