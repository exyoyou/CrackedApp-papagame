package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class XListViewHeader extends LinearLayout {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f66189j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f66190k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f66191l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f66192m = 3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinearLayout f66193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f66194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ProgressBar f66195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f66196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66197f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Animation f66198g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Animation f66199h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f66200i;

    public XListViewHeader(Context context) {
        super(context);
        this.f66197f = 0;
        this.f66200i = 180;
        a(context);
    }

    private void a(Context context) {
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.xlistview_header, (ViewGroup) null);
        this.f66193b = linearLayout;
        addView(linearLayout, layoutParams);
        setGravity(80);
        this.f66194c = (ImageView) findViewById(R.id.xlistview_header_arrow);
        this.f66196e = (TextView) findViewById(R.id.xlistview_header_hint_textview);
        this.f66195d = (ProgressBar) findViewById(R.id.xlistview_header_progressbar);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f66198g = rotateAnimation;
        rotateAnimation.setDuration(180L);
        this.f66198g.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f66199h = rotateAnimation2;
        rotateAnimation2.setDuration(180L);
        this.f66199h.setFillAfter(true);
    }

    public int getVisibleHeight() {
        return this.f66193b.getHeight();
    }

    public void setState(int state) {
        if (state == this.f66197f) {
            return;
        }
        if (state == 2) {
            this.f66194c.clearAnimation();
            this.f66194c.setVisibility(4);
            this.f66195d.setVisibility(0);
        } else {
            this.f66194c.setVisibility(4);
            this.f66195d.setVisibility(4);
        }
        if (state == 0) {
            this.f66196e.setText(R.string.xlistview_header_hint_normal);
        } else if (state != 1) {
            if (state == 2) {
                this.f66196e.setText(R.string.xlistview_header_hint_loading);
            } else if (state == 3) {
                this.f66196e.setText(R.string.xlistview_header_nomore);
            }
        } else if (this.f66197f != 1) {
            this.f66196e.setText(R.string.xlistview_header_hint_ready);
        }
        this.f66197f = state;
    }

    public void setVisibleHeight(int height) {
        if (height < 0) {
            height = 0;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f66193b.getLayoutParams();
        layoutParams.height = height;
        this.f66193b.setLayoutParams(layoutParams);
    }

    public void setmState(int mState) {
        this.f66197f = mState;
    }

    public XListViewHeader(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66197f = 0;
        this.f66200i = 180;
        a(context);
    }
}
