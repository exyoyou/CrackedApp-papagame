package com.windmill.sdk.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.windmill.sdk.WindMillError;
import com.windmill.sdk.base.WMAdapterError;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.models.AdInfo;
import com.windmill.sdk.natives.WMNativeAdData;

/* JADX INFO: loaded from: classes8.dex */
public abstract class BannerBaseView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final TextView f87412a;
    public View adBgShade;
    public ImageView adCloseImage;
    public TextView adCtaText;
    public TextView adDescText;
    public ImageView adLogoImage;
    public FrameLayout adMediaLayout;
    public ViewGroup adPostGroup;
    public ImageView adPostImage;
    public TextView adTittleText;
    public View adView;
    public a baseControl;
    public ImageView blurImage;
    public ViewGroup clickLayout;
    public Context context;
    public ViewGroup llAdGroup;
    public WMNativeAdData nativeAdData;
    public int screenHeight;
    public int screenWidth;

    public BannerBaseView(Context context, final a baseControl) {
        super(context);
        this.context = context;
        this.baseControl = baseControl;
        this.nativeAdData = baseControl.getNativeAdData();
        this.screenWidth = context.getResources().getDisplayMetrics().widthPixels;
        this.screenHeight = context.getResources().getDisplayMetrics().heightPixels;
        this.adView = View.inflate(context, getLayoutId(context), null);
        ViewGroup nativeAdContainer = this.nativeAdData.getNativeAdContainer(context);
        if (nativeAdContainer != null) {
            addView(nativeAdContainer, new ViewGroup.LayoutParams(-1, -2));
            nativeAdContainer.removeAllViews();
            nativeAdContainer.addView(this.adView, new ViewGroup.LayoutParams(-1, -2));
        } else {
            addView(this.adView, new ViewGroup.LayoutParams(-1, -2));
        }
        this.clickLayout = (ViewGroup) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_click_group"));
        this.adPostGroup = (ViewGroup) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_post_group"));
        this.adBgShade = this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_bg_shade"));
        this.llAdGroup = (ViewGroup) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_ll_ad_group"));
        this.blurImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_blur_image"));
        this.adMediaLayout = (FrameLayout) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_post_media"));
        this.adPostImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_post_image"));
        this.adLogoImage = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_logo_image"));
        this.f87412a = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_ad_text"));
        this.adTittleText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_tittle_tv"));
        this.adDescText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_desc_tv"));
        this.adCtaText = (TextView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_cta_bt"));
        ImageView imageView = (ImageView) this.adView.findViewById(ResourceUtil.getId(context, "tobid_banner_close_image"));
        this.adCloseImage = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.BannerBaseView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (baseControl.getListener() != null) {
                    baseControl.getListener().onAdClose();
                }
                WMNativeAdData wMNativeAdData = BannerBaseView.this.nativeAdData;
                if (wMNativeAdData != null) {
                    wMNativeAdData.destroy();
                }
            }
        });
        this.adBgShade.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.BannerBaseView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                WMLogUtil.d("BannerBaseView", "--------adBgShade------click is not pass------------");
            }
        });
        bindListener();
    }

    public void bindListener() {
        WMNativeAdData wMNativeAdData = this.nativeAdData;
        if (wMNativeAdData != null) {
            wMNativeAdData.setInteractionListener(new WMNativeAdData.NativeAdInteractionListener() { // from class: com.windmill.sdk.widget.BannerBaseView.3
                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADClicked(AdInfo adInfo) {
                    WMLogUtil.d("BannerBaseView", "----------onADClicked----------");
                    if (BannerBaseView.this.baseControl.getListener() != null) {
                        BannerBaseView.this.baseControl.getListener().onAdClick();
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADError(AdInfo adInfo, WindMillError error) {
                    WMLogUtil.d("BannerBaseView", "----------onADError----------" + error.toString());
                    if (BannerBaseView.this.baseControl.getListener() != null) {
                        BannerBaseView.this.baseControl.getListener().onAdShowError(new WMAdapterError(error.getErrorCode(), error.getMessage()));
                    }
                    a aVar = BannerBaseView.this.baseControl;
                    if (aVar != null) {
                        aVar.destroy();
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADExposed(AdInfo adInfo) {
                    WMLogUtil.d("BannerBaseView", "----------onADExposed----------");
                    if (BannerBaseView.this.baseControl.getListener() != null) {
                        BannerBaseView.this.baseControl.getListener().onAdShow();
                    }
                }

                @Override // com.windmill.sdk.natives.WMNativeAdData.NativeAdInteractionListener
                public void onADRenderSuccess(AdInfo adInfo, View view, float width, float height) {
                    WMLogUtil.d("BannerBaseView", "----------onRenderSuccess----------");
                }
            });
        }
    }

    public int dp2px(Context context, float dp) {
        return (int) ((dp * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public abstract int getLayoutId(Context context);

    public abstract void renderView();
}
