package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.BtGameBenefitBean;
import com.join.mgps.dto.BtGameBenefitSummary;
import com.join.mgps.dto.BtGameWelfare;

/* JADX INFO: loaded from: classes3.dex */
public class ActivityTabView extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f64265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f64266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f64267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f64268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f64269f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f64270g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f64271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f64272i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f64273j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f64274k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f64275l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private TextView f64276m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private d f64277n;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ActivityTabView.this.f64277n != null) {
                ActivityTabView.this.f64277n.a();
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BtGameBenefitBean f64279b;

        b(final BtGameBenefitBean val$couponSummary) {
            this.f64279b = val$couponSummary;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ActivityTabView.this.f64277n != null) {
                ActivityTabView.this.f64277n.c(this.f64279b.getJump_url());
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BtGameBenefitBean f64281b;

        c(final BtGameBenefitBean val$giftSummary) {
            this.f64281b = val$giftSummary;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ActivityTabView.this.f64277n != null) {
                ActivityTabView.this.f64277n.b(this.f64281b.getJump_url());
            }
        }
    }

    public interface d {
        void a();

        void b(String url);

        void c(String url);
    }

    public ActivityTabView(Context context) {
        super(context);
    }

    private void b(BTActivityBean bean) {
        if (bean != null) {
            this.f64265b = findViewById(R.id.ll_tab_1);
            this.f64268e = (ImageView) findViewById(R.id.iv_icon_1);
            this.f64271h = (TextView) findViewById(R.id.tv_title_1);
            this.f64274k = (TextView) findViewById(R.id.tv_desc_1);
            this.f64271h.setText(bean.getTitle());
            this.f64274k.setText(bean.getSub_head());
            this.f64265b.setOnClickListener(new a());
        }
    }

    private void c(BtGameBenefitSummary bean) {
        BtGameBenefitBean game_coupon_summary = bean.getGame_coupon_summary();
        if (game_coupon_summary != null) {
            this.f64266c = findViewById(R.id.ll_tab_2);
            this.f64269f = (ImageView) findViewById(R.id.iv_icon_2);
            this.f64272i = (TextView) findViewById(R.id.tv_title_2);
            this.f64275l = (TextView) findViewById(R.id.tv_desc_2);
            this.f64272i.setText(game_coupon_summary.getTitle());
            this.f64275l.setText(game_coupon_summary.isExist() ? game_coupon_summary.getSub_title() : game_coupon_summary.getDefault_sub_title());
            this.f64266c.setOnClickListener(new b(game_coupon_summary));
        }
    }

    private void d(BtGameBenefitSummary bean) {
        BtGameBenefitBean game_gift_summary = bean.getGame_gift_summary();
        if (game_gift_summary != null) {
            this.f64267d = findViewById(R.id.ll_tab_3);
            this.f64270g = (ImageView) findViewById(R.id.iv_icon_3);
            this.f64273j = (TextView) findViewById(R.id.tv_title_3);
            this.f64276m = (TextView) findViewById(R.id.tv_desc_3);
            this.f64273j.setText(game_gift_summary.getTitle());
            this.f64276m.setText(game_gift_summary.isExist() ? game_gift_summary.getSub_title() : game_gift_summary.getDefault_sub_title());
            this.f64267d.setOnClickListener(new c(game_gift_summary));
        }
    }

    public void setListener(d mListener) {
        this.f64277n = mListener;
    }

    public void update(BtGameWelfare welfare) {
        if (welfare.getGame_activity_summary() != null && welfare.getGame_activity_summary().size() > 0 && welfare.getGame_benefit_summary() != null && welfare.getGame_benefit_summary().getGame_coupon_summary() != null && welfare.getGame_benefit_summary().getGame_coupon_summary() != null) {
            View.inflate(getContext(), R.layout.view_activity_tab_view_three, this);
            b(welfare.getGame_activity_summary().get(0));
            c(welfare.getGame_benefit_summary());
            d(welfare.getGame_benefit_summary());
        }
        if (welfare.getGame_activity_summary() == null && welfare.getGame_benefit_summary() != null && welfare.getGame_benefit_summary().getGame_coupon_summary() != null && welfare.getGame_benefit_summary().getGame_coupon_summary() != null) {
            View.inflate(getContext(), R.layout.view_activity_tab_view_two, this);
            c(welfare.getGame_benefit_summary());
            d(welfare.getGame_benefit_summary());
        } else {
            if (welfare.getGame_activity_summary() == null || welfare.getGame_activity_summary().size() <= 0) {
                return;
            }
            View.inflate(getContext(), R.layout.view_activity_tab_view_one, this);
            b(welfare.getGame_activity_summary().get(0));
        }
    }

    public ActivityTabView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
    }

    public ActivityTabView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
