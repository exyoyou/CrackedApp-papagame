package com.join.mgps.customview;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.mgps.Util.UtilsMy;

/* JADX INFO: loaded from: classes3.dex */
public class LoadingLayout extends RelativeLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f65257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f65258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f65259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f65260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f65261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinearLayout f65262g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f65263h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private LinearLayout f65264i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LinearLayout f65265j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ImageView f65266k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private b f65267l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private a f65268m;

    public interface a {
        void noDataCallBack();
    }

    public interface b {
        void callBack();
    }

    public LoadingLayout(Context context) {
        super(context);
    }

    public void a(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        View childAt = viewGroup.getChildAt(0);
        viewGroup.removeView(childAt);
        addView(childAt, 0);
        viewGroup.addView(this);
    }

    public void b(View view, int childId) {
        try {
            View viewFindViewById = view.findViewById(childId);
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            if (viewGroup == null) {
                throw new Exception("the view must has a parent");
            }
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                if (viewGroup.getChildAt(i10).getId() == childId) {
                    viewGroup.removeView(viewFindViewById);
                    viewGroup.addView(this, i10, viewFindViewById.getLayoutParams());
                    break;
                }
            }
            addView(viewFindViewById, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c(View view, int childId) {
        try {
            View viewFindViewById = view.findViewById(childId);
            if (viewFindViewById == null) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            if (viewGroup == null) {
                addView(viewFindViewById, 0);
                return;
            }
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                if (viewGroup.getChildAt(i10).getId() == childId) {
                    viewGroup.removeView(viewFindViewById);
                    viewGroup.addView(this, i10, viewFindViewById.getLayoutParams());
                    break;
                }
            }
            addView(viewFindViewById, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void d() {
        this.f65262g.setVisibility(8);
        this.f65263h.setVisibility(8);
        this.f65264i.setVisibility(8);
        this.f65265j.setVisibility(8);
    }

    public boolean e() {
        return this.f65262g.getVisibility() == 8;
    }

    public void f(int vis) {
        this.f65266k.setVisibility(vis);
    }

    public void g() {
        d();
        this.f65263h.setVisibility(0);
    }

    public void h() {
        d();
        this.f65262g.setVisibility(0);
    }

    public void i() {
        d();
        this.f65264i.setVisibility(0);
    }

    public void j() {
        d();
        this.f65265j.setVisibility(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        switch (v10.getId()) {
            case com.join.android.app.mgsim.wufun.R.id.relodingimag /* 2131366760 */:
                b bVar = this.f65267l;
                if (bVar != null) {
                    bVar.callBack();
                }
                break;
            case com.join.android.app.mgsim.wufun.R.id.setAll /* 2131367175 */:
                a aVar = this.f65268m;
                if (aVar != null) {
                    aVar.noDataCallBack();
                }
                break;
            case com.join.android.app.mgsim.wufun.R.id.setNetwork /* 2131367176 */:
                UtilsMy.N3(getContext());
                break;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(com.join.android.app.mgsim.wufun.R.id.setNetwork).setOnClickListener(this);
        findViewById(com.join.android.app.mgsim.wufun.R.id.relodingimag).setOnClickListener(this);
        this.f65257b = (TextView) findViewById(com.join.android.app.mgsim.wufun.R.id.failedMessage);
        this.f65262g = (LinearLayout) findViewById(com.join.android.app.mgsim.wufun.R.id.loding_layout);
        this.f65265j = (LinearLayout) findViewById(com.join.android.app.mgsim.wufun.R.id.nodata_layout);
        this.f65263h = (LinearLayout) findViewById(com.join.android.app.mgsim.wufun.R.id.loding_faile);
        this.f65264i = (LinearLayout) findViewById(com.join.android.app.mgsim.wufun.R.id.loading_none);
        this.f65266k = (ImageView) findViewById(com.join.android.app.mgsim.wufun.R.id.noneReloadImage);
        this.f65258c = (TextView) findViewById(com.join.android.app.mgsim.wufun.R.id.noneMessage);
        this.f65259d = (TextView) findViewById(com.join.android.app.mgsim.wufun.R.id.setAll);
        this.f65261f = (TextView) findViewById(com.join.android.app.mgsim.wufun.R.id.textView2);
        this.f65260e = (TextView) findViewById(com.join.android.app.mgsim.wufun.R.id.textView_nodata);
        this.f65259d.setOnClickListener(this);
        this.f65262g.setOnClickListener(null);
        this.f65263h.setOnClickListener(null);
        this.f65264i.setOnClickListener(null);
    }

    public void setFailLayoutBgAlpha(float alpha) {
        this.f65263h.setAlpha(alpha);
    }

    public void setFailedMessage(String strMessage) {
        this.f65257b.setText(strMessage);
    }

    public void setLoadingHintMsg(String loadingMsg) {
        this.f65261f.setText(loadingMsg);
    }

    public void setLoadingLayoutBGColor(int color) {
        this.f65262g.setBackgroundColor(color);
    }

    public void setLoadingLayoutBgAlpha(float alpha) {
        this.f65262g.setAlpha(alpha);
    }

    public void setLoadingLayoutMarginTop(int marginTop) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f65262g.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f65263h.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f65263h.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f65263h.getLayoutParams();
        layoutParams.topMargin = marginTop;
        layoutParams2.topMargin = marginTop;
        layoutParams3.topMargin = marginTop;
        layoutParams4.topMargin = marginTop;
        this.f65262g.setLayoutParams(layoutParams);
        this.f65263h.setLayoutParams(layoutParams2);
        this.f65265j.setLayoutParams(layoutParams4);
        this.f65264i.setLayoutParams(layoutParams3);
    }

    public void setNoDataAll(String msg) {
        this.f65259d.setText(msg);
    }

    public void setNoDataCallBackListener(a mNoDataCallBackListener) {
        this.f65268m = mNoDataCallBackListener;
    }

    public void setNoDataImage(int resId) {
        this.f65266k.setImageResource(resId);
    }

    public void setNoDataMsg(String msg) {
        this.f65258c.setText(msg);
    }

    public void setRefreshCallBackListener(b mRefreshCallBackListener) {
        this.f65267l = mRefreshCallBackListener;
    }

    public void setTextViewNoData(String text) {
        this.f65260e.setText(text);
    }

    public LoadingLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setNoDataImage(Bitmap mBitmap) {
        this.f65266k.setImageBitmap(mBitmap);
    }

    public LoadingLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
