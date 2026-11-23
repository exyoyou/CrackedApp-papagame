package com.haima.hmcp.virtual.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.animation.LinearInterpolator;
import androidx.annotation.RequiresApi;
import com.haima.hmcp.Constants;
import com.haima.hmcp.R;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.virtual.BitmapRef;
import com.haima.hmcp.virtual.HmNetworkBitmapLoader;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.virtual.bean.DrawerItemBean;
import com.haima.hmcp.virtual.bean.HmVirtualLayoutBean;
import com.haima.hmcp.virtual.bean.HmVirtualViewBean;
import com.haima.hmcp.virtual.listeners.HmVirtualViewListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public class HmVirtualDrawer extends HmBaseVirtualView {
    private static final int ANIMATOR_DURATION = 300;
    private static final long CLICK_INTERVAL = 200;
    private static final String DEFAULT_SELECTED_BACKGROUND_COLOR = "#b3222222";
    private static final String DEFAULT_SELECTED_BORDER_COLOR = "#007AFF";
    private static final int DRAWER_SPACING = 32;
    private static final int EDITING_BG_PADDING = 16;
    private static final float ICON_WIDTH_HEIGHT_SCALE = 0.58f;
    private static final float ICON_WIDTH_SCALE = 0.37f;
    private static final int ITEM_SPACING = 32;
    private static final int MAX_TOUCH_POINTS = 5;
    private static final int RECT_OFFSET = 3;
    private static final int STYLE_BOMB = 1;
    private static final int STYLE_STAIRS = 2;
    private static final float TOUCH_SLOP = 10.0f;
    private final Map<Integer, TouchPoint> activeTouchPoints;
    private int centerX;
    private int centerY;
    private float currentRotation;
    private ValueAnimator drawerAnimator;
    private final List<DrawerItemBean> drawerList;
    private float drawerListOffset;
    private float drawerProgress;
    private boolean isOpen;
    private boolean isRightMode;
    private float lastTouchX;
    private float lastTouchY;
    private BitmapRef mCenterBitmapRef;
    private BitmapRef mCenterMirrorBitmapRef;
    private BitmapRef mCenterSourceBitmapRef;
    private BitmapRef mDrawerUpBitmapRef;
    private int[] resIds;
    private ValueAnimator rotateAnimator;
    private String selectedBorderColor;
    private int style;
    private float textAlpha;
    private ValueAnimator textColorAnimator;

    private static class TouchPoint {
        float currentX;
        float currentY;
        boolean isInDrawerButton;
        boolean isInDrawerList;
        long startTime = SystemClock.uptimeMillis();
        float startX;
        float startY;
        DrawerItemBean touchedItem;

        TouchPoint(float f10, float f11) {
            this.startX = f10;
            this.startY = f11;
            this.currentX = f10;
            this.currentY = f11;
        }

        boolean isClick() {
            return SystemClock.uptimeMillis() - this.startTime < 200 && Math.abs(this.currentX - this.startX) < 10.0f && Math.abs(this.currentY - this.startY) < 10.0f;
        }

        void update(float f10, float f11) {
            this.currentX = f10;
            this.currentY = f11;
        }
    }

    public HmVirtualDrawer(HmVirtualViewBean hmVirtualViewBean, Context context, HmVirtualViewListener hmVirtualViewListener, int i10) {
        super(hmVirtualViewBean, context, hmVirtualViewListener, i10);
        this.mDrawerUpBitmapRef = new BitmapRef();
        this.mCenterSourceBitmapRef = new BitmapRef();
        this.mCenterBitmapRef = new BitmapRef();
        this.mCenterMirrorBitmapRef = new BitmapRef();
        this.drawerListOffset = 0.0f;
        this.drawerProgress = 0.0f;
        this.currentRotation = 0.0f;
        this.textAlpha = 0.0f;
        this.isRightMode = false;
        this.drawerList = new ArrayList();
        this.selectedBorderColor = DEFAULT_SELECTED_BORDER_COLOR;
        this.activeTouchPoints = new HashMap();
        this.style = 1;
        if (this.isRight) {
            Paint paint = new Paint();
            this.mBitmapPaint = paint;
            paint.setAntiAlias(true);
            this.mBitmapPaint.setAlpha((int) (HmVirtualDeviceManager.transparency * 255.0f));
            initDrawer();
        }
    }

    private float[] calcDrawerIconWidthHeight() {
        Bitmap bitmap = this.mCenterSourceBitmapRef.get();
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float baseScale = HmVirtualDeviceManager.get().getBaseScale();
        LogUtils.i(this.TAG, "calcWidthHeight baseScale=" + baseScale);
        float f10 = (float) width;
        float f11 = (float) height;
        return new float[]{((int) (((this.screenScale * f10) * this.viewBean.getScale()) * baseScale)) / f10, ((int) (((this.screenScale * f11) * this.viewBean.getScale()) * baseScale)) / f11};
    }

    private void calcDrawerItemWidthHeight(DrawerItemBean drawerItemBean) {
        if (drawerItemBean == null) {
            return;
        }
        float baseScale = HmVirtualDeviceManager.get().getBaseScale();
        LogUtils.i(this.TAG, "calcWidthHeight baseScale=" + baseScale);
        int h10 = (int) (((float) this.viewBean.getPosition().getH()) * this.screenScale * this.viewBean.getScale() * baseScale);
        int h11 = (int) (((float) this.viewBean.getPosition().getH()) * this.screenScale * this.viewBean.getScale() * baseScale);
        int i10 = this.height;
        drawerItemBean.width = i10;
        drawerItemBean.height = i10;
        LogUtils.i(this.TAG, "calcWidthHeight item.width = " + h10 + ", item.height = " + h11);
        LogUtils.i(this.TAG, "calcWidthHeight x =" + this.f34102x + ", y = " + this.f34103y);
        checkPosition();
    }

    private void calculateDrawerList(Float f10) {
        if (hasDrawerList()) {
            List<DrawerItemBean> drawerList = getDrawerList();
            calculateViewBeanCenter();
            int i10 = this.isRightMode ? (this.centerX - (this.width / 2)) - 32 : this.centerX + (this.width / 2) + 32;
            for (int i11 = 0; i11 < drawerList.size(); i11++) {
                DrawerItemBean drawerItemBean = drawerList.get(i11);
                if (f10 != null) {
                    drawerItemBean.source.setScale(f10.floatValue());
                }
                calcDrawerItemWidthHeight(drawerItemBean);
                if (i11 == 0 && this.isRightMode) {
                    i10 -= drawerItemBean.width;
                }
                if (this.isRightMode) {
                    drawerItemBean.f34092x = i10 - ((drawerItemBean.width + 32) * i11);
                } else {
                    drawerItemBean.f34092x = ((drawerItemBean.width + 32) * i11) + i10;
                }
                drawerItemBean.centerX = drawerItemBean.f34092x + (drawerItemBean.width / 2);
                int i12 = this.centerY;
                drawerItemBean.centerY = i12;
                drawerItemBean.f34093y = i12 - (drawerItemBean.height / 2);
                drawerItemBean.updateTextSize();
            }
        }
    }

    private boolean checkAdjacent(DrawerItemBean drawerItemBean, DrawerItemBean drawerItemBean2) {
        return Math.abs(((float) drawerItemBean.getX()) - ((float) drawerItemBean2.getX())) <= 20.0f || Math.abs(((float) drawerItemBean.getY()) - ((float) drawerItemBean2.getY())) <= 20.0f;
    }

    private int checkX(int i10) {
        int i11 = this.isEditMode ? 19 : 3;
        return i10 < i11 ? i11 : Math.min(i10, (this.screenWidth - i11) - this.width);
    }

    private int checkY(int i10) {
        int i11 = this.isEditMode ? 19 : 3;
        int i12 = i11 + 0;
        return i10 < i12 ? i12 : Math.min(i10, (this.screenHeight - i11) - this.height);
    }

    private int dp2Px(int i10) {
        return (int) TypedValue.applyDimension(1, i10, this.mCtx.getResources().getDisplayMetrics());
    }

    private void drawDrawerIcon(Canvas canvas) {
        float f10;
        Bitmap bitmap = this.mCenterBitmapRef.get();
        if (bitmap == null) {
            LogUtils.w(this.TAG, "mCenterBitmap is null in drawDrawerIcon");
            return;
        }
        canvas.save();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float f11 = this.f34102x + ((this.width - width) / 2);
        float f12 = (width / 2.0f) + f11;
        float f13 = this.f34103y + ((this.height - height) / 2);
        float f14 = (height / 2.0f) + f13;
        if (HmVirtualDeviceManager.editMode) {
            f10 = this.isRightMode ? 0.0f : 180.0f;
        } else {
            f10 = this.isRightMode ? -this.currentRotation : this.currentRotation;
        }
        canvas.rotate(f10, f12, f14);
        canvas.drawBitmap(bitmap, f11, f13, this.mBitmapPaint);
        canvas.restore();
    }

    private void drawSelectedRect(Canvas canvas, float f10, float f11, float f12, float f13, Integer num, float f14, Integer num2) {
        if (canvas == null) {
            return;
        }
        Paint paint = new Paint();
        if (num != null) {
            paint.setColor(num.intValue());
            paint.setStyle(Paint.Style.FILL);
            canvas.drawRect(f10, f11, f12, f13, paint);
        }
        if (f14 > 0.0f) {
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(f14);
            if (num2 != null) {
                paint.setColor(num2.intValue());
            } else {
                paint.setColor(-16777216);
            }
            canvas.drawRect(f10, f11, f12, f13, paint);
        }
        String str = this.TAG;
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[7];
        objArr[0] = Float.valueOf(f10);
        objArr[1] = Float.valueOf(f11);
        objArr[2] = Float.valueOf(f12);
        objArr[3] = Float.valueOf(f13);
        objArr[4] = num != null ? String.format("#%06X", Integer.valueOf(num.intValue() & 16777215)) : "null";
        objArr[5] = Float.valueOf(f14);
        objArr[6] = num2 != null ? String.format("#%06X", Integer.valueOf(16777215 & num2.intValue())) : "null";
        LogUtils.d(str, String.format(locale, "Draw rect: left=%.2f, top=%.2f, right=%.2f, bottom=%.2f, fillColor=%s, strokeWidth=%.2f, strokeColor=%s", objArr));
    }

    private void drawTextWithAlpha(Canvas canvas, String str, float f10, float f11, Paint paint) {
        if (canvas == null || str == null || paint == null) {
            return;
        }
        int alpha = paint.getAlpha();
        paint.setAlpha((int) (alpha * this.textAlpha));
        canvas.drawText(str, f10, f11, paint);
        paint.setAlpha(alpha);
        LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "Drawing text with alpha: %.2f, text: %s", Float.valueOf(this.textAlpha), str));
    }

    private List<DrawerItemBean> getDrawerList() {
        return this.drawerList;
    }

    private String getSelectedBorderColor() {
        HmVirtualLayoutBean layoutBean;
        HmVirtualLayoutBean.ConfigDTO config;
        HmVirtualLayoutBean.ConfigDTO localConfig;
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        String drawerSelectedBorderColor = hmVirtualViewBean != null ? hmVirtualViewBean.getDrawerSelectedBorderColor() : null;
        if (TextUtils.isEmpty(drawerSelectedBorderColor) && (localConfig = HmVirtualDeviceManager.get().getLocalConfig()) != null) {
            drawerSelectedBorderColor = localConfig.drawerSelectedBorderColor;
        }
        if (TextUtils.isEmpty(drawerSelectedBorderColor) && (layoutBean = HmVirtualDeviceManager.get().getLayoutBean()) != null && (config = layoutBean.getConfig()) != null) {
            drawerSelectedBorderColor = config.drawerSelectedBorderColor;
        }
        if (TextUtils.isEmpty(drawerSelectedBorderColor)) {
            drawerSelectedBorderColor = DEFAULT_SELECTED_BORDER_COLOR;
        }
        try {
            Color.parseColor(drawerSelectedBorderColor);
            return drawerSelectedBorderColor;
        } catch (IllegalArgumentException unused) {
            return DEFAULT_SELECTED_BORDER_COLOR;
        }
    }

    private void handleUpEvent(TouchPoint touchPoint) {
        DrawerItemBean drawerItemBean;
        HmVirtualViewListener hmVirtualViewListener;
        if (!touchPoint.isInDrawerList || (drawerItemBean = touchPoint.touchedItem) == null) {
            if (touchPoint.isInDrawerButton && touchPoint.isClick()) {
                if (!HmVirtualDeviceManager.editMode) {
                    toggleDrawer();
                    return;
                }
                HmVirtualViewListener hmVirtualViewListener2 = this.viewListener;
                if (hmVirtualViewListener2 != null) {
                    hmVirtualViewListener2.onClickListener(this);
                    return;
                }
                return;
            }
            return;
        }
        if (!HmVirtualDeviceManager.editMode) {
            HmVirtualViewListener hmVirtualViewListener3 = this.viewListener;
            if (hmVirtualViewListener3 != null) {
                hmVirtualViewListener3.onBtnTouchEvent(1, drawerItemBean.source.getKeys(), this.sourceType, touchPoint.touchedItem.source.getKeyType());
                return;
            }
            return;
        }
        drawerItemBean.setItemCurrentBitmap(!this.isEditMode ? drawerItemBean.getItemUpBitmap() : drawerItemBean.getItemDownBitmap());
        if (!touchPoint.isClick() || (hmVirtualViewListener = this.viewListener) == null) {
            return;
        }
        hmVirtualViewListener.onClickListener(this);
    }

    private boolean hasDrawerList() {
        List<DrawerItemBean> list = this.drawerList;
        return (list == null || list.isEmpty()) ? false : true;
    }

    private boolean hasPressedDrawerItem() {
        for (TouchPoint touchPoint : this.activeTouchPoints.values()) {
            if (touchPoint.isInDrawerList && touchPoint.touchedItem != null) {
                return true;
            }
        }
        return false;
    }

    private void initBitmap() {
        String pic_common_drawer_bg_selected_MD5;
        String pic_common_drawer_bg_unselected_MD5;
        String pic_common_drawer_icon_MD5;
        String pic_common_drawer_bg_selected_url;
        String pic_common_drawer_bg_unselected_url;
        String pic_common_drawer_icon_url;
        HmVirtualLayoutBean.ConfigDTO localConfig;
        HmVirtualLayoutBean layoutBean;
        HmVirtualLayoutBean.ConfigDTO config;
        HmVirtualLayoutBean.ConfigDTO localConfig2;
        HmVirtualLayoutBean layoutBean2;
        HmVirtualLayoutBean.ConfigDTO config2;
        final int i10;
        final int i11;
        this.resIds = HmVirtualDeviceUtils.getBtnBgID(this.name, this.sourceType, this.viewBean.getKeyType());
        this.selectedBorderColor = getSelectedBorderColor();
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        if (hmVirtualViewBean != null) {
            pic_common_drawer_bg_selected_MD5 = hmVirtualViewBean.getPicSelectedMD5();
            pic_common_drawer_bg_unselected_MD5 = this.viewBean.getPicUnselectedMD5();
            pic_common_drawer_icon_MD5 = this.viewBean.getPicCenterMD5();
            pic_common_drawer_bg_selected_url = this.viewBean.getPicSelectedUrl();
            pic_common_drawer_bg_unselected_url = this.viewBean.getPicUnselectedUrl();
            pic_common_drawer_icon_url = this.viewBean.getPicCenterUrl();
        } else {
            pic_common_drawer_bg_selected_MD5 = null;
            pic_common_drawer_bg_unselected_MD5 = null;
            pic_common_drawer_icon_MD5 = null;
            pic_common_drawer_bg_selected_url = null;
            pic_common_drawer_bg_unselected_url = null;
            pic_common_drawer_icon_url = null;
        }
        if ((TextUtils.isEmpty(pic_common_drawer_bg_selected_MD5) || TextUtils.isEmpty(pic_common_drawer_bg_unselected_MD5) || TextUtils.isEmpty(pic_common_drawer_icon_MD5)) && (localConfig = HmVirtualDeviceManager.get().getLocalConfig()) != null) {
            pic_common_drawer_bg_selected_MD5 = localConfig.getPic_common_drawer_bg_selected_MD5();
            pic_common_drawer_bg_unselected_MD5 = localConfig.getPic_common_drawer_bg_unselected_MD5();
            pic_common_drawer_icon_MD5 = localConfig.getPic_common_drawer_icon_MD5();
        }
        if ((TextUtils.isEmpty(pic_common_drawer_bg_selected_MD5) || TextUtils.isEmpty(pic_common_drawer_bg_unselected_MD5) || TextUtils.isEmpty(pic_common_drawer_icon_MD5)) && (layoutBean = HmVirtualDeviceManager.get().getLayoutBean()) != null && (config = layoutBean.getConfig()) != null) {
            pic_common_drawer_bg_selected_MD5 = config.getPic_common_drawer_bg_selected_MD5();
            pic_common_drawer_bg_unselected_MD5 = config.getPic_common_drawer_bg_unselected_MD5();
            pic_common_drawer_icon_MD5 = config.getPic_common_drawer_icon_MD5();
        }
        if ((TextUtils.isEmpty(pic_common_drawer_bg_selected_url) || TextUtils.isEmpty(pic_common_drawer_bg_unselected_url) || TextUtils.isEmpty(pic_common_drawer_icon_url)) && (localConfig2 = HmVirtualDeviceManager.get().getLocalConfig()) != null) {
            pic_common_drawer_bg_selected_url = localConfig2.getPic_common_drawer_bg_selected_url();
            pic_common_drawer_bg_unselected_url = localConfig2.getPic_common_drawer_bg_unselected_url();
            pic_common_drawer_icon_url = localConfig2.getPic_common_drawer_icon_url();
        }
        if ((TextUtils.isEmpty(pic_common_drawer_bg_selected_url) || TextUtils.isEmpty(pic_common_drawer_bg_unselected_url) || TextUtils.isEmpty(pic_common_drawer_icon_url)) && (layoutBean2 = HmVirtualDeviceManager.get().getLayoutBean()) != null && (config2 = layoutBean2.getConfig()) != null) {
            pic_common_drawer_bg_selected_url = config2.getPic_common_drawer_bg_selected_url();
            pic_common_drawer_bg_unselected_url = config2.getPic_common_drawer_bg_unselected_url();
            pic_common_drawer_icon_url = config2.getPic_common_drawer_icon_url();
        }
        final String str = pic_common_drawer_bg_unselected_url;
        final String str2 = pic_common_drawer_icon_url;
        if (this.viewBean.getScale() == 0.0f) {
            LogUtils.i(this.TAG, "scale is 0, bitmap width = 1, height = 1");
            i10 = 1;
            i11 = 1;
        } else {
            i10 = this.width;
            i11 = this.height;
        }
        Bitmap bitmapSync = !TextUtils.isEmpty(str) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(str, i10, i11) : null;
        if (bitmapSync != null) {
            this.mDrawerUpBitmapRef.setDefault(bitmapSync);
            LogUtils.d(this.TAG, "initDrawerBitmap: use cached network bitmap for UP state, url=" + str);
        } else {
            this.mDrawerUpBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, pic_common_drawer_bg_unselected_MD5, this.resIds[1], i10, i11));
            if (!TextUtils.isEmpty(str)) {
                HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, str, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDrawer.1
                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadComplete(String str3, Bitmap bitmap) {
                        if (bitmap != null) {
                            HmVirtualDrawer.this.mDrawerUpBitmapRef.setNetwork(HmVirtualDeviceUtils.scaledBitmap(bitmap, i10, i11));
                            LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerBitmap: preload complete, updated UP state, url=" + str);
                        }
                    }

                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadFailed(String str3, String str4) {
                        LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerBitmap: preload failed for UP state, url=" + str + ", error=" + str4);
                    }
                }, i10, i11);
                LogUtils.d(this.TAG, "initDrawerBitmap: registered listener for UP state, waiting for preload, url=" + str);
            }
        }
        final int i12 = (int) (this.viewBean.getScale() == 0.0f ? 1.0f : this.width * ICON_WIDTH_SCALE);
        final int i13 = (int) (this.viewBean.getScale() != 0.0f ? i12 / ICON_WIDTH_HEIGHT_SCALE : 1.0f);
        Bitmap bitmapSync2 = TextUtils.isEmpty(str2) ? null : HmNetworkBitmapLoader.getInstance().getBitmapSync(str2, i12, i13);
        if (bitmapSync2 != null) {
            this.mCenterSourceBitmapRef.setDefault(bitmapSync2);
            processCenterBitmap(bitmapSync2);
            LogUtils.d(this.TAG, "initDrawerBitmap: use cached network bitmap for CENTER icon, url=" + str2);
        } else {
            this.mCenterSourceBitmapRef.setDefault(HmVirtualDeviceUtils.getBitmap(this.mCtx, pic_common_drawer_icon_MD5, R.mipmap.hm_vir_drawer_icon, i12, i13));
            Bitmap bitmap = this.mCenterSourceBitmapRef.get();
            if (bitmap != null) {
                processCenterBitmap(bitmap);
            }
            if (!TextUtils.isEmpty(str2)) {
                HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, str2, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDrawer.2
                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadComplete(String str3, Bitmap bitmap2) {
                        if (bitmap2 != null) {
                            HmVirtualDrawer.this.mCenterSourceBitmapRef.setNetwork(HmVirtualDeviceUtils.scaledBitmap(bitmap2, i12, i13));
                            HmVirtualDrawer.this.processCenterBitmap(bitmap2);
                            LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerBitmap: preload complete, updated CENTER icon, url=" + str2);
                        }
                    }

                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadFailed(String str3, String str4) {
                        LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerBitmap: preload failed for CENTER icon, url=" + str2 + ", error=" + str4);
                    }
                }, i12, i13);
                LogUtils.d(this.TAG, "initDrawerBitmap: registered listener for CENTER icon, waiting for preload, url=" + str2);
            }
        }
        if (hasDrawerList()) {
            Iterator<DrawerItemBean> it2 = getDrawerList().iterator();
            while (it2.hasNext()) {
                initDrawerItemBitmaps(it2.next(), pic_common_drawer_bg_selected_MD5, pic_common_drawer_bg_unselected_MD5, pic_common_drawer_bg_selected_url, str);
            }
        }
    }

    private void initDrawer() {
        this.isOpen = false;
        this.drawerListOffset = 0.0f;
        this.currentRotation = 0.0f;
        updateDrawerMode();
        initDrawerData();
        initBitmap();
    }

    private void initDrawerData() {
        calculateViewBeanCenter();
        if (this.viewBean.getDrawerList() != null && !this.viewBean.getDrawerList().isEmpty()) {
            this.drawerList.clear();
            int i10 = this.isRightMode ? (this.f34102x - 32) - this.height : this.f34102x + this.width + 32;
            for (int i11 = 0; i11 < this.viewBean.getDrawerList().size(); i11++) {
                HmVirtualViewBean hmVirtualViewBean = this.viewBean.getDrawerList().get(i11);
                DrawerItemBean drawerItemBean = new DrawerItemBean();
                drawerItemBean.source = hmVirtualViewBean;
                int i12 = this.height;
                drawerItemBean.height = i12;
                drawerItemBean.width = i12;
                if (this.isRightMode) {
                    drawerItemBean.f34092x = i10 - ((i12 + 32) * i11);
                } else {
                    drawerItemBean.f34092x = ((i12 + 32) * i11) + i10;
                }
                drawerItemBean.centerX = drawerItemBean.f34092x + (i12 / 2);
                int i13 = this.centerY;
                drawerItemBean.centerY = i13;
                drawerItemBean.f34093y = i13 - (i12 / 2);
                drawerItemBean.calcName();
                drawerItemBean.updateTextSize();
                drawerItemBean.setTransparency(HmVirtualDeviceManager.transparency);
                LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "init drawer item %d: x=%d, y=%d, width=%d, height=%d, centerX=%d, centerY=%d", Integer.valueOf(i11), Integer.valueOf(drawerItemBean.f34092x), Integer.valueOf(drawerItemBean.f34093y), Integer.valueOf(drawerItemBean.width), Integer.valueOf(drawerItemBean.height), Integer.valueOf(drawerItemBean.centerX), Integer.valueOf(drawerItemBean.centerY)));
                this.drawerList.add(drawerItemBean);
            }
        }
        if (this.isRightMode) {
            this.currentRotation = 180.0f;
        } else {
            this.currentRotation = 0.0f;
        }
    }

    private void initDrawerItemBitmaps(final DrawerItemBean drawerItemBean, String str, String str2, final String str3, final String str4) {
        int i10;
        int i11;
        if (drawerItemBean == null) {
            return;
        }
        if (drawerItemBean.source.getScale() == 0.0f) {
            LogUtils.i(this.TAG, "scale is 0, drawer item bitmap width = 1, height = 1");
            i10 = 1;
            i11 = 1;
        } else {
            i10 = drawerItemBean.width;
            i11 = drawerItemBean.height;
        }
        int[] btnBgID = HmVirtualDeviceUtils.getBtnBgID(drawerItemBean.source.getName(), 1, 13);
        Bitmap bitmapSync = !TextUtils.isEmpty(str3) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(str3, i10, i11) : null;
        if (bitmapSync != null) {
            drawerItemBean.itemDownBitmapRef.setDefault(bitmapSync);
            LogUtils.d(this.TAG, "initDrawerItemBitmaps: use cached network bitmap for item DOWN state, url=" + str3);
        } else {
            drawerItemBean.setItemDownBitmap(HmVirtualDeviceUtils.getBitmap(this.mCtx, str, btnBgID[0], i10, i11));
            if (!TextUtils.isEmpty(str3)) {
                final int i12 = i10;
                final int i13 = i11;
                HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, str3, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDrawer.3
                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadComplete(String str5, Bitmap bitmap) {
                        if (bitmap != null) {
                            drawerItemBean.itemDownBitmapRef.setNetwork(HmVirtualDeviceUtils.scaledBitmap(bitmap, i12, i13));
                            LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerItemBitmaps: preload complete, updated item DOWN state, url=" + str3);
                        }
                    }

                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadFailed(String str5, String str6) {
                        LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerItemBitmaps: preload failed for item DOWN state, url=" + str3 + ", error=" + str6);
                    }
                }, i10, i11);
                LogUtils.d(this.TAG, "initDrawerItemBitmaps: registered listener for item DOWN state, waiting for preload, url=" + str3);
            }
        }
        Bitmap bitmapSync2 = !TextUtils.isEmpty(str4) ? HmNetworkBitmapLoader.getInstance().getBitmapSync(str4, i10, i11) : null;
        if (bitmapSync2 != null) {
            drawerItemBean.itemUpBitmapRef.setDefault(bitmapSync2);
            LogUtils.d(this.TAG, "initDrawerItemBitmaps: use cached network bitmap for item UP state, url=" + str4);
        } else {
            drawerItemBean.setItemUpBitmap(HmVirtualDeviceUtils.getBitmap(this.mCtx, str2, btnBgID[1], i10, i11));
            if (!TextUtils.isEmpty(str4)) {
                final int i14 = i10;
                final int i15 = i11;
                HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, str4, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDrawer.4
                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadComplete(String str5, Bitmap bitmap) {
                        if (bitmap != null) {
                            drawerItemBean.itemUpBitmapRef.setNetwork(HmVirtualDeviceUtils.scaledBitmap(bitmap, i14, i15));
                            LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerItemBitmaps: preload complete, updated item UP state, url=" + str4);
                        }
                    }

                    @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
                    public void onDownloadFailed(String str5, String str6) {
                        LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerItemBitmaps: preload failed for item UP state, url=" + str4 + ", error=" + str6);
                    }
                }, i10, i11);
                LogUtils.d(this.TAG, "initDrawerItemBitmaps: registered listener for item UP state, waiting for preload, url=" + str4);
            }
        }
        drawerItemBean.setItemCurrentBitmap(drawerItemBean.getItemUpBitmap());
        String picCenterMD5 = drawerItemBean.source.getPicCenterMD5();
        final String picCenterUrl = drawerItemBean.source.getPicCenterUrl();
        if (TextUtils.isEmpty(picCenterMD5)) {
            return;
        }
        int i16 = drawerItemBean.source.getScale() != 0.0f ? (int) (drawerItemBean.height * 0.73f) : 1;
        Bitmap bitmapSync3 = TextUtils.isEmpty(picCenterUrl) ? null : HmNetworkBitmapLoader.getInstance().getBitmapSync(picCenterUrl, i16, i16);
        if (bitmapSync3 != null) {
            drawerItemBean.itemCenterBitmapRef.setDefault(bitmapSync3);
            LogUtils.d(this.TAG, "initDrawerItemBitmaps: use cached network bitmap for item CENTER icon, url=" + picCenterUrl);
            return;
        }
        drawerItemBean.itemCenterBitmapRef.setDefault(HmVirtualDeviceManager.get().getBitmapByBase64Data(this.mCtx, picCenterMD5, i16, i16));
        if (TextUtils.isEmpty(picCenterUrl)) {
            return;
        }
        final int i17 = i16;
        final int i18 = i16;
        HmNetworkBitmapLoader.getInstance().addDownloadListener(this.mCtx, picCenterUrl, new HmNetworkBitmapLoader.DownloadListener() { // from class: com.haima.hmcp.virtual.views.HmVirtualDrawer.5
            @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
            public void onDownloadComplete(String str5, Bitmap bitmap) {
                if (bitmap != null) {
                    drawerItemBean.itemCenterBitmapRef.setNetwork(HmVirtualDeviceUtils.scaledBitmap(bitmap, i17, i18));
                    LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerItemBitmaps: preload complete, updated item CENTER icon, url=" + picCenterUrl);
                }
            }

            @Override // com.haima.hmcp.virtual.HmNetworkBitmapLoader.DownloadListener
            public void onDownloadFailed(String str5, String str6) {
                LogUtils.d(HmVirtualDrawer.this.TAG, "initDrawerItemBitmaps: preload failed for item CENTER icon, url=" + picCenterUrl + ", error=" + str6);
            }
        }, i16, i16);
        LogUtils.d(this.TAG, "initDrawerItemBitmaps: registered listener for item CENTER icon, waiting for preload, url=" + picCenterUrl);
    }

    @SuppressLint({"NewApi"})
    private void initDrawerItemShakeData(Float f10, Float f11) {
        float fNextFloat;
        float fNextFloat2;
        Random random = new Random();
        if (hasDrawerList()) {
            HashMap map = new HashMap();
            List<DrawerItemBean> drawerList = getDrawerList();
            for (DrawerItemBean drawerItemBean : drawerList) {
                if (drawerItemBean != null) {
                    float fNextFloat3 = random.nextFloat();
                    float fNextFloat4 = random.nextFloat();
                    for (DrawerItemBean drawerItemBean2 : drawerList) {
                        if (drawerItemBean2 != drawerItemBean && drawerItemBean2 != null) {
                            if (checkAdjacent(drawerItemBean, drawerItemBean2)) {
                                float[] fArr = (float[]) map.get(drawerItemBean2);
                                if (fArr == null) {
                                    fArr = new float[]{0.0f, 0.0f};
                                }
                                float f12 = fArr[1];
                                while (Math.abs(fNextFloat4 - f12) < 0.4f) {
                                    fNextFloat4 = random.nextFloat();
                                }
                            }
                        }
                    }
                    map.put(drawerItemBean, new float[]{fNextFloat3, fNextFloat4});
                }
            }
            for (DrawerItemBean drawerItemBean3 : drawerList) {
                if (drawerItemBean3 != null) {
                    if (f10 == null || f11 == null) {
                        float[] fArr2 = (float[]) map.get(drawerItemBean3);
                        if (fArr2 != null) {
                            float f13 = fArr2[0];
                            fNextFloat2 = fArr2[1];
                            fNextFloat = f13;
                        } else {
                            fNextFloat = random.nextFloat();
                            fNextFloat2 = random.nextFloat();
                        }
                    } else {
                        fNextFloat = f10.floatValue();
                        fNextFloat2 = f11.floatValue();
                    }
                    drawerItemBean3.startShake(fNextFloat, fNextFloat2);
                }
            }
        }
    }

    private boolean isPointInItem(float f10, float f11, DrawerItemBean drawerItemBean) {
        int x10 = drawerItemBean.getX();
        int y10 = drawerItemBean.getY();
        return f10 >= ((float) x10) && f10 <= ((float) (x10 + drawerItemBean.width)) && f11 >= ((float) y10) && f11 <= ((float) (y10 + drawerItemBean.height));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x006d A[PHI: r8
      0x006d: PHI (r8v5 int) = (r8v4 int), (r8v6 int) binds: [B:19:0x006b, B:16:0x0063] A[DONT_GENERATE, DONT_INLINE]] */
    public /* synthetic */ void lambda$startDrawerAnimation$0(ValueAnimator valueAnimator) {
        float startOffset;
        int i10;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (hasDrawerList()) {
            List<DrawerItemBean> drawerList = getDrawerList();
            DrawerItemBean drawerItemBean = drawerList.get(drawerList.size() - 1);
            for (int i11 = 0; i11 < drawerList.size(); i11++) {
                DrawerItemBean drawerItemBean2 = drawerList.get(i11);
                if (drawerItemBean2 != null) {
                    if (this.style == 1) {
                        startOffset = drawerItemBean2.getStartOffset() + ((drawerItemBean2.getEndOffset() - drawerItemBean2.getStartOffset()) * animatedFraction);
                    } else {
                        startOffset = drawerItemBean.getStartOffset() + ((drawerItemBean.getEndOffset() - drawerItemBean.getStartOffset()) * animatedFraction);
                        if (this.isRightMode) {
                            i10 = drawerItemBean2.f34092x;
                            if (startOffset <= i10) {
                                startOffset = i10;
                            }
                        } else {
                            i10 = drawerItemBean2.f34092x;
                            if (startOffset >= i10) {
                                startOffset = i10;
                            }
                        }
                    }
                    drawerItemBean2.setItemOffset(startOffset);
                }
            }
        }
        this.drawerProgress = animatedFraction;
        this.drawerListOffset = fFloatValue;
        LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "Drawer animation update - offset: %.2f, progress: %.2f", Float.valueOf(fFloatValue), Float.valueOf(animatedFraction)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRotateAnimation$1(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.currentRotation = fFloatValue;
        LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "Rotate animation update - currentRotation: %.2f", Float.valueOf(fFloatValue)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startTextColorAnimation$2(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.textAlpha = fFloatValue;
        LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "Text color animation update - alpha: %.2f", Float.valueOf(fFloatValue)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processCenterBitmap(Bitmap bitmap) {
        if (bitmap == null) {
            LogUtils.w(this.TAG, "processCenterBitmap: sourceBitmap is null");
            return;
        }
        float[] fArrCalcDrawerIconWidthHeight = calcDrawerIconWidthHeight();
        float f10 = fArrCalcDrawerIconWidthHeight != null ? fArrCalcDrawerIconWidthHeight[0] : 1.0f;
        float f11 = fArrCalcDrawerIconWidthHeight != null ? fArrCalcDrawerIconWidthHeight[1] : 1.0f;
        if (f10 <= 0.0f || f11 <= 0.0f) {
            LogUtils.w(this.TAG, "processCenterBitmap: invalid scale, width=" + f10 + ", height=" + f11);
            return;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(f10, f11);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (bitmapCreateBitmap != null) {
            if (this.mCenterSourceBitmapRef.hasNetwork()) {
                this.mCenterBitmapRef.setNetwork(bitmapCreateBitmap);
            } else {
                this.mCenterBitmapRef.setDefault(bitmapCreateBitmap);
            }
            Matrix matrix2 = new Matrix();
            matrix2.postRotate(-180.0f);
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix2, true);
            if (bitmapCreateBitmap2 != null) {
                if (this.mCenterSourceBitmapRef.hasNetwork()) {
                    this.mCenterMirrorBitmapRef.setNetwork(bitmapCreateBitmap2);
                } else {
                    this.mCenterMirrorBitmapRef.setDefault(bitmapCreateBitmap2);
                }
            }
            LogUtils.d(this.TAG, "processCenterBitmap: success, centerBitmap=" + bitmapCreateBitmap.getWidth() + "x" + bitmapCreateBitmap.getHeight());
        }
    }

    private void startDrawerAnimation() {
        float f10;
        int i10;
        float f11;
        int i11;
        ValueAnimator valueAnimator = this.drawerAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (hasDrawerList()) {
            List<DrawerItemBean> drawerList = getDrawerList();
            for (int i12 = 0; i12 < drawerList.size(); i12++) {
                DrawerItemBean drawerItemBean = drawerList.get(i12);
                if (drawerItemBean != null) {
                    if (this.isRightMode) {
                        if (this.isOpen) {
                            f11 = drawerItemBean.f34092x;
                            i11 = this.f34102x + drawerItemBean.width;
                        } else {
                            f11 = this.f34102x + drawerItemBean.width;
                            i11 = drawerItemBean.f34092x;
                        }
                    } else if (this.isOpen) {
                        f11 = drawerItemBean.f34092x;
                        i11 = (this.f34102x + this.width) - drawerItemBean.width;
                    } else {
                        f11 = (this.f34102x + this.width) - drawerItemBean.width;
                        i11 = drawerItemBean.f34092x;
                    }
                    drawerItemBean.setStartOffset(f11);
                    drawerItemBean.setEndOffset(i11);
                }
            }
        }
        float f12 = 0.0f;
        if (this.isRightMode) {
            boolean z10 = this.isOpen;
            f10 = z10 ? -this.width : 0.0f;
            if (!z10) {
                i10 = -this.width;
                f12 = i10;
            }
        } else {
            boolean z11 = this.isOpen;
            f10 = z11 ? this.width : 0.0f;
            if (!z11) {
                i10 = this.width;
                f12 = i10;
            }
        }
        LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "Start drawer animation - isOpen: %b, isRightMode: %b, startValue: %.2f, endValue: %.2f", Boolean.valueOf(this.isOpen), Boolean.valueOf(this.isRightMode), Float.valueOf(f10), Float.valueOf(f12)));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, f12);
        this.drawerAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.drawerAnimator.setInterpolator(new LinearInterpolator());
        this.drawerAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.views.e
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f34108b.lambda$startDrawerAnimation$0(valueAnimator2);
            }
        });
        this.drawerAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.haima.hmcp.virtual.views.HmVirtualDrawer.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HmVirtualDrawer hmVirtualDrawer = HmVirtualDrawer.this;
                hmVirtualDrawer.isOpen = !hmVirtualDrawer.isOpen;
                HmVirtualDrawer hmVirtualDrawer2 = HmVirtualDrawer.this;
                LogUtils.d(hmVirtualDrawer2.TAG, String.format("Drawer animation end - isOpen: %b", Boolean.valueOf(hmVirtualDrawer2.isOpen)));
            }
        });
        this.drawerAnimator.start();
    }

    private void startRotateAnimation() {
        ValueAnimator valueAnimator = this.rotateAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        float f10 = this.currentRotation;
        float f11 = 0.0f;
        if (this.isRightMode) {
            if (this.isOpen) {
                f11 = 180.0f;
            }
        } else if (!this.isOpen) {
            f11 = -180.0f;
        }
        LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "Start rotate animation - isOpen: %b, startRotation: %.2f, endRotation: %.2f", Boolean.valueOf(this.isOpen), Float.valueOf(f10), Float.valueOf(f11)));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, f11);
        this.rotateAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.rotateAnimator.setInterpolator(new LinearInterpolator());
        this.rotateAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.views.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f34106b.lambda$startRotateAnimation$1(valueAnimator2);
            }
        });
        this.rotateAnimator.start();
    }

    private void startTextColorAnimation() {
        ValueAnimator valueAnimator = this.textColorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        boolean z10 = this.isOpen;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(z10 ? 1.0f : 0.0f, z10 ? 0.0f : 1.0f);
        this.textColorAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.textColorAnimator.setInterpolator(new LinearInterpolator());
        this.textColorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.virtual.views.d
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f34107b.lambda$startTextColorAnimation$2(valueAnimator2);
            }
        });
        this.textColorAnimator.start();
    }

    private void toggleDrawer() {
        if (this.isOpen && hasPressedDrawerItem()) {
            return;
        }
        LogUtils.d(this.TAG, String.format("Toggle drawer - current state: %b", Boolean.valueOf(this.isOpen)));
        ValueAnimator valueAnimator = this.drawerAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.rotateAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        ValueAnimator valueAnimator3 = this.textColorAnimator;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
        }
        startDrawerAnimation();
        startRotateAnimation();
        startTextColorAnimation();
    }

    private void updateDrawerListPosition() {
        if (hasDrawerList()) {
            int i10 = this.f34102x;
            int i11 = this.isRightMode ? (i10 - 32) - this.height : i10 + this.width + 32;
            List<DrawerItemBean> drawerList = getDrawerList();
            for (int i12 = 0; i12 < drawerList.size(); i12++) {
                DrawerItemBean drawerItemBean = drawerList.get(i12);
                if (drawerItemBean != null) {
                    int i13 = this.isRightMode ? i11 - ((drawerItemBean.width + 32) * i12) : ((drawerItemBean.width + 32) * i12) + i11;
                    drawerItemBean.centerX = (drawerItemBean.width / 2) + i13;
                    int i14 = this.centerY;
                    drawerItemBean.centerY = i14;
                    int i15 = i14 - (drawerItemBean.height / 2);
                    drawerItemBean.setX(i13);
                    drawerItemBean.setY(i15);
                }
            }
        }
    }

    private void updateDrawerMode() {
        calculateViewBeanCenter();
        this.isRightMode = this.centerX > HmVirtualDeviceManager.containerWidth / 2;
    }

    public void calculateViewBeanCenter() {
        HmVirtualViewBean hmVirtualViewBean = this.viewBean;
        if (hmVirtualViewBean == null || hmVirtualViewBean.getPosition() == null) {
            return;
        }
        int i10 = this.f34102x + (this.width / 2);
        this.centerX = i10;
        this.centerY = this.f34103y + (this.height / 2);
        LogUtils.d(this.TAG, String.format(Locale.ENGLISH, "ViewBean center coordinates: x=%d, y=%d", Integer.valueOf(i10), Integer.valueOf(this.centerY)));
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void changeName(String str) {
        super.changeName(str);
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void changeScale(float f10) {
        super.changeScale(f10);
        calculateDrawerList(Float.valueOf(f10));
        initBitmap();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean draw(Canvas canvas) {
        float size;
        float size2;
        float f10;
        int x10;
        int y10;
        float size3;
        float size4;
        float f11;
        if (super.draw(canvas) || this.mDrawerUpBitmapRef.get() == null) {
            return false;
        }
        try {
            canvas.save();
            if (HmVirtualDeviceManager.editMode && this.isEditMode && this.viewBean.getScale() > 0.0f) {
                if (this.isRightMode) {
                    size4 = this.f34102x - (getDrawerList().size() * (this.height + 32));
                    f11 = this.f34103y;
                    size3 = this.f34102x + this.width;
                } else {
                    int i10 = this.f34102x;
                    float f12 = this.f34103y;
                    size3 = i10 + this.width + (getDrawerList().size() * (this.height + 32));
                    size4 = i10;
                    f11 = f12;
                }
                drawSelectedRect(canvas, size4, f11, size3, this.f34103y + this.height, Integer.valueOf(Color.parseColor(DEFAULT_SELECTED_BACKGROUND_COLOR)), dp2Px(1), 0);
            }
            ValueAnimator valueAnimator = this.drawerAnimator;
            if (valueAnimator != null && valueAnimator.isRunning() && hasDrawerList()) {
                List<DrawerItemBean> drawerList = getDrawerList();
                if (!drawerList.isEmpty()) {
                    DrawerItemBean drawerItemBean = drawerList.get(drawerList.size() - 1);
                    if (this.isRightMode) {
                        int i11 = drawerItemBean.f34092x;
                        int i12 = this.f34103y;
                        canvas.clipRect(i11, i12, this.f34102x, this.height + i12);
                    } else {
                        int i13 = this.f34102x + this.width;
                        int i14 = this.f34103y;
                        canvas.clipRect(i13, i14, drawerItemBean.f34092x + drawerItemBean.width, this.height + i14);
                    }
                }
            }
            if (hasDrawerList()) {
                for (int i15 = 0; i15 < this.drawerList.size(); i15++) {
                    DrawerItemBean drawerItemBean2 = this.drawerList.get(i15);
                    if (drawerItemBean2 != null && drawerItemBean2.getPosition() != null) {
                        if (HmVirtualDeviceManager.editMode) {
                            x10 = drawerItemBean2.getX();
                            y10 = drawerItemBean2.getY();
                        } else {
                            ValueAnimator valueAnimator2 = this.drawerAnimator;
                            x10 = (valueAnimator2 == null || !valueAnimator2.isRunning()) ? drawerItemBean2.getX() : (int) drawerItemBean2.getItemOffset();
                            y10 = this.f34103y;
                        }
                        int i16 = x10;
                        int i17 = y10;
                        boolean z10 = HmVirtualDeviceManager.editMode;
                        if (z10 || this.isOpen || this.drawerListOffset != 0.0f) {
                            if (!z10) {
                                drawerItemBean2.drawBitmap(canvas, drawerItemBean2.itemCurrentBitmap, i16, i17, this.mBitmapPaint);
                            } else if (!Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION || this.isEditMode) {
                                drawerItemBean2.drawBitmap(canvas, drawerItemBean2.getItemUpBitmap(), i16, i17, this.mBitmapPaint);
                            } else {
                                drawerItemBean2.drawBitmapAnim(canvas, this.mBitmapPaint);
                            }
                            if (HmVirtualDeviceManager.editMode) {
                                drawerItemBean2.drawText(canvas, i16, i17, 1.0f, this.isEditMode);
                            } else {
                                drawerItemBean2.drawText(canvas, i16, i17, this.textAlpha, this.isEditMode);
                            }
                        }
                    }
                }
            }
            canvas.restore();
            if (HmVirtualDeviceManager.editMode) {
                this.mHmVirtualAlignLinesHelper.drawAlignLines(canvas);
            }
            if (HmVirtualDeviceManager.editMode && Constants.CONFIG_IS_KEYBOARD_EDIT_SHOW_ANIMATION && !this.isEditMode) {
                this.bitmap = this.mDrawerUpBitmapRef.get();
                drawBitmapAnim(canvas);
            } else {
                canvas.drawBitmap(this.mDrawerUpBitmapRef.get(), this.f34102x, this.f34103y, this.mBitmapPaint);
                drawDrawerIcon(canvas);
            }
            if (HmVirtualDeviceManager.editMode && this.isEditMode && this.viewBean.getScale() > 0.0f) {
                if (this.isRightMode) {
                    size2 = this.f34102x - (getDrawerList().size() * (this.height + 32));
                    f10 = this.f34103y;
                    size = this.f34102x + this.width;
                } else {
                    int i18 = this.f34102x;
                    float f13 = this.f34103y;
                    size = i18 + this.width + (getDrawerList().size() * (this.height + 32));
                    size2 = i18;
                    f10 = f13;
                }
                drawSelectedRect(canvas, size2, f10, size, this.f34103y + this.height, 0, dp2Px(1), Integer.valueOf(Color.parseColor(this.selectedBorderColor)));
            }
            return true;
        } catch (Exception e10) {
            LogUtils.e(this.TAG, "draw error: " + e10.getMessage());
            return false;
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
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
        Bitmap bitmap = (this.isRightMode ? this.mCenterBitmapRef : this.mCenterMirrorBitmapRef).get();
        if (bitmap != null) {
            this.matrix.reset();
            float width2 = bitmap.getWidth() / 2.0f;
            float height2 = bitmap.getHeight() / 2.0f;
            this.matrix.postRotate(this.currentAngle, width2, height2);
            this.matrix.postTranslate(this.currentX - width2, this.currentY - height2);
            canvas.drawBitmap(bitmap, this.matrix, this.mBitmapPaint);
        }
        canvas.restore();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    protected Bitmap getCurrentDisplayBitmap() {
        return this.mDrawerUpBitmapRef.get();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void notifyBaseScale() {
        super.notifyBaseScale();
        calculateDrawerList(null);
        initBitmap();
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView, com.haima.hmcp.virtual.listeners.VirtualViewObserver
    public void onSave() {
        updateDrawerMode();
        initDrawerData();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0132 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0099  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:57:0x0107  */
    /* JADX WARN: Code duplicated, block: B:66:0x0138  */
    /* JADX WARN: Code duplicated, block: B:82:0x0191  */
    /* JADX WARN: Code duplicated, block: B:85:0x019a  */
    /* JADX WARN: Code duplicated, block: B:90:0x00ed A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0140 A[SYNTHETIC] */
    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x10;
        float y10;
        TouchPoint touchPoint;
        TouchPoint touchPointRemove;
        DrawerItemBean drawerItemBean;
        if (super.onTouchEvent(motionEvent)) {
            return false;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        if (HmVirtualDeviceManager.editMode && motionEvent.getPointerCount() > 1) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.activeTouchPoints.size() < 5) {
                x10 = motionEvent.getX(actionIndex);
                y10 = motionEvent.getY(actionIndex);
                touchPoint = new TouchPoint(x10, y10);
                touchPoint.isInDrawerButton = isPointInView(x10, y10);
                touchPoint.isInDrawerList = false;
                if ((this.isOpen || HmVirtualDeviceManager.editMode) && hasDrawerList()) {
                    for (DrawerItemBean drawerItemBean2 : getDrawerList()) {
                        if (drawerItemBean2 == null && drawerItemBean2.getPosition() != null && isPointInItem(x10, y10, drawerItemBean2)) {
                            touchPoint.isInDrawerList = true;
                            touchPoint.touchedItem = drawerItemBean2;
                            drawerItemBean2.setItemCurrentBitmap(drawerItemBean2.getItemDownBitmap());
                            HmVirtualViewListener hmVirtualViewListener = this.viewListener;
                            if (hmVirtualViewListener == null) {
                                break;
                            }
                            hmVirtualViewListener.onBtnTouchEvent(0, drawerItemBean2.getSource().getKeys(), this.sourceType, drawerItemBean2.getSource().getKeyType());
                            break;
                        }
                    }
                }
                if (!touchPoint.isInDrawerButton || touchPoint.isInDrawerList) {
                    this.activeTouchPoints.put(Integer.valueOf(pointerId), touchPoint);
                    HmVirtualDeviceManager.get().addPointID(Integer.valueOf(pointerId));
                    if (HmVirtualDeviceManager.ableVibrator) {
                        HmVirtualDeviceUtils.vibrator(this.mCtx);
                    }
                    if (HmVirtualDeviceManager.editMode) {
                        this.editModeTouchOffsetX = x10 - this.f34102x;
                        this.editModeTouchOffsetY = y10 - this.f34103y;
                        this.lastX = x10;
                        this.lastY = y10;
                        this.mHmVirtualAlignLinesHelper.isMovingState = true;
                    }
                    return true;
                }
            }
        } else if (actionMasked == 1) {
            touchPointRemove = this.activeTouchPoints.remove(Integer.valueOf(pointerId));
            if (touchPointRemove != null) {
                HmVirtualDeviceManager.get().removePointID(Integer.valueOf(pointerId));
                if (touchPointRemove.isInDrawerList && (drawerItemBean = touchPointRemove.touchedItem) != null) {
                    drawerItemBean.itemCurrentBitmap = drawerItemBean.getItemUpBitmap();
                }
                handleUpEvent(touchPointRemove);
                if (this.activeTouchPoints.isEmpty()) {
                    this.isPressed = false;
                    this.mHmVirtualAlignLinesHelper.isMovingState = false;
                    if (hasDrawerList()) {
                        for (DrawerItemBean drawerItemBean3 : getDrawerList()) {
                            if (drawerItemBean3 != null) {
                                drawerItemBean3.itemCurrentBitmap = drawerItemBean3.getItemUpBitmap();
                            }
                        }
                    }
                    if (HmVirtualDeviceManager.editMode) {
                        updateRect();
                        checkPosition();
                    }
                }
                return true;
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                touchPointRemove = this.activeTouchPoints.remove(Integer.valueOf(pointerId));
                if (touchPointRemove != null) {
                    HmVirtualDeviceManager.get().removePointID(Integer.valueOf(pointerId));
                    if (touchPointRemove.isInDrawerList) {
                        drawerItemBean.itemCurrentBitmap = drawerItemBean.getItemUpBitmap();
                    }
                    handleUpEvent(touchPointRemove);
                    if (this.activeTouchPoints.isEmpty()) {
                        this.isPressed = false;
                        this.mHmVirtualAlignLinesHelper.isMovingState = false;
                        if (hasDrawerList()) {
                            while (r10.hasNext()) {
                                if (drawerItemBean3 != null) {
                                    drawerItemBean3.itemCurrentBitmap = drawerItemBean3.getItemUpBitmap();
                                }
                            }
                        }
                        if (HmVirtualDeviceManager.editMode) {
                            updateRect();
                            checkPosition();
                        }
                    }
                    return true;
                }
            } else if (actionMasked != 5) {
                if (actionMasked == 6) {
                    touchPointRemove = this.activeTouchPoints.remove(Integer.valueOf(pointerId));
                    if (touchPointRemove != null) {
                        HmVirtualDeviceManager.get().removePointID(Integer.valueOf(pointerId));
                        if (touchPointRemove.isInDrawerList) {
                            drawerItemBean.itemCurrentBitmap = drawerItemBean.getItemUpBitmap();
                        }
                        handleUpEvent(touchPointRemove);
                        if (this.activeTouchPoints.isEmpty()) {
                            this.isPressed = false;
                            this.mHmVirtualAlignLinesHelper.isMovingState = false;
                            if (hasDrawerList()) {
                                while (r10.hasNext()) {
                                    if (drawerItemBean3 != null) {
                                        drawerItemBean3.itemCurrentBitmap = drawerItemBean3.getItemUpBitmap();
                                    }
                                }
                            }
                            if (HmVirtualDeviceManager.editMode) {
                                updateRect();
                                checkPosition();
                            }
                        }
                        return true;
                    }
                }
            } else if (this.activeTouchPoints.size() < 5) {
                x10 = motionEvent.getX(actionIndex);
                y10 = motionEvent.getY(actionIndex);
                touchPoint = new TouchPoint(x10, y10);
                touchPoint.isInDrawerButton = isPointInView(x10, y10);
                touchPoint.isInDrawerList = false;
                if (this.isOpen) {
                    while (r5.hasNext()) {
                        if (drawerItemBean2 == null) {
                        }
                    }
                } else {
                    while (r5.hasNext()) {
                        if (drawerItemBean2 == null) {
                        }
                    }
                }
                if (!touchPoint.isInDrawerButton) {
                }
                this.activeTouchPoints.put(Integer.valueOf(pointerId), touchPoint);
                HmVirtualDeviceManager.get().addPointID(Integer.valueOf(pointerId));
                if (HmVirtualDeviceManager.ableVibrator) {
                    HmVirtualDeviceUtils.vibrator(this.mCtx);
                }
                if (HmVirtualDeviceManager.editMode) {
                    this.editModeTouchOffsetX = x10 - this.f34102x;
                    this.editModeTouchOffsetY = y10 - this.f34103y;
                    this.lastX = x10;
                    this.lastY = y10;
                    this.mHmVirtualAlignLinesHelper.isMovingState = true;
                }
                return true;
            }
        } else if (HmVirtualDeviceManager.editMode) {
            HmVirtualViewListener hmVirtualViewListener2 = this.viewListener;
            if (hmVirtualViewListener2 != null) {
                hmVirtualViewListener2.onViewEdit();
            }
            for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                TouchPoint touchPoint2 = this.activeTouchPoints.get(Integer.valueOf(motionEvent.getPointerId(i10)));
                if (touchPoint2 != null) {
                    float x11 = motionEvent.getX(i10);
                    float y11 = motionEvent.getY(i10);
                    touchPoint2.update(x11, y11);
                    int i11 = (int) (x11 - this.editModeTouchOffsetX);
                    int i12 = (int) (y11 - this.editModeTouchOffsetY);
                    this.f34102x = checkX(i11);
                    this.f34103y = checkY(i12);
                    this.lastX = x11;
                    this.lastY = y11;
                    updateRect();
                    calculateViewBeanCenter();
                    updateDrawerListPosition();
                    this.mHmVirtualAlignLinesHelper.updateAlignLinesView(this.f34102x, this.f34103y, this.width, this.height);
                    this.mHmVirtualAlignLinesHelper.isMovingState = true;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView, com.haima.hmcp.virtual.listeners.VirtualViewObserver
    public void prepareShake() {
    }

    public void setDrawerStyle(int i10) {
        if (i10 > 2) {
            this.style = 2;
        } else {
            this.style = i10;
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void setTransparency(float f10) {
        super.setTransparency(f10);
        if (hasDrawerList()) {
            for (DrawerItemBean drawerItemBean : getDrawerList()) {
                if (drawerItemBean != null) {
                    drawerItemBean.setTransparency(f10);
                }
            }
        }
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    @RequiresApi(api = 22)
    public void startShake(float f10, float f11) {
        initDrawerItemShakeData(Float.valueOf(f10), Float.valueOf(f11));
        super.startShake(f10, f11);
    }

    @Override // com.haima.hmcp.virtual.views.HmBaseVirtualView
    public void stopShake() {
        super.stopShake();
        if (hasDrawerList()) {
            for (DrawerItemBean drawerItemBean : getDrawerList()) {
                if (drawerItemBean != null) {
                    drawerItemBean.stopShake();
                }
            }
        }
    }
}
