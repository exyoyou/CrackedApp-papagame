package com.sigmob.sdk.newInterstitial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.utils.t;

/* JADX INFO: loaded from: classes3.dex */
public class SigAdInfoView extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f81599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f81600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f81601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SigAdPrivacyInfoView f81602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f81603e;

    public SigAdInfoView(Context context) {
        super(context);
        this.f81603e = false;
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, this.f81603e ? "sig_ad_app_info_small_layout" : "sig_ad_app_info_layout"), this);
        this.f81599a = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_app_icon"));
        this.f81600b = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_title"));
        this.f81601c = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_desc"));
        this.f81602d = (SigAdPrivacyInfoView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_info"));
    }

    public SigAdPrivacyInfoView getAdPrivacyInfo() {
        return this.f81602d;
    }

    public void setAppInfoView(String iconUrl, String title, String desc) {
        if (t.b(iconUrl)) {
            com.sigmob.sdk.base.common.h.a().load(iconUrl).into(this.f81599a);
        }
        if (t.b(title)) {
            this.f81600b.setText(title);
        }
        if (t.b(desc)) {
            this.f81601c.setText(desc);
        }
    }

    public SigAdInfoView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f81603e = false;
        this.f81603e = attrs.getAttributeBooleanValue(null, "sig_isSmall", false);
        a(context);
    }

    public SigAdInfoView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f81603e = false;
        a(context);
    }
}
