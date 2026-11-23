package com.sigmob.sdk.newInterstitial;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.utils.t;
import com.sigmob.sdk.base.utils.w;
import com.sigmob.sdk.base.views.s;

/* JADX INFO: loaded from: classes3.dex */
public class h extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f81608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f81609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f81610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f81611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Button f81612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f81613f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SigAdPrivacyInfoView f81614g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private s f81615h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f81616i;

    public h(Context context) {
        super(context);
        a(context);
    }

    public SigAdPrivacyInfoView getAdPrivacyInfo() {
        return this.f81614g;
    }

    public Button getCTAButton() {
        return this.f81612e;
    }

    public View getCloseButton() {
        return this.f81608a;
    }

    public h(Context context, AttributeSet attrs) {
        super(context, attrs);
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, "sig_new_interstitial_endcard_layout"), this);
        this.f81616i = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_rl_close"));
        ImageView imageView = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_close"));
        this.f81608a = imageView;
        if (w.b(imageView)) {
            this.f81608a.setImageBitmap(com.sigmob.sdk.base.views.p.CLOSE_OLD.a());
        }
        this.f81609b = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_app_icon"));
        this.f81610c = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_title"));
        this.f81611d = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_desc"));
        this.f81612e = (Button) viewInflate.findViewById(ResourceUtil.getId(context, "sig_cta_button"));
        this.f81613f = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_endCard_image"));
        this.f81614g = (SigAdPrivacyInfoView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_info"));
    }

    public h(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a(context);
    }

    public void a(View.OnClickListener onClickListener) {
        if (this.f81615h == null) {
            Context context = getContext();
            s sVar = new s(context);
            this.f81615h = sVar;
            sVar.setText("反馈");
            this.f81615h.setOnClickListener(onClickListener);
            this.f81615h.setId(ClientMetadata.generateViewId());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.f81616i.getId());
            layoutParams.addRule(8, this.f81616i.getId());
            ViewParent parent = this.f81616i.getParent();
            if (parent == null) {
                return;
            }
            ((ViewGroup) parent).addView(this.f81615h, layoutParams);
        }
    }

    public void a(String iconUrl, String imageUrl, String title, String description, String ctaTitle) {
        if (t.b(iconUrl)) {
            com.sigmob.sdk.base.common.h.a().load(iconUrl).into(this.f81609b);
        }
        if (t.b(imageUrl) || t.b(iconUrl)) {
            if (!t.a((CharSequence) imageUrl)) {
                iconUrl = imageUrl;
            }
            com.sigmob.sdk.base.common.h.a().getBitmap(iconUrl, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.newInterstitial.h.1
                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoadFailed() {
                }

                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoaded(Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    com.sigmob.sdk.base.blurkit.a.a(h.this.getContext());
                    Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(bitmap.copy(bitmap.getConfig(), true), 25);
                    if (bitmapA == null) {
                        return;
                    }
                    h.this.f81613f.setImageBitmap(bitmapA);
                }
            });
        }
        if (t.b(title)) {
            this.f81610c.setText(title);
        }
        if (t.b(description)) {
            this.f81611d.setText(description);
        }
        if (t.b(ctaTitle)) {
            this.f81612e.setText(ctaTitle);
        }
    }
}
