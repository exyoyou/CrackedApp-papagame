package com.join.mgps.customview;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class ClipImageLayout extends RelativeLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ClipZoomImageView f64496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ClipImageBorderView f64497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64498d;

    public ClipImageLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64498d = 2;
        this.f64496b = new ClipZoomImageView(context);
        this.f64497c = new ClipImageBorderView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.f64496b, layoutParams);
        addView(this.f64497c, layoutParams);
        int iApplyDimension = (int) TypedValue.applyDimension(1, this.f64498d, getResources().getDisplayMetrics());
        this.f64498d = iApplyDimension;
        this.f64496b.setHorizontalPadding(iApplyDimension);
        this.f64497c.setHorizontalPadding(this.f64498d);
    }

    private BitmapFactory.Options b(int inSampleSize) {
        System.gc();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPurgeable = true;
        options.inSampleSize = inSampleSize;
        return options;
    }

    public Bitmap a() {
        return this.f64496b.h();
    }

    /* JADX WARN: Code duplicated, block: B:74:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public Bitmap c(Context context, String CaptureUri) throws Throwable {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (TextUtils.isEmpty(CaptureUri)) {
            return null;
        }
        try {
            ContentResolver contentResolver = context.getContentResolver();
            int i10 = 1;
            if (CaptureUri.startsWith("content://")) {
                Uri uri = Uri.parse(CaptureUri);
                InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream);
                if (bitmapDecodeStream == null) {
                    return null;
                }
                inputStreamOpenInputStream.close();
                WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
                int width = bitmapDecodeStream.getWidth() / windowManager.getDefaultDisplay().getWidth();
                int height = bitmapDecodeStream.getHeight() / windowManager.getDefaultDisplay().getWidth();
                if (width <= height) {
                    width = height;
                }
                if (width != 0) {
                    i10 = width;
                }
                InputStream inputStreamOpenInputStream2 = context.getContentResolver().openInputStream(uri);
                Bitmap bitmapDecodeStream2 = BitmapFactory.decodeStream(inputStreamOpenInputStream2, null, b(i10));
                inputStreamOpenInputStream2.close();
                return bitmapDecodeStream2;
            }
            InputStream inputStreamOpenInputStream3 = contentResolver.openInputStream(Uri.fromFile(new File(CaptureUri)));
            try {
                Bitmap bitmapDecodeStream3 = BitmapFactory.decodeStream(inputStreamOpenInputStream3);
                if (bitmapDecodeStream3 == null) {
                    if (inputStreamOpenInputStream3 != null) {
                        try {
                            inputStreamOpenInputStream3.close();
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                    return null;
                }
                WindowManager windowManager2 = (WindowManager) getContext().getSystemService("window");
                int width2 = bitmapDecodeStream3.getWidth() / windowManager2.getDefaultDisplay().getWidth();
                int height2 = bitmapDecodeStream3.getHeight() / windowManager2.getDefaultDisplay().getWidth();
                if (width2 <= height2) {
                    width2 = height2;
                }
                if (width2 != 0) {
                    i10 = width2;
                }
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(CaptureUri, b(i10));
                if (inputStreamOpenInputStream3 != null) {
                    try {
                        inputStreamOpenInputStream3.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                }
                return bitmapDecodeFile;
            } catch (IOException e12) {
                inputStream = inputStreamOpenInputStream3;
                e = e12;
                try {
                    e.printStackTrace();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e13) {
                            e13.printStackTrace();
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                inputStream2 = inputStreamOpenInputStream3;
                th = th2;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                throw th;
            }
        } catch (IOException e15) {
            e = e15;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public ClipImageBorderView getmClipImageView() {
        return this.f64497c;
    }

    public ClipZoomImageView getmZoomImageView() {
        return this.f64496b;
    }

    public void setHorizontalPadding(int mHorizontalPadding) {
        this.f64498d = mHorizontalPadding;
    }

    public void setmClipImageView(ClipImageBorderView mClipImageView) {
        this.f64497c = mClipImageView;
    }

    public void setmZoomImageView(String CaptureUri) {
        this.f64496b.setImageBitmap(BitmapFactory.decodeFile(CaptureUri, b(2)));
    }
}
