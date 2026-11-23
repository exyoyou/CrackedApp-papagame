package com.sigmob.sdk.nativead;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.views.CircleImageView;

/* JADX INFO: loaded from: classes3.dex */
public class o extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f81444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextView f81445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final CircleImageView f81446c;

    public o(Context context) {
        super(context);
        View.inflate(context, getLayoutId(), this);
        this.f81444a = (TextView) findViewById(ResourceUtil.getId(getContext(), "sig_app_name"));
        this.f81445b = (TextView) findViewById(ResourceUtil.getId(getContext(), "sig_app_cta"));
        ViewGroup viewGroup = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_app_icon"));
        CircleImageView circleImageView = new CircleImageView(context);
        this.f81446c = circleImageView;
        circleImageView.setCircle(false);
        circleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        viewGroup.addView(circleImageView, new ViewGroup.LayoutParams(-1, -1));
    }

    private int getLayoutId() {
        return ResourceUtil.getLayoutId(getContext(), "sig_app_layout");
    }

    public void a(String iconUrl, String name, String cta) {
        this.f81444a.setText(name);
        this.f81445b.setText(cta);
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return;
        }
        ImageManager.with(contextE).load(iconUrl).into(this.f81446c);
    }

    public View getCtaView() {
        return this.f81445b;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener l10) {
        this.f81445b.setOnClickListener(l10);
    }
}
