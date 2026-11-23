package com.join.mgps.recycler;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class SampleFooter extends RelativeLayout {
    public SampleFooter(Context context) {
        super(context);
        a(context);
    }

    public void a(Context context) {
        View.inflate(context, R.layout.sample_footer, this);
    }

    public SampleFooter(Context context, AttributeSet attrs) {
        super(context, attrs);
        a(context);
    }

    public SampleFooter(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a(context);
    }
}
