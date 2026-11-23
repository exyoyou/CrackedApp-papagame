package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.join.mgps.Util.o0;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;
    private int mCurveFit = -1;
    private String mCross = null;

    private static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void read(KeyTrigger c10, TypedArray a10, Context context) {
            int indexCount = a10.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = a10.getIndex(i10);
                switch (mAttrMap.get(index)) {
                    case 1:
                        c10.mNegativeCross = a10.getString(index);
                        break;
                    case 2:
                        c10.mPositiveCross = a10.getString(index);
                        break;
                    case 3:
                    default:
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("unused attribute 0x");
                        sb2.append(Integer.toHexString(index));
                        sb2.append("   ");
                        sb2.append(mAttrMap.get(index));
                        break;
                    case 4:
                        c10.mCross = a10.getString(index);
                        break;
                    case 5:
                        c10.mTriggerSlack = a10.getFloat(index, c10.mTriggerSlack);
                        break;
                    case 6:
                        c10.mTriggerID = a10.getResourceId(index, c10.mTriggerID);
                        break;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a10.getResourceId(index, c10.mTargetId);
                            c10.mTargetId = resourceId;
                            if (resourceId == -1) {
                                c10.mTargetString = a10.getString(index);
                            }
                        } else if (a10.peekValue(index).type == 3) {
                            c10.mTargetString = a10.getString(index);
                        } else {
                            c10.mTargetId = a10.getResourceId(index, c10.mTargetId);
                        }
                        break;
                    case 8:
                        int integer = a10.getInteger(index, c10.mFramePosition);
                        c10.mFramePosition = integer;
                        c10.mFireThreshold = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        c10.mTriggerCollisionId = a10.getResourceId(index, c10.mTriggerCollisionId);
                        break;
                    case 10:
                        c10.mPostLayout = a10.getBoolean(index, c10.mPostLayout);
                        break;
                    case 11:
                        c10.mTriggerReceiver = a10.getResourceId(index, c10.mTriggerReceiver);
                        break;
                    case 12:
                        c10.mViewTransitionOnCross = a10.getResourceId(index, c10.mViewTransitionOnCross);
                        break;
                    case 13:
                        c10.mViewTransitionOnNegativeCross = a10.getResourceId(index, c10.mViewTransitionOnNegativeCross);
                        break;
                    case 14:
                        c10.mViewTransitionOnPositiveCross = a10.getResourceId(index, c10.mViewTransitionOnPositiveCross);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        int i10 = Key.UNSET;
        this.mTriggerReceiver = i10;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = i10;
        this.mTriggerCollisionId = i10;
        this.mTriggerCollisionView = null;
        this.mTriggerSlack = 0.1f;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mViewTransitionOnNegativeCross = i10;
        this.mViewTransitionOnPositiveCross = i10;
        this.mViewTransitionOnCross = i10;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void fire(String str, View call) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(o0.f49827a)) {
            fireCustom(str, call);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = call.getClass().getMethod(str, new Class[0]);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Could not find method \"");
                sb2.append(str);
                sb2.append("\"on class ");
                sb2.append(call.getClass().getSimpleName());
                sb2.append(" ");
                sb2.append(Debug.getName(call));
                return;
            }
        }
        try {
            method.invoke(call, new Object[0]);
        } catch (Exception unused2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Exception in call \"");
            sb3.append(this.mCross);
            sb3.append("\"on class ");
            sb3.append(call.getClass().getSimpleName());
            sb3.append(" ");
            sb3.append(Debug.getName(call));
        }
    }

    private void fireCustom(String str, View view) {
        boolean z10 = str.length() == 1;
        if (!z10) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z10 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    private void setUpRect(RectF rect, View child, boolean postLayout) {
        rect.top = child.getTop();
        rect.bottom = child.getBottom();
        rect.left = child.getLeft();
        rect.right = child.getRight();
        if (postLayout) {
            child.getMatrix().mapRect(rect);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008d  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:58:0x00df  */
    public void conditionallyFire(float pos, View child) {
        boolean z10;
        boolean z11;
        boolean z12;
        float f10;
        float f11;
        boolean z13;
        boolean z14;
        float f12;
        float f13;
        boolean z15;
        if (this.mTriggerCollisionId != Key.UNSET) {
            if (this.mTriggerCollisionView == null) {
                this.mTriggerCollisionView = ((ViewGroup) child.getParent()).findViewById(this.mTriggerCollisionId);
            }
            setUpRect(this.mCollisionRect, this.mTriggerCollisionView, this.mPostLayout);
            setUpRect(this.mTargetRect, child, this.mPostLayout);
            if (this.mCollisionRect.intersect(this.mTargetRect)) {
                if (this.mFireCrossReset) {
                    this.mFireCrossReset = false;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (this.mFirePositiveReset) {
                    this.mFirePositiveReset = false;
                    z15 = true;
                } else {
                    z15 = false;
                }
                this.mFireNegativeReset = true;
                z14 = z15;
                z12 = false;
            } else {
                if (this.mFireCrossReset) {
                    z10 = false;
                } else {
                    this.mFireCrossReset = true;
                    z10 = true;
                }
                if (this.mFireNegativeReset) {
                    this.mFireNegativeReset = false;
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.mFirePositiveReset = true;
                z14 = false;
            }
        } else {
            if (this.mFireCrossReset) {
                float f14 = this.mFireThreshold;
                if ((pos - f14) * (this.mFireLastPos - f14) < 0.0f) {
                    this.mFireCrossReset = false;
                    z10 = true;
                }
                if (this.mFireNegativeReset) {
                    f12 = this.mFireThreshold;
                    f13 = pos - f12;
                    if ((this.mFireLastPos - f12) * f13 >= 0.0f && f13 < 0.0f) {
                        this.mFireNegativeReset = false;
                        z11 = true;
                    }
                    if (this.mFirePositiveReset) {
                        f10 = this.mFireThreshold;
                        f11 = pos - f10;
                        if ((this.mFireLastPos - f10) * f11 < 0.0f || f11 <= 0.0f) {
                            z13 = false;
                        } else {
                            this.mFirePositiveReset = false;
                            z13 = true;
                        }
                        boolean z16 = z11;
                        z14 = z13;
                        z12 = z16;
                    } else {
                        if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                            this.mFirePositiveReset = true;
                        }
                        z12 = z11;
                        z14 = false;
                    }
                } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                    this.mFireNegativeReset = true;
                }
                z11 = false;
                if (this.mFirePositiveReset) {
                    f10 = this.mFireThreshold;
                    f11 = pos - f10;
                    if ((this.mFireLastPos - f10) * f11 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    boolean z17 = z11;
                    z14 = z13;
                    z12 = z17;
                } else {
                    if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z12 = z11;
                    z14 = false;
                }
            } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireCrossReset = true;
            }
            z10 = false;
            if (this.mFireNegativeReset) {
                f12 = this.mFireThreshold;
                f13 = pos - f12;
                if ((this.mFireLastPos - f12) * f13 >= 0.0f) {
                }
                if (this.mFirePositiveReset) {
                    f10 = this.mFireThreshold;
                    f11 = pos - f10;
                    if ((this.mFireLastPos - f10) * f11 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    boolean z18 = z11;
                    z14 = z13;
                    z12 = z18;
                } else {
                    if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z12 = z11;
                    z14 = false;
                }
            } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireNegativeReset = true;
            }
            z11 = false;
            if (this.mFirePositiveReset) {
                f10 = this.mFireThreshold;
                f11 = pos - f10;
                if ((this.mFireLastPos - f10) * f11 < 0.0f) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                boolean z19 = z11;
                z14 = z13;
                z12 = z19;
            } else {
                if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                    this.mFirePositiveReset = true;
                }
                z12 = z11;
                z14 = false;
            }
        }
        this.mFireLastPos = pos;
        if (z12 || z10 || z14) {
            ((MotionLayout) child.getParent()).fireTrigger(this.mTriggerID, z14, pos);
        }
        View viewFindViewById = this.mTriggerReceiver == Key.UNSET ? child : ((MotionLayout) child.getParent()).findViewById(this.mTriggerReceiver);
        if (z12) {
            String str = this.mNegativeCross;
            if (str != null) {
                fire(str, viewFindViewById);
            }
            if (this.mViewTransitionOnNegativeCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).viewTransition(this.mViewTransitionOnNegativeCross, viewFindViewById);
            }
        }
        if (z14) {
            String str2 = this.mPositiveCross;
            if (str2 != null) {
                fire(str2, viewFindViewById);
            }
            if (this.mViewTransitionOnPositiveCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).viewTransition(this.mViewTransitionOnPositiveCross, viewFindViewById);
            }
        }
        if (z10) {
            String str3 = this.mCross;
            if (str3 != null) {
                fire(str3, viewFindViewById);
            }
            if (this.mViewTransitionOnCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).viewTransition(this.mViewTransitionOnCross, viewFindViewById);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyTrigger keyTrigger = (KeyTrigger) src;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
    }

    int getCurveFit() {
        return this.mCurveFit;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        Loader.read(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTrigger), context);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        switch (tag) {
            case "positiveCross":
                this.mPositiveCross = value.toString();
                break;
            case "viewTransitionOnPositiveCross":
                this.mViewTransitionOnPositiveCross = toInt(value);
                break;
            case "triggerCollisionId":
                this.mTriggerCollisionId = toInt(value);
                break;
            case "triggerID":
                this.mTriggerID = toInt(value);
                break;
            case "negativeCross":
                this.mNegativeCross = value.toString();
                break;
            case "triggerCollisionView":
                this.mTriggerCollisionView = (View) value;
                break;
            case "viewTransitionOnNegativeCross":
                this.mViewTransitionOnNegativeCross = toInt(value);
                break;
            case "CROSS":
                this.mCross = value.toString();
                break;
            case "triggerSlack":
                this.mTriggerSlack = toFloat(value);
                break;
            case "viewTransitionOnCross":
                this.mViewTransitionOnCross = toInt(value);
                break;
            case "postLayout":
                this.mPostLayout = toBoolean(value);
                break;
            case "triggerReceiver":
                this.mTriggerReceiver = toInt(value);
                break;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: clone */
    public Key mo3clone() {
        return new KeyTrigger().copy(this);
    }
}
