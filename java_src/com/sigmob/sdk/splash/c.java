package com.sigmob.sdk.splash;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.ImageTypeUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.windad.WindAds;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class c extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.sigmob.sdk.base.views.gif.e f81683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f81684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f81685d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f81686e;

    public c(Context context) {
        super(context);
        this.f81686e = false;
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        com.sigmob.sdk.base.views.gif.e eVar = new com.sigmob.sdk.base.views.gif.e(context);
        this.f81683b = eVar;
        setBackgroundColor(-1);
        addView(eVar, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bitmap c(Bitmap bitmap) {
        if (this.f81686e) {
            return bitmap;
        }
        this.f81686e = true;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (height > 0 && width > 0) {
            if ((((double) width) * 1.0d) / ((double) height) < this.f81685d) {
                WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f81751b.e();
                    }
                });
            } else {
                a(bitmap);
            }
        }
        return bitmap;
    }

    @Override // com.sigmob.sdk.splash.b
    public /* bridge */ /* synthetic */ void a() {
        super.a();
    }

    @Override // com.sigmob.sdk.splash.b
    public void b() {
        super.b();
        com.sigmob.sdk.base.views.gif.e eVar = this.f81683b;
        if (eVar == null) {
            return;
        }
        eVar.e();
    }

    @Override // com.sigmob.sdk.splash.b
    public /* bridge */ /* synthetic */ int getDuration() {
        return super.getDuration();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.sigmob.sdk.base.views.gif.e eVar = this.f81683b;
        if (eVar != null) {
            eVar.clearAnimation();
        }
        if (this.f81684c != null) {
            this.f81684c = null;
        }
        removeAllViews();
    }

    @Override // com.sigmob.sdk.splash.b
    public void setAspectRatio(float aspectRatio) {
        this.f81685d = aspectRatio;
    }

    private void a(final Bitmap bitmap) {
        WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f81752b.b(bitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Bitmap bitmap) {
        ImageView imageView;
        Context context = getContext();
        if (context == null || bitmap == null || bitmap.isRecycled() || com.sigmob.sdk.base.utils.w.b(this.f81684c)) {
            return;
        }
        com.sigmob.sdk.base.blurkit.a.a(context);
        this.f81684c = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(bitmap, 25, 1.0f);
        if (bitmapA == null || bitmapA.isRecycled() || (imageView = this.f81684c) == null) {
            return;
        }
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f81684c.setImageBitmap(bitmapA);
        addView(this.f81684c, 0, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f81683b.setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f81683b.setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    @Override // com.sigmob.sdk.splash.b
    public void c() {
        super.c();
        com.sigmob.sdk.base.views.gif.e eVar = this.f81683b;
        if (eVar == null) {
            return;
        }
        eVar.d();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004d  */
    @Override // com.sigmob.sdk.splash.b
    public boolean a(BaseAdUnit adUnit, b.a listener) {
        Bitmap bitmapDecodeFile;
        String str;
        if (this.f81683b == null) {
            str = "imageView is null.";
        } else if (adUnit == null) {
            str = "adUnit is null.";
        } else {
            String splashFilePath = adUnit.getSplashFilePath();
            if (splashFilePath != null) {
                String fileType = ImageTypeUtil.getFileType(splashFilePath);
                if (TextUtils.isEmpty(fileType)) {
                    return false;
                }
                if (fileType.equals("gif")) {
                    this.f81683b.setBytes(FileUtil.readBytes(splashFilePath));
                    this.f81683b.setOnFrameAvailable(new com.sigmob.sdk.base.views.gif.e.c() { // from class: com.sigmob.sdk.splash.n
                        @Override // com.sigmob.sdk.base.views.gif.e.c
                        public final Bitmap onFrameAvailable(Bitmap bitmap) {
                            return this.f81754a.c(bitmap);
                        }
                    });
                    this.f81683b.d();
                    if (com.sigmob.sdk.base.utils.w.b(listener)) {
                        listener.onAdWillShow();
                    }
                } else {
                    if (!Arrays.asList("git", "jpeg", "jpg", "png", "bmp", "webp", "tif").contains(fileType) || (bitmapDecodeFile = BitmapFactory.decodeFile(splashFilePath)) == null) {
                        return false;
                    }
                    this.f81683b.setImageBitmap(bitmapDecodeFile);
                    int width = bitmapDecodeFile.getWidth();
                    int height = bitmapDecodeFile.getHeight();
                    if (height > 0 && width > 0) {
                        if ((((double) width) * 1.0d) / ((double) height) < this.f81685d) {
                            WindAds.sharedAds().getHandler().post(new Runnable() { // from class: com.sigmob.sdk.splash.o
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f81755b.d();
                                }
                            });
                        } else {
                            a(bitmapDecodeFile);
                        }
                    }
                    if (com.sigmob.sdk.base.utils.w.b(listener)) {
                        listener.onAdWillShow();
                    }
                }
                BaseBroadcastReceiver.a(getContext(), adUnit.getUuid(), IntentActions.ACTION_INTERSTITIAL_SHOW);
                return true;
            }
            str = "filePath is null.";
        }
        SigmobLog.e(str);
        return false;
    }
}
