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
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.listeners.HmVirtualViewListener;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualDirection extends HmBaseVirtualView {
    private int angle;
    private int circleCenterX;
    private int circleCenterY;
    private int lastDirection;
    private BitmapRef mBitmapArrowDownRef;
    private BitmapRef mBitmapArrowUpRef;
    private BitmapRef mBitmapDirectionOuterRef;
    private int mLoadedCount;
    private Bitmap mPendingArrowDownBitmap;
    private Bitmap mPendingArrowUpBitmap;
    private Bitmap mPendingOuterBitmap;

    public HmVirtualDirection(HmVirtualViewBean hmVirtualViewBean, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        super(hmVirtualViewBean, context, hmVirtualViewListener, i10);
        this.mBitmapArrowDownRef = new BitmapRef();
        this.mBitmapArrowUpRef = new BitmapRef();
        this.mBitmapDirectionOuterRef = new BitmapRef();
        this.lastDirection = 0;
        this.mPendingArrowDownBitmap = null;
        this.mPendingArrowUpBitmap = null;
        this.mPendingOuterBitmap = null;
        this.mLoadedCount = 0;
        LogUtils.e(this.TAG, " HmVirtualDirection init");
        if (this.isRight) {
            initWH();
        }
    }

    private void calcAngle(float f10, float f11) {
        this.angle = (int) HmVirtualDeviceUtils.getAngle(f10, f11, this.circleCenterX, this.circleCenterY);
        int iCalcEightDirection = calcEightDirection();
        HmVirtualViewListener hmVirtualViewListener = this.viewListener;
        if (hmVirtualViewListener != null && !HmVirtualDeviceManager.editMode) {
            hmVirtualViewListener.onRockerTouchEvent(0, this.viewBean.getKeys(), -1, this.viewBean.getKeyType(), iCalcEightDirection, this.lastDirection, 0.0f, 0.0f);
        }
        this.lastDirection = iCalcEightDirection;
    }

    private void drawArrow(Canvas canvas, int i10, int i11, float f10, boolean z10) {
        Bitmap bitmap = this.mBitmapArrowDownRef.get();
        Bitmap bitmap2 = this.mBitmapArrowUpRef.get();
        if (bitmap == null || bitmap2 == null) {
            return;
        }
        if (!z10) {
            bitmap = bitmap2;
        }
        Matrix matrix = new Matrix();
        matrix.postTranslate((-bitmap.getWidth()) / 2.0f, (-bitmap.getHeight()) / 2.0f);
        if (!Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION || this.isEditMode) {
            float f11 = i10;
            float f12 = i11;
            matrix.postTranslate(f11, f12);
            matrix.postRotate(f10, f11, f12);
        } else {
            float f13 = i10;
            float f14 = this.offsetAnim;
            float f15 = i11;
            matrix.postTranslate(f13 + f14, f14 + f15);
            float f16 = f10 + this.currentAngle;
            float f17 = this.offsetAnim;
            matrix.postRotate(f16, f13 + f17, f15 + f17);
        }
        canvas.drawBitmap(bitmap, matrix, this.mBitmapPaint);
    }

    private void drawDirectionBitmap(Canvas canvas, boolean z10) {
        int i10;
        int i11;
        int i12;
        int i13;
        drawArrow(canvas, this.circleCenterX, this.circleCenterY - (this.width / 4), 0.0f, z10 && ((i13 = this.lastDirection) == 300 || i13 == 400 || i13 == 200));
        drawArrow(canvas, this.circleCenterX, this.circleCenterY + (this.width / 4), 180.0f, z10 && ((i12 = this.lastDirection) == 700 || i12 == 600 || i12 == 800));
        drawArrow(canvas, this.circleCenterX - (this.width / 4), this.circleCenterY, 270.0f, z10 && ((i11 = this.lastDirection) == 500 || i11 == 400 || i11 == 600));
        drawArrow(canvas, this.circleCenterX + (this.width / 4), this.circleCenterY, 90.0f, z10 && ((i10 = this.lastDirection) == 100 || i10 == 200 || i10 == 800));
        drawOuter(canvas);
    }

    private void drawOuter(Canvas canvas) {
        int i10;
        Bitmap bitmap = this.mBitmapDirectionOuterRef.get();
        if (bitmap == null) {
            return;
        }
        Matrix matrix = new Matrix();
        matrix.postTranslate((-bitmap.getWidth()) / 2.0f, (-bitmap.getHeight()) / 2.0f);
        matrix.postTranslate(this.circleCenterX, this.circleCenterY);
        int i11 = this.lastDirection;
        if (i11 == 200) {
            i10 = 90;
        } else if (i11 == 400) {
            i10 = 0;
        } else if (i11 != 600) {
            i10 = i11 != 800 ? -1 : 180;
        } else {
            i10 = 270;
        }
        if (i10 >= 0) {
            matrix.postRotate(i10, this.circleCenterX, this.circleCenterY);
            canvas.drawBitmap(bitmap, matrix, this.mBitmapPaint);
        }
    }

    private void initWH() {
        if (this.width != this.height) {
            LogUtils.e(this.TAG, " handle error width != height  give width to height");
            this.height = this.width;
            checkPosition();
            updateRect();
        }
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        if (hmVirtualViewBean != null) {
            this.mBitmapArrowDownRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, hmVirtualViewBean.getPicSelectedMD5(), R.mipmap.hm_vir_direction_arrow_pressed, this.width, this.height / 2));
            this.mBitmapArrowUpRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, this.viewBean.getPicUnselectedMD5(), R.mipmap.hm_vir_direction_arrow_unpressed, this.width, this.height / 2));
            this.mBitmapDirectionOuterRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, this.viewBean.getCrossPicRockerDirectionMD5(), R.mipmap.hm_vir_direction_arrow_outer, this.width, this.height));
            final String picSelectedUrl = this.viewBean.getPicSelectedUrl();
            final String picUnselectedUrl = this.viewBean.getPicUnselectedUrl();
            final String crossPicRockerDirectionUrl = this.viewBean.getCrossPicRockerDirectionUrl();
            if ((TextUtils.isEmpty(picSelectedUrl) || TextUtils.isEmpty(picUnselectedUrl) || TextUtils.isEmpty(crossPicRockerDirectionUrl)) ? false : true) {
                this.mPendingArrowDownBitmap = null;
                this.mPendingArrowUpBitmap = null;
                this.mPendingOuterBitmap = null;
                this.mLoadedCount = 0;
                Bitmap bitmapSync = HmNetworkBitmapLoader.getInstance().getBitmapSync(picSelectedUrl, this.width, this.height / 2);
                Bitmap bitmapSync2 = HmNetworkBitmapLoader.getInstance().getBitmapSync(picUnselectedUrl, this.width, this.height / 2);
                Bitmap bitmapSync3 = HmNetworkBitmapLoader.getInstance().getBitmapSync(crossPicRockerDirectionUrl, this.width, this.height);
                if (bitmapSync == null || bitmapSync2 == null || bitmapSync3 == null) {
                    HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, picSelectedUrl, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDirection.1
                        @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                        public void onDownloadComplete(String str, Bitmap bitmap) {
                            if (bitmap != null) {
                                HmVirtualDirection hmVirtualDirection = HmVirtualDirection.this;
                                hmVirtualDirection.onNetworkBitmapLoaded(0, HmVirtualDeviceUtils.scaledBitmap(bitmap, hmVirtualDirection.width, hmVirtualDirection.height / 2));
                            }
                        }

                        @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                        public void onDownloadFailed(String str, String str2) {
                            LogUtils.d(HmVirtualDirection.this.TAG, "initWH: preload failed for arrowDown, url=" + picSelectedUrl + ", error=" + str2);
                        }
                    }, this.width, this.height / 2);
                    HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, picUnselectedUrl, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDirection.2
                        @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                        public void onDownloadComplete(String str, Bitmap bitmap) {
                            if (bitmap != null) {
                                HmVirtualDirection hmVirtualDirection = HmVirtualDirection.this;
                                hmVirtualDirection.onNetworkBitmapLoaded(1, HmVirtualDeviceUtils.scaledBitmap(bitmap, hmVirtualDirection.width, hmVirtualDirection.height / 2));
                            }
                        }

                        @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                        public void onDownloadFailed(String str, String str2) {
                            LogUtils.d(HmVirtualDirection.this.TAG, "initWH: preload failed for arrowUp, url=" + picUnselectedUrl + ", error=" + str2);
                        }
                    }, this.width, this.height / 2);
                    HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, crossPicRockerDirectionUrl, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDirection.3
                        @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                        public void onDownloadComplete(String str, Bitmap bitmap) {
                            if (bitmap != null) {
                                HmVirtualDirection hmVirtualDirection = HmVirtualDirection.this;
                                hmVirtualDirection.onNetworkBitmapLoaded(2, HmVirtualDeviceUtils.scaledBitmap(bitmap, hmVirtualDirection.width, hmVirtualDirection.height));
                            }
                        }

                        @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                        public void onDownloadFailed(String str, String str2) {
                            LogUtils.d(HmVirtualDirection.this.TAG, "initWH: preload failed for outer, url=" + crossPicRockerDirectionUrl + ", error=" + str2);
                        }
                    }, this.width, this.height);
                    LogUtils.d(this.TAG, "initWH: registered listeners for three bitmaps, waiting for preload");
                } else {
                    this.mBitmapArrowDownRef.setDefault(bitmapSync);
                    this.mBitmapArrowUpRef.setDefault(bitmapSync2);
                    this.mBitmapDirectionOuterRef.setDefault(bitmapSync3);
                    LogUtils.d(this.TAG, "initWH: all three network bitmaps cached, applied directly");
                }
            }
        }
        updateCirclePosition();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkBitmapLoaded(int i10, Bitmap bitmap) {
        try {
            if (bitmap == null) {
                LogUtils.w(this.TAG, "Network bitmap loaded but is null, index: " + i10);
                return;
            }
            if (i10 == 0) {
                this.mPendingArrowDownBitmap = bitmap;
            } else if (i10 == 1) {
                this.mPendingArrowUpBitmap = bitmap;
            } else if (i10 == 2) {
                this.mPendingOuterBitmap = bitmap;
            }
            this.mLoadedCount++;
            LogUtils.d(this.TAG, "Network bitmap loaded, index: " + i10 + ", progress: " + this.mLoadedCount + "/3");
            if (this.mLoadedCount == 3 && this.mPendingArrowDownBitmap != null && this.mPendingArrowUpBitmap != null && this.mPendingOuterBitmap != null) {
                LogUtils.d(this.TAG, "All three network bitmaps loaded successfully, applying to UI");
                this.mBitmapArrowDownRef.setNetwork(this.mPendingArrowDownBitmap);
                this.mBitmapArrowUpRef.setNetwork(this.mPendingArrowUpBitmap);
                this.mBitmapDirectionOuterRef.setNetwork(this.mPendingOuterBitmap);
                this.mPendingArrowDownBitmap = null;
                this.mPendingArrowUpBitmap = null;
                this.mPendingOuterBitmap = null;
                this.mLoadedCount = 0;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void updateCirclePosition() {
        this.circleCenterX = this.f34102x + (this.width / 2);
        this.circleCenterY = this.f34103y + (this.height / 2);
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
        try {
            if (HmVirtualDeviceManager.editMode) {
                drawDirectionBitmap(canvas, false);
                this.mHmVirtualAlignLinesHelper.drawAlignLines(canvas);
                if (this.isEditMode) {
                    drawDirectionBitmap(canvas, true);
                }
            } else if (this.isPressed) {
                drawDirectionBitmap(canvas, true);
            } else {
                drawDirectionBitmap(canvas, false);
            }
        } catch (Exception e10) {
            LogUtils.e(this.TAG, "drawHandleError : " + e10.getMessage());
        }
        return true;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    protected Bitmap getCurrentDisplayBitmap() {
        return this.mBitmapDirectionOuterRef.get();
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

    /* JADX WARN: Code duplicated, block: B:39:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00da  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:57:0x0130  */
    /* JADX WARN: Code duplicated, block: B:59:0x013a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0158  */
    /* JADX WARN: Code duplicated, block: B:68:0x01a7  */
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
                float x10 = motionEvent.getX(motionEvent.getActionIndex());
                float y10 = motionEvent.getY(motionEvent.getActionIndex());
                hmVirtualViewListener = this.viewListener;
                if (hmVirtualViewListener != null) {
                    if (!HmVirtualDeviceManager.editMode) {
                        hmVirtualViewListener.onRockerTouchEvent(1, this.viewBean.getKeys(), -1, this.viewBean.getKeyType(), this.lastDirection, -1, 0.0f, 0.0f);
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
                for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                    if (motionEvent.getPointerId(i10) == this.nowPointID) {
                        calcAngle(motionEvent.getX(i10), motionEvent.getY(i10));
                        if (HmVirtualDeviceManager.editMode) {
                            this.f34102x = (int) (motionEvent.getX(i10) - this.editModeTouchOffsetX);
                            this.f34103y = (int) (motionEvent.getY(i10) - this.editModeTouchOffsetY);
                            this.lastX = motionEvent.getX(i10);
                            this.lastY = motionEvent.getY(i10);
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
                float x11 = motionEvent.getX(motionEvent.getActionIndex());
                float y11 = motionEvent.getY(motionEvent.getActionIndex());
                hmVirtualViewListener = this.viewListener;
                if (hmVirtualViewListener != null) {
                    if (!HmVirtualDeviceManager.editMode) {
                        hmVirtualViewListener.onRockerTouchEvent(1, this.viewBean.getKeys(), -1, this.viewBean.getKeyType(), this.lastDirection, -1, 0.0f, 0.0f);
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
                    float x12 = motionEvent.getX(motionEvent.getActionIndex());
                    float y12 = motionEvent.getY(motionEvent.getActionIndex());
                    hmVirtualViewListener = this.viewListener;
                    if (hmVirtualViewListener != null) {
                        if (!HmVirtualDeviceManager.editMode) {
                            hmVirtualViewListener.onRockerTouchEvent(1, this.viewBean.getKeys(), -1, this.viewBean.getKeyType(), this.lastDirection, -1, 0.0f, 0.0f);
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
