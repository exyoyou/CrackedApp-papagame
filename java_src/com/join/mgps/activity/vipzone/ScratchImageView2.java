package com.join.mgps.activity.vipzone;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes9.dex */
public class ScratchImageView2 extends View {
    private String TAG;
    private Bitmap mBgBitmap;
    private Canvas mCanvas;
    Bitmap mDstBmp;
    float mEventX;
    float mEventY;
    private Bitmap mFgBitmap;
    private Paint mPaint;
    private Path mPath;
    Bitmap mSrcBmp;
    Bitmap mTxtBmp;
    private int viewHeight;
    private int viewWidth;

    public ScratchImageView2(Context context) {
        super(context);
        this.TAG = "ScratchImageView2";
    }

    private void init() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(SupportMenu.CATEGORY_MASK);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(80.0f);
        setLayerType(1, null);
        this.mTxtBmp = BitmapFactory.decodeResource(getResources(), R.drawable.icon).copy(Bitmap.Config.ARGB_8888, true);
        Bitmap bitmapCopy = BitmapFactory.decodeResource(getResources(), R.drawable.scratch_imag).copy(Bitmap.Config.ARGB_8888, true);
        this.mSrcBmp = bitmapCopy;
        this.mDstBmp = Bitmap.createBitmap(bitmapCopy.getWidth(), this.mSrcBmp.getHeight(), Bitmap.Config.ARGB_8888);
        this.mPath = new Path();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawBitmap(this.mTxtBmp, 0.0f, 0.0f, this.mPaint);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), this.mPaint);
        new Canvas(this.mDstBmp).drawPath(this.mPath, this.mPaint);
        canvas.drawBitmap(this.mDstBmp, 0.0f, 0.0f, this.mPaint);
        this.mPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_OUT));
        canvas.drawBitmap(this.mSrcBmp, 0.0f, 0.0f, this.mPaint);
        this.mPaint.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.mEventX = event.getX();
            float y10 = event.getY();
            this.mEventY = y10;
            this.mPath.moveTo(this.mEventX, y10);
        } else if (action == 2) {
            float x10 = event.getX();
            float f10 = this.mEventX;
            float f11 = ((x10 - f10) / 2.0f) + f10;
            float y11 = event.getY();
            float f12 = this.mEventY;
            this.mPath.quadTo(this.mEventX, f12, f11, ((y11 - f12) / 2.0f) + f12);
            this.mEventX = event.getX();
            this.mEventY = event.getY();
        }
        invalidate();
        return true;
    }

    public ScratchImageView2(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = "ScratchImageView2";
        init();
    }

    public ScratchImageView2(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = "ScratchImageView2";
    }
}
