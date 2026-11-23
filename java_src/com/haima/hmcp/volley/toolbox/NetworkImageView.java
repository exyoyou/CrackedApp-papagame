package com.haima.hmcp.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.haima.hmcp.volley.VolleyError;

/* JADX INFO: loaded from: classes5.dex */
public class NetworkImageView extends ImageView {

    @Nullable
    private Bitmap mDefaultImageBitmap;

    @Nullable
    private Drawable mDefaultImageDrawable;
    private int mDefaultImageId;

    @Nullable
    private Bitmap mErrorImageBitmap;

    @Nullable
    private Drawable mErrorImageDrawable;
    private int mErrorImageId;
    private ImageLoader.ImageContainer mImageContainer;
    private ImageLoader mImageLoader;
    private String mUrl;

    /* JADX INFO: renamed from: com.haima.hmcp.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    class AnonymousClass1 implements ImageLoader.ImageListener {
        final /* synthetic */ boolean val$isInLayoutPass;

        AnonymousClass1(boolean z10) {
            this.val$isInLayoutPass = z10;
        }

        @Override // com.haima.hmcp.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.mErrorImageId != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.mErrorImageId);
            } else if (NetworkImageView.this.mErrorImageDrawable != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.mErrorImageDrawable);
            } else if (NetworkImageView.this.mErrorImageBitmap != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.mErrorImageBitmap);
            }
        }

        @Override // com.haima.hmcp.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(final ImageLoader.ImageContainer imageContainer, boolean z10) {
            if (z10 && this.val$isInLayoutPass) {
                NetworkImageView.this.post(new Runnable() { // from class: com.haima.hmcp.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.onResponse(imageContainer, false);
                    }
                });
                return;
            }
            if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
                return;
            }
            if (NetworkImageView.this.mDefaultImageId != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.mDefaultImageId);
            } else if (NetworkImageView.this.mDefaultImageDrawable != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.mDefaultImageDrawable);
            } else if (NetworkImageView.this.mDefaultImageBitmap != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.mDefaultImageBitmap);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    private void setDefaultImageOrNull() {
        int i10 = this.mDefaultImageId;
        if (i10 != 0) {
            setImageResource(i10);
            return;
        }
        Drawable drawable = this.mDefaultImageDrawable;
        if (drawable != null) {
            setImageDrawable(drawable);
            return;
        }
        Bitmap bitmap = this.mDefaultImageBitmap;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0031  */
    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    /* JADX WARN: Code duplicated, block: B:25:0x0045  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0067 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x0068  */
    /* JADX WARN: Code duplicated, block: B:37:0x0072  */
    /* JADX WARN: Code duplicated, block: B:39:0x0075  */
    /* JADX WARN: Code duplicated, block: B:40:0x0077  */
    void loadImageIfNecessary(boolean z10) {
        boolean z11;
        boolean z12;
        ImageLoader.ImageContainer imageContainer;
        int i10;
        ImageLoader.ImageContainer imageContainer2;
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        if (getLayoutParams() != null) {
            z11 = getLayoutParams().width == -2;
            z12 = getLayoutParams().height == -2;
            boolean z13 = !z11 && z12;
            if (width == 0 || height != 0 || z13) {
                if (TextUtils.isEmpty(this.mUrl)) {
                    imageContainer2 = this.mImageContainer;
                    if (imageContainer2 != null) {
                        imageContainer2.cancelRequest();
                        this.mImageContainer = null;
                    }
                    setDefaultImageOrNull();
                    return;
                }
                imageContainer = this.mImageContainer;
                if (imageContainer != null && imageContainer.getRequestUrl() != null) {
                    if (this.mImageContainer.getRequestUrl().equals(this.mUrl)) {
                        return;
                    }
                    this.mImageContainer.cancelRequest();
                    setDefaultImageOrNull();
                }
                if (z11) {
                    width = 0;
                }
                if (z12) {
                    i10 = 0;
                } else {
                    i10 = height;
                }
                this.mImageContainer = this.mImageLoader.get(this.mUrl, new AnonymousClass1(z10), width, i10, scaleType);
            }
            return;
        }
        z11 = false;
        if (z11) {
        }
        if (width == 0) {
        }
        if (TextUtils.isEmpty(this.mUrl)) {
            imageContainer2 = this.mImageContainer;
            if (imageContainer2 != null) {
                imageContainer2.cancelRequest();
                this.mImageContainer = null;
            }
            setDefaultImageOrNull();
            return;
        }
        imageContainer = this.mImageContainer;
        if (imageContainer != null) {
            if (this.mImageContainer.getRequestUrl().equals(this.mUrl)) {
                return;
            }
            this.mImageContainer.cancelRequest();
            setDefaultImageOrNull();
        }
        if (z11) {
            width = 0;
        }
        if (z12) {
            i10 = 0;
        } else {
            i10 = height;
        }
        this.mImageContainer = this.mImageLoader.get(this.mUrl, new AnonymousClass1(z10), width, i10, scaleType);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.mImageContainer;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.mImageContainer = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        loadImageIfNecessary(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.mDefaultImageId = 0;
        this.mDefaultImageDrawable = null;
        this.mDefaultImageBitmap = bitmap;
    }

    public void setDefaultImageDrawable(@Nullable Drawable drawable) {
        this.mDefaultImageId = 0;
        this.mDefaultImageBitmap = null;
        this.mDefaultImageDrawable = drawable;
    }

    public void setDefaultImageResId(int i10) {
        this.mDefaultImageBitmap = null;
        this.mDefaultImageDrawable = null;
        this.mDefaultImageId = i10;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.mErrorImageId = 0;
        this.mErrorImageDrawable = null;
        this.mErrorImageBitmap = bitmap;
    }

    public void setErrorImageDrawable(@Nullable Drawable drawable) {
        this.mErrorImageId = 0;
        this.mErrorImageBitmap = null;
        this.mErrorImageDrawable = drawable;
    }

    public void setErrorImageResId(int i10) {
        this.mErrorImageBitmap = null;
        this.mErrorImageDrawable = null;
        this.mErrorImageId = i10;
    }

    @MainThread
    public void setImageUrl(String str, ImageLoader imageLoader) {
        Threads.throwIfNotOnMainThread();
        this.mUrl = str;
        this.mImageLoader = imageLoader;
        loadImageIfNecessary(false);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
