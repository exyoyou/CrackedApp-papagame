package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class ak extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f79912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f79913b;

    public ak(final Context context) {
        super(context);
        int iDipsToIntPixels = Dips.dipsToIntPixels(22.0f, context);
        this.f79913b = iDipsToIntPixels;
        b(Dips.dipsToIntPixels(15.0f, context));
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-16777216);
        gradientDrawable.setStroke(1, -1);
        gradientDrawable.setCornerRadius(iDipsToIntPixels / 2);
        gradientDrawable.setAlpha(102);
        setBackground(gradientDrawable);
        setLayoutParams(layoutParams);
    }

    private void b(int width) {
        this.f79912a = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, width);
        layoutParams.addRule(13);
        this.f79912a.setImageBitmap(p.CLOSE_NEW.a());
        this.f79912a.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f79912a.setImageAlpha(204);
        addView(this.f79912a, layoutParams);
    }

    private void b(final String imageUrl) {
        com.sigmob.sdk.base.common.h.a().getBitmap(imageUrl, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.base.views.ak.1
            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
            }

            @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(Bitmap bitmap) {
                if (bitmap == null) {
                    SigmobLog.d(String.format("%s returned null bitmap", imageUrl));
                } else {
                    ak.this.f79912a.setImageBitmap(bitmap);
                }
            }
        });
    }

    public void a(final int resId) {
        this.f79912a.setImageResource(resId);
    }

    public void a(final Bitmap bitmap) {
        this.f79912a.setImageBitmap(bitmap);
    }

    public void a(BaseAdUnit adUnit) {
        ImageView imageView;
        p pVar;
        if (adUnit == null || adUnit.getEndcardCloseImage() != 1) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            setBackground(gradientDrawable);
            int i10 = this.f79913b;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i10, i10);
            layoutParams.addRule(13);
            this.f79912a.setLayoutParams(layoutParams);
            imageView = this.f79912a;
            pVar = p.CLOSE_OLD;
        } else {
            imageView = this.f79912a;
            pVar = p.CLOSE_NEW;
        }
        imageView.setImageBitmap(pVar.a());
    }

    public void a(final String imageUrl) {
        String lowerCase = imageUrl.toLowerCase();
        if (lowerCase.startsWith("http://") || lowerCase.startsWith("https://")) {
            b(imageUrl);
        } else if (lowerCase.startsWith("file://")) {
            try {
                this.f79912a.setImageURI(Uri.fromFile(new File(imageUrl)));
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
    }
}
