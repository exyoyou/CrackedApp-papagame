package com.beizi.fusion.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.fusion.R;

/* JADX INFO: loaded from: classes6.dex */
public class SlideClickView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f10877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f10878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f10879c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10880d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10882f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10883g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AnimationDrawable f10884h;

    public SlideClickView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10877a = false;
        this.f10882f = 45;
        this.f10883g = 45;
        init(context);
    }

    private void a() {
        AnimationDrawable animationDrawable = new AnimationDrawable();
        this.f10884h = animationDrawable;
        animationDrawable.addFrame(getResources().getDrawable(R.drawable.beizi_slide_down_one), 600);
        this.f10884h.addFrame(getResources().getDrawable(R.drawable.beizi_slide_down_two), 600);
        this.f10884h.addFrame(getResources().getDrawable(R.drawable.beizi_slide_down_three), 600);
        this.f10884h.setOneShot(false);
        ImageView imageView = this.f10878b;
        if (imageView != null) {
            imageView.setImageDrawable(this.f10884h);
        }
    }

    public void init(Context context) {
        if (this.f10877a) {
            return;
        }
        this.f10877a = true;
        TextView textView = new TextView(context);
        this.f10879c = textView;
        textView.setGravity(17);
        this.f10878b = new ImageView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        setOrientation(1);
        setGravity(17);
        addView(this.f10879c, layoutParams);
        addView(this.f10878b, layoutParams2);
        a();
    }

    public void setImageWidthAndHeight(int i10, int i11) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i10, i11);
        ImageView imageView = this.f10878b;
        if (imageView != null) {
            imageView.setLayoutParams(layoutParams);
        }
    }

    public void setTitleFont(int i10) {
        TextView textView;
        this.f10881e = i10;
        if (i10 == 0 || (textView = this.f10879c) == null) {
            return;
        }
        textView.setTextSize(2, i10);
    }

    public void setTitleText(String str) {
        TextView textView;
        this.f10880d = str;
        if (TextUtils.isEmpty(str) || (textView = this.f10879c) == null) {
            return;
        }
        textView.setText(str);
        this.f10879c.setTypeface(Typeface.DEFAULT, 1);
        this.f10879c.setTextColor(Color.parseColor("#FFFFFFFF"));
        this.f10879c.setShadowLayer(5.0f, 1.0f, 1.0f, Color.parseColor("#80000000"));
    }

    public void startAnim() {
        AnimationDrawable animationDrawable = this.f10884h;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    public void stopAnim() {
        AnimationDrawable animationDrawable = this.f10884h;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public SlideClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10877a = false;
        this.f10882f = 45;
        this.f10883g = 45;
        init(context);
    }

    public SlideClickView(Context context) {
        super(context);
        this.f10877a = false;
        this.f10882f = 45;
        this.f10883g = 45;
        init(context);
    }
}
