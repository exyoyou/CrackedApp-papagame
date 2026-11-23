package com.windmill.sdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMViewBinder;
import com.windmill.sdk.utils.UIUtils;
import com.windmill.sdk.utils.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class BannerView_7002001 extends BannerBaseView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f87419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f87420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f87422e;

    public BannerView_7002001(Context context, int width, int height, a baseControl) {
        int i10;
        super(context, baseControl);
        WMLogUtil.i("--------------BannerView_7002001-------------" + width + ":" + height);
        if (width > 0) {
            this.f87419b = dp2px(context, width);
        } else {
            this.f87419b = this.screenWidth;
        }
        if (height > 0) {
            this.f87420c = dp2px(context, height);
        } else {
            this.f87420c = (this.screenWidth * 50) / 320;
        }
        int iDp2px = (this.f87419b - dp2px(context, 20.0f)) / 4;
        this.f87421d = iDp2px;
        int i11 = (iDp2px * 9) / 16;
        this.f87422e = i11;
        if (height > 0 && i11 > (i10 = this.f87420c)) {
            a(i10 / i11);
        }
        ViewGroup.LayoutParams layoutParams = this.clickLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = this.f87419b;
            layoutParams.height = this.f87420c;
            this.clickLayout.setLayoutParams(layoutParams);
        }
        ViewGroup.LayoutParams layoutParams2 = this.adPostGroup.getLayoutParams();
        if (layoutParams != null) {
            layoutParams2.width = this.f87421d;
            layoutParams2.height = this.f87422e;
            this.adPostGroup.setLayoutParams(layoutParams2);
        }
        View view = (View) this.adPostGroup.getParent();
        if (view != null) {
            ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
            layoutParams3.width = this.f87421d;
            layoutParams3.height = this.f87422e;
            view.setLayoutParams(layoutParams2);
        }
        a();
    }

    @Override // com.windmill.sdk.widget.BannerBaseView
    public int getLayoutId(Context context) {
        return ResourceUtil.getLayoutId(context, "tobid_layout_banner_model_7002001");
    }

    @Override // com.windmill.sdk.widget.BannerBaseView
    public void renderView() {
        ViewGroup viewGroup;
        WMImage wMImage;
        WMNativeAdData wMNativeAdData = this.nativeAdData;
        if (wMNativeAdData != null) {
            if (TextUtils.isEmpty(wMNativeAdData.getTitle())) {
                this.adTittleText.setText("点开有惊喜");
            } else {
                this.adTittleText.setText(this.nativeAdData.getTitle());
            }
            if (TextUtils.isEmpty(this.nativeAdData.getDesc())) {
                this.adDescText.setText("听说点开它的人都交了好运!");
            } else {
                this.adDescText.setText(this.nativeAdData.getDesc());
            }
            if (TextUtils.isEmpty(this.nativeAdData.getCTAText())) {
                this.adCtaText.setText("查看详情");
            } else {
                this.adCtaText.setText(this.nativeAdData.getCTAText());
            }
            if (l.c(this.nativeAdData.getNetworkId())) {
                this.nativeAdData.setAdLogoParams(new FrameLayout.LayoutParams(0, 0));
            }
            if (!TextUtils.isEmpty(this.nativeAdData.getIconUrl())) {
                ImageManager.with(this.context).getBitmap(this.nativeAdData.getIconUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.sdk.widget.BannerView_7002001.1
                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoadFailed() {
                        WMLogUtil.d("BannerBaseView", "--------blurImage------onBitmapLoadFailed------getIconUrl------");
                    }

                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoaded(Bitmap bitmap) {
                        WMLogUtil.d("BannerBaseView", "--------blurImage------onBitmapLoaded------getIconUrl------");
                        WMNativeAdData wMNativeAdData2 = BannerView_7002001.this.nativeAdData;
                        if (wMNativeAdData2 == null || wMNativeAdData2.getAdPatternType() != 4) {
                            return;
                        }
                        BannerView_7002001.this.blurImage.setImageBitmap(com.windmill.sdk.utils.b.a(BannerView_7002001.this.context, bitmap, 25.0f));
                    }
                });
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.adCtaText);
            if (this.baseControl.getNativeEnableFullScreenClick() == 1) {
                this.adBgShade.setVisibility(8);
                arrayList.add(this.clickLayout);
                viewGroup = this.clickLayout;
            } else {
                this.adBgShade.setVisibility(0);
                arrayList.add(this.adPostGroup);
                viewGroup = this.adPostGroup;
                this.adBgShade.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.BannerView_7002001.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        WMLogUtil.d("BannerBaseView", "--------adBgShade------click is not pass------------");
                    }
                });
            }
            ViewGroup viewGroup2 = viewGroup;
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(this.adCtaText);
            int adPatternType = this.nativeAdData.getAdPatternType();
            ArrayList arrayList3 = new ArrayList();
            if (adPatternType == 1 || adPatternType == 2 || adPatternType == 3) {
                this.adPostImage.setVisibility(0);
                this.adMediaLayout.setVisibility(8);
                arrayList.add(this.adPostImage);
                arrayList3.add(this.adPostImage);
            } else {
                this.adPostImage.setVisibility(8);
                this.adMediaLayout.setVisibility(0);
            }
            if (this.nativeAdData.getNetworkId() == 22) {
                this.nativeAdData.registerViewBidder(new WMViewBinder.Builder(this.adView.getId()).titleId(this.adTittleText.getId()).descriptionTextId(this.adDescText.getId()).callToActionId(this.adCtaText.getId()).mainImageId(this.adPostImage.getId()).mediaViewIdId(this.adMediaLayout.getId()).groupImage1Id(this.adPostImage.getId()).groupImage2Id(this.adPostImage.getId()).groupImage3Id(this.adPostImage.getId()).build());
            }
            this.nativeAdData.bindViewForInteraction(this.context, viewGroup2, arrayList, arrayList2, null);
            if (!arrayList3.isEmpty()) {
                this.nativeAdData.bindImageViews(this.context, arrayList3, 0);
            } else if (adPatternType == 4) {
                this.adPostImage.setVisibility(8);
                this.adMediaLayout.setVisibility(0);
                if (this.nativeAdData.getNetworkId() == 42) {
                    this.adMediaLayout.getLayoutParams().height = 200;
                    this.adMediaLayout.getLayoutParams().width = 300;
                }
                this.nativeAdData.bindMediaView(this.context, this.adMediaLayout);
            }
            if (this.nativeAdData.getImageList() == null || this.nativeAdData.getImageList().size() <= 0 || (wMImage = this.nativeAdData.getImageList().get(0)) == null || TextUtils.isEmpty(wMImage.getImageUrl())) {
                return;
            }
            ImageManager.with(this.context).getBitmap(wMImage.getImageUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.sdk.widget.BannerView_7002001.3
                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoadFailed() {
                    WMLogUtil.d("BannerBaseView", "--------blurImage------onBitmapLoadFailed------------");
                }

                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoaded(Bitmap bitmap) {
                    WMLogUtil.d("BannerBaseView", "--------blurImage------onBitmapLoaded------------: " + bitmap);
                    if (bitmap != null) {
                        Bitmap bitmapA = com.windmill.sdk.utils.b.a(BannerView_7002001.this.context, bitmap, 25.0f);
                        ImageView imageView = BannerView_7002001.this.blurImage;
                        if (imageView != null) {
                            imageView.setImageBitmap(bitmapA);
                        }
                    }
                }
            });
        }
    }

    private void a(final float scale) {
        int iDp2px = this.f87420c - UIUtils.dp2px(this.context, 10.0f * scale);
        if (iDp2px <= 0) {
            iDp2px = this.f87420c;
        }
        this.f87422e = iDp2px;
        this.f87421d = (iDp2px * 16) / 9;
        ViewGroup.LayoutParams layoutParams = this.llAdGroup.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = UIUtils.dp2px(this.context, scale * 5.0f);
            this.llAdGroup.setLayoutParams(layoutParams);
        }
        this.adCtaText.setTextSize(12.0f * scale);
        ViewGroup.LayoutParams layoutParams2 = this.adCtaText.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.width = UIUtils.dp2px(this.context, 60.0f * scale);
            layoutParams2.height = UIUtils.dp2px(this.context, 25.0f * scale);
            this.adCtaText.setLayoutParams(layoutParams2);
        }
        this.adCloseImage.post(new Runnable() { // from class: com.windmill.sdk.widget.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f87574b.b();
            }
        });
        this.adLogoImage.post(new Runnable() { // from class: com.windmill.sdk.widget.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f87575b.b(scale);
            }
        });
        float f10 = 14.0f * scale;
        this.adTittleText.setTextSize(f10);
        this.f87412a.setTextSize(f10);
        this.adDescText.setTextSize(8.0f * scale);
        ViewGroup.LayoutParams layoutParams3 = this.adDescText.getLayoutParams();
        if (layoutParams3 == null || !(layoutParams2 instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = UIUtils.dp2px(this.context, scale * 5.0f);
        this.adDescText.setLayoutParams(layoutParams3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        Object parent = this.adCtaText.getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                int width = this.adCloseImage.getWidth();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.adCloseImage.getLayoutParams();
                marginLayoutParams.rightMargin = width + (marginLayoutParams2 != null ? marginLayoutParams2.leftMargin : 0) + (marginLayoutParams2 != null ? marginLayoutParams2.rightMargin : 0);
                marginLayoutParams.leftMargin = UIUtils.dp2px(this.context, 0.0f);
                marginLayoutParams.topMargin = UIUtils.dp2px(this.context, 0.0f);
                marginLayoutParams.bottomMargin = UIUtils.dp2px(this.context, 0.0f);
                view.setLayoutParams(marginLayoutParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(float f10) {
        ViewGroup.LayoutParams layoutParams = this.adLogoImage.getLayoutParams();
        if (layoutParams != null) {
            Context context = this.context;
            layoutParams.width = UIUtils.dp2px(context, UIUtils.px2dip(context, this.adLogoImage.getWidth()) * f10);
            Context context2 = this.context;
            layoutParams.height = UIUtils.dp2px(context2, UIUtils.px2dip(context2, this.adLogoImage.getHeight()) * f10);
            this.adLogoImage.setLayoutParams(layoutParams);
        }
    }

    private void a() {
        try {
            if (this.nativeAdData.getNetworkId() == 1 || this.nativeAdData.getNetworkId() == 21) {
                if (this.baseControl.getAutoPlayMuted() != 1) {
                    this.nativeAdData.setVideoMute(false);
                } else {
                    this.nativeAdData.setVideoMute(true);
                }
            }
            int networkId = this.nativeAdData.getNetworkId();
            if (networkId != 1) {
                if (networkId != 13) {
                    if (networkId == 16) {
                        this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_ylh"));
                        return;
                    }
                    if (networkId == 19 || networkId == 45) {
                        this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_ks"));
                        return;
                    }
                    if (networkId == 21) {
                        this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_bd"));
                        return;
                    }
                    if (networkId != 22) {
                        if (networkId == 28) {
                            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_qm_fff"));
                            return;
                        }
                        if (networkId == 29) {
                            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_tap"));
                            return;
                        }
                        if (networkId == 41) {
                            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_octopus_fff"));
                            return;
                        }
                        if (networkId == 42) {
                            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_bayes_fff"));
                            return;
                        }
                        if (networkId != 998) {
                            if (networkId != 999) {
                                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_sg"));
                                return;
                            } else {
                                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_adx"));
                                return;
                            }
                        }
                        Bitmap adLogo = this.nativeAdData.getAdLogo();
                        if (adLogo != null) {
                            this.adLogoImage.setImageBitmap(adLogo);
                        } else {
                            this.adLogoImage.setVisibility(8);
                        }
                        TextView textView = this.f87412a;
                        if (textView != null) {
                            textView.setVisibility(0);
                            return;
                        }
                        return;
                    }
                }
                this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_tt"));
                return;
            }
            this.adLogoImage.setImageResource(ResourceUtil.getDrawableId(this.context, "tobid_image_ad_logo_mtg"));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
