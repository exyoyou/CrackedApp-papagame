package com.join.mgps.customview.widget.detail;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtInfoBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PcGameInfoCardView extends LinearLayout implements com.join.mgps.customview.widget.detail.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SimpleDraweeView f67154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SimpleDraweeView f67155c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SimpleDraweeView f67156d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f67157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f67158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f67159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private LinearLayout f67160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f67161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private View f67162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f67163k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.join.mgps.customview.widget.detail.a f67164l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    c f67165m;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ExtInfoBean f67166b;

        a(final ExtInfoBean val$extInfoBean) {
            this.f67166b = val$extInfoBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            PcGameInfoCardView pcGameInfoCardView = PcGameInfoCardView.this;
            pcGameInfoCardView.g(pcGameInfoCardView.f67155c, this.f67166b.getShare_info().getDescription());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f67168b;

        b(final CommonGameInfoBean val$adInfo) {
            this.f67168b = val$adInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            t.l(PcGameInfoCardView.this.getContext()).R1(Event.clickAD, new Ext().setFrom("2"));
            IntentUtil.getInstance().intentActivity(PcGameInfoCardView.this.getContext(), this.f67168b.getIntentDataBean());
        }
    }

    public PcGameInfoCardView(Context context) {
        super(context);
        e(context);
    }

    private void e(Context context) {
        View.inflate(context, R.layout.view_game_detail_game_info_pc, this);
        this.f67154b = (SimpleDraweeView) findViewById(R.id.sdv_game_icon);
        this.f67155c = (SimpleDraweeView) findViewById(R.id.sdv_share_user);
        this.f67156d = (SimpleDraweeView) findViewById(R.id.sdv_top_ad);
        this.f67157e = (TextView) findViewById(R.id.tv_app_name);
        this.f67158f = (TextView) findViewById(R.id.tv_game_desc);
        this.f67159g = (TextView) findViewById(R.id.tv_score);
        this.f67160h = (LinearLayout) findViewById(R.id.ll_tags);
        this.f67161i = findViewById(R.id.v_score);
        this.f67162j = findViewById(R.id.ll_share_by);
        this.f67163k = findViewById(R.id.ll_handle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int f(TipBean tipBean, TipBean tipBean2) {
        if ("134".equals(tipBean.getId())) {
            return -1;
        }
        return "134".equals(tipBean2.getId()) ? 1 : 0;
    }

    @Override // com.join.mgps.customview.widget.detail.b
    public void a(GamedetialModleFourBean modleFourBean) {
        l.h(this.f67154b, modleFourBean.getIco_remote());
        ExtInfoBean ext_info = modleFourBean.getExt_info();
        if (ext_info != null) {
            if (ext_info.getShare_info() != null) {
                this.f67162j.setVisibility(0);
                l.h(this.f67155c, ext_info.getShare_info().getHead_url());
            } else {
                this.f67162j.setVisibility(8);
            }
            this.f67162j.setOnClickListener(new a(ext_info));
        }
        if (modleFourBean.getHandle_support() == 1) {
            this.f67163k.setVisibility(0);
        } else {
            this.f67163k.setVisibility(8);
        }
        if (modleFourBean.isCpsGame()) {
            this.f67157e.setText(modleFourBean.getGame_name() + "（云游戏）");
        } else {
            this.f67157e.setText(modleFourBean.getGame_name());
        }
        this.f67158f.setText(modleFourBean.getInfo());
        if (modleFourBean.getGame_score() != null) {
            this.f67159g.setText(modleFourBean.getGame_score().getScore());
        }
        d(this.f67160h, modleFourBean.getTag_info(), modleFourBean.getSp_tag_info());
        CommonGameInfoBean ad_info = modleFourBean.getAd_info();
        if (ad_info == null) {
            this.f67156d.setVisibility(8);
            return;
        }
        this.f67156d.setVisibility(0);
        l.s(this.f67156d, ad_info.getCoverPicUrl());
        this.f67156d.setOnClickListener(new b(ad_info));
    }

    void d(LinearLayout view, List<TipBean> tag_info, TipNew sp_tag_info) {
        if (view == null) {
            return;
        }
        try {
            view.removeAllViews();
            if (tag_info == null || tag_info.size() <= 0) {
                return;
            }
            Collections.sort(tag_info, new Comparator() { // from class: com.join.mgps.customview.widget.detail.c
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return PcGameInfoCardView.f((TipBean) obj, (TipBean) obj2);
                }
            });
            for (TipBean tipBean : tag_info) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.rightMargin = (int) view.getContext().getResources().getDimension(R.dimen.wdp20);
                View viewInflate = View.inflate(view.getContext(), R.layout.item_tag_common_zone_detail, null);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_tag);
                if ("134".equals(tipBean.getId())) {
                    textView.setText("平台:" + tipBean.getName());
                } else {
                    textView.setText(tipBean.getName());
                }
                view.addView(viewInflate, layoutParams);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void g(View view, String content) {
        c cVar = this.f67165m;
        if (cVar != null && cVar.isShowing()) {
            this.f67165m.dismiss();
        }
        if (this.f67165m == null) {
            this.f67165m = new c(getContext(), (int) getResources().getDimension(R.dimen.wdp440), -2);
        }
        this.f67165m.showAsDropDown(view, (int) (view.getMeasuredWidth() - getResources().getDimension(R.dimen.dp24)), 0);
        this.f67165m.b(content);
    }

    @Override // com.join.mgps.customview.widget.detail.b
    public View getContentView() {
        return this;
    }

    @Override // com.join.mgps.customview.widget.detail.b
    public void setGameInfoCallback(com.join.mgps.customview.widget.detail.a gameInfoCallback) {
        this.f67164l = gameInfoCallback;
    }

    public PcGameInfoCardView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        e(context);
    }

    class c extends PopupWindow {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f67170a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private TextView f67171b;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (event.getAction() != 4) {
                    return false;
                }
                c.this.dismiss();
                return true;
            }
        }

        public c(Context context) {
            super(context);
            this.f67170a = context;
            a();
        }

        private void c() {
            setBackgroundDrawable(new BitmapDrawable());
            setFocusable(true);
            setTouchable(true);
            setOutsideTouchable(true);
            setTouchInterceptor(new a());
        }

        void a() {
            View viewInflate = LayoutInflater.from(this.f67170a).inflate(R.layout.pop_detail_share_user, (ViewGroup) null);
            setContentView(viewInflate);
            this.f67171b = (TextView) viewInflate.findViewById(R.id.tv_text);
            c();
        }

        public void b(String content) {
            this.f67171b.setText(content);
        }

        public c(Context mContext, int width, int height) {
            super(width, height);
            this.f67170a = mContext;
            a();
        }
    }

    public PcGameInfoCardView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        e(context);
    }
}
