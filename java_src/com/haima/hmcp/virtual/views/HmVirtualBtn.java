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
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.listeners.HmVirtualViewListener;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualBtn extends HmBaseVirtualView {
    private boolean isMouse;
    private boolean isNeedDrawText;
    private BitmapRef mDownBitmapRef;
    private BitmapRef mUpBitmapRef;
    private int mouseLastX;
    private int mouseLastY;
    private int[] resIds;

    public HmVirtualBtn(HmVirtualViewBean hmVirtualViewBean, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        super(hmVirtualViewBean, context, hmVirtualViewListener, i10);
        this.mDownBitmapRef = new BitmapRef();
        this.mUpBitmapRef = new BitmapRef();
        if (this.isRight) {
            initBitmap();
        }
    }

    private void initBitmap() {
        int[] btnBgID = HmVirtualDeviceUtils.getBtnBgID(this.name, this.sourceType, this.viewBean.getKeyType());
        this.resIds = btnBgID;
        int i10 = btnBgID[0];
        this.isNeedDrawText = (i10 == R.mipmap.hm_vir_xbox_start_down || i10 == R.mipmap.hm_vir_xbox_select_down || i10 == R.mipmap.hm_vir_mouse_wheel_top_down || i10 == R.mipmap.hm_vir_mouse_wheel_bottom_down) ? false : true;
        if (this.viewBean.getKeyType() >= 8 && this.viewBean.getKeyType() <= 10) {
            this.isMouse = true;
            this.isNeedDrawText = false;
        }
        initPressBitmap();
    }

    private void initPressBitmap() {
        int keyType;
        String pic_common_bg_selected_MD5;
        String pic_common_bg_unselected_MD5;
        String pic_common_bg_selected_url;
        String pic_common_bg_unselected_url;
        HmVirtualLayoutBean layoutBean;
        HmVirtualLayoutBean.ConfigDTO config;
        HmVirtualLayoutBean layoutBean2;
        HmVirtualLayoutBean.ConfigDTO config2;
        int i10;
        int i11;
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        if (hmVirtualViewBean != null) {
            pic_common_bg_selected_MD5 = hmVirtualViewBean.getPicSelectedMD5();
            pic_common_bg_unselected_MD5 = this.viewBean.getPicUnselectedMD5();
            pic_common_bg_selected_url = this.viewBean.getPicSelectedUrl();
            pic_common_bg_unselected_url = this.viewBean.getPicUnselectedUrl();
            keyType = this.viewBean.getKeyType();
        } else {
            keyType = -1;
            pic_common_bg_selected_MD5 = null;
            pic_common_bg_unselected_MD5 = null;
            pic_common_bg_selected_url = null;
            pic_common_bg_unselected_url = null;
        }
        if ((TextUtils.isEmpty(pic_common_bg_selected_url) || TextUtils.isEmpty(pic_common_bg_unselected_url)) && !isMouseKeyType(keyType) && (layoutBean = HmVirtualDeviceManager.get().getLayoutBean()) != null && (config = layoutBean.getConfig()) != null && (TextUtils.isEmpty(pic_common_bg_selected_MD5) || TextUtils.isEmpty(pic_common_bg_unselected_MD5))) {
            pic_common_bg_selected_url = config.getPic_common_bg_selected_url();
            pic_common_bg_unselected_url = config.getPic_common_bg_unselected_url();
        }
        if ((TextUtils.isEmpty(pic_common_bg_selected_MD5) || TextUtils.isEmpty(pic_common_bg_unselected_MD5)) && !isMouseKeyType(keyType) && (layoutBean2 = HmVirtualDeviceManager.get().getLayoutBean()) != null && (config2 = layoutBean2.getConfig()) != null) {
            pic_common_bg_selected_MD5 = config2.getPic_common_bg_selected_MD5();
            pic_common_bg_unselected_MD5 = config2.getPic_common_bg_unselected_MD5();
        }
        if (this.viewBean.getScale() == 0.0f) {
            LogUtils.i(this.TAG, "scale is 0, bitmap width = 1, height = 1");
            i10 = 1;
            i11 = 1;
        } else {
            i10 = this.width;
            i11 = this.height;
        }
        Bitmap bitmapSync = !TextUtils.isEmpty(pic_common_bg_selected_url) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(pic_common_bg_selected_url, i10, i11) : null;
        if (bitmapSync != null) {
            this.mDownBitmapRef.setDefault(bitmapSync);
            LogUtils.d(this.TAG, "initPressBitmap: use cached network bitmap for DOWN state, url=" + pic_common_bg_selected_url);
        } else {
            this.mDownBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, pic_common_bg_selected_MD5, this.resIds[0], i10, i11));
            if (!TextUtils.isEmpty(pic_common_bg_selected_url)) {
                registerDownloadListener(pic_common_bg_selected_url, i10, i11, this.mDownBitmapRef);
            }
        }
        Bitmap bitmapSync2 = TextUtils.isEmpty(pic_common_bg_unselected_url) ? null : HmNetworkBitmapLoader.getInstance().getBitmapSync(pic_common_bg_unselected_url, i10, i11);
        if (bitmapSync2 == null) {
            this.mUpBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, pic_common_bg_unselected_MD5, this.resIds[1], i10, i11));
            if (TextUtils.isEmpty(pic_common_bg_unselected_url)) {
                return;
            }
            registerDownloadListener(pic_common_bg_unselected_url, i10, i11, this.mUpBitmapRef);
            return;
        }
        this.mUpBitmapRef.setDefault(bitmapSync2);
        LogUtils.d(this.TAG, "initPressBitmap: use cached network bitmap for UP state, url=" + pic_common_bg_unselected_url);
    }

    private boolean isMouseKeyType(int i10) {
        return i10 == 8 || i10 == 9 || i10 == 10 || i10 == 11 || i10 == 12;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void changeName(String str) {
        super.changeName(str);
        initBitmap();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void changeScale(float f10) {
        super.changeScale(f10);
        initPressBitmap();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean draw(Canvas canvas) {
        boolean z10;
        boolean z11 = false;
        if (super.draw(canvas)) {
            return false;
        }
        Bitmap bitmap = this.mDownBitmapRef.get();
        Bitmap bitmap2 = this.mUpBitmapRef.get();
        if (bitmap == null || bitmap2 == null) {
            return false;
        }
        try {
            if (HmVirtualDeviceManager.editMode) {
                if (!Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION || (z10 = this.isEditMode)) {
                    if (!this.isEditMode) {
                        bitmap = bitmap2;
                    }
                    canvas.drawBitmap(bitmap, this.f34102x, this.f34103y, this.mBitmapPaint);
                } else {
                    if (!z10) {
                        bitmap = bitmap2;
                    }
                    this.bitmap = bitmap;
                    drawBitmapAnim(canvas);
                }
                this.mHmVirtualAlignLinesHelper.drawAlignLines(canvas);
            } else {
                if (!this.isPressed) {
                    bitmap = bitmap2;
                }
                canvas.drawBitmap(bitmap, this.f34102x, this.f34103y, this.mBitmapPaint);
            }
            HmVirtualViewBean hmVirtualViewBean = this.viewBean;
            if (hmVirtualViewBean != null && hmVirtualViewBean.getHideText()) {
                z11 = true;
            }
            if (!z11 && this.isNeedDrawText) {
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
            LogUtils.e(this.TAG, "drawBtnError : " + e10.getMessage());
        }
        return true;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    protected Bitmap getCurrentDisplayBitmap() {
        return this.isPressed ? this.mDownBitmapRef.get() : this.mUpBitmapRef.get();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void notifyBaseScale() {
        super.notifyBaseScale();
        initPressBitmap();
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:48:0x0109  */
    /* JADX WARN: Code duplicated, block: B:52:0x012b  */
    /* JADX WARN: Code duplicated, block: B:54:0x012f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0133  */
    /* JADX WARN: Code duplicated, block: B:57:0x0146  */
    /* JADX WARN: Code duplicated, block: B:58:0x0158  */
    /* JADX WARN: Code duplicated, block: B:60:0x0166  */
    /* JADX WARN: Code duplicated, block: B:67:0x0185  */
    /* JADX WARN: Code duplicated, block: B:70:0x019c  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:79:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:80:0x022b  */
    /* JADX WARN: Code duplicated, block: B:82:0x022f  */
    /* JADX WARN: Code duplicated, block: B:84:0x0233  */
    /* JADX WARN: Code duplicated, block: B:85:0x025a  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x00cf, please report this as an issue */
    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean onTouchEvent(MotionEvent motionEvent) {
        HmVirtualViewListener hmVirtualViewListener;
        HmVirtualViewListener hmVirtualViewListener2;
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
                } else {
                    hmVirtualViewListener = this.viewListener;
                    if (hmVirtualViewListener != null) {
                        if (this.isMouse) {
                            this.mouseLastX = (int) motionEvent.getX(motionEvent.getActionIndex());
                            this.mouseLastY = (int) motionEvent.getY(motionEvent.getActionIndex());
                            this.viewListener.onMouseTouchEvent(0, this.viewBean.getKeyType(), 0, 0, this.nowPointID);
                        } else {
                            hmVirtualViewListener.onBtnTouchEvent(0, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType());
                        }
                    }
                }
                return true;
            }
        } else if (actionMasked == 1) {
            LogUtils.i(this.TAG, "mUpBitmapRef width = " + this.mUpBitmapRef.get().getWidth() + ", height = " + this.mUpBitmapRef.get().getHeight());
            this.mHmVirtualAlignLinesHelper.isMovingState = false;
            if (this.isPressed && motionEvent.getPointerId(motionEvent.getActionIndex()) == this.nowPointID) {
                this.isPressed = false;
                float x10 = motionEvent.getX(motionEvent.getActionIndex());
                float y10 = motionEvent.getY(motionEvent.getActionIndex());
                hmVirtualViewListener2 = this.viewListener;
                if (hmVirtualViewListener2 != null) {
                    if (HmVirtualDeviceManager.editMode) {
                        if (SystemClock.uptimeMillis() - this.downTime < this.INTERVAL && Math.abs(x10 - this.downX) < 10.0f && Math.abs(y10 - this.downY) < 10.0f) {
                            this.viewListener.onClickListener(this);
                        }
                    } else if (this.isMouse) {
                        this.mouseLastX = 0;
                        this.mouseLastY = 0;
                        hmVirtualViewListener2.onMouseTouchEvent(1, this.viewBean.getKeyType(), 0, 0, this.nowPointID);
                    } else {
                        hmVirtualViewListener2.onBtnTouchEvent(1, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType());
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
            HmVirtualViewListener hmVirtualViewListener3 = this.viewListener;
            if (hmVirtualViewListener3 != null && this.isPressed) {
                hmVirtualViewListener3.onViewEdit();
                if (Math.abs(motionEvent.getX() - this.lastX) > 10.0f || Math.abs(motionEvent.getY() - this.lastY) > 10.0f) {
                    this.viewListener.onBtnMoveEvent(this);
                }
            }
            if (this.isPressed && (this.isMouse || HmVirtualDeviceManager.editMode)) {
                for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                    if (motionEvent.getPointerId(i10) == this.nowPointID) {
                        if (HmVirtualDeviceManager.editMode) {
                            this.f34102x = (int) (motionEvent.getX(i10) - this.editModeTouchOffsetX);
                            this.f34103y = (int) (motionEvent.getY(i10) - this.editModeTouchOffsetY);
                            this.lastX = motionEvent.getX(i10);
                            this.lastY = motionEvent.getY(i10);
                            updateRect();
                            this.mHmVirtualAlignLinesHelper.updateAlignLinesView(this.f34102x, this.f34103y, this.width, this.height);
                            this.mHmVirtualAlignLinesHelper.isMovingState = true;
                        } else if (this.viewListener != null) {
                            int x11 = (int) motionEvent.getX(i10);
                            int y11 = (int) motionEvent.getY(i10);
                            this.viewListener.onMouseTouchEvent(2, this.viewBean.getKeyType(), x11 - this.mouseLastX, y11 - this.mouseLastY, this.nowPointID);
                            this.mouseLastX = x11;
                            this.mouseLastY = y11;
                        }
                        return true;
                    }
                }
            }
        } else if (actionMasked == 3) {
            LogUtils.i(this.TAG, "mUpBitmapRef width = " + this.mUpBitmapRef.get().getWidth() + ", height = " + this.mUpBitmapRef.get().getHeight());
            this.mHmVirtualAlignLinesHelper.isMovingState = false;
            if (this.isPressed) {
                this.isPressed = false;
                float x12 = motionEvent.getX(motionEvent.getActionIndex());
                float y12 = motionEvent.getY(motionEvent.getActionIndex());
                hmVirtualViewListener2 = this.viewListener;
                if (hmVirtualViewListener2 != null) {
                    if (HmVirtualDeviceManager.editMode) {
                        if (this.isMouse) {
                            this.mouseLastX = 0;
                            this.mouseLastY = 0;
                            hmVirtualViewListener2.onMouseTouchEvent(1, this.viewBean.getKeyType(), 0, 0, this.nowPointID);
                        } else {
                            hmVirtualViewListener2.onBtnTouchEvent(1, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType());
                        }
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
                LogUtils.i(this.TAG, "mUpBitmapRef width = " + this.mUpBitmapRef.get().getWidth() + ", height = " + this.mUpBitmapRef.get().getHeight());
                this.mHmVirtualAlignLinesHelper.isMovingState = false;
                if (this.isPressed) {
                    this.isPressed = false;
                    float x13 = motionEvent.getX(motionEvent.getActionIndex());
                    float y13 = motionEvent.getY(motionEvent.getActionIndex());
                    hmVirtualViewListener2 = this.viewListener;
                    if (hmVirtualViewListener2 != null) {
                        if (HmVirtualDeviceManager.editMode) {
                            if (this.isMouse) {
                                this.mouseLastX = 0;
                                this.mouseLastY = 0;
                                hmVirtualViewListener2.onMouseTouchEvent(1, this.viewBean.getKeyType(), 0, 0, this.nowPointID);
                            } else {
                                hmVirtualViewListener2.onBtnTouchEvent(1, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType());
                            }
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
            } else {
                hmVirtualViewListener = this.viewListener;
                if (hmVirtualViewListener != null) {
                    if (this.isMouse) {
                        this.mouseLastX = (int) motionEvent.getX(motionEvent.getActionIndex());
                        this.mouseLastY = (int) motionEvent.getY(motionEvent.getActionIndex());
                        this.viewListener.onMouseTouchEvent(0, this.viewBean.getKeyType(), 0, 0, this.nowPointID);
                    } else {
                        hmVirtualViewListener.onBtnTouchEvent(0, this.viewBean.getKeys(), this.sourceType, this.viewBean.getKeyType());
                    }
                }
            }
            return true;
        }
        return false;
    }
}
