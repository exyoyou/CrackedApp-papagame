package com.czhj.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Request;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyLog;

/* JADX INFO: loaded from: classes9.dex */
public class ImageRequest extends Request<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f25827a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f25828b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bitmap.Config f25829c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f25830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f25831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImageView.ScaleType f25832f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Response.Listener<Bitmap> f25833g;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i10, int i11, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i10, i11, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    static int a(int i10, int i11, int i12, int i13) {
        double dMin = Math.min(((double) i10) / ((double) i12), ((double) i11) / ((double) i13));
        float f10 = 1.0f;
        while (true) {
            float f11 = 2.0f * f10;
            if (f11 > dMin) {
                return (int) f10;
            }
            f10 = f11;
        }
    }

    @Override // com.czhj.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f25828b) {
            this.f25833g = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.czhj.volley.Request
    public void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        synchronized (this.f25828b) {
            listener = this.f25833g;
        }
        if (listener != null) {
            listener.onResponse(bitmap);
        }
    }

    @Override // com.czhj.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    @Override // com.czhj.volley.Request
    protected Response<Bitmap> parseNetworkResponse(NetworkResponse networkResponse) {
        Response<Bitmap> responseA;
        synchronized (f25827a) {
            try {
                try {
                    responseA = a(networkResponse);
                } catch (OutOfMemoryError e10) {
                    VolleyLog.e("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.data.length), getUrl());
                    return Response.error(new ParseError(e10));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return responseA;
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i10, int i11, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.f25828b = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f25833g = listener;
        this.f25829c = config;
        this.f25830d = i10;
        this.f25831e = i11;
        this.f25832f = scaleType;
    }

    private static int a(int i10, int i11, int i12, int i13, ImageView.ScaleType scaleType) {
        if (i10 == 0 && i11 == 0) {
            return i12;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i10 == 0 ? i12 : i10;
        }
        if (i10 == 0) {
            return (int) (((double) i12) * (((double) i11) / ((double) i13)));
        }
        if (i11 == 0) {
            return i10;
        }
        double d10 = ((double) i13) / ((double) i12);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d11 = i11;
            return ((double) i10) * d10 < d11 ? (int) (d11 / d10) : i10;
        }
        double d12 = i11;
        return ((double) i10) * d10 > d12 ? (int) (d12 / d10) : i10;
    }

    private Response<Bitmap> a(NetworkResponse networkResponse) {
        Bitmap bitmapDecodeByteArray;
        byte[] bArr = networkResponse.data;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.f25830d == 0 && this.f25831e == 0) {
            options.inPreferredConfig = this.f25829c;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i10 = options.outWidth;
            int i11 = options.outHeight;
            int iA = a(this.f25830d, this.f25831e, i10, i11, this.f25832f);
            int iA2 = a(this.f25831e, this.f25830d, i11, i10, this.f25832f);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i10, i11, iA, iA2);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iA || bitmapDecodeByteArray.getHeight() > iA2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iA, iA2, true);
                bitmapDecodeByteArray.recycle();
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        return bitmapDecodeByteArray == null ? Response.error(new ParseError(networkResponse)) : Response.success(bitmapDecodeByteArray, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }
}
