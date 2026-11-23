package com.netease.nis.quicklogin.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import com.netease.nis.basesdk.Logger;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"AppCompatCustomView"})
public class GifView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Movie f76170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Canvas f76171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bitmap f76172c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BitmapDrawable f76173d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f76174e;

    public GifView(Context context) {
        super(context);
        this.f76174e = 0L;
    }

    private void a() {
        if (this.f76170a != null) {
            this.f76171b.save();
            long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            if (this.f76174e == 0) {
                this.f76174e = jCurrentThreadTimeMillis;
            }
            this.f76170a.setTime((int) ((jCurrentThreadTimeMillis - this.f76174e) % ((long) this.f76170a.duration())));
            this.f76170a.draw(this.f76171b, 0.0f, 0.0f);
            setBackground(this.f76173d);
            this.f76171b.restore();
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a();
    }

    public void setGifDrawable(Drawable drawable) {
        Movie movie;
        if (drawable == null || (movie = this.f76170a) == null) {
            return;
        }
        this.f76172c = Bitmap.createBitmap(movie.width(), this.f76170a.height(), Bitmap.Config.RGB_565);
        this.f76171b = new Canvas(this.f76172c);
        this.f76173d = new BitmapDrawable(this.f76172c);
    }

    public void setGifResId(int i10) {
        if (i10 == 0) {
            Logger.e("[GifView#setGifResId] 0 is not a valid resource id,please check your gif resource name");
            return;
        }
        Movie movieDecodeStream = Movie.decodeStream(getResources().openRawResource(i10));
        this.f76170a = movieDecodeStream;
        this.f76172c = Bitmap.createBitmap(movieDecodeStream.width(), this.f76170a.height(), Bitmap.Config.RGB_565);
        this.f76171b = new Canvas(this.f76172c);
        this.f76173d = new BitmapDrawable(this.f76172c);
    }
}
