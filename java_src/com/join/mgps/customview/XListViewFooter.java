package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class XListViewFooter extends LinearLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f66175h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f66176i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f66177j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f66178k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f66179l = 4;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f66180m = 5;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f66181n = 6;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f66182o = 7;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f66183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f66184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f66185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f66186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66187f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f66188g;

    public XListViewFooter(Context context) {
        super(context);
        c(context);
    }

    private void c(Context context) {
        this.f66183b = context;
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.xlistview_footer, (ViewGroup) null);
        addView(linearLayout);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.f66184c = linearLayout.findViewById(R.id.xlistview_footer_content);
        this.f66185d = linearLayout.findViewById(R.id.xlistview_footer_progressbar);
        this.f66186e = (TextView) linearLayout.findViewById(R.id.xlistview_footer_hint_textview);
        this.f66188g = (TextView) linearLayout.findViewById(R.id.xlistview_footer_refresh_textview);
    }

    public void a() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f66184c.getLayoutParams();
        layoutParams.height = 0;
        this.f66184c.setLayoutParams(layoutParams);
    }

    public void b() {
        this.f66186e.setVisibility(8);
    }

    public void d() {
        this.f66186e.setVisibility(8);
        this.f66185d.setVisibility(0);
    }

    public void e() {
        this.f66186e.setVisibility(0);
        this.f66185d.setVisibility(8);
    }

    public void f() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f66184c.getLayoutParams();
        layoutParams.height = -2;
        this.f66184c.setLayoutParams(layoutParams);
    }

    public int getBottomMargin() {
        return ((LinearLayout.LayoutParams) this.f66184c.getLayoutParams()).bottomMargin;
    }

    public int getState() {
        return this.f66187f;
    }

    public void setBottomMargin(int height) {
        if (height < 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f66184c.getLayoutParams();
        layoutParams.bottomMargin = height;
        this.f66184c.setLayoutParams(layoutParams);
    }

    public void setState(int state) {
        this.f66186e.setVisibility(4);
        this.f66185d.setVisibility(4);
        this.f66186e.setVisibility(4);
        this.f66188g.setVisibility(8);
        if (state == 3) {
            this.f66186e.setVisibility(0);
            this.f66186e.setText(R.string.xlistview_header_nomore);
        } else if (state == 7) {
            this.f66186e.setVisibility(0);
            this.f66186e.setText("请继续探索更多游戏以获得精准推荐");
            this.f66188g.setVisibility(0);
        } else if (state == 1) {
            this.f66186e.setVisibility(0);
            this.f66186e.setText(R.string.xlistview_footer_hint_ready);
        } else if (state == 2) {
            this.f66185d.setVisibility(0);
        } else if (state == 4) {
            this.f66186e.setVisibility(4);
            this.f66186e.setText(R.string.xlistview_footer_hint_normal);
        } else if (state == 5) {
            this.f66186e.setVisibility(0);
            this.f66186e.setText(R.string.xlistview_footer_hint_normal);
        } else {
            this.f66186e.setVisibility(0);
            this.f66186e.setText(R.string.xlistview_footer_hint_normal);
        }
        if (state == 6) {
            this.f66186e.setVisibility(8);
        }
    }

    public XListViewFooter(Context context, AttributeSet attrs) {
        super(context, attrs);
        c(context);
    }
}
