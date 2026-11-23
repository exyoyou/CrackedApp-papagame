package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

/* JADX INFO: loaded from: classes3.dex */
public class CustomEdittext extends EditText {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    a f64730b;

    public interface a {
        void a(int selStart, int selEnd);
    }

    public CustomEdittext(Context context) {
        super(context);
    }

    public a getOnSelectionChanged() {
        return this.f64730b;
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int selStart, int selEnd) {
        super.onSelectionChanged(selStart, selEnd);
        a aVar = this.f64730b;
        if (aVar != null) {
            aVar.a(selStart, selEnd);
        }
    }

    public void setOnSelectionChanged(a l10) {
        this.f64730b = l10;
    }

    public CustomEdittext(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public CustomEdittext(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
