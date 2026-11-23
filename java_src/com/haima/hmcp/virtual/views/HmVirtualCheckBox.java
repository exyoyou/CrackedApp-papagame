package com.haima.hmcp.virtual.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
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
public class HmVirtualCheckBox extends HmBaseVirtualView {
    private boolean isChecked;
    private boolean isNeedDrawText;
    private BitmapRef mCheckedBitmapRef;
    private BitmapRef mUncheckedBitmapRef;
    private int[] resIds;
    private float sensitivity;

    public HmVirtualCheckBox(HmVirtualViewBean hmVirtualViewBean, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        super(hmVirtualViewBean, context, hmVirtualViewListener, i10);
        this.mCheckedBitmapRef = new BitmapRef();
        this.mUncheckedBitmapRef = new BitmapRef();
        this.sensitivity = 1.0f;
        if (this.isRight) {
            this.isChecked = false;
            if (hmVirtualViewBean != null) {
                Float sensitivity = hmVirtualViewBean.getSensitivity();
                LogUtils.i(this.TAG, "HmVirtualCheckBox init sens  = " + sensitivity);
                if (sensitivity != null && sensitivity.floatValue() >= 0.0f) {
                    this.sensitivity = sensitivity.floatValue();
                }
                setChecked(hmVirtualViewBean.sensitivityFnBtnChecked);
            }
            initBitmap();
        }
    }

    private int[] getCheckBoxBgID() {
        return new int[]{R.mipmap.hm_vir_checkbox_checked, R.mipmap.hm_vir_checkbox_unchecked};
    }

    private void initBitmap() {
        this.resIds = getCheckBoxBgID();
        this.isNeedDrawText = true;
        initCheckBoxBitmap();
    }

    private void initCheckBoxBitmap() {
        String picSelectedMD5;
        String picUnselectedMD5;
        String picSelectedUrl;
        String picUnselectedUrl;
        int i10;
        int i11;
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        if (hmVirtualViewBean != null) {
            picSelectedMD5 = hmVirtualViewBean.getPicSelectedMD5();
            picUnselectedMD5 = this.viewBean.getPicUnselectedMD5();
            picSelectedUrl = this.viewBean.getPicSelectedUrl();
            picUnselectedUrl = this.viewBean.getPicUnselectedUrl();
        } else {
            picSelectedMD5 = null;
            picUnselectedMD5 = null;
            picSelectedUrl = null;
            picUnselectedUrl = null;
        }
        HmVirtualViewBean hmVirtualViewBean2 = this.viewBean;
        if (hmVirtualViewBean2 == null || hmVirtualViewBean2.getScale() != 0.0f) {
            i10 = this.width;
            i11 = this.height;
        } else {
            LogUtils.i(this.TAG, "scale is 0, bitmap width = 1, height = 1");
            i10 = 1;
            i11 = 1;
        }
        Bitmap bitmapSync = !TextUtils.isEmpty(picSelectedUrl) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(picSelectedUrl, i10, i11) : null;
        if (bitmapSync != null) {
            this.mCheckedBitmapRef.setDefault(bitmapSync);
            LogUtils.d(this.TAG, "initCheckBoxBitmap: use cached network bitmap for CHECKED state, url=" + picSelectedUrl);
        } else {
            this.mCheckedBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picSelectedMD5, this.resIds[0], i10, i11));
            if (!TextUtils.isEmpty(picSelectedUrl)) {
                registerDownloadListener(picSelectedUrl, i10, i11, this.mCheckedBitmapRef);
            }
        }
        Bitmap bitmapSync2 = TextUtils.isEmpty(picUnselectedUrl) ? null : HmNetworkBitmapLoader.getInstance().getBitmapSync(picUnselectedUrl, i10, i11);
        if (bitmapSync2 == null) {
            this.mUncheckedBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, picUnselectedMD5, this.resIds[1], i10, i11));
            if (TextUtils.isEmpty(picUnselectedUrl)) {
                return;
            }
            registerDownloadListener(picUnselectedUrl, i10, i11, this.mUncheckedBitmapRef);
            return;
        }
        this.mUncheckedBitmapRef.setDefault(bitmapSync2);
        LogUtils.d(this.TAG, "initCheckBoxBitmap: use cached network bitmap for UNCHECKED state, url=" + picUnselectedUrl);
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void changeName(String str) {
        super.changeName(str);
        initBitmap();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void changeScale(float f10) {
        super.changeScale(f10);
        initCheckBoxBitmap();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean draw(Canvas canvas) {
        boolean z10 = false;
        if (super.draw(canvas)) {
            return false;
        }
        Bitmap bitmap = this.mCheckedBitmapRef.get();
        Bitmap bitmap2 = this.mUncheckedBitmapRef.get();
        if (bitmap == null || bitmap2 == null) {
            return false;
        }
        try {
            if (HmVirtualDeviceManager.editMode) {
                if (!Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION || this.isEditMode) {
                    if (!this.isChecked) {
                        bitmap = bitmap2;
                    }
                    canvas.drawBitmap(bitmap, this.f34102x, this.f34103y, this.mBitmapPaint);
                } else {
                    if (!this.isChecked) {
                        bitmap = bitmap2;
                    }
                    this.bitmap = bitmap;
                    drawBitmapAnim(canvas);
                }
                this.mHmVirtualAlignLinesHelper.drawAlignLines(canvas);
            } else {
                if (!this.isChecked) {
                    bitmap = bitmap2;
                }
                canvas.drawBitmap(bitmap, this.f34102x, this.f34103y, this.mBitmapPaint);
            }
            HmVirtualViewBean hmVirtualViewBean = this.viewBean;
            if (hmVirtualViewBean != null && hmVirtualViewBean.getHideText()) {
                z10 = true;
            }
            if (!z10 && this.isNeedDrawText) {
                int iAbs = this.f34103y + (this.height / 2) + ((int) (Math.abs(this.mTextPaint.ascent() + this.mTextPaint.descent()) / 2.0f));
                if (this.needShowRawKey && HmVirtualDeviceManager.showRawKey) {
                    iAbs -= this.textShowRawOffsetY;
                    if (HmVirtualDeviceManager.editMode && Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION && !this.isEditMode) {
                        drawTextAnim(canvas, this.rawName, this.f34102x + (this.width / 2.0f), iAbs + (this.mTextPaint.getTextSize() / 2.0f) + (this.height / 8.0f), this.mRawTextPaint, true);
                    } else {
                        canvas.drawText(this.rawName, this.f34102x + (this.width / 2.0f), iAbs + (this.mTextPaint.getTextSize() / 2.0f) + (this.height / 8.0f), this.mRawTextPaint);
                    }
                }
                if (HmVirtualDeviceManager.editMode && Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION && !this.isEditMode) {
                    drawTextAnim(canvas, this.name, this.f34102x + (this.width / 2.0f), iAbs, this.mTextPaint, false);
                } else {
                    canvas.drawText(this.name, this.f34102x + (this.width / 2.0f), iAbs, this.mTextPaint);
                }
            }
        } catch (Exception e10) {
            LogUtils.e(this.TAG, "drawCheckBoxError : " + e10.getMessage());
        }
        return true;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    protected Bitmap getCurrentDisplayBitmap() {
        return this.isChecked ? this.mCheckedBitmapRef.get() : this.mUncheckedBitmapRef.get();
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void notifyBaseScale() {
        super.notifyBaseScale();
        initCheckBoxBitmap();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x009e  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:50:0x00de  */
    /* JADX WARN: Code duplicated, block: B:57:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:60:0x0114  */
    /* JADX WARN: Code duplicated, block: B:66:0x0132  */
    /* JADX WARN: Code duplicated, block: B:69:0x016e  */
    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean onTouchEvent(MotionEvent motionEvent) {
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
                if (this.viewListener != null) {
                    if (!HmVirtualDeviceManager.editMode) {
                        toggle();
                    } else if (SystemClock.uptimeMillis() - this.downTime < this.INTERVAL && Math.abs(x10 - this.downX) < 10.0f && Math.abs(y10 - this.downY) < 10.0f) {
                        this.viewListener.onClickListener(this);
                    }
                }
                if (HmVirtualDeviceManager.editMode) {
                    checkPosition();
                    updateRect();
                }
                HmVirtualDeviceManager.get().removePointID(Integer.valueOf(this.nowPointID));
                this.nowPointID = -1;
                return true;
            }
        } else if (actionMasked == 2) {
            HmVirtualViewListener hmVirtualViewListener = this.viewListener;
            if (hmVirtualViewListener != null && this.isPressed) {
                hmVirtualViewListener.onViewEdit();
                if (Math.abs(motionEvent.getX() - this.lastX) > 10.0f || Math.abs(motionEvent.getY() - this.lastY) > 10.0f) {
                    this.viewListener.onBtnMoveEvent(this);
                }
            }
            if (this.isPressed && HmVirtualDeviceManager.editMode) {
                for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                    if (motionEvent.getPointerId(i10) == this.nowPointID) {
                        this.f34102x = (int) (motionEvent.getX(i10) - this.editModeTouchOffsetX);
                        this.f34103y = (int) (motionEvent.getY(i10) - this.editModeTouchOffsetY);
                        this.lastX = motionEvent.getX(i10);
                        this.lastY = motionEvent.getY(i10);
                        updateRect();
                        this.mHmVirtualAlignLinesHelper.updateAlignLinesView(this.f34102x, this.f34103y, this.width, this.height);
                        this.mHmVirtualAlignLinesHelper.isMovingState = true;
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
                if (this.viewListener != null) {
                    if (!HmVirtualDeviceManager.editMode) {
                        toggle();
                    } else if (SystemClock.uptimeMillis() - this.downTime < this.INTERVAL) {
                        this.viewListener.onClickListener(this);
                    }
                }
                if (HmVirtualDeviceManager.editMode) {
                    checkPosition();
                    updateRect();
                }
                HmVirtualDeviceManager.get().removePointID(Integer.valueOf(this.nowPointID));
                this.nowPointID = -1;
                return true;
            }
        } else if (actionMasked != 5) {
            if (actionMasked == 6) {
                this.mHmVirtualAlignLinesHelper.isMovingState = false;
                if (this.isPressed) {
                    this.isPressed = false;
                    float x12 = motionEvent.getX(motionEvent.getActionIndex());
                    float y12 = motionEvent.getY(motionEvent.getActionIndex());
                    if (this.viewListener != null) {
                        if (!HmVirtualDeviceManager.editMode) {
                            toggle();
                        } else if (SystemClock.uptimeMillis() - this.downTime < this.INTERVAL) {
                            this.viewListener.onClickListener(this);
                        }
                    }
                    if (HmVirtualDeviceManager.editMode) {
                        checkPosition();
                        updateRect();
                    }
                    HmVirtualDeviceManager.get().removePointID(Integer.valueOf(this.nowPointID));
                    this.nowPointID = -1;
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

    public void setChecked(boolean z10) {
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        if (hmVirtualViewBean != null) {
            hmVirtualViewBean.sensitivityFnBtnChecked = z10;
        }
        this.isChecked = z10;
        HmVirtualViewListener hmVirtualViewListener = this.viewListener;
        if (hmVirtualViewListener != null) {
            hmVirtualViewListener.onCheckBoxStateChanged(z10, this.sensitivity);
        }
    }

    public void toggle() {
        setChecked(!this.isChecked);
    }
}
