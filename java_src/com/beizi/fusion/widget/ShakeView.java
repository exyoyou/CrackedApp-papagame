package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;

/* JADX INFO: loaded from: classes6.dex */
public class ShakeView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ImageView f10859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f10860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f10861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AnimationDrawable f10863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10864f;

    public ShakeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10861c = false;
        init(context);
    }

    private void a() {
        removeAllViews();
        ImageView imageView = new ImageView(getContext());
        this.f10859a = imageView;
        imageView.setBackgroundResource(R.drawable.anim_shake_download);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        setOrientation(1);
        addView(this.f10859a, layoutParams);
        this.f10863e = (AnimationDrawable) this.f10859a.getBackground();
    }

    public void init(Context context) {
        if (this.f10861c) {
            return;
        }
        this.f10861c = true;
        ImageView imageView = new ImageView(context);
        this.f10859a = imageView;
        imageView.setBackgroundResource(R.drawable.beizi_anim_shake);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        setOrientation(1);
        addView(this.f10859a, layoutParams);
        this.f10863e = (AnimationDrawable) this.f10859a.getBackground();
    }

    public void setDownloadApp(Boolean bool) {
        boolean zBooleanValue = bool.booleanValue();
        this.f10864f = zBooleanValue;
        if (zBooleanValue) {
            a();
        }
    }

    public void setTitleText(String str) {
        this.f10862d = str;
        TextView textView = this.f10860b;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void startShake() {
        AnimationDrawable animationDrawable = this.f10863e;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    public void stopShake() {
        AnimationDrawable animationDrawable = this.f10863e;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public void updateTwistRollAnim() {
        removeAllViews();
        ImageView imageView = new ImageView(getContext());
        this.f10859a = imageView;
        imageView.setBackgroundResource(R.drawable.beizi_twist_roll);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        setOrientation(1);
        addView(this.f10859a, layoutParams);
        this.f10863e = (AnimationDrawable) this.f10859a.getBackground();
    }

    public ShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10861c = false;
        init(context);
    }

    public ShakeView(Context context) {
        super(context);
        this.f10861c = false;
        init(context);
    }
}
