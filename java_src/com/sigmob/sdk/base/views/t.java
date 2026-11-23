package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ResourceUtil;

/* JADX INFO: loaded from: classes5.dex */
public abstract class t extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f80232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f80233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f80234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f80235d;

    public t(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, getResName()), this);
        this.f80232a = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_ad_logo"));
        this.f80233b = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_view"));
        this.f80234c = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_ll"));
        this.f80235d = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_ad_text"));
    }

    public TextView getPrivacyAdText() {
        return this.f80235d;
    }

    public View getPrivacyLl() {
        return this.f80234c;
    }

    public abstract String getResName();

    public t(Context context, AttributeSet attrs) {
        super(context, attrs);
        a(context);
    }

    public void a(String logoUrl, boolean isShow) {
        if (com.sigmob.sdk.base.utils.t.b(logoUrl)) {
            com.sigmob.sdk.base.common.h.a().load(logoUrl).into(this.f80232a);
        }
        this.f80233b.setVisibility(isShow ? 0 : 8);
    }

    public t(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a(context);
    }
}
