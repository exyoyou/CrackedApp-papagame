package com.haima.hmcp.widgets;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.FPoint;
import com.haima.hmcp.beans.HMInputOpData;
import com.haima.hmcp.beans.JoyStickMappingConfig;
import com.haima.hmcp.beans.PointCoord;
import com.haima.hmcp.beans.TouchesMappingConfig;
import com.haima.hmcp.beans.X86ScreenSlideConfig;
import com.haima.hmcp.beans.X86TouchConfig;
import com.haima.hmcp.business.ResourceManager;
import com.haima.hmcp.countly.CountlyUtil;
import com.haima.hmcp.enums.ScreenOrientation;
import com.haima.hmcp.enums.TouchMode;
import com.haima.hmcp.listeners.IRenderViewBase;
import com.haima.hmcp.model.MouseAnimateModel;
import com.haima.hmcp.proto.GSSDK;
import com.haima.hmcp.rtc.widgets.RtcSurfaceViewRenderer;
import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.ProtoBufUtil;
import com.haima.hmcp.utils.TrackBallUtil;
import com.haima.hmcp.virtual.HmVirtualDeviceManager;
import com.haima.hmcp.virtual.HmVirtualDeviceUtils;
import com.haima.hmcp.widgets.view.CircularProgressIndicatorView;
import com.haima.hmcp.widgets.view.MouseView;
import com.join.mgps.Util.v0;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes5.dex */
public class TouchUtil {
    private static final int DUEATION_LONG_PRESS_MS = 500;
    private static final String TAG = "TouchUtil";
    private static final int mDiscount = 5;
    private final String DEFAULT_GAME_PACKAGE_NAME;
    private ArrayList<DeviceInfo> capturedPointerReverseDeviceInfo;
    private String curGamePackageName;
    private long downTime;
    private int downX;
    private int downY;
    private int errorPointID;
    private int firstPointerIndex;
    private float firstPointerX;
    private float firstPointerY;
    private Handler handler;
    private boolean hasMouseDown;
    private boolean hasRMouseDown;
    private boolean hasRequestPointerCapture;
    private float hotSpotX;
    private float hotSpotY;
    private boolean isDoubleSliding;
    private boolean isTvLMouseDown;
    private boolean isTvMMouseDown;
    private boolean isTvRMouseDown;
    private Point lastCursorPosition;
    private long lastEventTime;
    protected GSSDK.OneInputOPData.PositionMode lastPositionMode;
    private int lastX;
    private int lastY;
    private AbsIjkVideoView mBaseRtcVideoView;
    private float mBtnSensitivity;
    private GSSDK.OneInputOPData.PositionMode mCurPositionMode;
    private Bitmap mCursorBitmap;
    private boolean mCursorShowOrHide;
    private GSSDK.GameCursor.CursorStyle mCursorStyle;
    private Float mFunctionSensitivity;
    private boolean mIsHasMove;
    public JoyStickMappingConfig mJoyStickMappingConfig;
    private JoystickMappingHandler mJoystickMouseMappingHandler;
    private JoystickMappingHandler mJoystickTouchMappingHandler;
    private Point mLastCursorPosition;
    private Point mLastPosition;
    private Point mLastRelativePosition;
    private int mLastX;
    private int mLastY;
    private Point mMouseLastPosition;
    private int mMouseLastX;
    private int mMouseLastY;
    private int mMoveX;
    private int mMoveY;
    private Float mOriginSensitivity;
    private float mPhysicalMouseViewOnSensitivity;
    private PointerIcon mPointerIcon;
    private float mScale;
    private int mSpaceAreaPointID;
    private int mStartX;
    private int mStartY;
    private Point mTemLastPosition;
    private Point mTemLastRelativePosition;
    private int mTempPositionX;
    private int mTempPositionY;
    private Timer mTimer;
    public TouchesMappingConfig mTouchesMappingConfig;
    private Bitmap mTransparentCursorBitmap;
    private boolean mUseSpecificSensitivity;
    private MouseAnimateModel mouseAnimateModel;
    private List<GSSDK.OneInputOPData.PointerProperties> pointerList;
    Runnable progressRunnable;
    private Timer rightClickTimer;
    private int secondPointerIndex;
    private float secondPointerX;
    private float secondPointerY;
    private long tDownEventTime;
    private X86TouchConfig touchConfig;
    private TouchMode mTouchMode = Constants.DEFAULT_TOUCH_MODE;
    private boolean mIsValidEvent = false;

    /* JADX INFO: renamed from: com.haima.hmcp.widgets.TouchUtil$14, reason: invalid class name */
    static /* synthetic */ class AnonymousClass14 {
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$beans$HMInputOpData$HMOneInputOPData_InputOP;
        static final /* synthetic */ int[] $SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle;

        static {
            int[] iArr = new int[GSSDK.GameCursor.CursorStyle.values().length];
            $SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle = iArr;
            try {
                iArr[GSSDK.GameCursor.CursorStyle.CURSOR_APPSTARTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle[GSSDK.GameCursor.CursorStyle.CURSOR_WAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle[GSSDK.GameCursor.CursorStyle.CURSOR_NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[HMInputOpData.HMOneInputOPData_InputOP.values().length];
            $SwitchMap$com$haima$hmcp$beans$HMInputOpData$HMOneInputOPData_InputOP = iArr2;
            try {
                iArr2[HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseButtonLeft.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$haima$hmcp$beans$HMInputOpData$HMOneInputOPData_InputOP[HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseButtonRight.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$haima$hmcp$beans$HMInputOpData$HMOneInputOPData_InputOP[HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseButtonMiddle.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$haima$hmcp$beans$HMInputOpData$HMOneInputOPData_InputOP[HMInputOpData.HMOneInputOPData_InputOP.HMOneInputOPData_InputOP_OpMouseWheel.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static class DeviceInfo {
        private String brand;
        private String model;
        private String osVersion;

        public DeviceInfo(String str, String str2, String str3) {
            this.brand = str != null ? str.trim() : "";
            this.model = str2 != null ? str2.trim() : "";
            this.osVersion = str3 != null ? str3.trim() : "";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            DeviceInfo deviceInfo = (DeviceInfo) obj;
            if (this.brand.equals(deviceInfo.brand) && this.model.equals(deviceInfo.model)) {
                return this.osVersion.equals(deviceInfo.osVersion);
            }
            return false;
        }

        public String getBrand() {
            return this.brand;
        }

        public String getModel() {
            return this.model;
        }

        public String getOsVersion() {
            return this.osVersion;
        }

        public int hashCode() {
            return (((this.brand.hashCode() * 31) + this.model.hashCode()) * 31) + this.osVersion.hashCode();
        }

        public boolean matchesCurrentDevice() {
            return (this.brand.isEmpty() || this.brand.equalsIgnoreCase(Build.BRAND)) && (this.model.isEmpty() || this.model.equalsIgnoreCase(Build.MODEL)) && (this.osVersion.isEmpty() || this.osVersion.equalsIgnoreCase(Build.DISPLAY));
        }

        public String toString() {
            return "DeviceInfo{brand='" + this.brand + "', model='" + this.model + "', osVersion='" + this.osVersion + "'}";
        }
    }

    public TouchUtil() {
        Float fValueOf = Float.valueOf(1.0f);
        this.mScale = 1.0f;
        this.mLastPosition = new Point();
        this.mTemLastPosition = new Point();
        this.mCursorShowOrHide = true;
        this.mLastX = -1;
        this.mLastY = -1;
        this.mMoveX = 0;
        this.mMoveY = 0;
        this.mOriginSensitivity = fValueOf;
        this.mFunctionSensitivity = fValueOf;
        this.mUseSpecificSensitivity = false;
        this.mBtnSensitivity = 1.0f;
        GSSDK.OneInputOPData.PositionMode positionMode = GSSDK.OneInputOPData.PositionMode.ABSOLUTE_MODE;
        this.mCurPositionMode = positionMode;
        this.mLastRelativePosition = new Point();
        this.mTemLastRelativePosition = new Point();
        this.mTimer = new Timer();
        this.rightClickTimer = new Timer();
        this.downX = 0;
        this.downY = 0;
        this.downTime = 0L;
        this.lastX = 0;
        this.lastY = 0;
        this.hotSpotX = 0.0f;
        this.hotSpotY = 0.0f;
        this.pointerList = new ArrayList();
        this.firstPointerIndex = -1;
        this.secondPointerIndex = -1;
        this.errorPointID = -1;
        this.mSpaceAreaPointID = -1;
        this.lastCursorPosition = new Point();
        this.lastPositionMode = positionMode;
        this.mTransparentCursorBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
        this.mMouseLastPosition = new Point();
        this.mLastCursorPosition = new Point();
        this.mMouseLastX = 0;
        this.mMouseLastY = 0;
        this.handler = new Handler(Looper.getMainLooper());
        this.mPhysicalMouseViewOnSensitivity = 1.0f;
        this.hasRequestPointerCapture = false;
        this.capturedPointerReverseDeviceInfo = new ArrayList<>();
        this.lastEventTime = 0L;
        this.isDoubleSliding = false;
        this.DEFAULT_GAME_PACKAGE_NAME = v0.f50057a;
        this.curGamePackageName = v0.f50057a;
        this.touchConfig = new X86TouchConfig();
    }

    private FPoint calculatePoint(int i10, int i11) {
        FPoint fPoint = new FPoint();
        if (this.mBaseRtcVideoView.getScreenOrientation() == ScreenOrientation.PORTRAIT) {
            float f10 = i10;
            float f11 = i11;
            float portaitX = this.mBaseRtcVideoView.mRenderView.getPortaitX(f10, f11);
            float portaitY = this.mBaseRtcVideoView.mRenderView.getPortaitY(f10, f11);
            IRenderViewBase iRenderViewBase = this.mBaseRtcVideoView.mRenderView;
            if (iRenderViewBase instanceof RtcSurfaceViewRenderer) {
                fPoint.f33815x = iRenderViewBase.getView().getMeasuredHeight() * portaitX;
                fPoint.f33816y = this.mBaseRtcVideoView.mRenderView.getView().getMeasuredWidth() * portaitY;
            } else {
                fPoint.f33815x = iRenderViewBase.getView().getMeasuredWidth() * portaitX;
                fPoint.f33816y = this.mBaseRtcVideoView.mRenderView.getView().getMeasuredHeight() * portaitY;
            }
        } else {
            float f12 = i10;
            float f13 = i11;
            float landscapeX = this.mBaseRtcVideoView.mRenderView.getLandscapeX(f12, f13);
            float landscapeY = this.mBaseRtcVideoView.mRenderView.getLandscapeY(f12, f13);
            fPoint.f33815x = this.mBaseRtcVideoView.mRenderView.getView().getMeasuredWidth() * landscapeX;
            fPoint.f33816y = this.mBaseRtcVideoView.mRenderView.getView().getMeasuredHeight() * landscapeY;
        }
        String str = TAG;
        LogUtils.d(str, "mRenderView getMeasuredWidth:" + this.mBaseRtcVideoView.mRenderView.getView().getMeasuredWidth() + ",height:" + this.mBaseRtcVideoView.mRenderView.getView().getMeasuredHeight());
        LogUtils.d(str, "rawX = " + i10 + "; rawY = " + i11 + "; targetPoint = " + fPoint.toString() + " ; orientation = " + this.mBaseRtcVideoView.getScreenOrientation());
        return fPoint;
    }

    private void cancelLeftClickTimer() {
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
            this.mTimer.purge();
            this.mTimer = null;
        }
    }

    private void cancelRightClickTimer() {
        this.hasRMouseDown = false;
        if (this.rightClickTimer != null) {
            stopAnimator();
            this.rightClickTimer.cancel();
            this.rightClickTimer.purge();
            this.rightClickTimer = null;
        }
    }

    private void checkCursorPosition() {
        int width = this.mBaseRtcVideoView.mRenderView.getView().getWidth();
        int height = this.mBaseRtcVideoView.mRenderView.getView().getHeight();
        int left = this.mBaseRtcVideoView.mRenderView.getView().getLeft();
        int top = this.mBaseRtcVideoView.mRenderView.getView().getTop();
        if (this.mBaseRtcVideoView.mRenderView.getView().getRotation() == 90.0f) {
            left = (this.mBaseRtcVideoView.getWidth() - this.mBaseRtcVideoView.mRenderView.getView().getHeight()) / 2;
            top = (this.mBaseRtcVideoView.getHeight() - this.mBaseRtcVideoView.mRenderView.getView().getWidth()) / 2;
            width = this.mBaseRtcVideoView.mRenderView.getView().getHeight();
            height = this.mBaseRtcVideoView.mRenderView.getView().getWidth();
        }
        Point point = this.mLastPosition;
        int i10 = point.x;
        if (i10 <= left) {
            point.x = left;
        } else {
            int i11 = (left + width) - 5;
            if (i10 >= i11) {
                point.x = i11;
            }
        }
        int i12 = point.y;
        if (i12 <= top) {
            point.y = top;
            return;
        }
        int i13 = (top + height) - 10;
        if (i12 >= i13) {
            point.y = i13;
        }
    }

    private void checkPointerIndex(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 2) {
            if (this.firstPointerIndex >= 2 || this.secondPointerIndex >= 2) {
                this.firstPointerIndex = 0;
                this.secondPointerIndex = 1;
            }
        }
    }

    private boolean checkPositionOk(MotionEvent motionEvent) {
        return checkPositionOk((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    private boolean checkScreenSlideTouchInBoundary(MotionEvent motionEvent) {
        X86ScreenSlideConfig x86ScreenSlideConfig;
        AbsIjkVideoView absIjkVideoView;
        X86TouchConfig x86TouchConfig = this.touchConfig;
        if (x86TouchConfig == null || (x86ScreenSlideConfig = x86TouchConfig.screenSlideConfig) == null || (absIjkVideoView = this.mBaseRtcVideoView) == null) {
            return true;
        }
        int screenWidth = absIjkVideoView.getScreenWidth();
        int screenHeight = this.mBaseRtcVideoView.getScreenHeight();
        float f10 = x86ScreenSlideConfig.touchRangeL;
        float f11 = x86ScreenSlideConfig.touchRangeU;
        float f12 = x86ScreenSlideConfig.touchRangeR;
        float f13 = x86ScreenSlideConfig.touchRangeD;
        int i10 = 0;
        int i11 = (f10 < 0.0f || f10 > 1.0f) ? 0 : (int) (f10 * screenWidth);
        if (f11 >= 0.0f && f11 <= 1.0f) {
            i10 = (int) (f11 * screenHeight);
        }
        if (f12 >= 0.0f && f12 <= 1.0f) {
            screenWidth -= (int) (f12 * screenWidth);
        }
        if (f13 >= 0.0f && f13 <= 1.0f) {
            screenHeight -= (int) (f13 * screenHeight);
        }
        Rect rect = new Rect(i11, i10, screenWidth, screenHeight);
        int actionIndex = motionEvent.getActionIndex();
        return HmVirtualDeviceUtils.isInRect(motionEvent.getX(actionIndex), motionEvent.getY(actionIndex), rect);
    }

    private float formatValue(float f10, float f11) {
        if (f10 < 0.0f) {
            return 0.0f;
        }
        return f10 >= f11 ? f11 : f10;
    }

    private Bitmap getBitmap() {
        AbsIjkVideoView absIjkVideoView;
        Bitmap bitmap = this.mCursorBitmap;
        if (bitmap == null || (absIjkVideoView = this.mBaseRtcVideoView) == null) {
            return null;
        }
        return Bitmap.createScaledBitmap(bitmap, absIjkVideoView.mCursorWidth, absIjkVideoView.mCursorHeight, true);
    }

    public static float[] getDirectionPoint(PointCoord pointCoord, int i10, int i11, float f10, float f11) {
        if (i10 == 0 && i11 == 0) {
            return null;
        }
        float f12 = 0.0f;
        float f13 = 0.0f;
        for (int i12 = 1; i12 < 5; i12++) {
            if (f10 == 0.0f && f11 == 0.0f) {
                float f14 = i12;
                float f15 = (0.03f * f14) + 0.05f;
                float f16 = pointCoord.f33824x + (i10 * pointCoord.rx * f15 * f14);
                f13 = pointCoord.f33825y + (i11 * pointCoord.ry * f15 * f14);
                f12 = f16;
            } else {
                String[] pCdistence = TrackBallUtil.getPCdistence(i10, i11);
                float f17 = (pointCoord.f33824x + (Float.parseFloat(pCdistence[0]) * pointCoord.rx)) - f10;
                float f18 = i12;
                float f19 = (0.03f * f18) + 0.05f;
                f13 = (((pointCoord.f33825y + (Float.parseFloat(pCdistence[1]) * pointCoord.ry)) - f11) * f19 * f18) + f11;
                f12 = (f17 * f19 * f18) + f10;
            }
        }
        return new float[]{f12, f13};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFixHotSpotX(Bitmap bitmap) {
        if (bitmap == null) {
            return 0.0f;
        }
        return Math.max(bitmap.getWidth() - 1, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFixHotSpotY(Bitmap bitmap) {
        if (bitmap == null) {
            return 0.0f;
        }
        return Math.max(bitmap.getHeight() - 1, 0.0f);
    }

    private MouseView.MouseStyle getMouseStyle(GSSDK.GameCursor.CursorStyle cursorStyle) {
        if (cursorStyle == null) {
            return MouseView.MouseStyle.NORMAL;
        }
        int i10 = AnonymousClass14.$SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle[cursorStyle.ordinal()];
        if (i10 == 1) {
            return MouseView.MouseStyle.WORKING;
        }
        if (i10 == 2) {
            return MouseView.MouseStyle.BUSY;
        }
        if (i10 != 3) {
            return MouseView.MouseStyle.NORMAL;
        }
        return null;
    }

    private Float getSensitivityInternal() {
        return this.mUseSpecificSensitivity ? this.mFunctionSensitivity : this.mOriginSensitivity;
    }

    private int getStandardCloudDistance() {
        X86TouchConfig x86TouchConfig = this.touchConfig;
        if (x86TouchConfig == null) {
            LogUtils.d(TAG, "getStandardCloudDistance false: touchConfig is null");
            return 0;
        }
        X86ScreenSlideConfig x86ScreenSlideConfig = x86TouchConfig.screenSlideConfig;
        if (x86ScreenSlideConfig == null) {
            LogUtils.d(TAG, "getStandardCloudDistance false: screenSlideConfig is null");
            return 0;
        }
        JSONObject jSONObject = x86ScreenSlideConfig.pointsAddedValue;
        if (jSONObject == null) {
            LogUtils.d(TAG, "getStandardCloudDistance: config.pointsAddedValue is null");
            return 0;
        }
        if (TextUtils.isEmpty(this.curGamePackageName) || !jSONObject.containsKey(this.curGamePackageName)) {
            return 0;
        }
        try {
            return jSONObject.getIntValue(this.curGamePackageName);
        } catch (Exception e10) {
            LogUtils.d(TAG, "getStandardCloudDistance json exception :" + e10);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBadHotSpotX(Bitmap bitmap, float f10) {
        return bitmap == null || f10 < 0.0f || f10 >= ((float) bitmap.getWidth());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBadHotSpotY(Bitmap bitmap, float f10) {
        return bitmap == null || f10 < 0.0f || f10 >= ((float) bitmap.getHeight());
    }

    private boolean isBusy(GSSDK.GameCursor.CursorStyle cursorStyle) {
        return cursorStyle == GSSDK.GameCursor.CursorStyle.CURSOR_WAIT;
    }

    private boolean isRMouseClickEvent(MotionEvent motionEvent) {
        if (motionEvent != null && Build.VERSION.SDK_INT >= 23) {
            return ((motionEvent.getSource() & 8194) == 8194) && (motionEvent.getButtonState() == 2);
        }
        return false;
    }

    private boolean isWorking(GSSDK.GameCursor.CursorStyle cursorStyle) {
        return cursorStyle == GSSDK.GameCursor.CursorStyle.CURSOR_APPSTARTING;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$touchEvent$0() {
        sendLMouseClickEvent(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$touchEvent$1() {
        sendLMouseClickEvent(false);
    }

    private void pointsAdded(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        int standardCloudDistance = getStandardCloudDistance();
        if (standardCloudDistance <= 0 || this.mScale == 0.0f) {
            LogUtils.d(TAG, "pointsAdded : standardCloudDistance is invalid " + standardCloudDistance + " or mScale is invalid " + this.mScale);
            sendAbsMouseEventOnce(i10, i11, i12, i13, z10, z11);
            return;
        }
        double d10 = i12;
        double d11 = i13;
        double dSqrt = Math.sqrt(Math.pow(d10, 2.0d) + Math.pow(d11, 2.0d));
        double d12 = standardCloudDistance / this.mScale;
        if (dSqrt == 0.0d || d12 == 0.0d || dSqrt <= d12) {
            sendAbsMouseEventOnce(i10, i11, i12, i13, z10, z11);
            return;
        }
        int i14 = (int) (dSqrt / d12);
        double d13 = d10 / dSqrt;
        double d14 = d11 / dSqrt;
        int iFloatValue = (int) (i12 * getSensitivityInternal().floatValue());
        int iFloatValue2 = (int) (i13 * getSensitivityInternal().floatValue());
        int i15 = i10 + iFloatValue;
        int i16 = i11 + iFloatValue2;
        LogUtils.d(TAG, "pointsAdded sendAbsMouseEvent : count:" + i14 + ", offsetX:" + iFloatValue + ", offsetY:" + iFloatValue2);
        int i17 = i10;
        int i18 = i11;
        for (int i19 = 1; i19 <= i14; i19++) {
            int i20 = (int) (d13 * d12);
            int i21 = (int) (d14 * d12);
            LogUtils.d(TAG, "pointsAdded sendAbsMouseEvent : , ox:" + i20 + ", oy:" + i21);
            sendAbsMouseEventOnce(i17, i18, i20, i21, true, z11);
            i17 += i20;
            i18 += i21;
        }
        int i22 = i15 - i17;
        int i23 = i16 - i18;
        if (i22 == 0 && i23 == 0) {
            return;
        }
        LogUtils.d(TAG, "pointsAdded left : , leftX:" + i22 + ", leftY:" + i23);
        sendAbsMouseEventOnce(i15, i16, i22, i23, true, z11);
    }

    /* JADX WARN: Code duplicated, block: B:87:0x0166  */
    /* JADX WARN: Code duplicated, block: B:89:0x0174 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:90:0x0175  */
    /* JADX WARN: Code duplicated, block: B:91:0x0178  */
    private boolean processDoublePointerSlide(MotionEvent motionEvent) {
        boolean z10 = false;
        if (this.mTouchMode != TouchMode.TOUCH_MODE_MOUSE) {
            return false;
        }
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId)) && motionEvent.getPointerCount() == 2) {
                this.firstPointerX = motionEvent.getX(0);
                this.firstPointerY = motionEvent.getY(0);
                this.secondPointerX = motionEvent.getX(1);
                this.secondPointerY = motionEvent.getY(1);
            }
        } else if (actionMasked == 1) {
            if (HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                return false;
            }
            this.isDoubleSliding = false;
        } else if (actionMasked == 2) {
            if (getBlankTouchFinger(motionEvent) >= 2) {
                cancelLeftClickTimer();
                cancelRightClickTimer();
            }
            if (getBlankTouchFinger(motionEvent) == 2) {
                this.isDoubleSliding = true;
                String str = TAG;
                LogUtils.i(str, "doublePointerSlide===move" + motionEvent.getPointerCount());
                checkPointerIndex(motionEvent);
                float x10 = motionEvent.getX(this.firstPointerIndex) - this.firstPointerX;
                float y10 = motionEvent.getY(this.firstPointerIndex) - this.firstPointerY;
                float x11 = motionEvent.getX(this.secondPointerIndex) - this.secondPointerX;
                float y11 = motionEvent.getY(this.secondPointerIndex) - this.secondPointerY;
                boolean z11 = Math.abs(x10) < Math.abs(y10);
                boolean z12 = Math.abs(x11) < Math.abs(y11);
                if (!z11 || !z12) {
                    boolean z13 = Math.abs(x10) < 10.0f && Math.abs(y10) < 10.0f;
                    if (Math.abs(x11) < 10.0f && Math.abs(y11) < 10.0f) {
                        z10 = true;
                    }
                    if (z13 && z12) {
                        if (y11 > 0.0f) {
                            if (this.mBaseRtcVideoView != null) {
                                sendMouseWheelEvent(-1);
                            }
                        } else if (y11 < 0.0f && this.mBaseRtcVideoView != null) {
                            sendMouseWheelEvent(1);
                        }
                    } else if (z10 && z11) {
                        if (y10 > 0.0f) {
                            if (this.mBaseRtcVideoView != null) {
                                sendMouseWheelEvent(-1);
                            }
                        } else if (y10 < 0.0f && this.mBaseRtcVideoView != null) {
                            sendMouseWheelEvent(1);
                        }
                    }
                } else if (y10 > 0.0f && y11 > 0.0f) {
                    LogUtils.i(str, "doublePointerSlide===down slide");
                    if (this.mBaseRtcVideoView != null) {
                        sendMouseWheelEvent(-1);
                    }
                } else if (y10 < 0.0f && y11 < 0.0f) {
                    LogUtils.i(str, "doublePointerSlide===up slide");
                    if (this.mBaseRtcVideoView != null) {
                        sendMouseWheelEvent(1);
                    }
                }
                this.firstPointerX = motionEvent.getX(this.firstPointerIndex);
                this.firstPointerY = motionEvent.getY(this.firstPointerIndex);
                this.secondPointerX = motionEvent.getX(this.secondPointerIndex);
                this.secondPointerY = motionEvent.getY(this.secondPointerIndex);
                return true;
            }
        } else if (actionMasked != 3) {
            if (actionMasked != 5) {
                if (actionMasked != 6 || HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                    return false;
                }
                this.mBaseRtcVideoView.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.TouchUtil.1
                    @Override // java.lang.Runnable
                    public void run() {
                        TouchUtil.this.isDoubleSliding = false;
                    }
                }, 400L);
            } else {
                if (HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                    return false;
                }
                this.firstPointerX = motionEvent.getX(0);
                this.firstPointerY = motionEvent.getY(0);
                this.secondPointerX = motionEvent.getX(1);
                this.secondPointerY = motionEvent.getY(1);
            }
        } else {
            if (HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                return false;
            }
            this.isDoubleSliding = false;
        }
        return false;
    }

    private void processTouchModeMouseDown(MotionEvent motionEvent) {
        if (!this.touchConfig.isMouseSlideModeRClickModeOn) {
            this.hasMouseDown = false;
            Timer timer = new Timer();
            this.mTimer = timer;
            timer.schedule(new TimerTask() { // from class: com.haima.hmcp.widgets.TouchUtil.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    TouchUtil.this.sendLMouseClickEvent(true);
                    TouchUtil.this.hasMouseDown = true;
                    TouchUtil.this.mTimer = null;
                }
            }, 500L);
            return;
        }
        this.hasMouseDown = false;
        Timer timer2 = new Timer();
        this.mTimer = timer2;
        TimerTask timerTask = new TimerTask() { // from class: com.haima.hmcp.widgets.TouchUtil.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                TouchUtil.this.sendLMouseClickEvent(true);
                TouchUtil.this.hasMouseDown = true;
                TouchUtil.this.mTimer = null;
            }
        };
        X86TouchConfig x86TouchConfig = this.touchConfig;
        timer2.schedule(timerTask, x86TouchConfig.leftDownDuration + x86TouchConfig.rightDownDuration);
        Timer timer3 = new Timer();
        this.rightClickTimer = timer3;
        this.hasRMouseDown = false;
        timer3.schedule(new TimerTask() { // from class: com.haima.hmcp.widgets.TouchUtil.4
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                TouchUtil.this.hasRMouseDown = true;
                TouchUtil.this.startAnimator();
            }
        }, this.touchConfig.rightDownDuration);
    }

    private void processTouchModeMouseMove(MotionEvent motionEvent, int i10, int i11) {
        if (!this.touchConfig.isMouseSlideModeRClickModeOn) {
            if (this.mTouchMode != TouchMode.TOUCH_MODE_MOUSE || this.mTimer == null) {
                return;
            }
            if (Math.abs(i10 - this.downX) > 5 || Math.abs(i11 - this.downY) > 5) {
                cancelLeftClickTimer();
                return;
            }
            return;
        }
        if (this.mTouchMode != TouchMode.TOUCH_MODE_MOUSE || this.rightClickTimer == null) {
            return;
        }
        if (Math.abs(i10 - this.downX) > this.touchConfig.downMaxDistance || Math.abs(i11 - this.downY) > this.touchConfig.downMaxDistance) {
            cancelRightClickTimer();
            cancelLeftClickTimer();
        }
    }

    private void processTouchModeMouseUp(MotionEvent motionEvent) {
        if (!this.touchConfig.isMouseSlideModeRClickModeOn) {
            if (this.mTimer != null) {
                cancelLeftClickTimer();
                sendDelayLMouseDownUp();
                return;
            } else {
                if (this.hasMouseDown) {
                    sendLMouseClickEvent(false);
                    return;
                }
                return;
            }
        }
        String str = TAG;
        LogUtils.i(str, "==touchModeSlide===SystemClock.uptimeMillis() - downTime=" + (SystemClock.uptimeMillis() - this.downTime));
        if (SystemClock.uptimeMillis() - this.downTime < this.touchConfig.rightDownDuration) {
            if (this.mTimer != null) {
                cancelLeftClickTimer();
                sendDelayLMouseDownUp();
            }
            cancelRightClickTimer();
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() - this.downTime;
        X86TouchConfig x86TouchConfig = this.touchConfig;
        if (jUptimeMillis >= x86TouchConfig.leftDownDuration + x86TouchConfig.rightDownDuration || !this.hasRMouseDown) {
            if (this.hasMouseDown) {
                sendLMouseClickEvent(false);
            }
        } else {
            LogUtils.i(str, "==touchModeSlide=== right Click is up");
            cancelLeftClickTimer();
            cancelRightClickTimer();
            sendDelayRMouseDownUp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportErrorHotSpotX(Bitmap bitmap, float f10) {
        String str;
        if (bitmap == null) {
            str = "cursor width = 0";
        } else {
            str = "cursor width = " + bitmap.getWidth();
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_X86_CURSOR_HOT_SPOT_ERROR, str + ", hot spot X = " + f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportErrorHotSpotY(Bitmap bitmap, float f10) {
        String str;
        if (bitmap == null) {
            str = "cursor height = 0";
        } else {
            str = "cursor height = " + bitmap.getHeight();
        }
        CountlyUtil.recordEvent(Constants.COUNTYLY_X86_CURSOR_HOT_SPOT_ERROR, str + ", hot spot Y = " + f10);
    }

    private void sendAbsMouseEventOnce(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        int iFloatValue;
        float f10;
        float fFloatValue;
        int i14 = i10;
        int i15 = i11;
        String str = TAG;
        LogUtils.d(str, "sendAbsMouseEventOnce : absX=" + i14 + ";absY=" + i15 + ";offsetX=" + i12 + ";offsetY=" + i13 + ";realAbs=" + z10);
        if (z11) {
            fFloatValue = this.mBtnSensitivity;
            iFloatValue = (int) (i12 * fFloatValue);
            f10 = i13;
        } else {
            iFloatValue = (int) (i12 * getSensitivityInternal().floatValue());
            f10 = i13;
            fFloatValue = getSensitivityInternal().floatValue();
        }
        int i16 = (int) (f10 * fFloatValue);
        if (!z10) {
            i14 += iFloatValue;
            i15 += i16;
        }
        FPoint fPointCalculatePoint = calculatePoint(i14, i15);
        Point point = this.mLastPosition;
        point.x = i14;
        point.y = i15;
        Point point2 = this.mLastRelativePosition;
        point2.x += iFloatValue;
        point2.y += i16;
        Point point3 = this.lastCursorPosition;
        float f11 = fPointCalculatePoint.f33815x;
        float f12 = this.mScale;
        point3.x = (int) (f11 * f12);
        point3.y = (int) (fPointCalculatePoint.f33816y * f12);
        updateMouse();
        GSSDK.OneInputOPData.PositionMode positionMode = GSSDK.OneInputOPData.PositionMode.ABSOLUTE_MODE;
        this.lastPositionMode = positionMode;
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        Point point4 = this.mLastRelativePosition;
        int i17 = point4.x;
        int i18 = point4.y;
        Point point5 = this.lastCursorPosition;
        absIjkVideoView.sendMouse(i17, i18, point5.x, point5.y, positionMode, GSSDK.OneInputOPData.InputOP.OP_MOUSE_MOV, GSSDK.OneInputOPData.InputState.OP_STATE_DEFAULT, false);
        LogUtils.d(str, "sendAbsMouseEvent : mLastRelativePosition=" + this.mLastRelativePosition.toString() + ";" + iFloatValue + ";" + i16);
    }

    private void sendDelayLMouseDownUp() {
        sendLMouseClickEvent(true);
        this.mBaseRtcVideoView.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.TouchUtil.9
            @Override // java.lang.Runnable
            public void run() {
                TouchUtil.this.sendLMouseClickEvent(false);
            }
        }, 20L);
    }

    private void sendDelayRMouseDownUp() {
        Point point = this.mLastRelativePosition;
        if (point.x == 0 && point.y == 0) {
            Point point2 = this.mLastPosition;
            sendAbsMouseEvent(point2.x, point2.y, 0, 0, true, false);
        }
        sendRMouseClickEvent(true);
        this.mBaseRtcVideoView.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.TouchUtil.10
            @Override // java.lang.Runnable
            public void run() {
                TouchUtil.this.sendRMouseClickEvent(false);
            }
        }, 20L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0043  */
    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    public boolean sendMouseButtonEventMapping(MotionEvent motionEvent, String str) {
        Boolean bool;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String str2 = TAG;
        LogUtils.d(str2, "sendMouseButtonEventMapping inputEvent action:" + motionEvent.getAction());
        int actionMasked = motionEvent.getActionMasked();
        int buttonState = motionEvent.getButtonState();
        if (actionMasked == 0) {
            bool = Boolean.TRUE;
        } else if (actionMasked == 1 || actionMasked == 3) {
            bool = Boolean.FALSE;
        } else if (actionMasked == 5) {
            bool = Boolean.TRUE;
        } else if (actionMasked == 6) {
            bool = Boolean.FALSE;
        } else if (actionMasked == 11) {
            bool = Boolean.TRUE;
        } else if (actionMasked != 12) {
            bool = null;
        } else {
            bool = Boolean.FALSE;
        }
        LogUtils.d(str2, "sendMouseButtonEventMapping action:" + actionMasked + ", actionButton:" + ((Object) null) + ", buttonState:" + buttonState);
        return this.mBaseRtcVideoView.sendGamePadDataMappingKey(str, motionEvent, !bool.booleanValue() ? 1 : 0);
    }

    private boolean sendMouseButtonEventReal(MotionEvent motionEvent) {
        boolean zSendMouseButtonEvent;
        boolean zSendMouseButtonEvent2;
        boolean zSendMouseButtonEvent3;
        boolean zSendMouseButtonEvent4;
        boolean zSendMouseButtonEvent5;
        boolean zSendMouseButtonEvent6;
        String str = TAG;
        LogUtils.i(str, "sendMouseButtonEventReal: ");
        this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
        int y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
        this.downY = y10;
        int i10 = this.downX;
        this.lastX = i10;
        this.lastY = y10;
        sendAbsMouseEvent(i10, y10, 0, 0, true, false);
        int actionMasked = motionEvent.getActionMasked();
        int buttonState = motionEvent.getButtonState();
        if (actionMasked != 0) {
            if (actionMasked != 1 && actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked != 6) {
                        if (actionMasked != 11) {
                            if (actionMasked != 12) {
                                return false;
                            }
                        }
                    }
                }
            }
            LogUtils.i(str, "sendMouseButtonEventReal, buttonState===: " + buttonState);
            if ((buttonState & 1) == 0 && this.isTvLMouseDown) {
                LogUtils.d(str, "sendMouseButtonEvent:InputOP = left, up");
                zSendMouseButtonEvent4 = sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT, GSSDK.OneInputOPData.InputState.OP_STATE_UP);
                this.isTvLMouseDown = false;
            } else {
                zSendMouseButtonEvent4 = false;
            }
            if ((buttonState & 2) == 0 && this.isTvRMouseDown) {
                LogUtils.d(str, "sendMouseButtonEvent:InputOP = right, up");
                zSendMouseButtonEvent5 = sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT, GSSDK.OneInputOPData.InputState.OP_STATE_UP);
                this.isTvRMouseDown = false;
            } else {
                zSendMouseButtonEvent5 = false;
            }
            if ((buttonState & 4) == 0 && this.isTvMMouseDown) {
                LogUtils.d(str, "sendMouseButtonEvent:InputOP = middle, up");
                zSendMouseButtonEvent6 = sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE, GSSDK.OneInputOPData.InputState.OP_STATE_UP);
                this.isTvMMouseDown = false;
            } else {
                zSendMouseButtonEvent6 = false;
            }
            return zSendMouseButtonEvent4 || zSendMouseButtonEvent5 || zSendMouseButtonEvent6;
        }
        LogUtils.i(str, "sendMouseButtonEventReal, buttonState===: " + buttonState);
        if ((buttonState & 1) != 0) {
            LogUtils.d(str, "sendMouseButtonEvent:InputOP = left, down");
            zSendMouseButtonEvent = sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN);
            this.isTvLMouseDown = true;
        } else {
            zSendMouseButtonEvent = false;
        }
        if ((buttonState & 2) != 0) {
            LogUtils.d(str, "sendMouseButtonEvent:InputOP = right, down");
            zSendMouseButtonEvent2 = sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN);
            this.isTvRMouseDown = true;
        } else {
            zSendMouseButtonEvent2 = false;
        }
        if ((buttonState & 4) != 0) {
            LogUtils.d(str, "sendMouseButtonEvent:InputOP = middle, down");
            zSendMouseButtonEvent3 = sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN);
            this.isTvMMouseDown = true;
        } else {
            zSendMouseButtonEvent3 = false;
        }
        return zSendMouseButtonEvent || zSendMouseButtonEvent2 || zSendMouseButtonEvent3;
    }

    private void sendMouseMoveGyroscopeSplit(int i10, int i11) {
        TouchUtil touchUtil = this;
        int iMax = Math.max(Math.abs(i10), Math.abs(i11));
        if (iMax <= 100) {
            Point point = touchUtil.mLastPosition;
            sendAbsMouseEvent(point.x, point.y, i10, i11, false, false);
            return;
        }
        final int iCeil = (int) Math.ceil(((double) iMax) / 100.0d);
        final int i12 = i10 / iCeil;
        final int i13 = i11 / iCeil;
        final int i14 = i10 - (i12 * iCeil);
        final int i15 = i11 - (i13 * iCeil);
        LogUtils.d(TAG, "sendMouseMoveGyroscopeSplit: totalOffset[" + i10 + "," + i11 + "], splitCount=" + iCeil + ", offsetPerStep[" + i12 + "," + i13 + "], remaining[" + i14 + "," + i15 + "]");
        int i16 = 0;
        while (i16 < iCeil) {
            final int i17 = i16;
            touchUtil.handler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.TouchUtil.8
                @Override // java.lang.Runnable
                public void run() {
                    int i18 = i12;
                    int i19 = i13;
                    if (i17 == iCeil - 1) {
                        i18 += i14;
                        i19 += i15;
                    }
                    TouchUtil touchUtil2 = TouchUtil.this;
                    touchUtil2.sendAbsMouseEvent(touchUtil2.mLastPosition.x, TouchUtil.this.mLastPosition.y, i18, i19, false, false);
                }
            }, i16 * 5);
            i16++;
            touchUtil = this;
        }
    }

    private void sendMouseWheelEvent(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastEventTime >= 100) {
            AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
            if (absIjkVideoView != null) {
                absIjkVideoView.sendEvent(ProtoBufUtil.getMouseWheelData(-i10));
                cancelLeftClickTimer();
                cancelRightClickTimer();
            }
            this.lastEventTime = jCurrentTimeMillis;
        }
    }

    private void sendTouchEvent(GSSDK.OneInputOPData.InputOP inputOP, int i10, int i11, int i12, int i13, boolean z10) {
        FPoint fPointCalculatePoint = calculatePoint(i10, i11);
        Point point = this.mLastPosition;
        point.x = i10;
        point.y = i11;
        LogUtils.d(TAG, "sendTouchEvent;action=" + inputOP + ";x=" + i10 + ";y=" + i11 + ";pointID=" + i12 + ";count=" + i13 + ";finalPoint=" + fPointCalculatePoint.toString() + ";needSend=" + z10 + "; scale=" + this.mScale);
        GSSDK.OneInputOPData.PointerProperties.Builder builderNewBuilder = GSSDK.OneInputOPData.PointerProperties.newBuilder();
        builderNewBuilder.setId(i12);
        builderNewBuilder.setType(GSSDK.OneInputOPData.PointerProperties.TouchDevice.TOOL_TYPE_FINGER);
        builderNewBuilder.setXPos((int) (fPointCalculatePoint.f33815x * this.mScale));
        builderNewBuilder.setYPos((int) (fPointCalculatePoint.f33816y * this.mScale));
        this.pointerList.add(builderNewBuilder.build());
        if (z10) {
            this.mBaseRtcVideoView.sendEvent(ProtoBufUtil.getTouchData(this.pointerList, inputOP, i13));
            this.pointerList.clear();
        }
    }

    private void setPCMouseStyle(final boolean z10, GSSDK.GameCursor.CursorStyle cursorStyle) {
        boolean zIsPCMouseMode = this.mBaseRtcVideoView.isPCMouseMode();
        String str = TAG;
        LogUtils.d(str, "setPCMouseStyle-->setSysMouseMode:" + z10 + ",mBaseRtcVideoView.isPCMouseMode():" + zIsPCMouseMode + ", mCursorStyle = " + this.mCursorStyle);
        if (!zIsPCMouseMode) {
            disablePointIconAnimate();
            if (Build.VERSION.SDK_INT >= 26) {
                AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
                this.mPointerIcon = null;
                absIjkVideoView.setPointerIcon(null);
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            AbsIjkVideoView absIjkVideoView2 = this.mBaseRtcVideoView;
            Bitmap bitmap = getBitmap();
            final boolean z11 = this.mBaseRtcVideoView.isPCMouseMode() && this.mBaseRtcVideoView.hasOperatePermission();
            if (z11) {
                boolean z12 = z10 && bitmap != null;
                if (cursorStyle == GSSDK.GameCursor.CursorStyle.CURSOR_NONE) {
                    bitmap = this.mTransparentCursorBitmap;
                }
                if (!z12) {
                    disablePointIconAnimate();
                    PointerIcon pointerIconCreate = PointerIcon.create(this.mTransparentCursorBitmap, 0.0f, 0.0f);
                    this.mPointerIcon = pointerIconCreate;
                    absIjkVideoView2.setPointerIcon(pointerIconCreate);
                } else if (isWorking(cursorStyle) || isBusy(cursorStyle)) {
                    LogUtils.d(str, "setPCMouseStyle-->is working or busy");
                    enablePointIconAnimate(cursorStyle);
                } else {
                    LogUtils.d(str, "setPCMouseStyle-->is normal");
                    disablePointIconAnimate();
                    if (isBadHotSpotX(bitmap, this.hotSpotX)) {
                        float fixHotSpotX = getFixHotSpotX(bitmap);
                        this.hotSpotX = fixHotSpotX;
                        reportErrorHotSpotX(bitmap, fixHotSpotX);
                    }
                    if (isBadHotSpotY(bitmap, this.hotSpotY)) {
                        float fixHotSpotY = getFixHotSpotY(bitmap);
                        this.hotSpotY = fixHotSpotY;
                        reportErrorHotSpotY(bitmap, fixHotSpotY);
                    }
                    PointerIcon pointerIconCreate2 = PointerIcon.create(bitmap, this.hotSpotX, this.hotSpotY);
                    this.mPointerIcon = pointerIconCreate2;
                    absIjkVideoView2.setPointerIcon(pointerIconCreate2);
                }
                LogUtils.d(str, "setPCMouseStyle useCustomMouseIcon:" + z11 + ",isUseSysMouse:" + z10 + ",useScaleBitmap:" + z12);
            } else {
                disablePointIconAnimate();
                this.mPointerIcon = null;
                absIjkVideoView2.setPointerIcon(null);
            }
            absIjkVideoView2.setOnCapturedPointerListener(new View.OnCapturedPointerListener() { // from class: com.haima.hmcp.widgets.TouchUtil.11
                @Override // android.view.View.OnCapturedPointerListener
                public boolean onCapturedPointer(View view, MotionEvent motionEvent) {
                    GSSDK.OneInputOPData.InputOP inputOP;
                    float rawX;
                    float rawY;
                    float historicalX;
                    float historicalY;
                    if (!TouchUtil.this.isAllowInput()) {
                        LogUtils.i(TouchUtil.TAG, "not allow handle captured pointer motion event");
                        return true;
                    }
                    int action = motionEvent.getAction();
                    int actionButton = motionEvent.getActionButton();
                    if (actionButton == 1 || actionButton == 2 || actionButton == 4 || actionButton == 16 || actionButton == 8) {
                        if (actionButton == 1) {
                            inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
                        } else if (actionButton == 2) {
                            inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
                        } else if (actionButton != 8) {
                            inputOP = actionButton != 16 ? GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE : GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_5;
                        } else {
                            inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_4;
                        }
                        GSSDK.OneInputOPData.InputState inputState = action == 11 ? GSSDK.OneInputOPData.InputState.OP_STATE_DOWN : action == 12 ? GSSDK.OneInputOPData.InputState.OP_STATE_UP : null;
                        if (inputState != null) {
                            if (JoyStickMappingManager.isKeyboardMapperGamepadEnable) {
                                return TouchUtil.this.sendMouseButtonEventMapping(motionEvent, JoyStickMappingManager.getMouseMappingButtonName(motionEvent, TouchUtil.this.mJoyStickMappingConfig));
                            }
                            TouchUtil.this.sendMouseButtonEvent(inputOP, inputState);
                            return true;
                        }
                    }
                    if (action == 2) {
                        if (TouchUtil.this.shouldUseReversePointerCapture()) {
                            rawX = -motionEvent.getRawY();
                            rawY = motionEvent.getRawX();
                        } else {
                            rawX = motionEvent.getRawX();
                            rawY = motionEvent.getRawY();
                        }
                        int historySize = motionEvent.getHistorySize();
                        for (int i10 = 0; i10 < historySize; i10++) {
                            if (TouchUtil.this.shouldUseReversePointerCapture()) {
                                historicalX = -motionEvent.getHistoricalY(i10);
                                historicalY = motionEvent.getHistoricalX(i10);
                            } else {
                                historicalX = motionEvent.getHistoricalX(i10);
                                historicalY = motionEvent.getHistoricalY(i10);
                            }
                            rawX += historicalX;
                            rawY += historicalY;
                        }
                        if (JoyStickMappingManager.isKeyboardMapperGamepadEnable) {
                            JoyStickMappingConfig joyStickMappingConfig = TouchUtil.this.mJoyStickMappingConfig;
                            if (joyStickMappingConfig != null && joyStickMappingConfig.isMouseConfigured()) {
                                TouchUtil.this.sendJoystickRockerMapping(motionEvent, true);
                            }
                        } else {
                            TouchUtil.this.sendRelMouseEvent((int) (rawX * TouchUtil.this.mPhysicalMouseViewOnSensitivity), (int) (rawY * TouchUtil.this.mPhysicalMouseViewOnSensitivity), false);
                        }
                    }
                    if (action == 8) {
                        int axisValue = (int) motionEvent.getAxisValue(9);
                        if (!JoyStickMappingManager.isKeyboardMapperGamepadEnable) {
                            TouchUtil.this.mBaseRtcVideoView.sendEvent(ProtoBufUtil.getMouseWheelData(axisValue));
                        }
                    }
                    return z11 && z10;
                }
            });
            if (!z11 || z10) {
                absIjkVideoView2.releasePointerCapture();
                this.hasRequestPointerCapture = false;
            } else {
                absIjkVideoView2.requestPointerCapture();
                this.hasRequestPointerCapture = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startAnimator() {
        Handler handler;
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        if (absIjkVideoView == null || (handler = absIjkVideoView.mHmcpHandler) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.haima.hmcp.widgets.TouchUtil.5
            @Override // java.lang.Runnable
            public void run() {
                if (TouchUtil.this.mBaseRtcVideoView.getCursorOverLay() == null) {
                    return;
                }
                TouchUtil.this.mBaseRtcVideoView.getCursorOverLay().setShowProgress(true);
                TouchUtil.this.mBaseRtcVideoView.getCursorOverLay().startAnimation(TouchUtil.this.touchConfig == null ? 2000L : TouchUtil.this.touchConfig.leftDownDuration);
            }
        });
    }

    private void stopAnimator() {
        Handler handler;
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        if (absIjkVideoView == null || (handler = absIjkVideoView.mHmcpHandler) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.haima.hmcp.widgets.TouchUtil.6
            @Override // java.lang.Runnable
            public void run() {
                if (TouchUtil.this.mBaseRtcVideoView.getCursorOverLay() == null) {
                    return;
                }
                TouchUtil.this.mBaseRtcVideoView.getCursorOverLay().cancelAnimation();
                TouchUtil.this.mBaseRtcVideoView.getCursorOverLay().setShowProgress(false);
                TouchUtil.this.mBaseRtcVideoView.getCursorOverLay().setProgress(0.0f);
            }
        });
    }

    private void updateSdkMouseStyle(GSSDK.GameCursor.CursorStyle cursorStyle) {
        if (cursorStyle == null) {
            LogUtils.d(TAG, "updateSdkMouseStyle: change mouse style fail: CursorStyle is null");
            return;
        }
        MouseView cursorImageView = this.mBaseRtcVideoView.getCursorImageView();
        if (cursorImageView == null) {
            LogUtils.d(TAG, "updateSdkMouseStyle: change mouse style fail: MouseView is null");
            return;
        }
        MouseView.MouseStyle mouseStyle = getMouseStyle(cursorStyle);
        if (mouseStyle == null) {
            LogUtils.d(TAG, "updateSdkMouseStyle: change mouse style fail: MouseStyle is null and set normal style");
            cursorImageView.setMouseStyle(MouseView.MouseStyle.NORMAL);
            cursorImageView.setImageDrawable(new BitmapDrawable(cursorImageView.getResources(), this.mTransparentCursorBitmap));
            return;
        }
        String str = TAG;
        LogUtils.d(str, "updateSdkMouseStyle: change mouse style: " + mouseStyle);
        cursorImageView.setMouseStyle(mouseStyle);
        if (mouseStyle != MouseView.MouseStyle.NORMAL || this.mCursorBitmap == null) {
            return;
        }
        LogUtils.d(str, "updateSdkMouseStyle: set normal cursor bitmap");
        cursorImageView.setImageDrawable(new BitmapDrawable(cursorImageView.getResources(), this.mCursorBitmap));
    }

    public void changeMouseStyle(GSSDK.GameCursor.CursorStyle cursorStyle) {
        LogUtils.d(TAG, "changeMouseStyle: " + cursorStyle);
        boolean zIsPCMouseMode = this.mBaseRtcVideoView.isPCMouseMode();
        boolean zIsGamePadToMouse = this.mBaseRtcVideoView.isGamePadToMouse();
        boolean z10 = this.mBaseRtcVideoView.hasOperatePermission() && this.mCursorShowOrHide;
        if (zIsGamePadToMouse) {
            updateSdkMouseStyle(cursorStyle);
            if (zIsPCMouseMode) {
                setPCMouseStyle(z10, cursorStyle);
                return;
            }
            return;
        }
        if (zIsPCMouseMode) {
            setPCMouseStyle(z10, cursorStyle);
        } else {
            updateSdkMouseStyle(cursorStyle);
        }
    }

    public void clearDelayMessage() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void disablePointIconAnimate() {
        MouseAnimateModel mouseAnimateModel = this.mouseAnimateModel;
        if (mouseAnimateModel == null) {
            return;
        }
        mouseAnimateModel.stop();
        LogUtils.d(TAG, "disablePointIconAnimate-->mouse anime stop");
    }

    public void enablePointIconAnimate(GSSDK.GameCursor.CursorStyle cursorStyle) {
        MouseAnimateModel.MouseStyle mouseStyle;
        String str = TAG;
        LogUtils.d(str, "enablePointIconAnimate-->");
        int i10 = AnonymousClass14.$SwitchMap$com$haima$hmcp$proto$GSSDK$GameCursor$CursorStyle[cursorStyle.ordinal()];
        if (i10 != 1) {
            mouseStyle = i10 != 2 ? null : MouseAnimateModel.MouseStyle.BUSY;
        } else {
            mouseStyle = MouseAnimateModel.MouseStyle.WORKING;
        }
        if (mouseStyle == null) {
            MouseAnimateModel mouseAnimateModel = this.mouseAnimateModel;
            if (mouseAnimateModel != null) {
                mouseAnimateModel.stop();
            }
            LogUtils.d(str, "enablePointIconAnimate-->onMouseFrame: mouse style: null");
            return;
        }
        LogUtils.d(str, "enablePointIconAnimate-->onMouseFrame: mouse style: " + mouseStyle);
        MouseAnimateModel mouseAnimateModel2 = this.mouseAnimateModel;
        if (mouseAnimateModel2 != null && mouseAnimateModel2.getMouseStyle() == mouseStyle) {
            LogUtils.d(str, "enablePointIconAnimate-->onMouseFrame: same mouse style");
            return;
        }
        if (this.mouseAnimateModel == null) {
            MouseAnimateModel mouseAnimateModel3 = new MouseAnimateModel();
            this.mouseAnimateModel = mouseAnimateModel3;
            mouseAnimateModel3.setListener(new MouseAnimateModel.MouseAnimateListener() { // from class: com.haima.hmcp.widgets.TouchUtil.12
                private Drawable getDrawable(int i11) {
                    try {
                        return Build.VERSION.SDK_INT < 22 ? ResourceManager.getInstance().getResources().getDrawable(i11) : ResourceManager.getInstance().getResources().getDrawable(i11, null);
                    } catch (Resources.NotFoundException e10) {
                        CountlyUtil.recordErrorEvent(Log.getStackTraceString(e10));
                        return null;
                    }
                }

                @Override // com.haima.hmcp.model.MouseAnimateModel.MouseAnimateListener
                public void onMouseFrame(int i11) {
                    Drawable drawable;
                    LogUtils.d(TouchUtil.TAG, "onMouseFrame: " + i11);
                    if (Build.VERSION.SDK_INT < 26 || (drawable = getDrawable(i11)) == null) {
                        return;
                    }
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(((BitmapDrawable) drawable).getBitmap(), TouchUtil.this.mBaseRtcVideoView.mCursorWidth, TouchUtil.this.mBaseRtcVideoView.mCursorHeight, true);
                    AbsIjkVideoView absIjkVideoView = TouchUtil.this.mBaseRtcVideoView;
                    TouchUtil touchUtil = TouchUtil.this;
                    if (touchUtil.isBadHotSpotX(bitmapCreateScaledBitmap, touchUtil.hotSpotX)) {
                        TouchUtil touchUtil2 = TouchUtil.this;
                        touchUtil2.hotSpotX = touchUtil2.getFixHotSpotX(bitmapCreateScaledBitmap);
                        TouchUtil touchUtil3 = TouchUtil.this;
                        touchUtil3.reportErrorHotSpotX(bitmapCreateScaledBitmap, touchUtil3.hotSpotX);
                    }
                    TouchUtil touchUtil4 = TouchUtil.this;
                    if (touchUtil4.isBadHotSpotY(bitmapCreateScaledBitmap, touchUtil4.hotSpotY)) {
                        TouchUtil touchUtil5 = TouchUtil.this;
                        touchUtil5.hotSpotY = touchUtil5.getFixHotSpotY(bitmapCreateScaledBitmap);
                        TouchUtil touchUtil6 = TouchUtil.this;
                        touchUtil6.reportErrorHotSpotY(bitmapCreateScaledBitmap, touchUtil6.hotSpotY);
                    }
                    TouchUtil touchUtil7 = TouchUtil.this;
                    touchUtil7.mPointerIcon = PointerIcon.create(bitmapCreateScaledBitmap, touchUtil7.hotSpotX, TouchUtil.this.hotSpotY);
                    absIjkVideoView.setPointerIcon(TouchUtil.this.mPointerIcon);
                }
            });
        }
        this.mouseAnimateModel.stop();
        this.mouseAnimateModel.start(mouseStyle);
        LogUtils.d(str, "enablePointIconAnimate-->mouse anime start");
    }

    public void followSysMouse(MotionEvent motionEvent) {
        if (JoyStickMappingManager.isKeyboardMapperGamepadEnable) {
            JoyStickMappingConfig joyStickMappingConfig = this.mJoyStickMappingConfig;
            if (joyStickMappingConfig == null || !joyStickMappingConfig.isMouseConfigured()) {
                return;
            }
            sendJoystickRockerMapping(motionEvent, true);
            return;
        }
        this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
        int y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
        this.downY = y10;
        int i10 = this.downX;
        this.lastX = i10;
        this.lastY = y10;
        sendAbsMouseEvent(i10, y10, 0, 0, true, false);
    }

    public int getBlankTouchFinger(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        int i10 = 0;
        for (int i11 = 0; i11 < pointerCount; i11++) {
            int pointerId = motionEvent.getPointerId(i11);
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                i10++;
                if (i10 == 1) {
                    this.firstPointerIndex = pointerId;
                } else if (i10 == 2) {
                    this.secondPointerIndex = pointerId;
                }
            }
        }
        LogUtils.i(TAG, "doublePointerSlide===blankPointerCount" + i10);
        return i10;
    }

    public PointerIcon getCurPointerIcon() {
        return this.mPointerIcon;
    }

    public GSSDK.GameCursor.CursorStyle getCursorStyle() {
        return this.mCursorStyle;
    }

    public float getFunctionSensitivity() {
        return this.mFunctionSensitivity.floatValue();
    }

    public Point getLastPosition() {
        return this.mLastPosition;
    }

    float getSensitivity() {
        return this.mOriginSensitivity.floatValue();
    }

    public float getUsingSensitivity() {
        return getSensitivityInternal().floatValue();
    }

    public boolean hasRequestPointerCapture() {
        return this.hasRequestPointerCapture;
    }

    public boolean isAllowInput() {
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        if (absIjkVideoView == null) {
            return true;
        }
        return absIjkVideoView.isAllowInput();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:38:0x0105 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x0106  */
    /* JADX WARN: Code duplicated, block: B:43:0x0110  */
    /* JADX WARN: Code duplicated, block: B:45:0x0113  */
    /* JADX WARN: Code duplicated, block: B:47:0x0146 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:54:0x0169  */
    /* JADX WARN: Code duplicated, block: B:56:0x0172  */
    /* JADX WARN: Code duplicated, block: B:57:0x017a  */
    /* JADX WARN: Code duplicated, block: B:59:0x017e  */
    /* JADX WARN: Code duplicated, block: B:61:0x0184  */
    /* JADX WARN: Code duplicated, block: B:69:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:72:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x01d0  */
    /* JADX WARN: Instruction removed from duplicated block: B:36:0x00c3, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x0113, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x01d0, please report this as an issue */
    boolean mouseSlideTouchEvent(MotionEvent motionEvent) {
        String str;
        int x10;
        int y10;
        int iAbs;
        int i10;
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId)) || this.mSpaceAreaPointID != -1) {
                return false;
            }
            this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
            int y11 = (int) motionEvent.getY(motionEvent.getActionIndex());
            this.downY = y11;
            this.lastX = this.downX;
            this.lastY = y11;
            this.mSpaceAreaPointID = pointerId;
            this.downTime = SystemClock.uptimeMillis();
            if (this.mTimer != null) {
                cancelLeftClickTimer();
            }
            if (!checkPositionOk(this.downX, this.downY)) {
                this.errorPointID = pointerId;
                return false;
            }
            LogUtils.d(TAG, "mouse slide mode: down [" + this.downX + "," + this.downY + "]");
            this.hasMouseDown = false;
            Timer timer = new Timer();
            this.mTimer = timer;
            timer.schedule(new TimerTask() { // from class: com.haima.hmcp.widgets.TouchUtil.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    TouchUtil.this.sendLMouseClickEvent(true);
                    TouchUtil.this.hasMouseDown = true;
                    TouchUtil.this.mTimer = null;
                }
            }, this.touchConfig.mouseSlideTouchTime);
        } else if (actionMasked == 1) {
            str = TAG;
            LogUtils.d(str, "mouse slide mode: down up cost " + (SystemClock.uptimeMillis() - this.downTime) + " ms");
            x10 = (int) motionEvent.getX(motionEvent.getActionIndex());
            y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId)) || pointerId != this.mSpaceAreaPointID) {
                return false;
            }
            this.mSpaceAreaPointID = -1;
            if (pointerId == this.errorPointID) {
                this.errorPointID = -1;
                return false;
            }
            this.errorPointID = -1;
            iAbs = Math.abs(x10 - this.downX);
            int iAbs2 = Math.abs(y10 - this.downY);
            LogUtils.d(str, "mouse slide mode: up [" + iAbs + "," + iAbs2 + "]");
            i10 = this.touchConfig.mouseSlideOffset;
            if (iAbs < i10 || iAbs2 >= i10) {
                LogUtils.d(str, "mouse slide: up point >= offset");
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                    sendDelayLMouseDownUp();
                } else if (this.hasMouseDown) {
                    sendLMouseClickEvent(false);
                }
            } else {
                LogUtils.d(str, "mouse slide mode: up point < offset");
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                    LogUtils.d(str, "mouse slide mode: cancel timer and no up event to send");
                } else if (this.hasMouseDown) {
                    LogUtils.d(str, "mouse slide mode: down send already, than send up event");
                    sendLMouseClickEvent(false);
                }
            }
        } else if (actionMasked == 2) {
            for (int i11 = 0; i11 < motionEvent.getPointerCount(); i11++) {
                int x11 = (int) motionEvent.getX(i11);
                int y12 = (int) motionEvent.getY(i11);
                if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(motionEvent.getPointerId(i11))) && motionEvent.getPointerId(i11) == this.mSpaceAreaPointID && this.errorPointID != motionEvent.getPointerId(i11)) {
                    int i12 = x11 - this.lastX;
                    int i13 = y12 - this.lastY;
                    int iAbs3 = Math.abs(x11 - this.downX);
                    int iAbs4 = Math.abs(y12 - this.downY);
                    LogUtils.d(TAG, "mouse slide mode: moving [" + iAbs3 + "," + iAbs4 + "]");
                    if (this.mTimer != null) {
                        int i14 = this.touchConfig.mouseSlideOffset;
                        if (iAbs3 >= i14 || iAbs4 >= i14) {
                            cancelLeftClickTimer();
                            Point point = this.mLastPosition;
                            sendAbsMouseEvent(point.x, point.y, i12, i13, false, false);
                        }
                    } else {
                        Point point2 = this.mLastPosition;
                        sendAbsMouseEvent(point2.x, point2.y, i12, i13, false, false);
                    }
                    this.lastX = x11;
                    this.lastY = y12;
                    break;
                }
            }
        } else if (actionMasked == 3) {
            str = TAG;
            LogUtils.d(str, "mouse slide mode: down up cost " + (SystemClock.uptimeMillis() - this.downTime) + " ms");
            x10 = (int) motionEvent.getX(motionEvent.getActionIndex());
            y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                return false;
            }
            this.mSpaceAreaPointID = -1;
            if (pointerId == this.errorPointID) {
                this.errorPointID = -1;
                return false;
            }
            this.errorPointID = -1;
            iAbs = Math.abs(x10 - this.downX);
            int iAbs5 = Math.abs(y10 - this.downY);
            LogUtils.d(str, "mouse slide mode: up [" + iAbs + "," + iAbs5 + "]");
            i10 = this.touchConfig.mouseSlideOffset;
            if (iAbs < i10) {
                LogUtils.d(str, "mouse slide: up point >= offset");
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                    sendDelayLMouseDownUp();
                } else if (this.hasMouseDown) {
                    sendLMouseClickEvent(false);
                }
            } else {
                LogUtils.d(str, "mouse slide: up point >= offset");
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                    sendDelayLMouseDownUp();
                } else if (this.hasMouseDown) {
                    sendLMouseClickEvent(false);
                }
            }
        } else if (actionMasked == 5) {
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                return false;
            }
            this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
            int y13 = (int) motionEvent.getY(motionEvent.getActionIndex());
            this.downY = y13;
            this.lastX = this.downX;
            this.lastY = y13;
            this.mSpaceAreaPointID = pointerId;
            this.downTime = SystemClock.uptimeMillis();
            if (this.mTimer != null) {
                cancelLeftClickTimer();
            }
            if (!checkPositionOk(this.downX, this.downY)) {
                this.errorPointID = pointerId;
                return false;
            }
            LogUtils.d(TAG, "mouse slide mode: down [" + this.downX + "," + this.downY + "]");
            this.hasMouseDown = false;
            Timer timer2 = new Timer();
            this.mTimer = timer2;
            timer2.schedule(new TimerTask() { // from class: com.haima.hmcp.widgets.TouchUtil.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    TouchUtil.this.sendLMouseClickEvent(true);
                    TouchUtil.this.hasMouseDown = true;
                    TouchUtil.this.mTimer = null;
                }
            }, this.touchConfig.mouseSlideTouchTime);
        } else if (actionMasked == 6) {
            str = TAG;
            LogUtils.d(str, "mouse slide mode: down up cost " + (SystemClock.uptimeMillis() - this.downTime) + " ms");
            x10 = (int) motionEvent.getX(motionEvent.getActionIndex());
            y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                return false;
            }
            this.mSpaceAreaPointID = -1;
            if (pointerId == this.errorPointID) {
                this.errorPointID = -1;
                return false;
            }
            this.errorPointID = -1;
            iAbs = Math.abs(x10 - this.downX);
            int iAbs6 = Math.abs(y10 - this.downY);
            LogUtils.d(str, "mouse slide mode: up [" + iAbs + "," + iAbs6 + "]");
            i10 = this.touchConfig.mouseSlideOffset;
            if (iAbs < i10) {
                LogUtils.d(str, "mouse slide: up point >= offset");
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                    sendDelayLMouseDownUp();
                } else if (this.hasMouseDown) {
                    sendLMouseClickEvent(false);
                }
            } else {
                LogUtils.d(str, "mouse slide: up point >= offset");
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                    sendDelayLMouseDownUp();
                } else if (this.hasMouseDown) {
                    sendLMouseClickEvent(false);
                }
            }
        }
        return false;
    }

    public void moveToCursorImageView() {
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        if (absIjkVideoView != null) {
            sendAbsMouseEvent((int) absIjkVideoView.getCursorImageView().getX(), (int) this.mBaseRtcVideoView.getCursorImageView().getY(), 0, 0, true, false);
        }
    }

    public void moveToLastMousePoint() {
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        if (absIjkVideoView == null || !absIjkVideoView.isPCMouseMode()) {
            return;
        }
        Point point = this.mLastPosition;
        sendAbsMouseEvent(point.x, point.y, 0, 0, true, false);
    }

    public void parseDeviceData(String str) {
        if (TextUtils.isEmpty(str)) {
            LogUtils.w(TAG, "parseDeviceData: jsonString is null or empty");
            this.capturedPointerReverseDeviceInfo.clear();
            return;
        }
        try {
            ArrayList arrayList = (ArrayList) com.alibaba.fastjson.a.parseObject(str, new com.alibaba.fastjson.h<ArrayList<ArrayList<String>>>() { // from class: com.haima.hmcp.widgets.TouchUtil.13
            }, new Feature[0]);
            if (arrayList != null && !arrayList.isEmpty()) {
                this.capturedPointerReverseDeviceInfo.clear();
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    ArrayList arrayList2 = (ArrayList) arrayList.get(i10);
                    if (arrayList2 == null || arrayList2.isEmpty()) {
                        LogUtils.w(TAG, "parseDeviceData: invalid device info at index " + i10 + ", array is null or empty");
                    } else {
                        try {
                            String str2 = (String) arrayList2.get(0);
                            String str3 = arrayList2.size() > 1 ? (String) arrayList2.get(1) : "";
                            String str4 = arrayList2.size() > 2 ? (String) arrayList2.get(2) : "";
                            if (TextUtils.isEmpty(str2)) {
                                LogUtils.w(TAG, "parseDeviceData: brand is empty at index " + i10 + ", skipping");
                            } else {
                                DeviceInfo deviceInfo = new DeviceInfo(str2, str3, str4);
                                this.capturedPointerReverseDeviceInfo.add(deviceInfo);
                                LogUtils.d(TAG, "parseDeviceData: added device " + i10 + " - " + deviceInfo.toString() + " (elements: " + arrayList2.size() + ")");
                            }
                        } catch (Exception e10) {
                            LogUtils.e(TAG, "parseDeviceData: error creating DeviceInfo at index " + i10, e10);
                        }
                    }
                }
                LogUtils.i(TAG, "parseDeviceData: successfully parsed and set " + this.capturedPointerReverseDeviceInfo.size() + " device entries to capturedPointerReverseDeviceInfo");
                return;
            }
            LogUtils.w(TAG, "parseDeviceData: parsed deviceData is null or empty");
            this.capturedPointerReverseDeviceInfo.clear();
        } catch (Exception e11) {
            LogUtils.e(TAG, "parseDeviceData: error parsing JSON string: " + str, e11);
            this.capturedPointerReverseDeviceInfo.clear();
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    /* JADX WARN: Code duplicated, block: B:30:0x0080 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x0081  */
    /* JADX WARN: Code duplicated, block: B:35:0x008b  */
    /* JADX WARN: Code duplicated, block: B:37:0x008e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0092  */
    boolean screenSlideTouchEvent(MotionEvent motionEvent) {
        int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (checkScreenSlideTouchInBoundary(motionEvent) || HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId)) || this.mSpaceAreaPointID != -1) {
                return false;
            }
            this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
            int y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
            this.downY = y10;
            this.lastX = this.downX;
            this.lastY = y10;
            this.mSpaceAreaPointID = pointerId;
        } else if (actionMasked == 1) {
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId)) || pointerId != this.mSpaceAreaPointID) {
                return false;
            }
            this.mSpaceAreaPointID = -1;
            if (pointerId == this.errorPointID) {
                this.errorPointID = -1;
                return false;
            }
            this.errorPointID = -1;
        } else if (actionMasked == 2) {
            for (int i10 = 0; i10 < motionEvent.getPointerCount(); i10++) {
                int x10 = (int) motionEvent.getX(i10);
                int y11 = (int) motionEvent.getY(i10);
                if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(motionEvent.getPointerId(i10))) && motionEvent.getPointerId(i10) == this.mSpaceAreaPointID && this.errorPointID != motionEvent.getPointerId(i10)) {
                    int i11 = x10 - this.lastX;
                    int i12 = y11 - this.lastY;
                    Point point = this.mLastPosition;
                    sendAbsMouseEvent(point.x, point.y, i11, i12, false, false);
                    this.lastX = x10;
                    this.lastY = y11;
                    break;
                }
            }
        } else if (actionMasked == 3) {
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                return false;
            }
            this.mSpaceAreaPointID = -1;
            if (pointerId == this.errorPointID) {
                this.errorPointID = -1;
                return false;
            }
            this.errorPointID = -1;
        } else if (actionMasked == 5) {
            if (checkScreenSlideTouchInBoundary(motionEvent)) {
                return false;
            }
            this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
            int y12 = (int) motionEvent.getY(motionEvent.getActionIndex());
            this.downY = y12;
            this.lastX = this.downX;
            this.lastY = y12;
            this.mSpaceAreaPointID = pointerId;
        } else if (actionMasked == 6) {
            if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                return false;
            }
            this.mSpaceAreaPointID = -1;
            if (pointerId == this.errorPointID) {
                this.errorPointID = -1;
                return false;
            }
            this.errorPointID = -1;
        }
        return false;
    }

    public void sendAbsMouseEvent(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        if (this.mTouchMode == TouchMode.TOUCH_MODE_SCREEN_SLIDE) {
            pointsAdded(i10, i11, i12, i13, z10, z11);
        } else {
            sendAbsMouseEventOnce(i10, i11, i12, i13, z10, z11);
        }
    }

    public void sendJoystickRockerMapping(MotionEvent motionEvent, boolean z10) {
        if (z10) {
            if (this.mJoystickMouseMappingHandler == null) {
                this.mJoystickMouseMappingHandler = new JoystickMappingHandler(this.mBaseRtcVideoView, this.mJoyStickMappingConfig, this.mTouchesMappingConfig, true);
            }
            this.mJoystickMouseMappingHandler.handleJoystickMapping(motionEvent);
        } else {
            if (this.mJoystickTouchMappingHandler == null) {
                this.mJoystickTouchMappingHandler = new JoystickMappingHandler(this.mBaseRtcVideoView, this.mJoyStickMappingConfig, this.mTouchesMappingConfig, false);
            }
            this.mJoystickTouchMappingHandler.handleJoystickMapping(motionEvent);
        }
    }

    public void sendLMouseClickEvent(boolean z10) {
        LogUtils.d(TAG, "sendLMouseClickEvent=" + z10);
        if (z10) {
            AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
            Point point = this.mLastRelativePosition;
            int i10 = point.x;
            int i11 = point.y;
            Point point2 = this.lastCursorPosition;
            absIjkVideoView.sendMouse(i10, i11, point2.x, point2.y, this.lastPositionMode, GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN, false);
            return;
        }
        AbsIjkVideoView absIjkVideoView2 = this.mBaseRtcVideoView;
        Point point3 = this.mLastRelativePosition;
        int i12 = point3.x;
        int i13 = point3.y;
        Point point4 = this.lastCursorPosition;
        absIjkVideoView2.sendMouse(i12, i13, point4.x, point4.y, this.lastPositionMode, GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT, GSSDK.OneInputOPData.InputState.OP_STATE_UP, false);
    }

    public boolean sendMouseButtonEvent(MotionEvent motionEvent) {
        LogUtils.d(TAG, "sendMouseButtonEvent inputEvent action:" + motionEvent.getAction());
        return JoyStickMappingManager.isKeyboardMapperGamepadEnable ? sendMouseButtonEventMapping(motionEvent, JoyStickMappingManager.getMouseMappingButtonName(motionEvent, this.mJoyStickMappingConfig)) : sendMouseButtonEventReal(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0052  */
    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    /* JADX WARN: Code duplicated, block: B:22:0x005b  */
    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0062  */
    /* JADX WARN: Code duplicated, block: B:27:0x0066  */
    /* JADX WARN: Code duplicated, block: B:29:0x006f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0088  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0091  */
    /* JADX WARN: Code duplicated, block: B:35:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x009a  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:73:0x014b  */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x006f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x00a1, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:73:0x014b, please report this as an issue */
    public boolean sendMouseButtonEventForBackup(MotionEvent motionEvent) {
        Boolean bool;
        GSSDK.OneInputOPData.InputOP inputOP;
        this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
        int y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
        this.downY = y10;
        int i10 = this.downX;
        this.lastX = i10;
        this.lastY = y10;
        sendAbsMouseEvent(i10, y10, 0, 0, true, false);
        int actionMasked = motionEvent.getActionMasked();
        int buttonState = motionEvent.getButtonState();
        Integer numValueOf = null;
        if (actionMasked == 0) {
            if (buttonState == 1) {
                this.isTvLMouseDown = true;
                this.isTvMMouseDown = false;
                this.isTvRMouseDown = false;
            } else if (buttonState == 2) {
                this.isTvRMouseDown = true;
                this.isTvMMouseDown = false;
                this.isTvLMouseDown = false;
            } else if (buttonState == 4) {
                this.isTvMMouseDown = true;
                this.isTvRMouseDown = false;
                this.isTvLMouseDown = false;
            } else {
                LogUtils.i(TAG, "sendMouseButtonEvent, its not mouse button event action: " + actionMasked);
                this.isTvMMouseDown = false;
                this.isTvRMouseDown = false;
                this.isTvLMouseDown = false;
            }
            bool = Boolean.TRUE;
            if (this.isTvLMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
            } else if (this.isTvRMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
            } else {
                if (this.isTvMMouseDown) {
                    LogUtils.i(TAG, "sendMouseButtonEvent, ACTION_DOWN fail, buttonState is not handle, buttonState = " + buttonState);
                    return false;
                }
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            bool = Boolean.FALSE;
            if (this.isTvLMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
            } else if (this.isTvRMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
            } else {
                if (this.isTvMMouseDown) {
                    LogUtils.i(TAG, "sendMouseButtonEvent, ACTION_UP fail, buttonState is not handle, buttonState = " + buttonState);
                    return false;
                }
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
            }
            this.isTvLMouseDown = false;
            this.isTvRMouseDown = false;
            this.isTvMMouseDown = false;
        } else if (actionMasked == 5) {
            if (buttonState == 1) {
                this.isTvLMouseDown = true;
                this.isTvMMouseDown = false;
                this.isTvRMouseDown = false;
            } else if (buttonState == 2) {
                this.isTvRMouseDown = true;
                this.isTvMMouseDown = false;
                this.isTvLMouseDown = false;
            } else if (buttonState == 4) {
                this.isTvMMouseDown = true;
                this.isTvRMouseDown = false;
                this.isTvLMouseDown = false;
            } else {
                LogUtils.i(TAG, "sendMouseButtonEvent, its not mouse button event action: " + actionMasked);
                this.isTvMMouseDown = false;
                this.isTvRMouseDown = false;
                this.isTvLMouseDown = false;
            }
            bool = Boolean.TRUE;
            if (this.isTvLMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
            } else if (this.isTvRMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
            } else {
                if (this.isTvMMouseDown) {
                    LogUtils.i(TAG, "sendMouseButtonEvent, ACTION_DOWN fail, buttonState is not handle, buttonState = " + buttonState);
                    return false;
                }
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
            }
        } else if (actionMasked != 6) {
            if (actionMasked == 11) {
                bool = Boolean.TRUE;
            } else if (actionMasked != 12) {
                bool = null;
                inputOP = null;
            } else {
                bool = Boolean.FALSE;
            }
            inputOP = null;
        } else {
            bool = Boolean.FALSE;
            if (this.isTvLMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
            } else if (this.isTvRMouseDown) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
            } else {
                if (this.isTvMMouseDown) {
                    LogUtils.i(TAG, "sendMouseButtonEvent, ACTION_UP fail, buttonState is not handle, buttonState = " + buttonState);
                    return false;
                }
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
            }
            this.isTvLMouseDown = false;
            this.isTvRMouseDown = false;
            this.isTvMMouseDown = false;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            numValueOf = Integer.valueOf(motionEvent.getActionButton());
            int iIntValue = numValueOf.intValue();
            if (iIntValue == 1) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_LEFT;
            } else if (iIntValue == 2) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT;
            } else if (iIntValue == 4) {
                inputOP = GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_MIDDLE;
            }
        }
        String str = TAG;
        LogUtils.d(str, "sendMouseButtonEvent action:" + actionMasked + ", actionButton:" + numValueOf + ", buttonState:" + buttonState);
        if (bool != null && inputOP != null) {
            return sendMouseButtonEvent(inputOP, bool.booleanValue() ? GSSDK.OneInputOPData.InputState.OP_STATE_DOWN : GSSDK.OneInputOPData.InputState.OP_STATE_UP);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sendMouseButtonEvent fail, ");
        sb2.append(bool == null ? "isButtonDown is null" : "inputOP is null");
        LogUtils.d(str, sb2.toString());
        return false;
    }

    public void sendMouseDeviceMove(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX(0);
        int y10 = (int) motionEvent.getY(0);
        String str = TAG;
        LogUtils.d(str, "sendMouseMove curX:" + x10 + ",curY:" + y10 + ",mScale:" + this.mScale);
        FPoint fPointCalculatePoint = calculatePoint(x10, y10);
        Point point = this.lastCursorPosition;
        float f10 = fPointCalculatePoint.f33815x;
        float f11 = this.mScale;
        point.x = (int) (f10 * f11);
        point.y = (int) (fPointCalculatePoint.f33816y * f11);
        LogUtils.d(str, "sendMouseMove point:" + fPointCalculatePoint + ", mLastPosition :" + this.mLastPosition + ",mLastRelativePosition:" + this.mLastRelativePosition);
        int i10 = x10 - this.mMouseLastX;
        int i11 = y10 - this.mMouseLastY;
        LogUtils.d(str, "sendMouseMove offsetX:" + i10 + ",offsetY:" + i11 + ",mLastX:" + this.mLastX + ",mLastY:" + this.mLastY + ",mSensitivity:" + getSensitivityInternal());
        int iFloatValue = (int) (((float) i10) * getSensitivityInternal().floatValue());
        int iFloatValue2 = (int) (((float) i11) * getSensitivityInternal().floatValue());
        Point point2 = this.mMouseLastPosition;
        point2.x = point2.x + iFloatValue;
        point2.y = point2.y + iFloatValue2;
        Point point3 = this.mLastRelativePosition;
        point3.x = point3.x + iFloatValue;
        point3.y = point3.y + iFloatValue2;
        updateMouse();
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        Point point4 = this.mLastRelativePosition;
        int i12 = point4.x;
        int i13 = point4.y;
        Point point5 = this.lastCursorPosition;
        absIjkVideoView.sendMouse(i12, i13, point5.x, point5.y, GSSDK.OneInputOPData.PositionMode.ABSOLUTE_MODE, GSSDK.OneInputOPData.InputOP.OP_MOUSE_MOV, GSSDK.OneInputOPData.InputState.OP_STATE_DEFAULT, true);
        LogUtils.d(str, "sendMouseMove : mMouseLastPosition=" + this.mLastRelativePosition.toString() + ";" + iFloatValue + ";" + iFloatValue2);
        this.mMouseLastX = x10;
        this.mMouseLastY = y10;
    }

    public void sendMouseFromVirMouse(int i10, int i11) {
        if (!this.mCursorShowOrHide) {
            sendRelMouseEvent(i10, i11, true);
        } else {
            Point point = this.mLastPosition;
            sendAbsMouseEvent(point.x + i10, point.y + i11, i10, i11, false, true);
        }
    }

    public void sendMouseMove(MotionEvent motionEvent) {
        if (!JoyStickMappingManager.isKeyboardMapperGamepadEnable) {
            sendMouseMoveReal(motionEvent);
            return;
        }
        JoyStickMappingConfig joyStickMappingConfig = this.mJoyStickMappingConfig;
        if (joyStickMappingConfig == null || !joyStickMappingConfig.isMouseConfigured()) {
            return;
        }
        sendJoystickRockerMapping(motionEvent, true);
    }

    public void sendMouseMoveGyroscope(int i10, int i11, boolean z10, boolean z11) {
        String str = TAG;
        LogUtils.d(str, "sendMouseMoveGyroscope curX:" + i10 + ",curY:" + i11 + ",mScale:" + this.mScale);
        int i12 = i10 - this.mMouseLastX;
        int i13 = i11 - this.mMouseLastY;
        LogUtils.d(str, "sendMouseMoveGyroscope offsetX:" + i12 + ",offsetY:" + i13 + ",mSensitivity:" + getSensitivityInternal());
        int iFloatValue = (int) (((float) i12) * getSensitivityInternal().floatValue());
        int iFloatValue2 = (int) (((float) i13) * getSensitivityInternal().floatValue());
        int i14 = iFloatValue * Constants.CONFIG_GYROSCOPE_SENSOR_X_SENSITIVITY;
        int i15 = iFloatValue2 * Constants.CONFIG_GYROSCOPE_SENSOR_Y_SENSITIVITY;
        if (z10) {
            i14 = -i14;
        }
        if (z11) {
            i15 = -i15;
        }
        sendMouseMoveGyroscopeSplit(i14, i15);
        this.mMouseLastX = i10;
        this.mMouseLastY = i11;
    }

    public void sendMouseMoveReal(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX(0);
        int y10 = (int) motionEvent.getY(0);
        String str = TAG;
        LogUtils.d(str, "sendMouseMove curX:" + x10 + ",curY:" + y10 + ",mScale:" + this.mScale);
        FPoint fPointCalculatePoint = calculatePoint(x10, y10);
        Point point = this.mLastPosition;
        point.x = x10;
        point.y = y10;
        Point point2 = this.mLastCursorPosition;
        float f10 = fPointCalculatePoint.f33815x;
        float f11 = this.mScale;
        point2.x = (int) (f10 * f11);
        point2.y = (int) (fPointCalculatePoint.f33816y * f11);
        LogUtils.d(str, "sendMouseMove point:" + fPointCalculatePoint + ", mLastPosition :" + this.mLastPosition + ",mLastRelativePosition:" + this.mLastRelativePosition);
        int i10 = x10 - this.mMouseLastX;
        int i11 = y10 - this.mMouseLastY;
        LogUtils.d(str, "sendMouseMove offsetX:" + i10 + ",offsetY:" + i11 + ",mLastX:" + this.mLastX + ",mLastY:" + this.mLastY + ",mSensitivity:" + getSensitivityInternal());
        int iFloatValue = (int) (((float) i10) * getSensitivityInternal().floatValue());
        int iFloatValue2 = (int) (((float) i11) * getSensitivityInternal().floatValue());
        Point point3 = this.mMouseLastPosition;
        point3.x = point3.x + iFloatValue;
        point3.y = point3.y + iFloatValue2;
        updateMouse();
        GSSDK.OneInputOPData.PositionMode positionMode = GSSDK.OneInputOPData.PositionMode.ABSOLUTE_MODE;
        this.lastPositionMode = positionMode;
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        Point point4 = this.mMouseLastPosition;
        int i12 = point4.x;
        int i13 = point4.y;
        Point point5 = this.mLastCursorPosition;
        absIjkVideoView.sendMouse(i12, i13, point5.x, point5.y, positionMode, GSSDK.OneInputOPData.InputOP.OP_MOUSE_MOV, GSSDK.OneInputOPData.InputState.OP_STATE_DEFAULT, true);
        LogUtils.d(str, "sendMouseMove : mMouseLastPosition=" + this.mMouseLastPosition.toString() + ";" + iFloatValue + ";" + iFloatValue2);
        this.mMouseLastX = x10;
        this.mMouseLastY = y10;
    }

    public void sendPhysicalMouseMove(int i10, int i11) {
        int width;
        int i12;
        if (this.mCursorShowOrHide || this.isTvLMouseDown) {
            return;
        }
        int i13 = this.lastX;
        if (i13 == -1000) {
            width = 0;
            i12 = 0;
        } else {
            width = i10 - i13;
            i12 = i11 - this.lastY;
        }
        if (i10 <= 0 && width == 0) {
            width = -(this.mBaseRtcVideoView.getWidth() / 40);
        } else if (i10 >= this.mBaseRtcVideoView.getWidth() - 1 && width == 0) {
            width = this.mBaseRtcVideoView.getWidth() / 40;
        }
        LogUtils.d(TAG, "sendPhysicalMouseMove  " + width + "; " + i12);
        sendRelMouseEvent(width, i12, false);
        this.lastX = i10;
        this.lastY = i11;
    }

    public void sendRMouseClickEvent(boolean z10) {
        LogUtils.d(TAG, "sendRMouseClickEvent=" + z10);
        if (z10) {
            AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
            Point point = this.mLastRelativePosition;
            int i10 = point.x;
            int i11 = point.y;
            Point point2 = this.lastCursorPosition;
            absIjkVideoView.sendMouse(i10, i11, point2.x, point2.y, this.lastPositionMode, GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT, GSSDK.OneInputOPData.InputState.OP_STATE_DOWN, false);
            return;
        }
        AbsIjkVideoView absIjkVideoView2 = this.mBaseRtcVideoView;
        Point point3 = this.mLastRelativePosition;
        int i12 = point3.x;
        int i13 = point3.y;
        Point point4 = this.lastCursorPosition;
        absIjkVideoView2.sendMouse(i12, i13, point4.x, point4.y, this.lastPositionMode, GSSDK.OneInputOPData.InputOP.OP_MOUSE_BUTTON_RIGHT, GSSDK.OneInputOPData.InputState.OP_STATE_UP, false);
    }

    public void sendRelMouseEvent(int i10, int i11, boolean z10) {
        int iFloatValue;
        float f10;
        float fFloatValue;
        if (z10) {
            fFloatValue = this.mBtnSensitivity;
            iFloatValue = (int) (i10 * fFloatValue);
            f10 = i11;
        } else {
            iFloatValue = (int) (i10 * getSensitivityInternal().floatValue());
            f10 = i11;
            fFloatValue = getSensitivityInternal().floatValue();
        }
        int i12 = (int) (f10 * fFloatValue);
        Point point = this.mLastRelativePosition;
        int i13 = point.x + iFloatValue;
        point.x = i13;
        int i14 = point.y + i12;
        point.y = i14;
        Point point2 = this.lastCursorPosition;
        point2.x = i13;
        point2.y = i14;
        GSSDK.OneInputOPData.PositionMode positionMode = GSSDK.OneInputOPData.PositionMode.RELATIVE_MODE;
        this.lastPositionMode = positionMode;
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        int i15 = point.x;
        int i16 = point.y;
        absIjkVideoView.sendMouse(i15, i16, i15, i16, positionMode, GSSDK.OneInputOPData.InputOP.OP_MOUSE_MOV, GSSDK.OneInputOPData.InputState.OP_STATE_DEFAULT, true);
        LogUtils.d(TAG, "sendRelMouseEvent : mLastRelativePosition=" + this.mLastRelativePosition.toString());
    }

    public void setBtnSensitivity(float f10) {
        LogUtils.d(TAG, "setBtnSensitivity" + f10);
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        if (f10 > 2.0f) {
            f10 = 2.0f;
        }
        this.mBtnSensitivity = f10;
    }

    void setConfig(X86TouchConfig x86TouchConfig) {
        if (x86TouchConfig == null) {
            this.touchConfig = new X86TouchConfig();
        } else {
            this.touchConfig = x86TouchConfig;
        }
    }

    public void setCursorBitmap(Bitmap bitmap) {
        LogUtils.d(TAG, "setCursorBitmap");
        this.mCursorBitmap = bitmap;
        updateMouse();
    }

    public void setCursorStyle(GSSDK.GameCursor.CursorStyle cursorStyle) {
        LogUtils.d(TAG, "cursorStyle = " + cursorStyle);
        changeMouseStyle(cursorStyle);
        this.mCursorStyle = cursorStyle;
        updateMouse();
    }

    void setGamepadMappingConfig(JoyStickMappingConfig joyStickMappingConfig) {
        this.mJoyStickMappingConfig = joyStickMappingConfig;
    }

    public void setInitPoint(Point point) {
        LogUtils.d(TAG, "point = " + point.toString());
        float f10 = (float) point.x;
        float f11 = this.mScale;
        this.mLastPosition = new Point(((int) (f10 / f11)) + ((int) this.mBaseRtcVideoView.mRenderView.getView().getX()), ((int) (((float) point.y) / f11)) + ((int) this.mBaseRtcVideoView.mRenderView.getView().getY()));
        updateMouse();
    }

    public void setIsShowMouse(boolean z10) {
        LogUtils.d(TAG, "isShowMouse:" + z10);
        this.mCursorShowOrHide = z10;
        updateMouse();
    }

    public void setMouseMode(TouchMode touchMode) {
        LogUtils.d(TAG, "setTouchMode: " + touchMode);
        if (touchMode == null) {
            return;
        }
        this.mTouchMode = touchMode;
        updateMouse();
    }

    public void setPhysicalMouseViewOnSensitivity(float f10) {
        LogUtils.d(TAG, "setPhysicalMouseViewOnSensitivity" + f10);
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        this.mPhysicalMouseViewOnSensitivity = f10;
    }

    public void setScale(float f10) {
        LogUtils.d(TAG, "scale:" + f10);
        this.mScale = f10;
    }

    public void setSensitivity(float f10) {
        LogUtils.d(TAG, "setSensitivity " + f10);
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        this.mOriginSensitivity = Float.valueOf(f10);
    }

    public void setSpecificSensitivity(float f10) {
        if (f10 < 0.0f) {
            LogUtils.d(TAG, "setSpecificSensitivity failed :" + f10);
            return;
        }
        this.mFunctionSensitivity = Float.valueOf(f10);
        LogUtils.d(TAG, "setSpecificSensitivity :" + this.mFunctionSensitivity);
    }

    void setTouchesMappingConfig(TouchesMappingConfig touchesMappingConfig) {
        this.mTouchesMappingConfig = touchesMappingConfig;
    }

    public void setView(AbsIjkVideoView absIjkVideoView) {
        this.mBaseRtcVideoView = absIjkVideoView;
    }

    public boolean shouldUseReversePointerCapture() {
        ArrayList<DeviceInfo> arrayList = this.capturedPointerReverseDeviceInfo;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (DeviceInfo deviceInfo : this.capturedPointerReverseDeviceInfo) {
                if (deviceInfo != null && deviceInfo.matchesCurrentDevice()) {
                    LogUtils.d(TAG, "shouldUseReversePointerCapture: current device matches " + deviceInfo.toString());
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x022b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:102:0x022c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0232  */
    /* JADX WARN: Code duplicated, block: B:106:0x0250  */
    /* JADX WARN: Code duplicated, block: B:108:0x0254 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:109:0x0255  */
    /* JADX WARN: Code duplicated, block: B:111:0x027d  */
    /* JADX WARN: Code duplicated, block: B:114:0x028a  */
    /* JADX WARN: Code duplicated, block: B:116:0x028d  */
    /* JADX WARN: Code duplicated, block: B:128:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:130:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:64:0x0155  */
    /* JADX WARN: Code duplicated, block: B:66:0x016d  */
    /* JADX WARN: Code duplicated, block: B:67:0x0186  */
    /* JADX WARN: Code duplicated, block: B:69:0x0194 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x0195  */
    /* JADX WARN: Code duplicated, block: B:74:0x019f  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:78:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:95:0x0211  */
    /* JADX WARN: Code duplicated, block: B:97:0x0217  */
    /* JADX WARN: Code duplicated, block: B:99:0x021d  */
    boolean touchEvent(MotionEvent motionEvent) {
        TouchMode touchMode;
        int x10;
        int y10;
        String str = TAG;
        LogUtils.d(str, "onHmTouchEvent event mouseMode=" + this.mTouchMode.name() + "; showCursor " + this.mCursorShowOrHide + ";action = " + motionEvent.getActionMasked() + "; pointCount = " + motionEvent.getPointerCount() + "; x=" + motionEvent.getX(motionEvent.getActionIndex()) + "; y=" + motionEvent.getY(motionEvent.getActionIndex()));
        TouchMode touchMode2 = this.mTouchMode;
        if (touchMode2 != TouchMode.TOUCH_MODE_NONE && !HmVirtualDeviceManager.editMode) {
            if (touchMode2 == TouchMode.TOUCH_MODE_SCREEN_SLIDE) {
                return screenSlideTouchEvent(motionEvent);
            }
            if (touchMode2 == TouchMode.TOUCH_MODE_MOUSE_SLIDE) {
                return mouseSlideTouchEvent(motionEvent);
            }
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            int actionMasked = motionEvent.getActionMasked();
            if (processDoublePointerSlide(motionEvent)) {
                return true;
            }
            if (actionMasked == 0) {
                if (HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                    return false;
                }
                if (this.mTouchMode == TouchMode.TOUCH_MODE_MULTIPLE) {
                    sendTouchEvent(GSSDK.OneInputOPData.InputOP.OP_TOUCH_POINT, (int) motionEvent.getX(motionEvent.getActionIndex()), (int) motionEvent.getY(motionEvent.getActionIndex()), pointerId, motionEvent.getPointerCount(), true);
                    return false;
                }
                if (this.mSpaceAreaPointID != -1) {
                    return false;
                }
                this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
                int y11 = (int) motionEvent.getY(motionEvent.getActionIndex());
                this.downY = y11;
                this.lastX = this.downX;
                this.lastY = y11;
                this.mSpaceAreaPointID = pointerId;
                this.downTime = SystemClock.uptimeMillis();
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                }
                if (!checkPositionOk(this.downX, this.downY)) {
                    this.errorPointID = pointerId;
                    return false;
                }
                touchMode = this.mTouchMode;
                if (touchMode != TouchMode.TOUCH_MODE_SCREEN && this.mCursorShowOrHide) {
                    sendAbsMouseEvent(this.downX, this.downY, 0, 0, true, false);
                    if (!isRMouseClickEvent(motionEvent)) {
                        X86TouchConfig x86TouchConfig = this.touchConfig;
                        if (x86TouchConfig == null || x86TouchConfig.touchScreenModeClickDelayTime <= 0) {
                            LogUtils.i(str, "mouse down delay send normal in TOUCH_MODE_SCREEN");
                            sendLMouseClickEvent(true);
                        } else {
                            LogUtils.i(str, "mouse down event send delay in TOUCH_MODE_SCREEN, delay: " + this.touchConfig.touchScreenModeClickDelayTime);
                            this.handler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.m0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f34142b.lambda$touchEvent$0();
                                }
                            }, (long) this.touchConfig.touchScreenModeClickDelayTime);
                        }
                    }
                } else if (touchMode == TouchMode.TOUCH_MODE_MOUSE) {
                    processTouchModeMouseDown(motionEvent);
                }
            } else if (actionMasked == 1) {
                x10 = (int) motionEvent.getX(motionEvent.getActionIndex());
                y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
                if (this.mTouchMode == TouchMode.TOUCH_MODE_MULTIPLE) {
                    sendTouchEvent(GSSDK.OneInputOPData.InputOP.OP_TOUCH_CANCEL, x10, y10, motionEvent.getPointerId(motionEvent.getActionIndex()), motionEvent.getPointerCount(), true);
                } else {
                    if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId)) || pointerId != this.mSpaceAreaPointID) {
                        return false;
                    }
                    this.mSpaceAreaPointID = -1;
                    if (pointerId == this.errorPointID) {
                        this.errorPointID = -1;
                        return false;
                    }
                    this.errorPointID = -1;
                    if (this.mTouchMode == TouchMode.TOUCH_MODE_SCREEN || isRMouseClickEvent(motionEvent)) {
                        if (this.mTouchMode == TouchMode.TOUCH_MODE_MOUSE) {
                            processTouchModeMouseUp(motionEvent);
                        }
                    } else if (this.mCursorShowOrHide) {
                        X86TouchConfig x86TouchConfig2 = this.touchConfig;
                        if (x86TouchConfig2 == null || x86TouchConfig2.touchScreenModeClickDelayTime <= 0) {
                            LogUtils.i(str, "mouse down delay send normal in TOUCH_MODE_SCREEN");
                            sendLMouseClickEvent(false);
                        } else {
                            LogUtils.i(str, "mouse up event send delay in TOUCH_MODE_SCREEN, delay: " + this.touchConfig.touchScreenModeClickDelayTime);
                            this.handler.postDelayed(new Runnable() { // from class: com.haima.hmcp.widgets.n0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f34144b.lambda$touchEvent$1();
                                }
                            }, (long) this.touchConfig.touchScreenModeClickDelayTime);
                        }
                    } else if (SystemClock.uptimeMillis() - this.downTime < 200 && Math.abs(x10 - this.downX) < 5 && Math.abs(y10 - this.downY) < 5) {
                        sendDelayLMouseDownUp();
                    }
                }
            } else if (actionMasked == 2) {
                int i10 = 0;
                while (i10 < motionEvent.getPointerCount()) {
                    int x11 = (int) motionEvent.getX(i10);
                    int y12 = (int) motionEvent.getY(i10);
                    if (this.mTouchMode == TouchMode.TOUCH_MODE_MULTIPLE) {
                        sendTouchEvent(GSSDK.OneInputOPData.InputOP.OP_TOUCH_MOVE, x11, y12, motionEvent.getPointerId(i10), motionEvent.getPointerCount(), i10 == motionEvent.getPointerCount() - 1);
                    } else if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(motionEvent.getPointerId(i10))) && ((motionEvent.getPointerId(i10) == this.mSpaceAreaPointID || motionEvent.getPointerCount() <= 1) && this.errorPointID != motionEvent.getPointerId(i10))) {
                        if (motionEvent.getPointerCount() == 1) {
                            x11 = (int) motionEvent.getX();
                            y12 = (int) motionEvent.getY();
                        }
                        int i11 = x11;
                        int i12 = y12;
                        int i13 = i11 - this.lastX;
                        int i14 = i12 - this.lastY;
                        processTouchModeMouseMove(motionEvent, i11, i12);
                        if (!this.mCursorShowOrHide) {
                            sendRelMouseEvent(i11 - this.lastX, i12 - this.lastY, false);
                        } else if (this.mTouchMode != TouchMode.TOUCH_MODE_MOUSE) {
                            sendAbsMouseEvent(i11, i12, i13, i14, true, false);
                        } else if (!this.isDoubleSliding) {
                            Point point = this.mLastPosition;
                            sendAbsMouseEvent(point.x, point.y, i13, i14, false, false);
                        }
                        this.lastX = i11;
                        this.lastY = i12;
                        break;
                    }
                    i10++;
                }
            } else if (actionMasked == 3) {
                x10 = (int) motionEvent.getX(motionEvent.getActionIndex());
                y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
                if (this.mTouchMode == TouchMode.TOUCH_MODE_MULTIPLE) {
                    sendTouchEvent(GSSDK.OneInputOPData.InputOP.OP_TOUCH_CANCEL, x10, y10, motionEvent.getPointerId(motionEvent.getActionIndex()), motionEvent.getPointerCount(), true);
                } else {
                    if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                        return false;
                    }
                    this.mSpaceAreaPointID = -1;
                    if (pointerId == this.errorPointID) {
                        this.errorPointID = -1;
                        return false;
                    }
                    this.errorPointID = -1;
                    if (this.mTouchMode == TouchMode.TOUCH_MODE_SCREEN) {
                        if (this.mTouchMode == TouchMode.TOUCH_MODE_MOUSE) {
                            processTouchModeMouseUp(motionEvent);
                        }
                    } else if (this.mTouchMode == TouchMode.TOUCH_MODE_MOUSE) {
                        processTouchModeMouseUp(motionEvent);
                    }
                }
            } else if (actionMasked != 5) {
                if (actionMasked == 6) {
                    x10 = (int) motionEvent.getX(motionEvent.getActionIndex());
                    y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
                    if (this.mTouchMode == TouchMode.TOUCH_MODE_MULTIPLE) {
                        sendTouchEvent(GSSDK.OneInputOPData.InputOP.OP_TOUCH_CANCEL, x10, y10, motionEvent.getPointerId(motionEvent.getActionIndex()), motionEvent.getPointerCount(), true);
                    } else {
                        if (!HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                            return false;
                        }
                        this.mSpaceAreaPointID = -1;
                        if (pointerId == this.errorPointID) {
                            this.errorPointID = -1;
                            return false;
                        }
                        this.errorPointID = -1;
                        if (this.mTouchMode == TouchMode.TOUCH_MODE_SCREEN) {
                            if (this.mTouchMode == TouchMode.TOUCH_MODE_MOUSE) {
                                processTouchModeMouseUp(motionEvent);
                            }
                        } else if (this.mTouchMode == TouchMode.TOUCH_MODE_MOUSE) {
                            processTouchModeMouseUp(motionEvent);
                        }
                    }
                }
            } else {
                if (HmVirtualDeviceManager.get().isUsePointID(Integer.valueOf(pointerId))) {
                    return false;
                }
                if (this.mTouchMode == TouchMode.TOUCH_MODE_MULTIPLE) {
                    sendTouchEvent(GSSDK.OneInputOPData.InputOP.OP_TOUCH_POINT, (int) motionEvent.getX(motionEvent.getActionIndex()), (int) motionEvent.getY(motionEvent.getActionIndex()), pointerId, motionEvent.getPointerCount(), true);
                    return false;
                }
                if (this.mSpaceAreaPointID != -1) {
                    return false;
                }
                this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
                int y13 = (int) motionEvent.getY(motionEvent.getActionIndex());
                this.downY = y13;
                this.lastX = this.downX;
                this.lastY = y13;
                this.mSpaceAreaPointID = pointerId;
                this.downTime = SystemClock.uptimeMillis();
                if (this.mTimer != null) {
                    cancelLeftClickTimer();
                }
                if (!checkPositionOk(this.downX, this.downY)) {
                    this.errorPointID = pointerId;
                    return false;
                }
                touchMode = this.mTouchMode;
                if (touchMode != TouchMode.TOUCH_MODE_SCREEN) {
                    if (touchMode == TouchMode.TOUCH_MODE_MOUSE) {
                        processTouchModeMouseDown(motionEvent);
                    }
                } else if (touchMode == TouchMode.TOUCH_MODE_MOUSE) {
                    processTouchModeMouseDown(motionEvent);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003f  */
    /* JADX WARN: Code duplicated, block: B:18:0x0045  */
    public boolean tvTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.isTvLMouseDown = true;
            this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
            int y10 = (int) motionEvent.getY(motionEvent.getActionIndex());
            this.downY = y10;
            this.lastX = this.downX;
            this.lastY = y10;
            this.downTime = SystemClock.uptimeMillis();
            sendAbsMouseEvent(this.downX, this.downY, 0, 0, true, false);
            sendLMouseClickEvent(true);
        } else if (actionMasked == 1) {
            this.isTvLMouseDown = false;
            sendLMouseClickEvent(false);
        } else if (actionMasked == 2) {
            int x10 = (int) motionEvent.getX(0);
            int y11 = (int) motionEvent.getY(0);
            int i10 = this.lastX;
            int i11 = x10 - i10;
            int i12 = this.lastY;
            int i13 = y11 - i12;
            if (this.mCursorShowOrHide) {
                sendAbsMouseEvent(x10, y11, i11, i13, true, false);
            } else {
                sendRelMouseEvent(x10 - i10, y11 - i12, false);
            }
            this.lastX = x10;
            this.lastY = y11;
        } else if (actionMasked == 5) {
            this.isTvLMouseDown = true;
            this.downX = (int) motionEvent.getX(motionEvent.getActionIndex());
            int y12 = (int) motionEvent.getY(motionEvent.getActionIndex());
            this.downY = y12;
            this.lastX = this.downX;
            this.lastY = y12;
            this.downTime = SystemClock.uptimeMillis();
            sendAbsMouseEvent(this.downX, this.downY, 0, 0, true, false);
            sendLMouseClickEvent(true);
        } else if (actionMasked == 6) {
            this.isTvLMouseDown = false;
            sendLMouseClickEvent(false);
        }
        return false;
    }

    public void updateCurGamePackageName(String str) {
        LogUtils.d(TAG, "updateCurGamePackageName :" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.curGamePackageName = str;
    }

    public void updateHotSpot(float f10, float f11) {
        this.hotSpotX = f10;
        this.hotSpotY = f11;
        updateMouse();
    }

    public void updateHotSpotScale(float f10) {
        this.hotSpotX *= f10;
        this.hotSpotY *= f10;
        updateMouse();
    }

    public void updateMouse() {
        checkCursorPosition();
        MouseView cursorImageView = this.mBaseRtcVideoView.getCursorImageView();
        boolean zIsPCMouseMode = this.mBaseRtcVideoView.isPCMouseMode();
        boolean zHasOperatePermission = this.mBaseRtcVideoView.hasOperatePermission();
        if (cursorImageView == null) {
            return;
        }
        int i10 = 0;
        boolean z10 = zHasOperatePermission && this.mCursorShowOrHide;
        if (this.mCursorStyle == GSSDK.GameCursor.CursorStyle.CURSOR_NONE || this.mTouchMode == TouchMode.TOUCH_MODE_MULTIPLE) {
            cursorImageView.setVisibility(8);
            setPCMouseStyle(z10, this.mCursorStyle);
            return;
        }
        if (!z10 && 8 == cursorImageView.getVisibility()) {
            setPCMouseStyle(z10, this.mCursorStyle);
            return;
        }
        if (!z10 || (zIsPCMouseMode && !this.mBaseRtcVideoView.isGamePadToMouse())) {
            i10 = 8;
        }
        cursorImageView.setVisibility(i10);
        setPCMouseStyle(z10, this.mCursorStyle);
        LogUtils.d(TAG, "lastPosition: " + this.mLastPosition);
        cursorImageView.setX(((float) this.mLastPosition.x) - this.hotSpotX);
        cursorImageView.setY(((float) this.mLastPosition.y) - this.hotSpotY);
        CircularProgressIndicatorView cursorOverLay = this.mBaseRtcVideoView.getCursorOverLay();
        if (cursorOverLay == null) {
            return;
        }
        float width = cursorImageView.getWidth();
        float height = cursorImageView.getHeight();
        float width2 = cursorOverLay.getWidth();
        float height2 = cursorOverLay.getHeight();
        Point point = this.mLastPosition;
        float f10 = (point.x - this.hotSpotX) - ((width2 - width) / 2.0f);
        float f11 = (point.y - this.hotSpotY) - ((height2 - height) / 2.0f);
        cursorOverLay.setX(f10);
        cursorOverLay.setY(f11);
    }

    public void useSpecificSensitivity(boolean z10) {
        if (z10) {
            this.mUseSpecificSensitivity = true;
            LogUtils.d(TAG, "useSpecificSensitivity isChecked is true :" + this.mFunctionSensitivity);
            return;
        }
        this.mUseSpecificSensitivity = false;
        LogUtils.d(TAG, "useSpecificSensitivity isChecked is false,resume :" + this.mOriginSensitivity);
    }

    public void wrapCustomInputOPData(ArrayList<HMInputOpData.HMOneInputOPData> arrayList) {
        int i10;
        if (arrayList == null || arrayList.size() == 0) {
            return;
        }
        LogUtils.d(HmVirtualDeviceManager.TAG, "wrapCustomInputOPData :mLastRelativePosition.x=" + this.mLastRelativePosition.x + ";mLastRelativePosition.y=" + this.mLastRelativePosition.y + ";lastCursorPosition.x=" + this.lastCursorPosition.x + ";lastCursorPosition.y=" + this.lastCursorPosition.y);
        for (HMInputOpData.HMOneInputOPData hMOneInputOPData : arrayList) {
            if (hMOneInputOPData != null && ((i10 = AnonymousClass14.$SwitchMap$com$haima$hmcp$beans$HMInputOpData$HMOneInputOPData_InputOP[hMOneInputOPData.inputOp.ordinal()]) == 1 || i10 == 2 || i10 == 3 || i10 == 4)) {
                if (hMOneInputOPData.mousePosition == null) {
                    Point point = new Point();
                    hMOneInputOPData.mousePosition = point;
                    Point point2 = this.mLastRelativePosition;
                    point.x = point2.x;
                    point.y = point2.y;
                }
                if (hMOneInputOPData.cursorPosition == null) {
                    Point point3 = new Point();
                    hMOneInputOPData.cursorPosition = point3;
                    Point point4 = this.lastCursorPosition;
                    point3.x = point4.x;
                    point3.y = point4.y;
                }
            }
        }
    }

    private boolean checkPositionOk(int i10, int i11) {
        int x10;
        int y10;
        int right;
        int bottom;
        IRenderViewBase iRenderViewBase = this.mBaseRtcVideoView.mRenderView;
        if (iRenderViewBase == null) {
            return false;
        }
        if (iRenderViewBase.getView().getRotation() == 90.0f) {
            x10 = (this.mBaseRtcVideoView.getWidth() - this.mBaseRtcVideoView.mRenderView.getView().getHeight()) / 2;
            y10 = (this.mBaseRtcVideoView.getHeight() - this.mBaseRtcVideoView.mRenderView.getView().getWidth()) / 2;
            right = this.mBaseRtcVideoView.mRenderView.getView().getHeight() + x10;
            bottom = this.mBaseRtcVideoView.mRenderView.getView().getWidth() + y10;
        } else {
            x10 = (int) this.mBaseRtcVideoView.mRenderView.getView().getX();
            y10 = (int) this.mBaseRtcVideoView.mRenderView.getView().getY();
            right = this.mBaseRtcVideoView.mRenderView.getView().getRight();
            bottom = this.mBaseRtcVideoView.mRenderView.getView().getBottom();
        }
        LogUtils.d(TAG, "offsetX:" + x10 + ",offsetY: " + y10 + ", x:" + i10 + ", y:" + i11 + ";====" + right + ";" + bottom);
        return i10 >= x10 && i11 >= y10 && i10 <= right && i11 <= bottom;
    }

    public boolean sendMouseButtonEvent(GSSDK.OneInputOPData.InputOP inputOP, GSSDK.OneInputOPData.InputState inputState) {
        if (inputOP == null) {
            LogUtils.d(TAG, "sendMouseButtonEvent fail: inputOp is null");
            return false;
        }
        if (inputState == null) {
            LogUtils.d(TAG, "sendMouseButtonEvent fail: inputState is null");
            return false;
        }
        LogUtils.d(TAG, "sendMouseButtonEvent: PositionMode = " + this.lastPositionMode + ", InputOP = " + inputOP + ", InputState = " + inputState);
        updateMouse();
        AbsIjkVideoView absIjkVideoView = this.mBaseRtcVideoView;
        if (absIjkVideoView != null && absIjkVideoView.mIsGamepadToMouse) {
            Point point = this.lastCursorPosition;
            Point point2 = this.mLastPosition;
            point.x = point2.x;
            point.y = point2.y;
        }
        Point point3 = this.mLastRelativePosition;
        int i10 = point3.x;
        int i11 = point3.y;
        Point point4 = this.lastCursorPosition;
        absIjkVideoView.sendMouse(i10, i11, point4.x, point4.y, this.lastPositionMode, inputOP, inputState, false);
        return true;
    }
}
