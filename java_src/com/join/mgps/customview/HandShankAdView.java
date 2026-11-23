package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.activity.HandShankNoActivity;
import com.join.mgps.activity.HandShankYesActivity;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.HandShankAdBean;

/* JADX INFO: loaded from: classes3.dex */
public class HandShankAdView extends LinearLayout implements LoadingLayout.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LoadingLayout f65066b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LinearLayout f65067c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View.OnClickListener f65068d;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ HandShankAdBean f65069b;

        a(final HandShankAdBean val$data) {
            this.f65069b = val$data;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = HandShankAdView.this.getContext();
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) HandShankAdView.this.findViewById(R.id.iv_banner);
            int iA = com.join.mgps.Util.i0.a(context, 8.0f);
            int i10 = 1;
            if (this.f65069b.getTop_banner_ad() == null || this.f65069b.getTop_banner_ad().size() <= 0) {
                simpleDraweeView.setVisibility(8);
            } else {
                BannerBean bannerBean = this.f65069b.getTop_banner_ad().get(0);
                if (bannerBean.getAd_switch() == 1) {
                    simpleDraweeView.setVisibility(0);
                    com.join.android.app.common.utils.l.d(simpleDraweeView, R.drawable.banner_normal_icon, bannerBean.getPic_remote());
                    simpleDraweeView.setTag(bannerBean);
                    simpleDraweeView.setOnClickListener(HandShankAdView.this.f65068d);
                } else {
                    simpleDraweeView.setVisibility(8);
                }
            }
            if (this.f65069b.getFast_entrance_ad() == null || this.f65069b.getFast_entrance_ad().size() <= 0) {
                HandShankAdView.this.f65067c.setVisibility(8);
            } else {
                int size = this.f65069b.getFast_entrance_ad().size();
                int iA2 = com.join.mgps.Util.i0.a(context, 48.0f);
                int iA3 = com.join.mgps.Util.i0.a(context, 7.0f);
                int i11 = 0;
                while (i11 < size && i11 < 5) {
                    BannerBean bannerBean2 = this.f65069b.getFast_entrance_ad().get(i11);
                    if (bannerBean2.getAd_switch() != 0) {
                        LinearLayout linearLayout = new LinearLayout(context);
                        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0f));
                        linearLayout.setGravity(17);
                        linearLayout.setOrientation(i10);
                        SimpleDraweeView simpleDraweeView2 = new SimpleDraweeView(context);
                        simpleDraweeView2.setLayoutParams(new LinearLayout.LayoutParams(iA2, iA2));
                        simpleDraweeView2.setTag(bannerBean2);
                        simpleDraweeView2.setOnClickListener(HandShankAdView.this.f65068d);
                        com.join.android.app.common.utils.l.d(simpleDraweeView2, R.drawable.main_normal_icon, bannerBean2.getPic_remote());
                        TextView textView = new TextView(context);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.topMargin = iA;
                        textView.setLayoutParams(layoutParams);
                        textView.setTextSize(iA3);
                        textView.setTextColor(Color.parseColor("#585858"));
                        textView.setText(bannerBean2.getSub_title());
                        linearLayout.addView(simpleDraweeView2);
                        linearLayout.addView(textView);
                        HandShankAdView.this.f65067c.addView(linearLayout);
                    }
                    i11++;
                    i10 = 1;
                }
            }
            HandShankAdView.this.f();
            int childCount = HandShankAdView.this.f65067c.getChildCount();
            if (simpleDraweeView.getVisibility() != 8) {
                if (childCount <= 0) {
                    HandShankAdView.this.setPadding(0, 0, 0, iA);
                    int iA4 = com.join.mgps.Util.i0.a(context, 130.0f);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) HandShankAdView.this.getLayoutParams();
                    layoutParams2.height = iA4;
                    HandShankAdView.this.setLayoutParams(layoutParams2);
                    HandShankAdView.this.f65067c.setVisibility(8);
                    return;
                }
                return;
            }
            if (childCount <= 0) {
                HandShankAdView.this.g();
                return;
            }
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) HandShankAdView.this.f65067c.getLayoutParams();
            layoutParams3.topMargin = iA;
            HandShankAdView.this.f65067c.setLayoutParams(layoutParams3);
            int iA5 = com.join.mgps.Util.i0.a(context, 130.0f);
            LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) HandShankAdView.this.getLayoutParams();
            layoutParams4.height = iA5;
            HandShankAdView.this.setLayoutParams(layoutParams4);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            BannerBean bannerBean = (BannerBean) v10.getTag();
            if (bannerBean == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(HandShankAdView.this.getContext(), HandShankAdView.this.e(bannerBean));
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f65066b;
            if (loadingLayout != null) {
                loadingLayout.setVisibility(0);
                HandShankAdView.this.f65066b.h();
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f65066b;
            if (loadingLayout != null) {
                loadingLayout.setVisibility(0);
                HandShankAdView.this.f65066b.g();
            }
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f65066b;
            if (loadingLayout != null) {
                loadingLayout.d();
                HandShankAdView.this.f65066b.setVisibility(8);
                HandShankAdView.this.setVisibility(8);
            }
        }
    }

    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LoadingLayout loadingLayout = HandShankAdView.this.f65066b;
            if (loadingLayout != null) {
                loadingLayout.d();
                HandShankAdView.this.f65066b.setVisibility(8);
            }
        }
    }

    public HandShankAdView(Context context) {
        super(context);
        this.f65068d = new b();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IntentDateBean e(BannerBean bean) {
        return bean.getIntentDataBean();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        new Handler(Looper.getMainLooper()).post(new e());
    }

    private void h() {
        LoadingLayout loadingLayout = (LoadingLayout) LayoutInflater.from(getContext()).inflate(R.layout.banner_handshank_top, this).findViewById(R.id.loadingLayout);
        this.f65066b = loadingLayout;
        loadingLayout.setRefreshCallBackListener(this);
        this.f65067c = (LinearLayout) findViewById(R.id.ll_fast_entrance);
    }

    @Override // com.join.mgps.customview.LoadingLayout.b
    public void callBack() {
        k();
        Activity activity = (Activity) getContext();
        if (activity instanceof HandShankYesActivity) {
            ((HandShankYesActivity) activity).loadAdData();
        } else if (activity instanceof HandShankNoActivity) {
            ((HandShankNoActivity) activity).loadAdData();
        }
    }

    protected void f() {
        new Handler(Looper.getMainLooper()).post(new f());
    }

    public void i() {
        g();
    }

    protected void j() {
        new Handler(Looper.getMainLooper()).post(new d());
    }

    protected void k() {
        new Handler(Looper.getMainLooper()).post(new c());
    }

    public void l() {
        g();
    }

    public void m(final HandShankAdBean data) {
        new Handler(Looper.getMainLooper()).post(new a(data));
    }

    public HandShankAdView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f65068d = new b();
        h();
    }

    public HandShankAdView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65068d = new b();
        h();
    }
}
