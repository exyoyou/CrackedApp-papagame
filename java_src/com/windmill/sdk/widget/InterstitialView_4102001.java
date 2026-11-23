package com.windmill.sdk.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.windmill.sdk.R;
import com.windmill.sdk.base.WMLogUtil;
import com.windmill.sdk.natives.WMImage;
import com.windmill.sdk.natives.WMNativeAdData;
import com.windmill.sdk.natives.WMViewBinder;
import com.windmill.sdk.utils.UIUtils;
import com.windmill.sdk.utils.l;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public class InterstitialView_4102001 extends InterstitialBaseView {
    private void n() {
        ViewGroup.LayoutParams layoutParams;
        b();
        ViewGroup viewGroup = this.f87434b;
        if (viewGroup != null && (layoutParams = viewGroup.getLayoutParams()) != null) {
            this.f87434b.setLayoutParams(layoutParams);
        }
        f();
        g();
        i();
        m();
    }

    @Override // com.windmill.sdk.widget.InterstitialBaseView
    public View a(Context context) {
        return View.inflate(context, ResourceUtil.getLayoutId(context, "tobid_layout_interstitial_model_4102001"), null);
    }

    @Override // com.windmill.sdk.widget.InterstitialBaseView
    public void f() {
        ViewGroup viewGroup;
        WMLogUtil.i("--------RenderView " + this.f87456x.getAdPatternType());
        WMNativeAdData wMNativeAdData = this.f87456x;
        if (wMNativeAdData != null) {
            if (TextUtils.isEmpty(wMNativeAdData.getTitle())) {
                this.f87446n.setText("点开有惊喜");
            } else {
                this.f87446n.setText(this.f87456x.getTitle());
            }
            if (TextUtils.isEmpty(this.f87456x.getDesc())) {
                this.f87447o.setText("听说点开它的人都交了好运!");
            } else {
                this.f87447o.setText(this.f87456x.getDesc());
            }
            if (TextUtils.isEmpty(this.f87456x.getCTAText())) {
                this.f87448p.setText("获取详情");
            } else {
                this.f87448p.setText(this.f87456x.getCTAText());
            }
            if (l.c(this.f87456x.getNetworkId())) {
                this.f87456x.setAdLogoParams(new FrameLayout.LayoutParams(0, 0));
            }
            this.f87445m.setShapeType(1);
            if (TextUtils.isEmpty(this.f87456x.getIconUrl())) {
                this.f87445m.setVisibility(0);
                this.f87445m.getLayoutParams().width = UIUtils.dp2px(this, 0.0f);
                ((RelativeLayout.LayoutParams) this.f87445m.getLayoutParams()).leftMargin = UIUtils.dp2px(this, 10.0f);
            } else {
                this.f87445m.setVisibility(0);
                WMLogUtil.i(getClass().getSimpleName() + "----iconUrl " + this.f87456x.getIconUrl());
                ImageManager.with(a()).getBitmap(this.f87456x.getIconUrl(), new ImageManager.BitmapLoadedListener() { // from class: com.windmill.sdk.widget.InterstitialView_4102001.1
                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoadFailed() {
                    }

                    @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                    public void onBitmapLoaded(Bitmap bitmap) {
                        if (bitmap != null) {
                            TbCircleImageView tbCircleImageView = InterstitialView_4102001.this.f87445m;
                            if (tbCircleImageView != null) {
                                tbCircleImageView.setImageBitmap(bitmap);
                            }
                            WMNativeAdData wMNativeAdData2 = InterstitialView_4102001.this.f87456x;
                            if (wMNativeAdData2 == null || wMNativeAdData2.getAdPatternType() != 4) {
                                return;
                            }
                            Bitmap bitmapA = com.windmill.sdk.utils.b.a(InterstitialView_4102001.this.a(), bitmap, 5.0f);
                            ImageView imageView = InterstitialView_4102001.this.f87435c;
                            if (imageView != null) {
                                imageView.setImageBitmap(bitmapA);
                            }
                        }
                    }
                });
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f87448p);
            WMLogUtil.i("-------getNativeEnableFullScreenClick " + this.f87455w.getNativeEnableFullScreenClick());
            if (this.f87455w.getNativeEnableFullScreenClick() == 1) {
                arrayList.add(this.f87436d);
                viewGroup = this.f87436d;
            } else {
                viewGroup = this.f87436d;
                this.f87439g.setVisibility(0);
                this.f87439g.setOnClickListener(new View.OnClickListener() { // from class: com.windmill.sdk.widget.InterstitialView_4102001.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                    }
                });
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(this.f87448p);
            if (this.f87455w.getMistake_click_rate() >= this.f87457y) {
                this.f87441i.setVisibility(0);
                arrayList2.add(this.f87441i);
            } else {
                this.f87441i.setVisibility(8);
            }
            int adPatternType = this.f87456x.getAdPatternType();
            WMLogUtil.d(WMLogUtil.TAG, "-------------patternType:" + adPatternType);
            ArrayList arrayList3 = new ArrayList();
            if (adPatternType == 1 || adPatternType == 2 || adPatternType == 3) {
                this.f87437e.setVisibility(0);
                this.f87438f.setVisibility(8);
                arrayList3.add(this.f87437e);
                int screenHeightInPx = UIUtils.getScreenHeightInPx(a());
                this.f87437e.getLayoutParams().height = screenHeightInPx;
                this.f87437e.getLayoutParams().width = (screenHeightInPx * 9) / 16;
                try {
                    if (!this.f87456x.getImageList().isEmpty()) {
                        WMImage wMImage = this.f87456x.getImageList().get(0);
                        int width = (screenHeightInPx * wMImage.getWidth()) / wMImage.getHeight();
                        if (UIUtils.getScreenWidthPx(a()) < width) {
                            width = (int) UIUtils.getScreenWidthPx(a());
                        }
                        if (width > 60) {
                            this.f87437e.getLayoutParams().width = width;
                        }
                    }
                } catch (Exception unused) {
                }
            } else {
                this.f87437e.setVisibility(8);
                this.f87438f.setVisibility(0);
            }
            if (this.f87456x.getNetworkId() == 22) {
                this.f87456x.registerViewBidder(new WMViewBinder.Builder(this.f87433a.getId()).titleId(this.f87446n.getId()).descriptionTextId(this.f87447o.getId()).callToActionId(this.f87448p.getId()).iconImageId(this.f87445m.getId()).mainImageId(this.f87437e.getId()).mediaViewIdId(this.f87438f.getId()).groupImage1Id(this.f87437e.getId()).groupImage2Id(this.f87437e.getId()).groupImage3Id(this.f87437e.getId()).build());
            }
            a(viewGroup, arrayList, arrayList2);
            if (!arrayList3.isEmpty()) {
                this.f87456x.bindImageViews(a(), arrayList3, 0);
            } else if (adPatternType == 4) {
                this.f87437e.setVisibility(8);
                this.f87438f.setVisibility(0);
                this.f87456x.bindMediaView(a(), this.f87438f);
            }
            c();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    public void m() {
        getWindow().getDecorView().setSystemUiVisibility(3846);
    }

    @Override // com.windmill.sdk.widget.InterstitialBaseView, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        try {
            setTheme(R.style.tobid_page);
        } catch (Exception unused) {
        }
        super.onCreate(savedInstanceState);
        try {
            setRequestedOrientation(0);
            n();
        } catch (Exception e10) {
            WMLogUtil.e("------interstitialView_4012003--onCreate " + e10.getMessage());
        }
    }

    @Override // com.windmill.sdk.widget.InterstitialBaseView, android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            setTheme(R.style.tobid_page);
        } catch (Exception unused) {
        }
    }
}
