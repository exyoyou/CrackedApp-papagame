package com.czhj.volley.toolbox;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.czhj.volley.VolleyError;

/* JADX INFO: loaded from: classes9.dex */
public class NetworkImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f25834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f25835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f25836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageLoader f25837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageLoader.ImageContainer f25838e;

    /* JADX INFO: renamed from: com.czhj.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    class AnonymousClass1 implements ImageLoader.ImageListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f25839a;

        AnonymousClass1(boolean z10) {
            this.f25839a = z10;
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f25836c != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f25836c);
            }
        }

        @Override // com.czhj.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(final ImageLoader.ImageContainer imageContainer, boolean z10) {
            if (z10 && this.f25839a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.czhj.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.onResponse(imageContainer, false);
                    }
                });
                return;
            }
            if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            } else if (NetworkImageView.this.f25835b != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f25835b);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f25838e;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.f25838e = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        a(true);
    }

    public void setDefaultImageResId(int i10) {
        this.f25835b = i10;
    }

    public void setErrorImageResId(int i10) {
        this.f25836c = i10;
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        Threads.a();
        this.f25834a = str;
        this.f25837d = imageLoader;
        a(false);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a() {
        int i10 = this.f25835b;
        if (i10 != 0) {
            setImageResource(i10);
        } else {
            setImageBitmap(null);
        }
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
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
    void a(boolean z10) {
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
                if (TextUtils.isEmpty(this.f25834a)) {
                    imageContainer2 = this.f25838e;
                    if (imageContainer2 != null) {
                        imageContainer2.cancelRequest();
                        this.f25838e = null;
                    }
                    a();
                    return;
                }
                imageContainer = this.f25838e;
                if (imageContainer != null && imageContainer.getRequestUrl() != null) {
                    if (this.f25838e.getRequestUrl().equals(this.f25834a)) {
                        return;
                    }
                    this.f25838e.cancelRequest();
                    a();
                }
                if (z11) {
                    width = 0;
                }
                if (z12) {
                    i10 = 0;
                } else {
                    i10 = height;
                }
                this.f25838e = this.f25837d.get(this.f25834a, new AnonymousClass1(z10), width, i10, scaleType);
            }
            return;
        }
        z11 = false;
        if (z11) {
        }
        if (width == 0) {
        }
        if (TextUtils.isEmpty(this.f25834a)) {
            imageContainer2 = this.f25838e;
            if (imageContainer2 != null) {
                imageContainer2.cancelRequest();
                this.f25838e = null;
            }
            a();
            return;
        }
        imageContainer = this.f25838e;
        if (imageContainer != null) {
            if (this.f25838e.getRequestUrl().equals(this.f25834a)) {
                return;
            }
            this.f25838e.cancelRequest();
            a();
        }
        if (z11) {
            width = 0;
        }
        if (z12) {
            i10 = 0;
        } else {
            i10 = height;
        }
        this.f25838e = this.f25837d.get(this.f25834a, new AnonymousClass1(z10), width, i10, scaleType);
    }
}
