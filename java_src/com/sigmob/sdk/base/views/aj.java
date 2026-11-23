package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes5.dex */
public class aj extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f79910a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f79911b;

    public aj(Context context) {
        super(context);
        a();
    }

    private void a() {
        TextView textView = new TextView(getContext());
        this.f79910a = textView;
        textView.setId(View.generateViewId());
        this.f79911b = new TextView(getContext());
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.f79910a.setTextColor(-1);
        this.f79910a.setSingleLine();
        this.f79910a.setGravity(17);
        this.f79910a.setTextSize(2, 20.0f);
        this.f79911b.setSingleLine();
        this.f79911b.setTextColor(-1);
        this.f79911b.setGravity(17);
        this.f79911b.setTextSize(2, 14.0f);
        addView(this.f79910a, layoutParams);
        addView(this.f79911b, new LinearLayout.LayoutParams(-1, -2));
    }

    public void setDescription(String description) {
        this.f79911b.setText(description);
    }

    public void setTitle(String title) {
        this.f79910a.setText(title);
    }

    public aj(Context context, AttributeSet attrs) {
        super(context, attrs);
        a();
    }

    public aj(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a();
    }
}
