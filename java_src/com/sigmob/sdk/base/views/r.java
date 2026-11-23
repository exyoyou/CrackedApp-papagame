package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes5.dex */
public abstract class r extends RelativeLayout {
    public r(Context context) {
        super(context);
    }

    public abstract void a();

    public abstract void b();

    public r(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public r(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
