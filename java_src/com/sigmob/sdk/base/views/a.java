package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes5.dex */
public class a extends RelativeLayout {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static float f79813d = 8.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f79814e = 1.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f79815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ImageView f79816b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f79817c;

    public a(Context context, int type) {
        super(context);
        this.f79815a = type;
        int iDipsToIntPixels = Dips.dipsToIntPixels(5.0f, context);
        int iDipsToIntPixels2 = Dips.dipsToIntPixels(16.0f, context);
        ImageView imageView = new ImageView(context);
        this.f79816b = imageView;
        imageView.setId(ClientMetadata.generateViewId());
        imageView.setScaleType(ImageView.ScaleType.FIT_START);
        imageView.setAdjustViewBounds(true);
        imageView.setMaxWidth(Dips.dipsToIntPixels(40.0f, context));
        imageView.setMinimumWidth(iDipsToIntPixels2);
        imageView.setBackgroundColor(Color.alpha(0));
        TextView textView = new TextView(context);
        this.f79817c = textView;
        textView.setTextColor(Color.parseColor("#B9B9B9"));
        textView.setTextSize(1, 12.0f);
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iDipsToIntPixels2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, iDipsToIntPixels2);
        if (type == 1) {
            layoutParams2.addRule(9);
            layoutParams2.addRule(12);
            int i10 = iDipsToIntPixels * 2;
            layoutParams2.setMargins(iDipsToIntPixels, 0, 0, i10);
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, iDipsToIntPixels, i10);
        } else {
            layoutParams2.addRule(1, imageView.getId());
            layoutParams2.addRule(8, imageView.getId());
            layoutParams2.setMargins(0, 0, 0, 0);
            layoutParams.addRule(9);
            layoutParams.addRule(12);
            layoutParams.setMargins(iDipsToIntPixels, 0, 0, 0);
        }
        addView(imageView, layoutParams);
        addView(textView, layoutParams2);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener listener) {
        ImageView imageView = this.f79816b;
        if (imageView == null) {
            return;
        }
        imageView.setOnClickListener(listener);
    }

    public void a(Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        this.f79816b.setImageBitmap(bitmap);
    }

    public void b(String adText) {
        try {
            this.f79817c.setText(adText);
        } catch (Throwable th) {
            SigmobLog.e("showAdText error", th);
        }
    }

    public void a(String url) {
        com.sigmob.sdk.base.common.h.a().getBitmap(url, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.base.views.a.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                int iDipsToIntPixels = Dips.dipsToIntPixels(3.0f, a.this.getContext());
                if (bitmap == null) {
                    return;
                }
                if (a.this.f79815a != 1 && bitmap.getWidth() > bitmap.getHeight() * 1.5f) {
                    ((RelativeLayout.LayoutParams) a.this.f79816b.getLayoutParams()).setMargins((-iDipsToIntPixels) * (bitmap.getWidth() / bitmap.getHeight()), 0, 0, 0);
                }
                a.this.f79816b.setImageBitmap(bitmap);
            }
        });
    }
}
