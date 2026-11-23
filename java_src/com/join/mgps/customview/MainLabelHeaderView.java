package com.join.mgps.customview;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.label.MainLabelActivity;
import com.join.mgps.dto.MainLabelBean;

/* JADX INFO: loaded from: classes3.dex */
public class MainLabelHeaderView extends ForumBaseHeaderView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SimpleDraweeView f65300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f65301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f65302f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    RelativeLayout f65303g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f65304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ImageView f65305i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    View f65306j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    TextView f65307k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f65308l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View.OnClickListener f65309m;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ((MainLabelActivity) MainLabelHeaderView.this.getContext()).onFocusClick();
        }
    }

    public MainLabelHeaderView(@NonNull Context context) {
        super(context);
        this.f65308l = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        this.f65309m.onClick(view);
    }

    public void d(String text) {
        TextView textView = this.f65307k;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public ImageView getPostsFilterSwitch() {
        return this.f65305i;
    }

    @Override // com.join.mgps.customview.ForumBaseHeaderView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View.inflate(getContext(), R.layout.layout_main_label_header, this);
        this.f65300d = (SimpleDraweeView) findViewById(R.id.iv_label_icon);
        this.f65301e = (TextView) findViewById(R.id.tv_label_name);
        this.f65302f = (TextView) findViewById(R.id.tv_label_introduction);
        this.f65303g = (RelativeLayout) findViewById(R.id.rl_posts_filter);
        this.f65304h = (TextView) findViewById(R.id.tv_posts_filter_name);
        this.f65305i = (ImageView) findViewById(R.id.iv_posts_filter_switch);
        this.f65306j = findViewById(R.id.rl_last);
        this.f65305i.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f66697b.c(view);
            }
        });
        TextView textView = (TextView) findViewById(R.id.btnFocus);
        this.f65307k = textView;
        textView.setOnClickListener(new a());
    }

    public void setFilterVisibility(boolean isShow, String str) {
        if (!isShow) {
            this.f65303g.setVisibility(8);
            return;
        }
        this.f65304h.setText("显示小组“" + str + "”内容");
        this.f65303g.setVisibility(0);
    }

    public void setFocusVisibility(boolean isShow) {
        if (this.f65308l != isShow) {
            this.f65307k.setVisibility(isShow ? 0 : 8);
            this.f65308l = isShow;
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener listener) {
        this.f65309m = listener;
    }

    public void setViewData(MainLabelBean mainLabelBean) {
        com.join.android.app.common.utils.l.h(this.f65300d, mainLabelBean.getTag_icon());
        this.f65301e.setText("#" + mainLabelBean.getTag_name() + "#");
        if (TextUtils.isEmpty(mainLabelBean.getTag_desc())) {
            this.f65302f.setVisibility(8);
        } else {
            this.f65302f.setVisibility(0);
            this.f65302f.setText(mainLabelBean.getTag_desc());
        }
    }

    public MainLabelHeaderView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f65308l = true;
    }

    public MainLabelHeaderView(@NonNull Context context, @Nullable AttributeSet attrs, @AttrRes int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65308l = true;
    }
}
