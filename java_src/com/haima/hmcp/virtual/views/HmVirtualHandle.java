package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.haima.hmcp.Constants;
import com.haima.hmcp.R;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.BitmapRef;
import com.haima.hmcp.virtual.HmNetworkBitmapLoader;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.listeners.HmVirtualViewListener;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualHandle extends HmBaseVirtualView {
    public static final int BOTTOM = 700;
    public static final int DEFAULT = 0;
    public static final int LEFT = 500;
    public static final int LEFT_BOTTOM = 600;
    public static final int LEFT_TOP = 400;
    public static final int RIGHT = 100;
    public static final int RIGHT_BOTTOM = 800;
    public static final int RIGHT_TOP = 200;
    public static final int TOP = 300;
    private final float CENTER_TO_BOUNDARY_SCALE;
    private int angle;
    private float centerToBoundaryScale;
    private int circleCenterX;
    private int circleCenterY;
    private int circleR;
    private boolean isKeyBoardRocker;
    private int lastDirection;
    private BitmapRef mBitmapDownRef;
    private BitmapRef mBitmapUpRef;
    private int mInitX;
    private int mInitY;
    private BitmapRef mInnerBitmapRef;
    private BitmapRef mOuterBitmapRef;
    private int smallCircleCenterX;
    private int smallCircleCenterY;
    private int smallCircleR;

    public HmVirtualHandle(HmVirtualViewBean hmVirtualViewBean, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        super(hmVirtualViewBean, context, hmVirtualViewListener, i10);
        this.mOuterBitmapRef = new BitmapRef();
        this.mInnerBitmapRef = new BitmapRef();
        this.mBitmapDownRef = new BitmapRef();
        this.mBitmapUpRef = new BitmapRef();
        this.lastDirection = 0;
        this.CENTER_TO_BOUNDARY_SCALE = 0.1f;
        this.centerToBoundaryScale = 0.1f;
        if (this.isRight) {
            initWH();
        }
    }

    private void calcAngle(float f10, float f11) {
        float f12;
        float f13;
        this.angle = (int) HmVirtualDeviceUtils.getAngle(f10, f11, this.circleCenterX, this.circleCenterY);
        float f14 = (this.circleR - this.smallCircleR) - (this.width * this.centerToBoundaryScale);
        double d10 = f14;
        if (Math.pow(f10 - this.circleCenterX, 2.0d) + Math.pow(f11 - this.circleCenterY, 2.0d) > Math.pow(d10, 2.0d)) {
            f10 = (float) (((double) this.circleCenterX) + (Math.cos(Math.toRadians(this.angle)) * d10));
            f11 = (float) (((double) this.circleCenterY) - (d10 * Math.sin(Math.toRadians(this.angle))));
        }
        this.smallCircleCenterX = (int) f10;
        this.smallCircleCenterY = (int) f11;
        int iCalcEightDirection = calcEightDirection();
        float f15 = (f10 - this.circleCenterX) / f14;
        float f16 = (-(f11 - this.circleCenterY)) / f14;
        if (f15 < -1.0f) {
            f12 = -1.0f;
        } else {
            f12 = f15 > 1.0f ? 1.0f : f15;
        }
        if (f16 < -1.0f) {
            f13 = -1.0f;
        } else {
            f13 = f16 > 1.0f ? 1.0f : f16;
        }
        HmVirtualViewListener hmVirtualViewListener = this.viewListener;
        if (hmVirtualViewListener != null && !HmVirtualDeviceManager.editMode && (!this.isKeyBoardRocker || iCalcEightDirection != this.lastDirection)) {
            hmVirtualViewListener.onRockerTouchEvent(0, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType(), iCalcEightDirection, this.lastDirection, f12, f13);
        }
        this.lastDirection = iCalcEightDirection;
    }

    private void drawRockerCenterText(Canvas canvas) {
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        String textRocketCenter = hmVirtualViewBean == null ? "" : hmVirtualViewBean.getTextRocketCenter();
        if (TextUtils.isEmpty(textRocketCenter)) {
            LogUtils.e(this.TAG, "drawRockerCenterText failed : data is empty");
            return;
        }
        if (canvas == null) {
            LogUtils.e(this.TAG, "drawRockerCenterText failed : canvas is null");
            return;
        }
        Bitmap bitmap = this.mInnerBitmapRef.get();
        if (bitmap == null) {
            return;
        }
        int i10 = this.smallCircleCenterX;
        int i11 = this.smallCircleR;
        canvas.drawText(textRocketCenter, (i10 - i11) + (bitmap.getWidth() / 2), (this.smallCircleCenterY - i11) + (bitmap.getHeight() / 2) + ((int) (Math.abs(this.rockerCenterTextPaint.ascent() + this.rockerCenterTextPaint.descent()) / 2.0f)), this.rockerCenterTextPaint);
    }

    private int getXobJoystickCenterResetValue() {
        HmVirtualLayoutBean.ConfigDTO config;
        HmVirtualLayoutBean layoutBean = HmVirtualDeviceManager.get().getLayoutBean();
        if (layoutBean == null || (config = layoutBean.getConfig()) == null) {
            return 0;
        }
        return config.getXbox_joystick_center_reset();
    }

    private void initWH() {
        String pic_rocker_center_MD5;
        String pic_rocker_direction_MD5;
        String pic_rocker_center_url;
        String pic_rocker_direction_url;
        Bitmap bitmapSync;
        HmVirtualLayoutBean.ConfigDTO config;
        if (this.viewBean == null) {
            LogUtils.e(this.TAG, " initWH failed");
            return;
        }
        if (this.width != this.height) {
            LogUtils.e(this.TAG, " handle error width != height  give width to height");
            this.height = this.width;
            checkPosition();
            updateRect();
        }
        HmVirtualLayoutBean layoutBean = HmVirtualDeviceManager.get().getLayoutBean();
        if (layoutBean == null || (config = layoutBean.getConfig()) == null) {
            pic_rocker_center_MD5 = null;
            pic_rocker_direction_MD5 = null;
            pic_rocker_center_url = null;
            pic_rocker_direction_url = null;
        } else {
            pic_rocker_center_MD5 = config.getPic_rocker_center_MD5();
            pic_rocker_direction_MD5 = config.getPic_rocker_direction_MD5();
            pic_rocker_center_url = config.getPic_rocker_center_url();
            pic_rocker_direction_url = config.getPic_rocker_direction_url();
            float centerToBoundaryScale = config.getCenterToBoundaryScale();
            if (centerToBoundaryScale > 0.0f) {
                this.centerToBoundaryScale = centerToBoundaryScale;
                LogUtils.e(this.TAG, " centerToBoundaryScale value is " + centerToBoundaryScale);
            }
        }
        String picSelectedMD5 = this.viewBean.getPicSelectedMD5();
        String picUnselectedMD5 = this.viewBean.getPicUnselectedMD5();
        String picSelectedUrl = this.viewBean.getPicSelectedUrl();
        String picUnselectedUrl = this.viewBean.getPicUnselectedUrl();
        Bitmap bitmapSync2 = !TextUtils.isEmpty(pic_rocker_center_url) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(pic_rocker_center_url, this.width / 5, this.height / 5) : null;
        if (bitmapSync2 != null) {
            this.mInnerBitmapRef.setDefault(bitmapSync2);
            LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for INNER, url=" + pic_rocker_center_url);
        } else {
            this.mInnerBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, pic_rocker_center_MD5, R.mipmap.hm_vir_rocker_inner, this.width / 5, this.height / 5));
            if (!TextUtils.isEmpty(pic_rocker_center_url)) {
                registerDownloadListener(pic_rocker_center_url, this.width / 5, this.height / 5, this.mInnerBitmapRef);
            }
        }
        Bitmap bitmapSync3 = !TextUtils.isEmpty(pic_rocker_direction_url) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(pic_rocker_direction_url, this.width, this.height) : null;
        if (bitmapSync3 != null) {
            this.mOuterBitmapRef.setDefault(bitmapSync3);
            LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for OUTER, url=" + pic_rocker_direction_url);
        } else {
            this.mOuterBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, pic_rocker_direction_MD5, R.mipmap.hm_vir_rocker_outer_direction, this.width, this.height));
            if (!TextUtils.isEmpty(pic_rocker_direction_url)) {
                registerDownloadListener(pic_rocker_direction_url, this.width, this.height, this.mOuterBitmapRef);
            }
        }
        int keyType = this.viewBean.getKeyType();
        if (keyType == 3) {
            this.mBitmapDownRef.setDefault(HmVirtualDeviceUtils.getBitmapByImgID(this.mCtx, R.mipmap.hm_vir_rocker_direction_down, this.width, this.height));
            this.mBitmapUpRef.setDefault(HmVirtualDeviceUtils.getBitmapByImgID(this.mCtx, R.mipmap.hm_vir_rocker_direction_up, this.width, this.height));
            this.mInnerBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmapByImgID(this.mCtx, R.mipmap.hm_vir_rocker_inner, this.width / 5, this.height / 5));
            this.mOuterBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmapByImgID(this.mCtx, R.mipmap.hm_vir_rocker_outer_direction, this.width, this.height));
        } else if (keyType == 4) {
            Bitmap bitmapSync4 = !TextUtils.isEmpty(picSelectedUrl) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(picSelectedUrl, this.width, this.height) : null;
            if (bitmapSync4 != null) {
                this.mBitmapDownRef.setDefault(bitmapSync4);
                LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for ROCKER_L DOWN, url=" + picSelectedUrl);
            } else {
                this.mBitmapDownRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picSelectedMD5, R.mipmap.hm_vir_rocker_down, this.width, this.height));
                if (!TextUtils.isEmpty(picSelectedUrl)) {
                    registerDownloadListener(picSelectedUrl, this.width, this.height, this.mBitmapDownRef);
                }
            }
            bitmapSync = TextUtils.isEmpty(picUnselectedUrl) ? null : HmNetworkBitmapLoader.getInstance().getBitmapSync(picUnselectedUrl, this.width, this.height);
            if (bitmapSync != null) {
                this.mBitmapUpRef.setDefault(bitmapSync);
                LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for ROCKER_L UP, url=" + picUnselectedUrl);
            } else {
                this.mBitmapUpRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picUnselectedMD5, R.mipmap.hm_vir_rocker_l_up, this.width, this.height));
                if (!TextUtils.isEmpty(picUnselectedUrl)) {
                    registerDownloadListener(picUnselectedUrl, this.width, this.height, this.mBitmapUpRef);
                }
            }
        } else if (keyType == 5) {
            Bitmap bitmapSync5 = !TextUtils.isEmpty(picSelectedUrl) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(picSelectedUrl, this.width, this.height) : null;
            if (bitmapSync5 != null) {
                this.mBitmapDownRef.setDefault(bitmapSync5);
                LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for ROCKER_R DOWN, url=" + picSelectedUrl);
            } else {
                this.mBitmapDownRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picSelectedMD5, R.mipmap.hm_vir_rocker_down, this.width, this.height));
                if (!TextUtils.isEmpty(picSelectedUrl)) {
                    registerDownloadListener(picSelectedUrl, this.width, this.height, this.mBitmapDownRef);
                }
            }
            bitmapSync = TextUtils.isEmpty(picUnselectedUrl) ? null : HmNetworkBitmapLoader.getInstance().getBitmapSync(picUnselectedUrl, this.width, this.height);
            if (bitmapSync != null) {
                this.mBitmapUpRef.setDefault(bitmapSync);
                LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for ROCKER_R UP, url=" + picUnselectedUrl);
            } else {
                this.mBitmapUpRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picUnselectedMD5, R.mipmap.hm_vir_rocker_r_up, this.width, this.height));
                if (!TextUtils.isEmpty(picUnselectedUrl)) {
                    registerDownloadListener(picUnselectedUrl, this.width, this.height, this.mBitmapUpRef);
                }
            }
        } else if (keyType == 6 || keyType == 7) {
            this.isKeyBoardRocker = true;
            Bitmap bitmapSync6 = !TextUtils.isEmpty(picSelectedUrl) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(picSelectedUrl, this.width, this.height) : null;
            if (bitmapSync6 != null) {
                this.mBitmapDownRef.setDefault(bitmapSync6);
                LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for KEYBOARD_ROCKER DOWN, url=" + picSelectedUrl);
            } else {
                this.mBitmapDownRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picSelectedMD5, R.mipmap.hm_vir_rocker_down, this.width, this.height));
                if (!TextUtils.isEmpty(picSelectedUrl)) {
                    registerDownloadListener(picSelectedUrl, this.width, this.height, this.mBitmapDownRef);
                }
            }
            bitmapSync = TextUtils.isEmpty(picUnselectedUrl) ? null : HmNetworkBitmapLoader.getInstance().getBitmapSync(picUnselectedUrl, this.width, this.height);
            if (bitmapSync != null) {
                this.mBitmapUpRef.setDefault(bitmapSync);
                LogUtils.d(this.TAG, "initRockerBitmap: use cached network bitmap for KEYBOARD_ROCKER UP, url=" + picUnselectedUrl);
            } else {
                this.mBitmapUpRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picUnselectedMD5, R.mipmap.hm_vir_rocker_up, this.width, this.height));
                if (!TextUtils.isEmpty(picUnselectedUrl)) {
                    registerDownloadListener(picUnselectedUrl, this.width, this.height, this.mBitmapUpRef);
                }
            }
        }
        updateCirclePosition();
    }

    private boolean needCenterReset() {
        int xobJoystickCenterResetValue = getXobJoystickCenterResetValue();
        if (xobJoystickCenterResetValue < 0) {
            return false;
        }
        boolean z10 = (xobJoystickCenterResetValue & 1) != 0;
        boolean z11 = (xobJoystickCenterResetValue & 2) != 0;
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        if (hmVirtualViewBean == null) {
            return false;
        }
        int keyType = hmVirtualViewBean.getKeyType();
        return (z10 && keyType == 4) || (z11 && keyType == 5);
    }

    private void resetPosition() {
        int i10 = this.mInitX;
        this.f34102x = i10;
        int i11 = this.mInitY;
        this.f34103y = i11;
        int i12 = i10 + (this.width / 2);
        this.circleCenterX = i12;
        int i13 = i11 + (this.height / 2);
        this.circleCenterY = i13;
        this.smallCircleCenterX = i12;
        this.smallCircleCenterY = i13;
    }

    private void updateCirclePosition() {
        this.circleR = this.width / 2;
        Bitmap bitmap = this.mInnerBitmapRef.get();
        if (bitmap != null) {
            this.smallCircleR = bitmap.getWidth() / 2;
        }
        int i10 = this.f34102x;
        int i11 = (this.width / 2) + i10;
        this.circleCenterX = i11;
        int i12 = this.f34103y;
        int i13 = (this.height / 2) + i12;
        this.circleCenterY = i13;
        this.smallCircleCenterX = i11;
        this.smallCircleCenterY = i13;
        this.mInitX = i10;
        this.mInitY = i12;
    }

    public int calcEightDirection() {
        int i10 = this.angle;
        if (i10 >= 338 || i10 < 23) {
            return 100;
        }
        if (i10 < 68) {
            return 200;
        }
        if (i10 < 113) {
            return 300;
        }
        if (i10 < 158) {
            return 400;
        }
        if (i10 < 203) {
            return 500;
        }
        if (i10 < 248) {
            return 600;
        }
        return i10 < 293 ? 700 : 800;
    }

    public int calcFourDirection() {
        int i10 = this.angle;
        if (i10 >= 315 || i10 < 46) {
            return 100;
        }
        if (i10 < 136) {
            return 300;
        }
        return i10 < 226 ? 500 : 700;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void changeScale(float f10) {
        super.changeScale(f10);
        initWH();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean draw(Canvas canvas) {
        if (super.draw(canvas)) {
            return false;
        }
        Bitmap bitmap = this.mBitmapDownRef.get();
        Bitmap bitmap2 = this.mBitmapUpRef.get();
        Bitmap bitmap3 = this.mInnerBitmapRef.get();
        Bitmap bitmap4 = this.mOuterBitmapRef.get();
        if (bitmap == null || bitmap3 == null) {
            return false;
        }
        try {
            if (HmVirtualDeviceManager.editMode) {
                if (!Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION || this.isEditMode) {
                    canvas.drawBitmap(bitmap2, this.f34102x, this.f34103y, this.mBitmapPaint);
                } else {
                    this.bitmap = bitmap2;
                    drawBitmapAnim(canvas);
                }
                this.mHmVirtualAlignLinesHelper.drawAlignLines(canvas);
                if (!this.isEditMode) {
                    return true;
                }
                canvas.drawBitmap(bitmap, this.f34102x, this.f34103y, this.mBitmapPaint);
                return true;
            }
            if (!this.isPressed) {
                bitmap = bitmap2;
            }
            canvas.drawBitmap(bitmap, this.f34102x, this.f34103y, this.mBitmapPaint);
            if (!this.isPressed) {
                return true;
            }
            int i10 = this.smallCircleCenterX;
            int i11 = this.smallCircleR;
            canvas.drawBitmap(bitmap3, i10 - i11, this.smallCircleCenterY - i11, this.mBitmapPaint);
            drawRockerCenterText(canvas);
            if (bitmap4 == null) {
                return true;
            }
            Matrix matrix = new Matrix();
            matrix.postRotate(360 - this.angle, bitmap4.getWidth() / 2.0f, bitmap4.getHeight() / 2.0f);
            matrix.postTranslate(this.f34102x, this.f34103y);
            canvas.drawBitmap(bitmap4, matrix, this.mBitmapPaint);
            return true;
        } catch (Exception e10) {
            LogUtils.e(this.TAG, "drawHandleError : " + e10.getMessage());
            return true;
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    protected Bitmap getCurrentDisplayBitmap() {
        return this.isPressed ? this.mBitmapDownRef.get() : this.mBitmapUpRef.get();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean isPointInView(float f10, float f11) {
        return isPointInInscribedCircle(f10, f11);
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void notifyBaseScale() {
        super.notifyBaseScale();
        initWH();
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:50:0x0103  */
    /* JADX WARN: Code duplicated, block: B:52:0x0111  */
    /* JADX WARN: Code duplicated, block: B:59:0x0142  */
    /* JADX WARN: Code duplicated, block: B:61:0x014c  */
    /* JADX WARN: Code duplicated, block: B:67:0x016a  */
    /* JADX WARN: Code duplicated, block: B:70:0x018f  */
    /* JADX WARN: Code duplicated, block: B:73:0x01d5  */
    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean onTouchEvent(MotionEvent motionEvent) {
        HmVirtualViewListener hmVirtualViewListener;
        if (super.onTouchEvent(motionEvent)) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!this.isPressed && isPointInView(motionEvent.getX(motionEvent.getActionIndex()), motionEvent.getY(motionEvent.getActionIndex()))) {
                if (HmVirtualDeviceManager.ableVibrator) {
                    HmVirtualDeviceUtils.vibrator(this.mCtx);
                }
                this.downTime = SystemClock.uptimeMillis();
                this.downX = motionEvent.getX(motionEvent.getActionIndex());
                this.downY = motionEvent.getY(motionEvent.getActionIndex());
                if (needCenterReset()) {
                    int i10 = (int) this.downX;
                    this.circleCenterX = i10;
                    int i11 = (int) this.downY;
                    this.circleCenterY = i11;
                    this.f34102x = i10 - (this.width / 2);
                    this.f34103y = i11 - (this.height / 2);
                }
                this.nowPointID = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.isPressed = true;
                HmVirtualDeviceManager.get().addPointID(Integer.valueOf(this.nowPointID));
                calcAngle(motionEvent.getX(motionEvent.getActionIndex()), motionEvent.getY(motionEvent.getActionIndex()));
                if (HmVirtualDeviceManager.editMode) {
                    this.editModeTouchOffsetX = motionEvent.getX(motionEvent.getActionIndex()) - this.f34102x;
                    this.editModeTouchOffsetY = motionEvent.getY(motionEvent.getActionIndex()) - this.f34103y;
                    this.lastX = motionEvent.getX(motionEvent.getActionIndex());
                    this.lastY = motionEvent.getY(motionEvent.getActionIndex());
                    this.mHmVirtualAlignLinesHelper.isMovingState = true;
                }
                return true;
            }
        } else if (actionMasked == 1) {
            this.mHmVirtualAlignLinesHelper.isMovingState = false;
            if (this.isPressed && motionEvent.getPointerId(motionEvent.getActionIndex()) == this.nowPointID) {
                this.isPressed = false;
                this.smallCircleCenterY = this.circleCenterY;
                this.smallCircleCenterX = this.circleCenterX;
                if (needCenterReset()) {
                    resetPosition();
                }
                float x10 = motionEvent.getX(motionEvent.getActionIndex());
                float y10 = motionEvent.getY(motionEvent.getActionIndex());
                hmVirtualViewListener = this.viewListener;
                if (hmVirtualViewListener != null) {
                    if (!HmVirtualDeviceManager.editMode) {
                        hmVirtualViewListener.onRockerTouchEvent(1, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType(), this.lastDirection, 0, 0.0f, 0.0f);
                    } else if (SystemClock.uptimeMillis() - this.downTime < this.INTERVAL && Math.abs(x10 - this.downX) < 10.0f && Math.abs(y10 - this.downY) < 10.0f) {
                        this.viewListener.onClickListener(this);
                    }
                }
                this.lastDirection = 0;
                HmVirtualDeviceManager.get().removePointID(Integer.valueOf(this.nowPointID));
                this.nowPointID = -1;
                if (HmVirtualDeviceManager.editMode) {
                    checkPosition();
                    updateRect();
                    updateCirclePosition();
                }
                return true;
            }
        } else if (actionMasked == 2) {
            HmVirtualViewListener hmVirtualViewListener2 = this.viewListener;
            if (hmVirtualViewListener2 != null && this.isPressed) {
                hmVirtualViewListener2.onViewEdit();
                if (Math.abs(motionEvent.getX() - this.lastX) > 10.0f || Math.abs(motionEvent.getY() - this.lastY) > 10.0f) {
                    this.viewListener.onBtnMoveEvent(this);
                }
            }
            if (this.isPressed) {
                for (int i12 = 0; i12 < motionEvent.getPointerCount(); i12++) {
                    if (motionEvent.getPointerId(i12) == this.nowPointID) {
                        calcAngle(motionEvent.getX(i12), motionEvent.getY(i12));
                        if (HmVirtualDeviceManager.editMode) {
                            this.f34102x = (int) (motionEvent.getX(i12) - this.editModeTouchOffsetX);
                            this.f34103y = (int) (motionEvent.getY(i12) - this.editModeTouchOffsetY);
                            this.lastX = motionEvent.getX(i12);
                            this.lastY = motionEvent.getY(i12);
                            updateRect();
                            this.mHmVirtualAlignLinesHelper.updateAlignLinesView(this.f34102x, this.f34103y, this.width, this.height);
                            this.mHmVirtualAlignLinesHelper.isMovingState = true;
                            updateCirclePosition();
                        }
                        return true;
                    }
                }
            }
        } else if (actionMasked == 3) {
            this.mHmVirtualAlignLinesHelper.isMovingState = false;
            if (this.isPressed) {
                this.isPressed = false;
                this.smallCircleCenterY = this.circleCenterY;
                this.smallCircleCenterX = this.circleCenterX;
                if (needCenterReset()) {
                    resetPosition();
                }
                float x11 = motionEvent.getX(motionEvent.getActionIndex());
                float y11 = motionEvent.getY(motionEvent.getActionIndex());
                hmVirtualViewListener = this.viewListener;
                if (hmVirtualViewListener != null) {
                    if (!HmVirtualDeviceManager.editMode) {
                        hmVirtualViewListener.onRockerTouchEvent(1, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType(), this.lastDirection, 0, 0.0f, 0.0f);
                    } else if (SystemClock.uptimeMillis() - this.downTime < this.INTERVAL) {
                        this.viewListener.onClickListener(this);
                    }
                }
                this.lastDirection = 0;
                HmVirtualDeviceManager.get().removePointID(Integer.valueOf(this.nowPointID));
                this.nowPointID = -1;
                if (HmVirtualDeviceManager.editMode) {
                    checkPosition();
                    updateRect();
                    updateCirclePosition();
                }
                return true;
            }
        } else if (actionMasked != 5) {
            if (actionMasked == 6) {
                this.mHmVirtualAlignLinesHelper.isMovingState = false;
                if (this.isPressed) {
                    this.isPressed = false;
                    this.smallCircleCenterY = this.circleCenterY;
                    this.smallCircleCenterX = this.circleCenterX;
                    if (needCenterReset()) {
                        resetPosition();
                    }
                    float x12 = motionEvent.getX(motionEvent.getActionIndex());
                    float y12 = motionEvent.getY(motionEvent.getActionIndex());
                    hmVirtualViewListener = this.viewListener;
                    if (hmVirtualViewListener != null) {
                        if (!HmVirtualDeviceManager.editMode) {
                            hmVirtualViewListener.onRockerTouchEvent(1, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType(), this.lastDirection, 0, 0.0f, 0.0f);
                        } else if (SystemClock.uptimeMillis() - this.downTime < this.INTERVAL) {
                            this.viewListener.onClickListener(this);
                        }
                    }
                    this.lastDirection = 0;
                    HmVirtualDeviceManager.get().removePointID(Integer.valueOf(this.nowPointID));
                    this.nowPointID = -1;
                    if (HmVirtualDeviceManager.editMode) {
                        checkPosition();
                        updateRect();
                        updateCirclePosition();
                    }
                    return true;
                }
            }
        } else if (!this.isPressed) {
            if (HmVirtualDeviceManager.ableVibrator) {
                HmVirtualDeviceUtils.vibrator(this.mCtx);
            }
            this.downTime = SystemClock.uptimeMillis();
            this.downX = motionEvent.getX(motionEvent.getActionIndex());
            this.downY = motionEvent.getY(motionEvent.getActionIndex());
            if (needCenterReset()) {
                int i13 = (int) this.downX;
                this.circleCenterX = i13;
                int i14 = (int) this.downY;
                this.circleCenterY = i14;
                this.f34102x = i13 - (this.width / 2);
                this.f34103y = i14 - (this.height / 2);
            }
            this.nowPointID = motionEvent.getPointerId(motionEvent.getActionIndex());
            this.isPressed = true;
            HmVirtualDeviceManager.get().addPointID(Integer.valueOf(this.nowPointID));
            calcAngle(motionEvent.getX(motionEvent.getActionIndex()), motionEvent.getY(motionEvent.getActionIndex()));
            if (HmVirtualDeviceManager.editMode) {
                this.editModeTouchOffsetX = motionEvent.getX(motionEvent.getActionIndex()) - this.f34102x;
                this.editModeTouchOffsetY = motionEvent.getY(motionEvent.getActionIndex()) - this.f34103y;
                this.lastX = motionEvent.getX(motionEvent.getActionIndex());
                this.lastY = motionEvent.getY(motionEvent.getActionIndex());
                this.mHmVirtualAlignLinesHelper.isMovingState = true;
            }
            return true;
        }
        return false;
    }
}
