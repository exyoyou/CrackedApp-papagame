package com.haima.hmcp.device.input.view;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.haima.hmcp.R;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.widgets.AbsIjkVideoView;

/* JADX INFO: loaded from: classes5.dex */
public class TcMouseView extends FrameLayout {
    private static final int MAX_OFFSET_PIXEL = 500;
    private static final int MAX_OFFSET_RATIO = 2;
    private static final String TAG = "TcMouseView";
    private boolean isLastSetByRatio;
    private GifView mGifView;
    private int mLastMouseX;
    private int mLastMouseY;
    private Bitmap mMouseBitmap;
    private TcMouseManager mMouseManager;
    private ImageView mMouseView;
    private int mMouseX;
    private int mMouseY;
    private int mMoveDis;
    private int mOffsetX;
    private int mOffsetY;
    private OnMouseListener mOnMouseListener;
    private int mResId;
    private int mType;
    private int mouseBottomOffset;
    private int mouseMeasuredHeight;
    private int mouseMeasuredWidth;
    private int mouseRightOffset;
    private float ratioX;
    private float ratioY;

    public interface OnMouseListener {
        boolean onclick(View view, KeyEvent keyEvent);
    }

    public TcMouseView(Context context) {
        super(context);
        this.isLastSetByRatio = false;
        this.ratioX = 0.0f;
        this.ratioY = 0.0f;
        this.mMouseX = 250;
        this.mMouseY = TcMouseManager.MOUSE_STARY;
        this.mLastMouseX = 250;
        this.mLastMouseY = TcMouseManager.MOUSE_STARY;
        this.mMoveDis = TcMouseManager.MOUSE_MOVE_STEP;
    }

    private Bitmap drawableToBitamp(Drawable drawable) {
        return Bitmap.createScaledBitmap(((BitmapDrawable) drawable).getBitmap(), 50, 50, true);
    }

    private int getResIdDrawable(String str) {
        int resourceId = getResourceId(str, "drawable");
        return resourceId == 0 ? getResourceId(str, "mipmap") : resourceId;
    }

    private int getResourceId(String str, String str2) {
        return ResourceManager.getInstance().getResources().getIdentifier(str, str2, getContext().getPackageName());
    }

    private void init(TcMouseManager tcMouseManager) {
        this.mMouseManager = tcMouseManager;
        Resources resources = ResourceManager.getInstance().getResources();
        int i10 = R.mipmap.haima_hmcp_icon_shubiao;
        this.mMouseBitmap = drawableToBitamp(resources.getDrawable(i10));
        this.mResId = i10;
        ImageView imageView = new ImageView(getContext());
        this.mMouseView = imageView;
        imageView.setImageBitmap(this.mMouseBitmap);
        addView(this.mMouseView, new FrameLayout.LayoutParams(-2, -2));
        initOffset(this.mMouseBitmap.getWidth(), this.mMouseBitmap.getHeight());
        this.mouseRightOffset = this.mOffsetX;
        this.mouseBottomOffset = this.mOffsetY;
    }

    private void initOffset(int i10, int i11) {
        this.mOffsetX = (i10 * 30) / 84;
        this.mOffsetY = (i11 * 20) / 97;
    }

    private void mouseDown() {
        this.mMouseY = Math.min(this.mMouseY + this.mMoveDis, getMeasuredHeight() - this.mouseBottomOffset);
    }

    private void mouseLeft() {
        this.mMouseX = Math.max(this.mMouseX - this.mMoveDis, 0);
    }

    private void mouseRight() {
        this.mMouseX = Math.min(this.mMouseX + this.mMoveDis, getMeasuredWidth() - this.mouseRightOffset);
    }

    private void mouseUp() {
        this.mMouseY = Math.max(this.mMouseY - this.mMoveDis, 0);
    }

    private Bitmap rotateBitmap(Bitmap bitmap, float f10) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setRotate(f10);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        if (bitmapCreateBitmap.equals(bitmap)) {
            return bitmapCreateBitmap;
        }
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    private void rotateGifView(boolean z10) {
        GifView gifView = this.mGifView;
        float[] fArr = new float[1];
        fArr[0] = z10 ? -90.0f : 0.0f;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(gifView, "rotation", fArr);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.mGifView, "scaleX", 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.mGifView, "scaleY", 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3);
        animatorSet.setDuration(260L);
        animatorSet.start();
    }

    private void scrollView(KeyEvent keyEvent) {
        if (this.mMouseManager.getCurrentActivityType() == 0) {
            if (keyEvent.getKeyCode() != 19) {
                keyEvent.getKeyCode();
            }
            dispatchKeyEvent(keyEvent);
        }
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0032  */
    /* JADX WARN: Code duplicated, block: B:8:0x0036  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        OnMouseListener onMouseListener;
        LogUtils.i("dispatchKeyEvent", "dispatchKeyEvent(), action=" + keyEvent.getAction() + " keycode=" + keyEvent.getKeyCode());
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 96) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    onMouseListener = this.mOnMouseListener;
                    if (onMouseListener != null) {
                        return onMouseListener.onclick(this, keyEvent);
                    }
                    break;
            }
        } else {
            onMouseListener = this.mOnMouseListener;
            if (onMouseListener != null) {
                return onMouseListener.onclick(this, keyEvent);
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public OnMouseListener getOnMouseListener() {
        return this.mOnMouseListener;
    }

    public void moveMouse(KeyEvent keyEvent, float f10) {
        moveMouse(keyEvent.getKeyCode(), f10);
    }

    public void onCenterButtonClicked(KeyEvent keyEvent) {
        int i10;
        int height;
        int width;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onCenterButtonClicked mMouseX:");
        sb2.append(this.mMouseX);
        sb2.append(" mMouseY:");
        sb2.append(this.mMouseY);
        sb2.append("mOffsetY: ");
        sb2.append(this.mOffsetY);
        sb2.append(" mGifView getHeight:");
        GifView gifView = this.mGifView;
        int height2 = 0;
        sb2.append(gifView != null ? gifView.getHeight() : 0);
        sb2.append(" ");
        GifView gifView2 = this.mGifView;
        sb2.append(gifView2 != null ? gifView2.getWidth() : 0);
        sb2.append("mType = ");
        sb2.append(this.mType);
        LogUtils.d("setMouseIcon", sb2.toString());
        TcMouseManager tcMouseManager = this.mMouseManager;
        int i11 = this.mMouseX;
        if (AbsIjkVideoView.TV_ROTATE) {
            if (this.mType == 1) {
                height = this.mGifView.getHeight();
                width = this.mGifView.getWidth();
            } else {
                height = this.mMouseBitmap.getHeight();
                width = this.mMouseBitmap.getWidth();
            }
            i10 = height - width;
        } else {
            i10 = 0;
        }
        int i12 = i11 + i10;
        int i13 = this.mMouseY;
        if (AbsIjkVideoView.TV_ROTATE) {
            height2 = this.mType == 1 ? this.mGifView.getHeight() : (this.mOffsetY * 97) / 20;
        }
        tcMouseManager.sendCenterClickEvent(i12, i13 + height2, keyEvent.getAction());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ImageView imageView = this.mMouseView;
        if (imageView != null) {
            int i14 = this.mMouseX;
            imageView.layout(i14, this.mMouseY, imageView.getMeasuredWidth() + i14, this.mMouseY + this.mMouseView.getMeasuredHeight());
        }
        GifView gifView = this.mGifView;
        if (gifView != null) {
            int i15 = this.mMouseX;
            gifView.layout(i15, this.mMouseY, gifView.getMeasuredWidth() + i15, this.mMouseY + this.mGifView.getMeasuredHeight());
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        Bitmap bitmap;
        super.onMeasure(i10, i11);
        ImageView imageView = this.mMouseView;
        if (imageView != null && (bitmap = this.mMouseBitmap) != null) {
            imageView.measure(View.MeasureSpec.makeMeasureSpec(bitmap.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.mMouseBitmap.getHeight(), 1073741824));
        }
        GifView gifView = this.mGifView;
        if (gifView != null) {
            gifView.measure(View.MeasureSpec.makeMeasureSpec(gifView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.mGifView.getMeasuredHeight(), 1073741824));
        }
        ImageView imageView2 = this.mMouseView;
        if (imageView2 != null) {
            this.mouseMeasuredWidth = imageView2.getMeasuredWidth();
            this.mouseMeasuredHeight = this.mMouseView.getMeasuredHeight();
        }
        if (this.isLastSetByRatio) {
            setMouseOffSetRatio(this.ratioX, this.ratioY);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        GifView gifView = this.mGifView;
        if (gifView != null) {
            gifView.setVisibility(i10);
            if (this.mGifView.getVisibility() == 0) {
                this.mGifView.play();
            }
        }
    }

    public void rotateMouseView(boolean z10) {
        if (this.mType == 1) {
            rotateGifView(z10);
            return;
        }
        Bitmap bitmap = this.mMouseBitmap;
        if (bitmap == null || (bitmap.isRecycled() && this.mResId > 0)) {
            this.mMouseBitmap = drawableToBitamp(ResourceManager.getInstance().getResources().getDrawable(this.mResId));
        }
        this.mMouseView.setImageBitmap(rotateBitmap(this.mMouseBitmap, z10 ? -90.0f : 0.0f));
    }

    public void setMouseBitmap(Bitmap bitmap) {
        ImageView imageView;
        if (this.mMouseBitmap == null || (imageView = this.mMouseView) == null) {
            return;
        }
        this.mMouseBitmap = bitmap;
        imageView.setImageBitmap(bitmap);
        initOffset(this.mMouseBitmap.getWidth(), this.mMouseBitmap.getHeight());
        requestLayout();
    }

    public void setMouseIcon(String str, int i10) {
        LogUtils.d("setMouseIcon", "name: " + str + " TYPE: " + i10);
        this.mType = i10;
        if (i10 == 0) {
            int resIdDrawable = getResIdDrawable(str);
            if (resIdDrawable > 0) {
                this.mResId = resIdDrawable;
                Bitmap bitmapDrawableToBitamp = drawableToBitamp(ResourceManager.getInstance().getResources().getDrawable(resIdDrawable));
                this.mMouseBitmap = bitmapDrawableToBitamp;
                if (bitmapDrawableToBitamp != null) {
                    this.mMouseView.setImageBitmap(bitmapDrawableToBitamp);
                    initOffset(this.mMouseBitmap.getWidth(), this.mMouseBitmap.getHeight());
                    return;
                }
                return;
            }
            return;
        }
        int resourceId = getResourceId(str, "raw");
        if (resourceId > 0) {
            this.mResId = resourceId;
            this.mMouseView.setVisibility(8);
            setLayerType(1, null);
            GifView gifView = new GifView(getContext(), resourceId);
            this.mGifView = gifView;
            addView(gifView, 0, new FrameLayout.LayoutParams(-2, -2));
            initOffset(this.mGifView.getWidth(), this.mGifView.getHeight());
        }
    }

    public void setMouseOffSet(int i10, int i11) {
        if (Math.abs(i10) > 500) {
            int i12 = this.mouseRightOffset;
            int i13 = this.mOffsetX;
            if (i12 == i13) {
                i12 = i13;
            }
            this.mouseRightOffset = i12;
        } else {
            this.isLastSetByRatio = false;
            this.mouseRightOffset = i10;
        }
        if (Math.abs(i11) > 500) {
            int i14 = this.mouseBottomOffset;
            int i15 = this.mOffsetY;
            if (i14 == i15) {
                i14 = i15;
            }
            this.mouseBottomOffset = i14;
        } else {
            this.isLastSetByRatio = false;
            this.mouseBottomOffset = i11;
        }
        LogUtils.i("setMouseOffSet", "mouseRightOffset=" + this.mouseRightOffset + " mouseBottomOffset=" + this.mouseBottomOffset);
    }

    public void setMouseOffSetRatio(float f10, float f11) {
        if (f10 <= 0.0f || f10 > 2.0f) {
            int i10 = this.mouseRightOffset;
            int i11 = this.mOffsetX;
            if (i10 == i11) {
                i10 = i11;
            }
            this.mouseRightOffset = i10;
        } else {
            this.isLastSetByRatio = true;
            this.ratioX = f10;
            this.mouseRightOffset = (int) (f10 * this.mouseMeasuredWidth);
        }
        if (f11 <= 0.0f || f11 > 2.0f) {
            int i12 = this.mouseBottomOffset;
            int i13 = this.mOffsetY;
            if (i12 == i13) {
                i12 = i13;
            }
            this.mouseBottomOffset = i12;
        } else {
            this.isLastSetByRatio = true;
            this.ratioY = f11;
            this.mouseBottomOffset = (int) (f11 * this.mouseMeasuredHeight);
        }
        LogUtils.i("setMouseOffSetRatio", "mouseRightOffset=" + this.mouseRightOffset + " mouseBottomOffset=" + this.mouseBottomOffset);
    }

    public void setMousePoint(int i10, int i11) {
        this.mMouseX = i10;
        this.mMouseY = i11;
        LogUtils.i("setMousePoint View", this.mMouseX + ":" + this.mMouseY);
        requestLayout();
    }

    public void setOnMouseListener(OnMouseListener onMouseListener) {
        this.mOnMouseListener = onMouseListener;
    }

    public void moveMouse(int i10, float f10) {
        LogUtils.d("BdMainView", "wrapper moveMouse() ENTER");
        this.mMoveDis = (int) (f10 * TcMouseManager.MOUSE_MOVE_STEP);
        switch (i10) {
            case 19:
                if (!AbsIjkVideoView.TV_ROTATE) {
                    mouseUp();
                } else {
                    mouseLeft();
                }
                break;
            case 20:
                if (!AbsIjkVideoView.TV_ROTATE) {
                    mouseDown();
                } else {
                    mouseRight();
                }
                break;
            case 21:
                if (!AbsIjkVideoView.TV_ROTATE) {
                    mouseLeft();
                } else {
                    mouseDown();
                }
                break;
            case 22:
                if (!AbsIjkVideoView.TV_ROTATE) {
                    mouseRight();
                } else {
                    mouseUp();
                }
                break;
        }
        int i11 = this.mLastMouseX;
        int i12 = this.mMouseX;
        if (i11 == i12 && this.mLastMouseY == this.mMouseY) {
            return;
        }
        this.mLastMouseX = i12;
        this.mLastMouseY = this.mMouseY;
        requestLayout();
        this.mMouseManager.sendMouseHoverEvent(this.mMouseX + this.mOffsetX, this.mMouseY + this.mOffsetY);
    }

    public TcMouseView(Context context, TcMouseManager tcMouseManager) {
        super(context);
        this.isLastSetByRatio = false;
        this.ratioX = 0.0f;
        this.ratioY = 0.0f;
        this.mMouseX = 250;
        this.mMouseY = TcMouseManager.MOUSE_STARY;
        this.mLastMouseX = 250;
        this.mLastMouseY = TcMouseManager.MOUSE_STARY;
        this.mMoveDis = TcMouseManager.MOUSE_MOVE_STEP;
        init(tcMouseManager);
    }
}
