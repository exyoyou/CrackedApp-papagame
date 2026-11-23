package com.byazt.xzj;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aas.cu;
import com.byazt.el.SSWebView;
import com.byazt.ete.ic;
import com.byazt.fq.uj;
import com.byazt.fq.ve;
import com.byazt.rpt.SlideUpLoadMoreArrow;
import com.byazt.zqa.c;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 1, 675, 978})
public class RewardJointBottomView extends FrameLayout implements ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f22137a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f22138c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final SlideUpLoadMoreArrow f22139da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f22140i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public uj f22141n;
    public View.OnClickListener sp;
    public int[] tt;
    public SSWebView uj;
    public int[] ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f22142x;

    public RewardJointBottomView(Context context, ic icVar) {
        super(context);
        this.tt = new int[2];
        this.ve = new int[2];
        this.f22137a = 0;
        this.f22142x = false;
        this.f22140i = false;
        SSWebView sSWebView = new SSWebView(context);
        this.uj = sSWebView;
        sSWebView.setMaterialMeta(cu.c(icVar));
        this.uj.setWebViewClient(null);
        addView(this.uj, new ViewGroup.LayoutParams(-1, -1));
        if (Build.VERSION.SDK_INT >= 23) {
            this.uj.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.byazt.xzj.RewardJointBottomView.1
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                    if (Math.abs((RewardJointBottomView.this.uj.getWebView().getHeight() + RewardJointBottomView.this.uj.getWebView().getScrollY()) - (RewardJointBottomView.this.uj.getWebView().getContentHeight() * RewardJointBottomView.this.uj.getWebView().getScale())) >= 10.0f) {
                        RewardJointBottomView.this.f22142x = false;
                    } else {
                        if (RewardJointBottomView.this.f22142x) {
                            return;
                        }
                        RewardJointBottomView.this.f22142x = true;
                    }
                }
            });
        }
        getScrollingChildHelper().c(true);
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = new SlideUpLoadMoreArrow(getContext(), 36, true);
        this.f22139da = slideUpLoadMoreArrow;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        addView(slideUpLoadMoreArrow, layoutParams);
        slideUpLoadMoreArrow.c();
    }

    private uj getScrollingChildHelper() {
        if (this.f22141n == null) {
            this.f22141n = new uj(this);
        }
        return this.f22141n;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return super.dispatchNestedFling(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return super.dispatchNestedPreFling(f10, f11);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View.OnClickListener onClickListener;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f22137a = 0;
            this.f22138c = motionEvent.getY();
            c(2, 0);
            this.f22140i = this.f22142x;
        } else if (action != 1) {
            if (action == 2) {
                float y10 = motionEvent.getY() - this.f22138c;
                if (y10 < 0.0f) {
                    c();
                    if (c(0, (int) y10, this.tt, this.ve, 0)) {
                        y10 -= this.tt[1];
                    }
                    this.f22137a += c((int) ((Math.floor((double) Math.abs(y10)) != 0.0d ? y10 : 0.0f) - this.f22137a));
                } else {
                    int i10 = (int) (y10 - this.f22137a);
                    int iC = c(i10);
                    this.f22137a += iC;
                    c(0, i10 - iC, this.tt, this.ve, 0);
                }
            }
        } else if (this.f22140i && this.f22138c - motionEvent.getY() > 100.0f && (onClickListener = this.sp) != null) {
            onClickListener.onClick(this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public SSWebView getWebView() {
        return this.uj;
    }

    public void setClickListener(View.OnClickListener onClickListener) {
        this.sp = onClickListener;
    }

    public void tt() {
        c();
    }

    public void c(String str) {
        this.uj.loadUrl(str);
    }

    public boolean c(int i10, int i11) {
        return getScrollingChildHelper().tt(0);
    }

    public boolean c(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2, i12);
    }

    public int c(int i10) {
        if (i10 < 0) {
            return (int) (-Math.abs(Math.min(this.uj.getWebView().getContentHeight() - (this.uj.getWebView().getHeight() + this.uj.getWebView().getScrollY()), -i10)));
        }
        if (i10 > 0) {
            return Math.min(this.uj.getWebView().getScrollY(), i10);
        }
        return 0;
    }

    public void c() {
        SlideUpLoadMoreArrow slideUpLoadMoreArrow = this.f22139da;
        if (slideUpLoadMoreArrow != null) {
            slideUpLoadMoreArrow.setVisibility(8);
            this.f22139da.tt();
        }
    }
}
