package com.join.mgps.customview;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;

/* JADX INFO: loaded from: classes3.dex */
public class CustomerDownloadView extends RelativeLayout {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f64751q = "CustomerDownloadView";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f64752r = 18;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f64753s = 18;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f64754t = 5;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f64755u = 5;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f64756v = 28;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f64757w = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f64758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f64759c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ImageView f64760d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ImageView f64761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ImageView f64762f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ImageView f64763g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f64764h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    View f64765i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Context f64766j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f64767k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f64768l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f64769m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f64770n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f64771o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    AnimatorSet f64772p;

    public CustomerDownloadView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64764h = 0.0f;
        this.f64767k = 2;
        this.f64768l = 0;
        this.f64771o = -1;
        b(context);
        this.f64766j = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_customer_download, this);
        this.f64765i = viewInflate;
        this.f64760d = (ImageView) viewInflate.findViewById(R.id.download_icon_img);
        this.f64762f = (ImageView) this.f64765i.findViewById(R.id.download_line_point_view);
        this.f64758b = (TextView) this.f64765i.findViewById(R.id.download_num_hint_txt);
        this.f64759c = (TextView) this.f64765i.findViewById(R.id.download_num_anim_txt);
        this.f64761e = (ImageView) this.f64765i.findViewById(R.id.download_line_view);
        this.f64763g = (ImageView) this.f64765i.findViewById(R.id.download_red_point);
    }

    private void b(Context context) {
        this.f64764h = com.join.android.app.common.utils.q.n(context).g();
    }

    void a() {
    }

    public void c(boolean show) {
        if (show) {
            this.f64763g.setVisibility(0);
        } else {
            this.f64763g.setVisibility(8);
        }
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    public void setDownloadGameNum() {
        DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
        dlTaskManager.updateDownloadedNum();
        int downloadingNum = dlTaskManager.getDownloadingNum();
        int downloadedNum = dlTaskManager.getDownloadedNum();
        if (downloadingNum <= 0) {
            if (downloadedNum > 0) {
                this.f64758b.setVisibility(8);
                this.f64763g.setVisibility(0);
                return;
            } else {
                this.f64763g.setVisibility(8);
                this.f64758b.setVisibility(8);
                return;
            }
        }
        this.f64763g.setVisibility(8);
        this.f64758b.setVisibility(0);
        if (downloadingNum >= 99) {
            this.f64758b.setText("99+");
            return;
        }
        this.f64758b.setText(downloadingNum + "");
    }

    public void setDownloadIconRepeatCount(int count) {
        this.f64767k = count;
    }

    public void setDownloadIconRes(int resId) {
        this.f64771o = resId;
        this.f64760d.setImageResource(resId);
    }

    public void setDownloadIconSize(int width, int height) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f64760d.getLayoutParams();
        float f10 = this.f64764h;
        int i10 = (int) (width * f10);
        this.f64769m = i10;
        int i11 = (int) (height * f10);
        this.f64770n = i11;
        layoutParams.width = i10;
        layoutParams.height = i11;
        this.f64760d.setLayoutParams(layoutParams);
    }

    public void setDownloadLineRes(int resId) {
        this.f64761e.setImageResource(resId);
    }

    public void setDownloadLineSize(int height) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f64761e.getLayoutParams();
        layoutParams.width = ((RelativeLayout.LayoutParams) this.f64760d.getLayoutParams()).width;
        layoutParams.height = (int) (height * this.f64764h);
        this.f64761e.setLayoutParams(layoutParams);
    }

    public void setDownloadNumFontColor(int colorRes) {
        this.f64758b.setTextColor(colorRes);
    }

    public void setDownloadNumFontSize(float textSize) {
        this.f64758b.setTextSize(textSize);
    }

    public void setDownloadNumTextViewSize(int width, int height) {
    }
}
