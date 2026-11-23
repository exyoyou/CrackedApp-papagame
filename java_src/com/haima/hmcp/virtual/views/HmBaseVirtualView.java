package com.haima.hmcp.virtual.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.animation.LinearInterpolator;
import androidx.annotation.RequiresApi;
import com.haima.hmcp.Constants;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.BitmapRef;
import com.haima.hmcp.virtual.HmNetworkBitmapLoader;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.listeners.HmVirtualViewListener;
import com.haima.hmcp.virtual.listeners.VirtualViewObserver;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public abstract class HmBaseVirtualView implements VirtualViewObserver {
    protected static final long ANIM_DURATION_MOVE = 400;
    protected static final long ANIM_DURATION_ROTATE = 400;
    protected static final float MAX_ANGLE = 4.5f;
    protected int INTERVAL;
    protected final int ROCKER_CENTER_BITMAP_SCALE;
    protected final String TAG;
    protected Bitmap bitmap;
    protected float currentAngle;
    protected float currentX;
    protected float currentY;
    protected long downTime;
    protected float downX;
    protected float downY;
    protected float editModeTouchOffsetX;
    protected float editModeTouchOffsetY;
    protected int height;
    protected boolean isEditMode;
    protected boolean isPressed;
    protected boolean isRight;
    private Bitmap lastCalculatedBitmap;
    protected float lastX;
    protected float lastY;
    protected Paint mBitmapPaint;
    protected Canvas mCanvas;
    protected Context mCtx;
    public HmVirtualAlignLinesHelper mHmVirtualAlignLinesHelper;
    private Paint mLinePaint;
    protected Paint mRawTextPaint;
    protected Rect mRect;
    protected Paint mTextPaint;
    protected Matrix matrix;
    protected ValueAnimator moveAnim;
    protected String name;
    protected boolean needShowRawKey;
    protected int nowPointID;
    protected float offsetAnim;
    protected String pre = getClass().getSimpleName();
    protected final float radius;
    protected Random random;
    protected String rawName;
    protected Paint rockerCenterTextPaint;
    protected ValueAnimator rotateAnim;
    private ScanlineHitTest scanlineHitTest;
    protected int screenHeight;
    protected float screenScale;
    protected int screenWidth;
    protected int sourceType;
    protected int textShowRawOffsetY;
    protected HmVirtualViewBean viewBean;
    protected HmVirtualViewListener viewListener;
    protected int width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f34102x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected int f34103y;

    public HmBaseVirtualView(HmVirtualViewBean hmVirtualViewBean, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        String simpleName = getClass().getSimpleName();
        this.TAG = simpleName;
        this.INTERVAL = 400;
        this.ROCKER_CENTER_BITMAP_SCALE = 5;
        this.matrix = new Matrix();
        this.currentAngle = 0.0f;
        this.currentX = 0.0f;
        this.currentY = 0.0f;
        this.radius = 3.0f;
        if (hmVirtualViewBean == null) {
            LogUtils.e(simpleName, this.pre + " error : viewBean is null");
            this.isRight = false;
            return;
        }
        if (hmVirtualViewBean.getKeyType() != 13 && hmVirtualViewBean.getKeyType() != -1 && hmVirtualViewBean.getKeyType() != -2 && (hmVirtualViewBean.getKeys() == null || hmVirtualViewBean.getKeys().size() == 0)) {
            this.isRight = false;
            LogUtils.e(simpleName, this.pre + " error : getKeys is null");
            return;
        }
        if (hmVirtualViewBean.getPosition() == null) {
            this.isRight = false;
            LogUtils.e(simpleName, this.pre + " error : position is null");
            return;
        }
        this.sourceType = i10;
        this.viewListener = hmVirtualViewListener;
        this.viewBean = hmVirtualViewBean;
        this.nowPointID = -1;
        this.isRight = true;
        this.isPressed = false;
        this.mCtx = context;
        Point displayMetrics = (HmVirtualDeviceManager.containerHeight == 0 || HmVirtualDeviceManager.containerWidth == 0) ? HmVirtualDeviceUtils.getDisplayMetrics(context) : new Point(HmVirtualDeviceManager.containerWidth, HmVirtualDeviceManager.containerHeight);
        this.screenWidth = displayMetrics.x;
        int i11 = displayMetrics.y;
        this.screenHeight = i11;
        this.screenScale = (i11 * 1.0f) / 1080.0f;
        HmVirtualViewBean.PositionDTO position = this.viewBean.getPosition();
        this.f34102x = (int) (position.getX() * ((double) this.screenWidth));
        this.f34103y = (int) (position.getY() * ((double) this.screenHeight));
        calcWidthHeight();
        Paint paint = new Paint();
        this.mBitmapPaint = paint;
        paint.setAntiAlias(true);
        this.mBitmapPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        Paint paint2 = new Paint();
        this.mTextPaint = paint2;
        paint2.setColor(-1);
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setTextAlign(Paint.Align.CENTER);
        Paint paint3 = new Paint();
        this.mRawTextPaint = paint3;
        paint3.setColor(-1);
        this.mRawTextPaint.setAntiAlias(true);
        this.mRawTextPaint.setTextAlign(Paint.Align.CENTER);
        Paint paint4 = new Paint();
        this.mLinePaint = paint4;
        paint4.setStrokeWidth(1.0f);
        this.mLinePaint.setColor(Constants.LEVEL_SDK);
        this.mLinePaint.setAntiAlias(true);
        initTextPaint();
        this.mHmVirtualAlignLinesHelper = new HmVirtualAlignLinesHelper(this.f34102x, this.f34103y, this.width, this.height, this.screenWidth, this.screenHeight, context, this);
        setTransparency(HmVirtualDeviceManager.transparency);
        calcName();
        updateTextSize();
    }

    private void calcName() {
        this.name = this.viewBean.getName();
        StringBuilder sb2 = new StringBuilder();
        if (this.viewBean.getKeys() != null) {
            Iterator<HmVirtualViewBean.KeysDTO> it2 = this.viewBean.getKeys().iterator();
            while (it2.hasNext()) {
                sb2.append(it2.next().getKey());
                sb2.append("+");
            }
        }
        if (sb2.length() > 0) {
            sb2.delete(sb2.length() - 1, sb2.length());
        }
        this.rawName = sb2.toString();
        if (TextUtils.isEmpty(this.name)) {
            this.needShowRawKey = false;
            this.name = this.rawName;
        } else if (this.viewBean.getKeys() != null && this.viewBean.getKeys().size() > 1) {
            this.needShowRawKey = true;
        } else if (this.viewBean.getKeys() != null && this.viewBean.getKeys().size() == 1 && !this.name.equals(this.viewBean.getKeys().get(0).getKey())) {
            this.needShowRawKey = true;
        }
        LogUtils.i(this.TAG, "needShowDraw=" + this.needShowRawKey + ";" + this.viewBean.getName());
    }

    private void calcWidthHeight() {
        HmVirtualViewBean.PositionDTO position = this.viewBean.getPosition();
        float baseScale = HmVirtualDeviceManager.get().getBaseScale();
        LogUtils.i(this.TAG, "calcWidthHeight baseScale=" + baseScale);
        this.width = (int) (((float) position.getW()) * this.screenScale * this.viewBean.getScale() * baseScale);
        this.height = (int) (((float) position.getH()) * this.screenScale * this.viewBean.getScale() * baseScale);
        checkPosition();
        updateRect();
    }

    private void initTextPaint() {
        Paint paint = new Paint();
        this.rockerCenterTextPaint = paint;
        paint.setColor(-1);
        this.rockerCenterTextPaint.setAntiAlias(true);
        this.rockerCenterTextPaint.setTextAlign(Paint.Align.CENTER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShake$0(ValueAnimator valueAnimator) {
        this.currentAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startShake$1(ValueAnimator valueAnimator) {
        double dFloatValue = (float) (((double) ((Float) valueAnimator.getAnimatedValue()).floatValue()) * 6.283185307179586d);
        this.offsetAnim = ((float) Math.cos(dFloatValue)) * 3.0f;
        this.currentX = this.f34102x + (this.width / 2.0f) + (((float) Math.cos(dFloatValue)) * 3.0f);
        this.currentY = this.f34103y + (this.height / 2.0f) + (((float) Math.sin(dFloatValue)) * 3.0f);
    }

    public void changeName(String str) {
        this.viewBean.setName(str);
        calcName();
        updateTextSize();
    }

    public void changeScale(float f10) {
        if (f10 < 0.0f) {
            return;
        }
        this.viewBean.setScale(f10);
        calcWidthHeight();
        updateTextSize();
        clearScanlineCache();
    }

    protected void checkPosition() {
    }

    protected void clearScanlineCache() {
        ScanlineHitTest scanlineHitTest = this.scanlineHitTest;
        if (scanlineHitTest != null) {
            scanlineHitTest.clear();
        }
        this.lastCalculatedBitmap = null;
    }

    public boolean draw(Canvas canvas) {
        this.mCanvas = canvas;
        if (!this.isRight) {
            return true;
        }
        if (!HmVirtualDeviceManager.showAlignLine) {
            return false;
        }
        int i10 = this.f34103y;
        canvas.drawLine(0.0f, i10, this.f34102x, i10, this.mLinePaint);
        int i11 = this.f34102x;
        canvas.drawLine(i11, 0.0f, i11, this.f34103y, this.mLinePaint);
        return false;
    }

    protected void drawBitmapAnim(Canvas canvas) {
        if (this.bitmap == null || this.matrix == null || canvas == null) {
            return;
        }
        canvas.save();
        this.matrix.reset();
        float width = this.bitmap.getWidth() / 2.0f;
        float height = this.bitmap.getHeight() / 2.0f;
        this.matrix.postRotate(this.currentAngle, width, height);
        this.matrix.postTranslate(this.currentX - width, this.currentY - height);
        canvas.drawBitmap(this.bitmap, this.matrix, this.mBitmapPaint);
        canvas.restore();
    }

    protected void drawTextAnim(Canvas canvas, String str, float f10, float f11, Paint paint, boolean z10) {
        if (TextUtils.isEmpty(str) || paint == null || canvas == null) {
            return;
        }
        canvas.save();
        canvas.translate(f10, f11);
        canvas.setMatrix(this.matrix);
        float f12 = this.width / 2.0f;
        int iAbs = (this.height / 2) + ((int) (Math.abs(this.mTextPaint.ascent() + this.mTextPaint.descent()) / 2.0f));
        if (z10 && this.needShowRawKey && HmVirtualDeviceManager.showRawKey) {
            canvas.drawText(str, f12, (iAbs - this.textShowRawOffsetY) + (this.mTextPaint.getTextSize() / 2.0f) + (this.height / 8.0f), paint);
        } else if (this.needShowRawKey && HmVirtualDeviceManager.showRawKey) {
            canvas.drawText(str, f12, iAbs - this.textShowRawOffsetY, paint);
        } else {
            canvas.drawText(str, f12, iAbs, this.mTextPaint);
        }
        canvas.restore();
    }

    public void enterEditMode() {
        LogUtils.i(this.TAG, "enterEditMode");
        this.isEditMode = true;
        stopShake();
    }

    @SuppressLint({"NewApi"})
    public void exitEditMode() {
        LogUtils.i(this.TAG, "exitEditMode");
        this.isEditMode = false;
        if (this.random == null) {
            this.random = new Random();
        }
        startShake(this.random.nextFloat(), this.random.nextFloat());
    }

    protected Bitmap getCurrentDisplayBitmap() {
        return this.bitmap;
    }

    protected String getImageUrlFromConfig(String str) {
        if (this.viewBean != null && !TextUtils.isEmpty(str)) {
            if (str.equals(this.viewBean.getPicCenterMD5())) {
                return this.viewBean.getPicCenterUrl();
            }
            if (str.equals(this.viewBean.getPicSelectedMD5())) {
                return this.viewBean.getPicSelectedUrl();
            }
            if (str.equals(this.viewBean.getPicUnselectedMD5())) {
                return this.viewBean.getPicUnselectedUrl();
            }
            if (str.equals(this.viewBean.getCrossPicRockerDirectionMD5())) {
                return this.viewBean.getCrossPicRockerDirectionUrl();
            }
        }
        return null;
    }

    public Rect getRect() {
        return this.mRect;
    }

    public HmVirtualViewBean getViewBean() {
        return this.viewBean;
    }

    public int getX() {
        return this.f34102x;
    }

    public int getY() {
        return this.f34103y;
    }

    protected boolean isPointInInscribedCircle(float f10, float f11) {
        Rect rect = this.mRect;
        if (rect == null || !HmVirtualDeviceUtils.isInRect(f10, f11, rect)) {
            return false;
        }
        float fMin = Math.min(this.mRect.width(), this.mRect.height()) / 2.0f;
        Rect rect2 = this.mRect;
        float fWidth = rect2.left + (rect2.width() / 2.0f);
        Rect rect3 = this.mRect;
        float f12 = f10 - fWidth;
        float fHeight = f11 - (rect3.top + (rect3.height() / 2.0f));
        return ((float) Math.sqrt((double) ((f12 * f12) + (fHeight * fHeight)))) <= fMin;
    }

    public boolean isPointInView(float f10, float f11) {
        Rect rect = this.mRect;
        if (rect == null || !HmVirtualDeviceUtils.isInRect(f10, f11, rect)) {
            return false;
        }
        Bitmap currentDisplayBitmap = getCurrentDisplayBitmap();
        if (currentDisplayBitmap == null || currentDisplayBitmap.isRecycled()) {
            return true;
        }
        if (this.scanlineHitTest == null || this.lastCalculatedBitmap != currentDisplayBitmap) {
            ScanlineHitTest scanlineHitTest = new ScanlineHitTest();
            this.scanlineHitTest = scanlineHitTest;
            scanlineHitTest.calculateScanlines(currentDisplayBitmap);
            this.lastCalculatedBitmap = currentDisplayBitmap;
        }
        float f12 = (f10 - this.f34102x) / this.width;
        float f13 = (f11 - this.f34103y) / this.height;
        LogUtils.w(this.TAG, "isPointInView: normalizedX:" + f12 + " normalizedY:" + f13 + " x=" + f10 + " y=" + f11 + " width=" + this.width + " height=" + this.height + " this.x=" + this.f34102x + " this.y=" + this.f34103y);
        return this.scanlineHitTest.hitTest(f12, f13);
    }

    public void notifyBaseScale() {
        LogUtils.i(this.TAG, "notifyScale");
        calcWidthHeight();
        updateTextSize();
        clearScanlineCache();
    }

    @Override // com.haima.hmcp.virtual.listeners.VirtualViewObserver
    public /* synthetic */ void onSave() {
        j5.a.a(this);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.isRight) {
            return false;
        }
        if (!HmVirtualDeviceManager.editMode || motionEvent.getActionMasked() != 5) {
            return true;
        }
        LogUtils.i(this.TAG, "editMode not support more pointer down");
        return false;
    }

    @Override // com.haima.hmcp.virtual.listeners.VirtualViewObserver
    public /* synthetic */ void prepareShake() {
        j5.a.b(this);
    }

    protected void registerDownloadListener(final String str, final int i10, final int i11, final BitmapRef bitmapRef) {
        if (!TextUtils.isEmpty(str) && bitmapRef != null) {
            HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, str, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualView.3
                @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                public void onDownloadComplete(String str2, Bitmap bitmap) {
                    if (bitmap == null) {
                        LogUtils.w(HmBaseVirtualView.this.TAG, "registerDownloadListener: download complete but failed to get bitmap for " + str);
                        return;
                    }
                    bitmapRef.setNetwork(HmVirtualDeviceUtils.scaledBitmap(bitmap, i10, i11));
                    LogUtils.d(HmBaseVirtualView.this.TAG, "registerDownloadListener: download complete, updated bitmap for " + str + ", size=" + bitmap.getWidth() + "x" + bitmap.getHeight());
                }

                @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                public void onDownloadFailed(String str2, String str3) {
                    LogUtils.d(HmBaseVirtualView.this.TAG, "registerDownloadListener: download failed for " + str + ", error=" + str3);
                }
            }, i10, i11);
            LogUtils.d(this.TAG, "registerDownloadListener: registered listener for " + str);
            return;
        }
        LogUtils.w(this.TAG, "registerDownloadListener: invalid params, url=" + str + ", bitmapRef=" + bitmapRef);
    }

    public void setTransparency(float f10) {
        Paint paint = this.mBitmapPaint;
        if (paint != null) {
            paint.setAlpha((int) (f10 * 255.0f));
        }
        Paint paint2 = this.mTextPaint;
        if (paint2 != null) {
            paint2.setAlpha((int) (f10 * 255.0f));
        }
        Paint paint3 = this.mRawTextPaint;
        if (paint3 != null) {
            paint3.setAlpha((int) (f10 * 255.0f * 0.8f));
        }
    }

    public void setX(int i10) {
        this.f34102x = i10;
    }

    public void setY(int i10) {
        this.f34103y = i10;
    }

    @RequiresApi(api = 22)
    public void startShake(float f10, float f11) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(-4.5f, MAX_ANGLE, -4.5f);
        this.rotateAnim = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(400L);
        this.rotateAnim.setRepeatCount(-1);
        this.rotateAnim.setInterpolator(new LinearInterpolator());
        ValueAnimator.setFrameDelay(16L);
        this.rotateAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.views.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f34104b.lambda$startShake$0(valueAnimator);
            }
        });
        this.rotateAnim.start();
        this.rotateAnim.setCurrentPlayTime((long) (f10 * 400.0f));
        this.rotateAnim.addListener(new AnimatorListenerAdapter() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                HmBaseVirtualView.this.rotateAnim.setCurrentPlayTime(HmBaseVirtualView.this.rotateAnim.getCurrentPlayTime() % 400);
            }
        });
        this.rotateAnim.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.moveAnim = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(400L);
        this.moveAnim.setRepeatCount(-1);
        this.moveAnim.setInterpolator(new LinearInterpolator());
        this.moveAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.views.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f34105b.lambda$startShake$1(valueAnimator);
            }
        });
        this.moveAnim.setCurrentPlayTime((long) (f11 * 400.0f));
        this.moveAnim.addListener(new AnimatorListenerAdapter() { // from class: com.haima.hmcp.virtual.views.HmBaseVirtualView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                HmBaseVirtualView.this.moveAnim.setCurrentPlayTime(HmBaseVirtualView.this.moveAnim.getCurrentPlayTime() % 400);
            }
        });
        this.moveAnim.start();
    }

    public void stopShake() {
        this.currentAngle = 0.0f;
        this.currentX = this.f34102x + (this.width / 2.0f);
        this.currentY = this.f34103y + (this.height / 2.0f);
        ValueAnimator valueAnimator = this.rotateAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.moveAnim;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
    }

    protected void updateRect() {
        int i10 = this.f34102x;
        int i11 = this.f34103y;
        this.mRect = new Rect(i10, i11, this.width + i10, this.height + i11);
        if (HmVirtualDeviceManager.editMode) {
            this.viewBean.getPosition().setX(HmVirtualDeviceUtils.getDecimalAfterThereSize((this.f34102x * 1.0f) / HmVirtualDeviceManager.containerWidth));
            this.viewBean.getPosition().setY(HmVirtualDeviceUtils.getDecimalAfterThereSize((this.f34103y * 1.0f) / HmVirtualDeviceManager.containerHeight));
        }
    }

    protected void updateTextSize() {
        String str;
        if (this.mTextPaint == null || this.mRawTextPaint == null || (str = this.name) == null) {
            return;
        }
        if (str.length() < 4) {
            this.mTextPaint.setTextSize((this.height * 1.0f) / 4.0f);
        } else {
            this.mTextPaint.setTextSize((this.height * 1.0f) / 4.8f);
        }
        int i10 = this.height;
        this.textShowRawOffsetY = (int) ((i10 * 1.0f) / 10.0f);
        this.mRawTextPaint.setTextSize((i10 * 1.0f) / 6.0f);
        Paint paint = this.rockerCenterTextPaint;
        if (paint != null) {
            paint.setTextSize(((this.height * 1.0f) / 5.0f) / 2.0f);
        }
    }

    public void updateVirtualViewList(List<HmBaseVirtualView> list) {
        HmVirtualAlignLinesHelper hmVirtualAlignLinesHelper = this.mHmVirtualAlignLinesHelper;
        if (hmVirtualAlignLinesHelper != null) {
            hmVirtualAlignLinesHelper.updateVirtualViewList(list);
        }
    }
}
