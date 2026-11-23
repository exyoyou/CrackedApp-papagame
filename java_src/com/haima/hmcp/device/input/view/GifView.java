package com.haima.hmcp.device.input.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.SystemClock;
import android.view.View;
import androidx.annotation.NonNull;
import com.haima.hmcp.business.ResourceManager;

/* JADX INFO: loaded from: classes5.dex */
public class GifView extends View {
    private static final int DEFAULT_MOVIE_VIEW_DURATION = 1000;
    private int currentAnimationTime;
    private boolean isPaused;
    private boolean isVisible;
    private Movie movie;
    private float movieLeft;
    private int movieMeasuredMovieHeight;
    private int movieMeasuredMovieWidth;
    private float movieScale;
    private long movieStart;
    private float movieTop;

    public GifView(Context context) {
        super(context);
        this.currentAnimationTime = 0;
        this.movieStart = 0L;
        this.isVisible = true;
        this.isPaused = true;
        this.movieMeasuredMovieWidth = 0;
        this.movieMeasuredMovieHeight = 0;
    }

    private void drawMovieFrame(Canvas canvas) {
        this.movie.setTime(this.currentAnimationTime);
        canvas.save();
        float f10 = this.movieScale;
        canvas.scale(f10, f10);
        Movie movie = this.movie;
        float f11 = this.movieLeft;
        float f12 = this.movieScale;
        movie.draw(canvas, f11 / f12, this.movieTop / f12);
        canvas.restore();
    }

    public void invalidateView() {
        if (this.isVisible) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.movie != null) {
            if (this.isPaused) {
                drawMovieFrame(canvas);
                return;
            }
            updateAnimationTime();
            drawMovieFrame(canvas);
            invalidateView();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.movieLeft = (getWidth() - this.movieMeasuredMovieWidth) / 2.0f;
        this.movieTop = (getHeight() - this.movieMeasuredMovieHeight) / 2.0f;
        this.isVisible = getVisibility() == 0;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int size;
        int size2;
        Movie movie = this.movie;
        if (movie == null) {
            setMeasuredDimension(getSuggestedMinimumWidth(), getSuggestedMinimumHeight());
            return;
        }
        int iWidth = movie.width();
        int iHeight = this.movie.height();
        float fMax = 1.0f / Math.max((View.MeasureSpec.getMode(i10) == 0 || iWidth <= (size2 = View.MeasureSpec.getSize(i10))) ? 1.0f : iWidth / size2, (View.MeasureSpec.getMode(i11) == 0 || iHeight <= (size = View.MeasureSpec.getSize(i11))) ? 1.0f : iHeight / size);
        this.movieScale = fMax;
        int i12 = (int) (iWidth * fMax);
        this.movieMeasuredMovieWidth = i12;
        int i13 = (int) (iHeight * fMax);
        this.movieMeasuredMovieHeight = i13;
        setMeasuredDimension(i12, i13);
    }

    @Override // android.view.View
    @TargetApi(16)
    public void onScreenStateChanged(int i10) {
        super.onScreenStateChanged(i10);
        this.isVisible = i10 == 1;
        invalidateView();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        this.isVisible = i10 == 0;
        invalidateView();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.isVisible = i10 == 0;
        invalidateView();
    }

    public void pause() {
        if (this.isPaused) {
            return;
        }
        this.isPaused = true;
        invalidate();
    }

    public void play() {
        if (this.isPaused) {
            this.isPaused = false;
            this.movieStart = SystemClock.uptimeMillis() - ((long) this.currentAnimationTime);
            invalidate();
        }
    }

    public void updateAnimationTime() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.movieStart == 0) {
            this.movieStart = jUptimeMillis;
        }
        int iDuration = this.movie.duration();
        if (iDuration == 0) {
            iDuration = 1000;
        }
        this.currentAnimationTime = (int) ((jUptimeMillis - this.movieStart) % ((long) iDuration));
    }

    public GifView(Context context, int i10) {
        super(context);
        this.currentAnimationTime = 0;
        this.movieStart = 0L;
        this.isVisible = true;
        this.isPaused = true;
        this.movieMeasuredMovieWidth = 0;
        this.movieMeasuredMovieHeight = 0;
        if (i10 != -1) {
            this.movie = Movie.decodeStream(ResourceManager.getInstance().getResources().openRawResource(i10));
        }
    }
}
