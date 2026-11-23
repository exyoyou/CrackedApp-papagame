package com.haima.hmcp.virtual.bean;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import androidx.annotation.RequiresApi;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.BitmapRef;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class DrawerItemBean {
    protected static final long ANIM_DURATION_MOVE = 400;
    protected static final long ANIM_DURATION_ROTATE = 400;
    protected static final float MAX_ANGLE = 4.5f;
    private static final String TAG = "DrawerItemBean";
    public int centerX;
    public int centerY;
    public int height;
    public Bitmap itemCurrentBitmap;
    protected Canvas mCanvas;
    public Paint mRawTextPaint;
    public Paint mTextPaint;
    protected ValueAnimator moveAnim;
    public String name;
    public boolean needShowRawKey;
    protected Random random;
    public String rawName;
    public Paint rockerCenterTextPaint;
    protected ValueAnimator rotateAnim;
    public HmVirtualViewBean source;
    public int textShowRawOffsetY;
    public int width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f34092x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f34093y;
    public BitmapRef itemDownBitmapRef = new BitmapRef();
    public BitmapRef itemUpBitmapRef = new BitmapRef();
    public BitmapRef itemCenterBitmapRef = new BitmapRef();
    public float itemOffset = 0.0f;
    public float startOffset = 0.0f;
    public float endOffset = 0.0f;
    public float relativeOffset = 0.0f;
    protected final int ROCKER_CENTER_BITMAP_SCALE = 5;
    protected Matrix matrix = new Matrix();
    protected Matrix centerIconMatrix = new Matrix();
    protected float currentAngle = 0.0f;
    protected float currentX = 0.0f;
    protected float currentY = 0.0f;
    protected final float radius = 3.0f;

    public DrawerItemBean() {
        Paint paint = new Paint();
        this.mTextPaint = paint;
        paint.setColor(-1);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setTextAlign(Paint.Align.CENTER);
        Paint paint2 = new Paint();
        this.mRawTextPaint = paint2;
        paint2.setColor(-1);
        this.mRawTextPaint.setAntiAlias(true);
        this.mRawTextPaint.setTextAlign(Paint.Align.CENTER);
    }

    private void checkTextSize(String str, float f10, Paint paint) {
        if (needTextScale(str, f10, paint)) {
            paint.setTextSize(calculateTextSize(str, f10, paint));
        }
    }

    private void drawTextWithAlpha(Canvas canvas, String str, float f10, float f11, Paint paint, float f12) {
        if (canvas == null || str == null || paint == null) {
            return;
        }
        int alpha = paint.getAlpha();
        paint.setAlpha((int) (alpha * f12));
        canvas.drawText(str, f10, f11, paint);
        paint.setAlpha(alpha);
        LogUtils.d(TAG, String.format(Locale.ENGLISH, "Drawing text with alpha: %.2f, text: %s", Float.valueOf(f12), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShake$0(ValueAnimator valueAnimator) {
        this.currentAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShake$1(ValueAnimator valueAnimator) {
        double dFloatValue = (float) (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 6.283185307179586d);
        this.currentX = this.f34092x + (this.width / 2.0f) + (((float) Math.cos(dFloatValue)) * 3.0f);
        this.currentY = this.f34093y + (this.height / 2.0f) + (((float) Math.sin(dFloatValue)) * 3.0f);
    }

    private boolean needTextScale(String str, float f10, Paint paint) {
        return (str == null || str.isEmpty() || paint.measureText(str) <= f10) ? false : true;
    }

    public void calcName() {
        this.name = this.source.getName();
        StringBuilder sb2 = new StringBuilder();
        Iterator<HmVirtualViewBean.KeysDTO> it2 = this.source.getKeys().iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().getKey());
            sb2.append("+");
        }
        if (sb2.length() > 0) {
            sb2.delete(sb2.length() - 1, sb2.length());
        }
        this.rawName = sb2.toString();
        if (TextUtils.isEmpty(this.name)) {
            this.needShowRawKey = false;
            this.name = this.rawName;
        } else if (this.source.getKeys() != null && this.source.getKeys().size() > 1) {
            this.needShowRawKey = true;
        } else if (this.source.getKeys() != null && this.source.getKeys().size() == 1 && !this.name.equals(this.source.getKeys().get(0).getKey())) {
            this.needShowRawKey = true;
        }
        LogUtils.i("DrawerItemBean", "needShowDraw=" + this.needShowRawKey + ";" + this.source.getName());
    }

    protected float calculateTextSize(String str, float f10, Paint paint) {
        float textSize = paint.getTextSize();
        if (paint.measureText(str) <= f10) {
            return textSize;
        }
        float f11 = textSize * (f10 / textSize);
        paint.setTextSize(f11);
        float fMeasureText = paint.measureText(str);
        if (fMeasureText <= f10) {
            return f11;
        }
        float f12 = f11 * (f10 / fMeasureText);
        paint.setTextSize(f12);
        return f12;
    }

    public void drawBitmap(Canvas canvas, Bitmap bitmap, int i10, int i11, Paint paint) {
        if (canvas == null || bitmap == null || paint == null) {
            return;
        }
        canvas.drawBitmap(bitmap, i10, i11, paint);
        Bitmap bitmap2 = this.itemCenterBitmapRef.get();
        if (bitmap2 != null) {
            int width = bitmap2.getWidth();
            int height = bitmap2.getHeight();
            int i12 = i10 + ((this.width - width) / 2);
            int i13 = i11 + ((this.height - height) / 2);
            canvas.drawBitmap(bitmap2, i12, i13, paint);
            LogUtils.d(TAG, String.format(Locale.ENGLISH, "draw center pic bitmapWidth = %d, bitmapHeight = %d, centerX = %d, centerY = %d, width = %d, height = %d", Integer.valueOf(width), Integer.valueOf(height), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf(this.width), Integer.valueOf(this.height)));
        }
    }

    public void drawBitmapAnim(Canvas canvas, Paint paint) {
        Bitmap bitmap = this.itemUpBitmapRef.get();
        if (bitmap == null || this.matrix == null || canvas == null || paint == null) {
            return;
        }
        canvas.save();
        this.matrix.reset();
        float width = bitmap.getWidth() / 2.0f;
        float height = bitmap.getHeight() / 2.0f;
        this.matrix.postRotate(this.currentAngle, width, height);
        this.matrix.postTranslate(this.currentX - width, this.currentY - height);
        canvas.drawBitmap(bitmap, this.matrix, paint);
        Bitmap bitmap2 = this.itemCenterBitmapRef.get();
        if (bitmap2 != null) {
            this.centerIconMatrix.reset();
            float width2 = bitmap2.getWidth() / 2.0f;
            float height2 = bitmap2.getHeight() / 2.0f;
            this.centerIconMatrix.postRotate(this.currentAngle, width2, height2);
            this.centerIconMatrix.postTranslate(this.currentX - width2, this.currentY - height2);
            canvas.drawBitmap(bitmap2, this.centerIconMatrix, paint);
        }
        canvas.restore();
    }

    public void drawText(Canvas canvas, int i10, int i11, float f10, boolean z10) {
        String name;
        if (getHideText() || (name = getName()) == null || name.isEmpty()) {
            return;
        }
        int iAbs = (this.height / 2) + i11 + ((int) (Math.abs(this.mTextPaint.ascent() + this.mTextPaint.descent()) / 2.0f));
        if (this.needShowRawKey && HmVirtualDeviceManager.showRawKey) {
            int i12 = iAbs - this.textShowRawOffsetY;
            if (HmVirtualDeviceManager.editMode && Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION && !z10) {
                drawTextAnim(canvas, this.rawName, (this.width / 2.0f) + i10, (this.height / 8.0f) + i12 + (this.mTextPaint.getTextSize() / 2.0f), this.mTextPaint, this.mRawTextPaint, true);
            } else {
                drawTextWithAlpha(canvas, this.rawName, (this.width / 2.0f) + i10, (this.height / 8.0f) + i12 + (this.mTextPaint.getTextSize() / 2.0f), this.mRawTextPaint, f10);
            }
            iAbs = i12;
        }
        if (!HmVirtualDeviceManager.editMode || !Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION || z10) {
            drawTextWithAlpha(canvas, name, (this.width / 2) + i10, iAbs, this.mTextPaint, f10);
        } else {
            Paint paint = this.mTextPaint;
            drawTextAnim(canvas, this.name, (i11 / 2.0f) + i10, iAbs, paint, paint, false);
        }
    }

    public void drawTextAnim(Canvas canvas, String str, float f10, float f11, Paint paint, Paint paint2, boolean z10) {
        if (TextUtils.isEmpty(str) || paint == null || canvas == null) {
            return;
        }
        canvas.save();
        canvas.translate(f10, f11);
        canvas.setMatrix(this.matrix);
        float width = this.itemCurrentBitmap.getWidth() / 2.0f;
        int iAbs = (this.height / 2) + ((int) (Math.abs(this.mTextPaint.ascent() + this.mTextPaint.descent()) / 2.0f));
        if (z10 && this.needShowRawKey && HmVirtualDeviceManager.showRawKey) {
            canvas.drawText(str, width, (iAbs - this.textShowRawOffsetY) + (this.mTextPaint.getTextSize() / 2.0f) + (this.height / 8.0f), paint2);
        } else {
            if (this.needShowRawKey && HmVirtualDeviceManager.showRawKey) {
                iAbs -= this.textShowRawOffsetY;
            }
            canvas.drawText(str, width, iAbs, paint);
        }
        canvas.restore();
    }

    protected float getAvailableWidth() {
        return this.width * 0.9f;
    }

    public int getCenterX() {
        return this.centerX;
    }

    public int getCenterY() {
        return this.centerY;
    }

    public float getEndOffset() {
        return this.endOffset;
    }

    public boolean getHideText() {
        return this.source.getHideText();
    }

    public Bitmap getItemCurrentBitmap() {
        return this.itemCurrentBitmap;
    }

    public Bitmap getItemDownBitmap() {
        return this.itemDownBitmapRef.get();
    }

    public float getItemOffset() {
        return this.itemOffset;
    }

    public Bitmap getItemUpBitmap() {
        return this.itemUpBitmapRef.get();
    }

    public String getName() {
        return this.source.getName() == null ? "" : this.source.getName();
    }

    public HmVirtualViewBean.PositionDTO getPosition() {
        return this.source.getPosition();
    }

    public HmVirtualViewBean getSource() {
        return this.source;
    }

    public float getStartOffset() {
        return this.startOffset;
    }

    public int getX() {
        return this.f34092x;
    }

    public int getY() {
        return this.f34093y;
    }

    public void setCenterX(int i10) {
        this.centerX = i10;
    }

    public void setCenterY(int i10) {
        this.centerY = i10;
    }

    public void setEndOffset(float f10) {
        this.endOffset = f10;
    }

    public void setItemCurrentBitmap(Bitmap bitmap) {
        this.itemCurrentBitmap = bitmap;
    }

    public void setItemDownBitmap(Bitmap bitmap) {
        this.itemDownBitmapRef.setDefault(bitmap);
    }

    public void setItemOffset(float f10) {
        this.itemOffset = f10;
    }

    public void setItemUpBitmap(Bitmap bitmap) {
        this.itemUpBitmapRef.setDefault(bitmap);
    }

    public void setSource(HmVirtualViewBean hmVirtualViewBean) {
        this.source = hmVirtualViewBean;
    }

    public void setStartOffset(float f10) {
        this.startOffset = f10;
    }

    public void setTransparency(float f10) {
        Paint paint = this.mTextPaint;
        if (paint != null) {
            paint.setAlpha((int) (f10 * 255.0f));
        }
        Paint paint2 = this.mRawTextPaint;
        if (paint2 != null) {
            paint2.setAlpha((int) (f10 * 255.0f * 0.8f));
        }
    }

    public void setX(int i10) {
        this.f34092x = i10;
    }

    public void setY(int i10) {
        this.f34093y = i10;
    }

    @RequiresApi(api = 22)
    public void startShake(float f10, float f11) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(-4.5f, MAX_ANGLE, -4.5f);
        this.rotateAnim = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(400L);
        this.rotateAnim.setRepeatCount(-1);
        this.rotateAnim.setInterpolator(new LinearInterpolator());
        ValueAnimator.setFrameDelay(16L);
        this.rotateAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.bean.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f34098b.lambda$startShake$0(valueAnimator);
            }
        });
        this.rotateAnim.start();
        this.rotateAnim.setCurrentPlayTime((long) (f10 * 400.0f));
        this.rotateAnim.addListener(new AnimatorListenerAdapter() { // from class: com.haima.hmcp.virtual.bean.DrawerItemBean.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                DrawerItemBean.this.rotateAnim.setCurrentPlayTime(DrawerItemBean.this.rotateAnim.getCurrentPlayTime() % 400);
            }
        });
        this.rotateAnim.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.moveAnim = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(400L);
        this.moveAnim.setRepeatCount(-1);
        this.moveAnim.setInterpolator(new LinearInterpolator());
        this.moveAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.bean.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f34099b.lambda$startShake$1(valueAnimator);
            }
        });
        this.moveAnim.setCurrentPlayTime((long) (f11 * 400.0f));
        this.moveAnim.addListener(new AnimatorListenerAdapter() { // from class: com.haima.hmcp.virtual.bean.DrawerItemBean.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                DrawerItemBean.this.moveAnim.setCurrentPlayTime(DrawerItemBean.this.moveAnim.getCurrentPlayTime() % 400);
            }
        });
        this.moveAnim.start();
    }

    public void stopShake() {
        this.currentAngle = 0.0f;
        this.currentX = this.f34092x + (this.width / 2.0f);
        this.currentY = this.f34093y + (this.height / 2.0f);
        ValueAnimator valueAnimator = this.rotateAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.moveAnim;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    public void updateTextSize() {
        String str;
        if (this.mTextPaint == null || this.mRawTextPaint == null || (str = this.name) == null) {
            return;
        }
        if (str.length() < 4) {
            this.mTextPaint.setTextSize((this.height * 1.0f) / 4.0f);
        } else {
            this.mTextPaint.setTextSize((this.height * 1.0f) / 4.8f);
        }
        checkTextSize(this.name, getAvailableWidth(), this.mTextPaint);
        int i10 = this.height;
        this.textShowRawOffsetY = (int) ((i10 * 1.0f) / 10.0f);
        this.mRawTextPaint.setTextSize((i10 * 1.0f) / 6.0f);
        checkTextSize(this.rawName, getAvailableWidth(), this.mRawTextPaint);
        Paint paint = this.rockerCenterTextPaint;
        if (paint != null) {
            paint.setTextSize(((this.height * 1.0f) / 5.0f) / 2.0f);
        }
    }
}
