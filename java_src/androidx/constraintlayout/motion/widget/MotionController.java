package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class MotionController {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private boolean mNoMovement;
    private int mPathMotionArc;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();

    MotionController(View view) {
        int i10 = Key.UNSET;
        this.mPathMotionArc = i10;
        this.mTransformPivotTarget = i10;
        this.mTransformPivotView = null;
        this.mQuantizeMotionSteps = i10;
        this.mQuantizeMotionPhase = Float.NaN;
        this.mQuantizeMotionInterpolator = null;
        this.mNoMovement = false;
        setView(view);
    }

    private float getAdjustedPosition(float position, float[] velocity) {
        float f10 = 0.0f;
        if (velocity != null) {
            velocity[0] = 1.0f;
        } else {
            float f11 = this.mStaggerScale;
            if (f11 != 1.0d) {
                float f12 = this.mStaggerOffset;
                if (position < f12) {
                    position = 0.0f;
                }
                if (position > f12 && position < 1.0d) {
                    position = Math.min((position - f12) * f11, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f13 = Float.NaN;
        for (MotionPaths motionPaths : this.mMotionPaths) {
            Easing easing2 = motionPaths.mKeyFrameEasing;
            if (easing2 != null) {
                float f14 = motionPaths.time;
                if (f14 < position) {
                    easing = easing2;
                    f10 = f14;
                } else if (Float.isNaN(f13)) {
                    f13 = motionPaths.time;
                }
            }
        }
        if (easing != null) {
            float f15 = (Float.isNaN(f13) ? 1.0f : f13) - f10;
            double d10 = (position - f10) / f15;
            position = (((float) easing.get(d10)) * f15) + f10;
            if (velocity != null) {
                velocity[0] = (float) easing.getDiff(d10);
            }
        }
        return position;
    }

    private static Interpolator getInterpolator(Context context, int type, String interpolatorString, int id2) {
        if (type == -2) {
            return AnimationUtils.loadInterpolator(context, id2);
        }
        if (type == -1) {
            final Easing interpolator = Easing.getInterpolator(interpolatorString);
            return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                @Override // android.animation.TimeInterpolator
                public float getInterpolation(float v10) {
                    return (float) interpolator.get(v10);
                }
            };
        }
        if (type == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (type == 1) {
            return new AccelerateInterpolator();
        }
        if (type == 2) {
            return new DecelerateInterpolator();
        }
        if (type == 4) {
            return new BounceInterpolator();
        }
        if (type != 5) {
            return null;
        }
        return new OvershootInterpolator();
    }

    private float getPreCycleDistance() {
        char c10;
        float fHypot;
        float[] fArr = new float[2];
        float f10 = 1.0f / 99;
        double d10 = 0.0d;
        double d11 = 0.0d;
        float f11 = 0.0f;
        int i10 = 0;
        while (i10 < 100) {
            float f12 = i10 * f10;
            double d12 = f12;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f13 = Float.NaN;
            float f14 = 0.0f;
            for (MotionPaths motionPaths : this.mMotionPaths) {
                Easing easing2 = motionPaths.mKeyFrameEasing;
                if (easing2 != null) {
                    float f15 = motionPaths.time;
                    if (f15 < f12) {
                        easing = easing2;
                        f14 = f15;
                    } else if (Float.isNaN(f13)) {
                        f13 = motionPaths.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f13)) {
                    f13 = 1.0f;
                }
                float f16 = f13 - f14;
                d12 = (((float) easing.get((f12 - f14) / f16)) * f16) + f14;
            }
            this.mSpline[0].getPos(d12, this.mInterpolateData);
            float f17 = f11;
            int i11 = i10;
            this.mStartMotionPath.getCenter(d12, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i11 > 0) {
                c10 = 0;
                fHypot = (float) (((double) f17) + Math.hypot(d11 - ((double) fArr[1]), d10 - ((double) fArr[0])));
            } else {
                c10 = 0;
                fHypot = f17;
            }
            d10 = fArr[c10];
            i10 = i11 + 1;
            f11 = fHypot;
            d11 = fArr[1];
        }
        return f11;
    }

    private void insertKey(MotionPaths point) {
        int iBinarySearch = Collections.binarySearch(this.mMotionPaths, point);
        if (iBinarySearch == 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" KeyPath position \"");
            sb2.append(point.position);
            sb2.append("\" outside of range");
        }
        this.mMotionPaths.add((-iBinarySearch) - 1, point);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    void addKeys(ArrayList<Key> list) {
        this.mKeyList.addAll(list);
    }

    void buildBounds(float[] bounds, int pointCount) {
        float f10 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            map.get("translationX");
        }
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        if (map2 != null) {
            map2.get("translationY");
        }
        HashMap<String, ViewOscillator> map3 = this.mCycleMap;
        if (map3 != null) {
            map3.get("translationX");
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            map4.get("translationY");
        }
        for (int i10 = 0; i10 < pointCount; i10++) {
            float fMin = i10 * f10;
            float f11 = this.mStaggerScale;
            float f12 = 0.0f;
            if (f11 != 1.0f) {
                float f13 = this.mStaggerOffset;
                if (fMin < f13) {
                    fMin = 0.0f;
                }
                if (fMin > f13 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f13) * f11, 1.0f);
                }
            }
            double d10 = fMin;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f14 = Float.NaN;
            for (MotionPaths motionPaths : this.mMotionPaths) {
                Easing easing2 = motionPaths.mKeyFrameEasing;
                if (easing2 != null) {
                    float f15 = motionPaths.time;
                    if (f15 < fMin) {
                        easing = easing2;
                        f12 = f15;
                    } else if (Float.isNaN(f14)) {
                        f14 = motionPaths.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f14)) {
                    f14 = 1.0f;
                }
                float f16 = f14 - f12;
                d10 = (((float) easing.get((fMin - f12) / f16)) * f16) + f12;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, bounds, i10 * 2);
        }
    }

    int buildKeyBounds(float[] keyBounds, int[] mode) {
        if (keyBounds == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (mode != null) {
            Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                mode[i10] = it2.next().mMode;
                i10++;
            }
        }
        int i11 = 0;
        for (double d10 : timePoints) {
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, keyBounds, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    int buildKeyFrames(float[] keyFrames, int[] mode) {
        if (keyFrames == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (mode != null) {
            Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                mode[i10] = it2.next().mMode;
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < timePoints.length; i12++) {
            this.mSpline[0].getPos(timePoints[i12], this.mInterpolateData);
            this.mStartMotionPath.getCenter(timePoints[i12], this.mInterpolateVariables, this.mInterpolateData, keyFrames, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    void buildPath(float[] points, int pointCount) {
        double d10;
        float f10 = 1.0f;
        float f11 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewOscillator> map3 = this.mCycleMap;
        ViewOscillator viewOscillator = map3 == null ? null : map3.get("translationX");
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map4 != null ? map4.get("translationY") : null;
        int i10 = 0;
        while (i10 < pointCount) {
            float fMin = i10 * f11;
            float f12 = this.mStaggerScale;
            float f13 = 0.0f;
            if (f12 != f10) {
                float f14 = this.mStaggerOffset;
                if (fMin < f14) {
                    fMin = 0.0f;
                }
                if (fMin > f14 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f14) * f12, f10);
                }
            }
            float f15 = fMin;
            double d11 = f15;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f16 = Float.NaN;
            for (MotionPaths motionPaths : this.mMotionPaths) {
                Easing easing2 = motionPaths.mKeyFrameEasing;
                double d12 = d11;
                if (easing2 != null) {
                    float f17 = motionPaths.time;
                    if (f17 < f15) {
                        f13 = f17;
                        easing = easing2;
                    } else if (Float.isNaN(f16)) {
                        f16 = motionPaths.time;
                    }
                }
                d11 = d12;
            }
            double d13 = d11;
            if (easing != null) {
                if (Float.isNaN(f16)) {
                    f16 = 1.0f;
                }
                float f18 = f16 - f13;
                d10 = (((float) easing.get((f15 - f13) / f18)) * f18) + f13;
            } else {
                d10 = d13;
            }
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                }
            }
            int i11 = i10 * 2;
            int i12 = i10;
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, points, i11);
            if (viewOscillator != null) {
                points[i11] = points[i11] + viewOscillator.get(f15);
            } else if (viewSpline != null) {
                points[i11] = points[i11] + viewSpline.get(f15);
            }
            if (viewOscillator2 != null) {
                int i13 = i11 + 1;
                points[i13] = points[i13] + viewOscillator2.get(f15);
            } else if (viewSpline2 != null) {
                int i14 = i11 + 1;
                points[i14] = points[i14] + viewSpline2.get(f15);
            }
            i10 = i12 + 1;
            f10 = 1.0f;
        }
    }

    void buildRect(float p10, float[] path, int offset) {
        this.mSpline[0].getPos(getAdjustedPosition(p10, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, path, offset);
    }

    void buildRectangles(float[] path, int pointCount) {
        float f10 = 1.0f / (pointCount - 1);
        for (int i10 = 0; i10 < pointCount; i10++) {
            this.mSpline[0].getPos(getAdjustedPosition(i10 * f10, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, path, i10 * 8);
        }
    }

    void endTrigger(boolean start) {
        if (!"button".equals(Debug.getName(this.mView)) || this.mKeyTriggers == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
            if (i10 >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i10].conditionallyFire(start ? -100.0f : 100.0f, this.mView);
            i10++;
        }
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    int getAttributeValues(String attributeType, float[] points, int pointCount) {
        ViewSpline viewSpline = this.mAttributesMap.get(attributeType);
        if (viewSpline == null) {
            return -1;
        }
        for (int i10 = 0; i10 < points.length; i10++) {
            points[i10] = viewSpline.get(i10 / (points.length - 1));
        }
        return points.length;
    }

    public void getCenter(double p10, float[] pos, float[] vel) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(p10, dArr);
        this.mSpline[0].getSlope(p10, dArr2);
        Arrays.fill(vel, 0.0f);
        this.mStartMotionPath.getCenter(p10, this.mInterpolateVariables, dArr, pos, dArr2, vel);
    }

    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    void getDpDt(float position, float locationX, float locationY, float[] mAnchorDpDt) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(position, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i10 = 0;
        if (curveFitArr == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f10 = motionPaths.f173x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f11 = f10 - motionPaths2.f173x;
            float f12 = motionPaths.f174y - motionPaths2.f174y;
            float f13 = (motionPaths.width - motionPaths2.width) + f11;
            float f14 = (motionPaths.height - motionPaths2.height) + f12;
            mAnchorDpDt[0] = (f11 * (1.0f - locationX)) + (f13 * locationX);
            mAnchorDpDt[1] = (f12 * (1.0f - locationY)) + (f14 * locationY);
            return;
        }
        double d10 = adjustedPosition;
        curveFitArr[0].getSlope(d10, this.mInterpolateVelocity);
        this.mSpline[0].getPos(d10, this.mInterpolateData);
        float f15 = this.mVelocity[0];
        while (true) {
            dArr = this.mInterpolateVelocity;
            if (i10 >= dArr.length) {
                break;
            }
            dArr[i10] = dArr[i10] * ((double) f15);
            i10++;
        }
        CurveFit curveFit = this.mArcSpline;
        if (curveFit == null) {
            this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        double[] dArr2 = this.mInterpolateData;
        if (dArr2.length > 0) {
            curveFit.getPos(d10, dArr2);
            this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
            this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
        }
    }

    public int getDrawPath() {
        int iMax = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
        while (it2.hasNext()) {
            iMax = Math.max(iMax, it2.next().mDrawPath);
        }
        return Math.max(iMax, this.mEndMotionPath.mDrawPath);
    }

    public float getFinalHeight() {
        return this.mEndMotionPath.height;
    }

    public float getFinalWidth() {
        return this.mEndMotionPath.width;
    }

    public float getFinalX() {
        return this.mEndMotionPath.f173x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f174y;
    }

    MotionPaths getKeyFrame(int i10) {
        return this.mMotionPaths.get(i10);
    }

    public int getKeyFrameInfo(int type, int[] info) {
        float[] fArr = new float[2];
        int i10 = 0;
        int i11 = 0;
        for (Key key : this.mKeyList) {
            int i12 = key.mType;
            if (i12 == type || type != -1) {
                info[i11] = 0;
                int i13 = i11 + 1;
                info[i13] = i12;
                int i14 = i13 + 1;
                int i15 = key.mFramePosition;
                info[i14] = i15;
                double d10 = i15 / 100.0f;
                this.mSpline[0].getPos(d10, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i16 = i14 + 1;
                info[i16] = Float.floatToIntBits(fArr[0]);
                int i17 = i16 + 1;
                info[i17] = Float.floatToIntBits(fArr[1]);
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    int i18 = i17 + 1;
                    info[i18] = keyPosition.mPositionType;
                    int i19 = i18 + 1;
                    info[i19] = Float.floatToIntBits(keyPosition.mPercentX);
                    i17 = i19 + 1;
                    info[i17] = Float.floatToIntBits(keyPosition.mPercentY);
                }
                int i20 = i17 + 1;
                info[i11] = i20 - i11;
                i10++;
                i11 = i20;
            }
        }
        return i10;
    }

    float getKeyFrameParameter(int type, float x10, float y10) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f10 = motionPaths.f173x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f11 = motionPaths2.f173x;
        float f12 = f10 - f11;
        float f13 = motionPaths.f174y;
        float f14 = motionPaths2.f174y;
        float f15 = f13 - f14;
        float f16 = f11 + (motionPaths2.width / 2.0f);
        float f17 = f14 + (motionPaths2.height / 2.0f);
        float fHypot = (float) Math.hypot(f12, f15);
        if (fHypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f18 = x10 - f16;
        float f19 = y10 - f17;
        if (((float) Math.hypot(f18, f19)) == 0.0f) {
            return 0.0f;
        }
        float f20 = (f18 * f12) + (f19 * f15);
        if (type == 0) {
            return f20 / fHypot;
        }
        if (type == 1) {
            return (float) Math.sqrt((fHypot * fHypot) - (f20 * f20));
        }
        if (type == 2) {
            return f18 / f12;
        }
        if (type == 3) {
            return f19 / f12;
        }
        if (type == 4) {
            return f18 / f15;
        }
        if (type != 5) {
            return 0.0f;
        }
        return f19 / f15;
    }

    public int getKeyFramePositions(int[] type, float[] pos) {
        int i10 = 0;
        int i11 = 0;
        for (Key key : this.mKeyList) {
            int i12 = key.mFramePosition;
            type[i10] = (key.mType * 1000) + i12;
            double d10 = i12 / 100.0f;
            this.mSpline[0].getPos(d10, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d10, this.mInterpolateVariables, this.mInterpolateData, pos, i11);
            i11 += 2;
            i10++;
        }
        return i10;
    }

    double[] getPos(double position) {
        this.mSpline[0].getPos(position, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(position, dArr);
            }
        }
        return this.mInterpolateData;
    }

    KeyPositionBase getPositionKeyframe(int layoutWidth, int layoutHeight, float x10, float y10) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f10 = motionPaths.f173x;
        rectF.left = f10;
        float f11 = motionPaths.f174y;
        rectF.top = f11;
        rectF.right = f10 + motionPaths.width;
        rectF.bottom = f11 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f12 = motionPaths2.f173x;
        rectF2.left = f12;
        float f13 = motionPaths2.f174y;
        rectF2.top = f13;
        rectF2.right = f12 + motionPaths2.width;
        rectF2.bottom = f13 + motionPaths2.height;
        for (Key key : this.mKeyList) {
            if (key instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) key;
                if (keyPositionBase.intersects(layoutWidth, layoutHeight, rectF, rectF2, x10, y10)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    void getPostLayoutDvDp(float position, int width, int height, float locationX, float locationY, float[] mAnchorDpDt) {
        float adjustedPosition = getAdjustedPosition(position, this.mVelocity);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewSpline> map3 = this.mAttributesMap;
        ViewSpline viewSpline3 = map3 == null ? null : map3.get("rotation");
        HashMap<String, ViewSpline> map4 = this.mAttributesMap;
        ViewSpline viewSpline4 = map4 == null ? null : map4.get("scaleX");
        HashMap<String, ViewSpline> map5 = this.mAttributesMap;
        ViewSpline viewSpline5 = map5 == null ? null : map5.get("scaleY");
        HashMap<String, ViewOscillator> map6 = this.mCycleMap;
        ViewOscillator viewOscillator = map6 == null ? null : map6.get("translationX");
        HashMap<String, ViewOscillator> map7 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map7 == null ? null : map7.get("translationY");
        HashMap<String, ViewOscillator> map8 = this.mCycleMap;
        ViewOscillator viewOscillator3 = map8 == null ? null : map8.get("rotation");
        HashMap<String, ViewOscillator> map9 = this.mCycleMap;
        ViewOscillator viewOscillator4 = map9 == null ? null : map9.get("scaleX");
        HashMap<String, ViewOscillator> map10 = this.mCycleMap;
        ViewOscillator viewOscillator5 = map10 != null ? map10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
        velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d10 = adjustedPosition;
                curveFit.getPos(d10, dArr);
                this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        int i10 = 0;
        if (this.mSpline == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f10 = motionPaths.f173x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f11 = f10 - motionPaths2.f173x;
            ViewOscillator viewOscillator6 = viewOscillator5;
            float f12 = motionPaths.f174y - motionPaths2.f174y;
            ViewOscillator viewOscillator7 = viewOscillator4;
            float f13 = (motionPaths.width - motionPaths2.width) + f11;
            float f14 = (motionPaths.height - motionPaths2.height) + f12;
            mAnchorDpDt[0] = (f11 * (1.0f - locationX)) + (f13 * locationX);
            mAnchorDpDt[1] = (f12 * (1.0f - locationY)) + (f14 * locationY);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
            velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewOscillator7, viewOscillator6, adjustedPosition);
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
        this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
        this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
        float f15 = this.mVelocity[0];
        while (true) {
            double[] dArr2 = this.mInterpolateVelocity;
            if (i10 >= dArr2.length) {
                this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
                return;
            } else {
                dArr2[i10] = dArr2[i10] * ((double) f15);
                i10++;
            }
        }
    }

    public float getStartHeight() {
        return this.mStartMotionPath.height;
    }

    public float getStartWidth() {
        return this.mStartMotionPath.width;
    }

    public float getStartX() {
        return this.mStartMotionPath.f173x;
    }

    public float getStartY() {
        return this.mStartMotionPath.f174y;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public View getView() {
        return this.mView;
    }

    boolean interpolate(View child, float global_position, long time, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean pathRotate2;
        char c10;
        float adjustedPosition = getAdjustedPosition(global_position, null);
        int i10 = this.mQuantizeMotionSteps;
        if (i10 != Key.UNSET) {
            float f10 = 1.0f / i10;
            float fFloor = ((float) Math.floor(adjustedPosition / f10)) * f10;
            float f11 = (adjustedPosition % f10) / f10;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f11 = (f11 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            adjustedPosition = ((interpolator != null ? interpolator.getInterpolation(f11) : ((double) f11) > 0.5d ? 1.0f : 0.0f) * f10) + fFloor;
        }
        float f12 = adjustedPosition;
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            Iterator<ViewSpline> it2 = map.values().iterator();
            while (it2.hasNext()) {
                it2.next().setProperty(child, f12);
            }
        }
        HashMap<String, ViewTimeCycle> map2 = this.mTimeCycleAttributesMap;
        if (map2 != null) {
            ViewTimeCycle.PathRotate pathRotate3 = null;
            boolean property = false;
            for (ViewTimeCycle viewTimeCycle : map2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate3 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    property |= viewTimeCycle.setProperty(child, f12, time, keyCache);
                }
            }
            pathRotate2 = property;
            pathRotate = pathRotate3;
        } else {
            pathRotate = null;
            pathRotate2 = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d10 = f12;
            curveFitArr[0].getPos(d10, this.mInterpolateData);
            this.mSpline[0].getSlope(d10, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                    this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                }
            }
            if (!this.mNoMovement) {
                this.mStartMotionPath.setView(f12, child, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                this.mForceMeasure = false;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) child.getParent()).findViewById(this.mTransformPivotTarget);
                }
                View view = this.mTransformPivotView;
                if (view != null) {
                    float top = (view.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (child.getRight() - child.getLeft() > 0 && child.getBottom() - child.getTop() > 0) {
                        float left2 = left - child.getLeft();
                        float top2 = top - child.getTop();
                        child.setPivotX(left2);
                        child.setPivotY(top2);
                    }
                }
            }
            HashMap<String, ViewSpline> map3 = this.mAttributesMap;
            if (map3 != null) {
                for (ViewSpline viewSpline : map3.values()) {
                    if (viewSpline instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline).setPathRotate(child, f12, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                c10 = 1;
                pathRotate2 |= pathRotate.setPathRotate(child, keyCache, f12, time, dArr3[0], dArr3[1]);
            } else {
                c10 = 1;
            }
            int i11 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i11 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i11].getPos(d10, this.mValuesBuff);
                CustomSupport.setInterpolatedValue(this.mStartMotionPath.attributes.get(this.mAttributeNames[i11 - 1]), child, this.mValuesBuff);
                i11++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f12 <= 0.0f) {
                    child.setVisibility(motionConstrainedPoint.visibility);
                } else if (f12 >= 1.0f) {
                    child.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    child.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i12 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i12 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i12].conditionallyFire(f12, child);
                    i12++;
                }
            }
        } else {
            c10 = 1;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f13 = motionPaths.f173x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f14 = f13 + ((motionPaths2.f173x - f13) * f12);
            float f15 = motionPaths.f174y;
            float f16 = f15 + ((motionPaths2.f174y - f15) * f12);
            float f17 = motionPaths.width;
            float f18 = motionPaths2.width;
            float f19 = motionPaths.height;
            float f20 = motionPaths2.height;
            float f21 = f14 + 0.5f;
            int i13 = (int) f21;
            float f22 = f16 + 0.5f;
            int i14 = (int) f22;
            int i15 = (int) (f21 + ((f18 - f17) * f12) + f17);
            int i16 = (int) (f22 + ((f20 - f19) * f12) + f19);
            int i17 = i15 - i13;
            int i18 = i16 - i14;
            if (f18 != f17 || f20 != f19 || this.mForceMeasure) {
                child.measure(View.MeasureSpec.makeMeasureSpec(i17, 1073741824), View.MeasureSpec.makeMeasureSpec(i18, 1073741824));
                this.mForceMeasure = false;
            }
            child.layout(i13, i14, i15, i16);
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            for (ViewOscillator viewOscillator : map4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(child, f12, dArr4[0], dArr4[c10]);
                } else {
                    viewOscillator.setProperty(child, f12);
                }
            }
        }
        return pathRotate2;
    }

    String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    void positionKeyframe(View view, KeyPositionBase key, float x10, float y10, String[] attribute, float[] value) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f10 = motionPaths.f173x;
        rectF.left = f10;
        float f11 = motionPaths.f174y;
        rectF.top = f11;
        rectF.right = f10 + motionPaths.width;
        rectF.bottom = f11 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f12 = motionPaths2.f173x;
        rectF2.left = f12;
        float f13 = motionPaths2.f174y;
        rectF2.top = f13;
        rectF2.right = f12 + motionPaths2.width;
        rectF2.bottom = f13 + motionPaths2.height;
        key.positionAttributes(view, rectF, rectF2, x10, y10, attribute, value);
    }

    public void remeasure() {
        this.mForceMeasure = true;
    }

    void rotate(Rect rect, Rect out, int rotation, int preHeight, int preWidth) {
        if (rotation == 1) {
            int i10 = rect.left + rect.right;
            out.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            out.top = preWidth - ((i10 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation == 2) {
            int i11 = rect.left + rect.right;
            out.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            out.top = (i11 - rect.height()) / 2;
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation == 3) {
            int i12 = rect.left + rect.right;
            out.left = ((rect.height() / 2) + rect.top) - (i12 / 2);
            out.top = preWidth - ((i12 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation != 4) {
            return;
        }
        int i13 = rect.left + rect.right;
        out.left = preHeight - (((rect.bottom + rect.top) + rect.width()) / 2);
        out.top = (i13 - rect.height()) / 2;
        out.right = out.left + rect.width();
        out.bottom = out.top + rect.height();
    }

    void setBothStates(View v10) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(v10.getX(), v10.getY(), v10.getWidth(), v10.getHeight());
        this.mEndMotionPath.setBounds(v10.getX(), v10.getY(), v10.getWidth(), v10.getHeight());
        this.mStartPoint.setState(v10);
        this.mEndPoint.setState(v10);
    }

    public void setDrawPath(int debugMode) {
        this.mStartMotionPath.mDrawPath = debugMode;
    }

    void setEndState(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i10 = constraintSet.mRotate;
        if (i10 != 0) {
            rotate(cw, this.mTempRect, i10, parentWidth, parentHeight);
            cw = this.mTempRect;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(cw.left, cw.top, cw.width(), cw.height());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(cw, constraintSet, i10, this.mId);
    }

    public void setPathMotionArc(int arc) {
        this.mPathMotionArc = arc;
    }

    void setStartCurrentState(View v10) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.setBounds(v10.getX(), v10.getY(), v10.getWidth(), v10.getHeight());
        this.mStartPoint.setState(v10);
    }

    public void setStartState(ViewState rect, View v10, int rotation, int preWidth, int preHeight) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        Rect rect2 = new Rect();
        if (rotation == 1) {
            int i10 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = preWidth - ((i10 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (rotation == 2) {
            int i11 = rect.left + rect.right;
            rect2.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i11 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        }
        this.mStartMotionPath.setBounds(rect2.left, rect2.top, rect2.width(), rect2.height());
        this.mStartPoint.setState(rect2, v10, rotation, rect.rotation);
    }

    public void setTransformPivotTarget(int transformPivotTarget) {
        this.mTransformPivotTarget = transformPivotTarget;
        this.mTransformPivotView = null;
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int parentWidth, int parentHeight, float transitionDuration, long currentTime) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle viewTimeCycleMakeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline viewSplineMakeSpline;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        int i10 = this.mPathMotionArc;
        if (i10 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = i10;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            arrayList = null;
            for (Key key : arrayList2) {
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    insertKey(new MotionPaths(parentWidth, parentHeight, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i11 = keyPosition.mCurveFit;
                    if (i11 != Key.UNSET) {
                        this.mCurveFitType = i11;
                    }
                } else if (key instanceof KeyCycle) {
                    key.getAttributeNames(hashSet3);
                } else if (key instanceof KeyTimeCycle) {
                    key.getAttributeNames(hashSet);
                } else if (key instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) key);
                } else {
                    key.setInterpolation(map);
                    key.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[1];
                    for (Key key2 : this.mKeyList) {
                        HashMap<String, ConstraintAttribute> map2 = key2.mCustomConstraints;
                        if (map2 != null && (constraintAttribute3 = map2.get(str2)) != null) {
                            sparseArray.append(key2.mFramePosition, constraintAttribute3);
                        }
                    }
                    viewSplineMakeSpline = ViewSpline.makeCustomSpline(str, (SparseArray<ConstraintAttribute>) sparseArray);
                } else {
                    viewSplineMakeSpline = ViewSpline.makeSpline(str);
                }
                if (viewSplineMakeSpline != null) {
                    viewSplineMakeSpline.setType(str);
                    this.mAttributesMap.put(str, viewSplineMakeSpline);
                }
            }
            ArrayList<Key> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                for (Key key3 : arrayList3) {
                    if (key3 instanceof KeyAttributes) {
                        key3.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = map.get(str3)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.mAttributesMap.get(str3);
                if (viewSpline != null) {
                    viewSpline.setup(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            for (String str4 : hashSet) {
                if (!this.mTimeCycleAttributesMap.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[1];
                        for (Key key4 : this.mKeyList) {
                            HashMap<String, ConstraintAttribute> map3 = key4.mCustomConstraints;
                            if (map3 != null && (constraintAttribute2 = map3.get(str5)) != null) {
                                sparseArray2.append(key4.mFramePosition, constraintAttribute2);
                            }
                        }
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeCustomSpline(str4, sparseArray2);
                    } else {
                        viewTimeCycleMakeSpline = ViewTimeCycle.makeSpline(str4, currentTime);
                    }
                    if (viewTimeCycleMakeSpline != null) {
                        viewTimeCycleMakeSpline.setType(str4);
                        this.mTimeCycleAttributesMap.put(str4, viewTimeCycleMakeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                for (Key key5 : arrayList4) {
                    if (key5 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) key5).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str6 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str6).setup(map.containsKey(str6) ? map.get(str6).intValue() : 0);
            }
        }
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
        int i12 = 1;
        while (it2.hasNext()) {
            motionPathsArr[i12] = it2.next();
            i12++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i13 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i13 >= strArr.length) {
                break;
            }
            String str8 = strArr[i13];
            this.mAttributeInterpolatorCount[i13] = 0;
            for (int i14 = 0; i14 < size; i14++) {
                if (motionPathsArr[i14].attributes.containsKey(str8) && (constraintAttribute = motionPathsArr[i14].attributes.get(str8)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i13] = iArr[i13] + constraintAttribute.numberOfInterpolatedValues();
                    break;
                }
            }
            i13++;
        }
        boolean z10 = motionPathsArr[0].mPathMotionArc != Key.UNSET;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i15 = 1; i15 < size; i15++) {
            motionPathsArr[i15].different(motionPathsArr[i15 - 1], zArr, this.mAttributeNames, z10);
        }
        int i16 = 0;
        for (int i17 = 1; i17 < length; i17++) {
            if (zArr[i17]) {
                i16++;
            }
        }
        this.mInterpolateVariables = new int[i16];
        int iMax = Math.max(2, i16);
        this.mInterpolateData = new double[iMax];
        this.mInterpolateVelocity = new double[iMax];
        int i18 = 0;
        for (int i19 = 1; i19 < length; i19++) {
            if (zArr[i19]) {
                this.mInterpolateVariables[i18] = i19;
                i18++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, this.mInterpolateVariables.length);
        double[] dArr2 = new double[size];
        for (int i20 = 0; i20 < size; i20++) {
            motionPathsArr[i20].fillStandard(dArr[i20], this.mInterpolateVariables);
            dArr2[i20] = motionPathsArr[i20].time;
        }
        int i21 = 0;
        while (true) {
            int[] iArr2 = this.mInterpolateVariables;
            if (i21 >= iArr2.length) {
                break;
            }
            if (iArr2[i21] < MotionPaths.names.length) {
                String str9 = MotionPaths.names[this.mInterpolateVariables[i21]] + " [";
                for (int i22 = 0; i22 < size; i22++) {
                    str9 = str9 + dArr[i22][i21];
                }
            }
            i21++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i23 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i23 >= strArr3.length) {
                break;
            }
            String str10 = strArr3[i23];
            double[] dArr3 = null;
            int i24 = 0;
            double[][] dArr4 = null;
            for (int i25 = 0; i25 < size; i25++) {
                if (motionPathsArr[i25].hasCustomData(str10)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, motionPathsArr[i25].getCustomDataCount(str10));
                    }
                    MotionPaths motionPaths = motionPathsArr[i25];
                    dArr3[i24] = motionPaths.time;
                    motionPaths.getCustomData(str10, dArr4[i24], 0);
                    i24++;
                }
            }
            i23++;
            this.mSpline[i23] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i24), (double[][]) Arrays.copyOf(dArr4, i24));
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr3 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
            for (int i26 = 0; i26 < size; i26++) {
                MotionPaths motionPaths2 = motionPathsArr[i26];
                iArr3[i26] = motionPaths2.mPathMotionArc;
                dArr5[i26] = motionPaths2.time;
                double[] dArr7 = dArr6[i26];
                dArr7[0] = motionPaths2.f173x;
                dArr7[1] = motionPaths2.f174y;
            }
            this.mArcSpline = CurveFit.getArc(iArr3, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            float preCycleDistance = Float.NaN;
            for (String str11 : hashSet3) {
                ViewOscillator viewOscillatorMakeSpline = ViewOscillator.makeSpline(str11);
                if (viewOscillatorMakeSpline != null) {
                    if (viewOscillatorMakeSpline.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    viewOscillatorMakeSpline.setType(str11);
                    this.mCycleMap.put(str11, viewOscillatorMakeSpline);
                }
            }
            for (Key key6 : this.mKeyList) {
                if (key6 instanceof KeyCycle) {
                    ((KeyCycle) key6).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<ViewOscillator> it3 = this.mCycleMap.values().iterator();
            while (it3.hasNext()) {
                it3.next().setup(preCycleDistance);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.mStartMotionPath.setupRelative(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motionController, motionController.mEndMotionPath);
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f173x + " y: " + this.mStartMotionPath.f174y + " end: x: " + this.mEndMotionPath.f173x + " y: " + this.mEndMotionPath.f174y;
    }

    void setStartState(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i10 = constraintSet.mRotate;
        if (i10 != 0) {
            rotate(cw, this.mTempRect, i10, parentWidth, parentHeight);
        }
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        readView(motionPaths);
        this.mStartMotionPath.setBounds(cw.left, cw.top, cw.width(), cw.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(cw, constraintSet, i10, this.mId);
        this.mTransformPivotTarget = parameters.transform.transformPivotTarget;
        ConstraintSet.Motion motion = parameters.motion;
        this.mQuantizeMotionSteps = motion.mQuantizeMotionSteps;
        this.mQuantizeMotionPhase = motion.mQuantizeMotionPhase;
        Context context = this.mView.getContext();
        ConstraintSet.Motion motion2 = parameters.motion;
        this.mQuantizeMotionInterpolator = getInterpolator(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }
}
