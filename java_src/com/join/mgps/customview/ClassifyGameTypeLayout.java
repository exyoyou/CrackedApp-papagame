package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.ClassifyGameActivity_;
import com.join.mgps.dto.ClassifyGameTypeBean;

/* JADX INFO: loaded from: classes3.dex */
public class ClassifyGameTypeLayout extends LinearLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SimpleDraweeView f64486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f64487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f64488d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ClassifyGameTypeBean f64489e;

    public ClassifyGameTypeLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64488d = context;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        ClassifyGameActivity_.intent(this.f64488d).a(this.f64489e.getId()).b(0).c(this.f64489e.getTitle()).start();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f64486b = (SimpleDraweeView) findViewById(R.id.classify_game_img);
        this.f64487c = (TextView) findViewById(R.id.classify_game_name);
        setOnClickListener(this);
    }

    public void setClassifyGameTypeBean(ClassifyGameTypeBean mBean) {
        if (mBean != null) {
            this.f64489e = mBean;
            com.join.android.app.common.utils.l.h(this.f64486b, mBean.getIco_remote());
            this.f64487c.setText(mBean.getTitle());
        }
    }
}
