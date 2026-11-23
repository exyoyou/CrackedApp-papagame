package com.join.kotlin.module.hmcloud.pad;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0010\u0010.\u001a\u00020 2\u0006\u0010/\u001a\u00020\u000fH\u0004J\u0012\u00100\u001a\u00020\u00142\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u001e\u00103\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0002J\u0010\u00104\u001a\u00020\u00142\b\u00101\u001a\u0004\u0018\u000102J\u0018\u00105\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0002J\u0010\u00106\u001a\u00020\u00142\u0006\u00101\u001a\u000202H\u0002J\u0018\u00107\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0002J\u0018\u00108\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0014J\u0016\u00109\u001a\u00020 2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'H\u0014J\u0018\u0010:\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001f\u001a\u00020\fH\u0002J\u0016\u0010;\u001a\u00020 2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000RL\u0010\u001a\u001a4\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R=\u0010%\u001a%\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020(0'¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b()\u0012\u0004\u0012\u00020 \u0018\u00010&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u0006<"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "TAG", "", "mX", "", "mY", "centerX", "", "centerY", "mPointerId", "Ljava/lang/Integer;", "isTouchable", "", "()Z", "setTouchable", "(Z)V", "maxRadius", "threshold", "onMove", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "x", "y", "", "getOnMove", "()Lkotlin/jvm/functions/Function2;", "setOnMove", "(Lkotlin/jvm/functions/Function2;)V", "onDpad", "Lkotlin/Function1;", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "directions", "getOnDpad", "()Lkotlin/jvm/functions/Function1;", "setOnDpad", "(Lkotlin/jvm/functions/Function1;)V", "setMaxTranslation", "radius", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "computeDirections", "onTouchEventInternal", "isInView", "consumeInternalEvent", "consume", "onTranslationUi", "onDirectionUi", "onNotifyLocation", "onNotifyDirections", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class HMControllerView extends FrameLayout {

    @NotNull
    private final String TAG;
    private int centerX;
    private int centerY;
    private boolean isTouchable;

    @Nullable
    private Integer mPointerId;
    private float mX;
    private float mY;
    private int maxRadius;

    @Nullable
    private Function1<? super List<? extends HMDpadDirection>, Unit> onDpad;

    @Nullable
    private Function2<? super Float, ? super Float, Unit> onMove;
    private int threshold;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMControllerView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "HMControllerView";
        this.isTouchable = true;
        this.threshold = 5;
        post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.f
            @Override // java.lang.Runnable
            public final void run() {
                HMControllerView._init_$lambda$1(this.f48809b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$1(HMControllerView hMControllerView) {
        int measuredWidth = hMControllerView.getMeasuredWidth() / 2;
        hMControllerView.maxRadius = measuredWidth;
        if (measuredWidth == 0) {
            hMControllerView.maxRadius = 1;
        }
        hMControllerView.threshold = (int) (((double) hMControllerView.maxRadius) * 0.01d);
        int[] iArr = new int[2];
        hMControllerView.getLocationOnScreen(iArr);
        hMControllerView.centerX = ArraysKt___ArraysKt.first(iArr) + (hMControllerView.getMeasuredWidth() / 2);
        hMControllerView.centerY = ArraysKt___ArraysKt.last(iArr) + (hMControllerView.getMeasuredHeight() / 2);
    }

    private final List<HMDpadDirection> computeDirections(float x10, float y10) {
        if (x10 == 0.0f) {
            if (y10 == 0.0f) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
        }
        float fAtan2 = (float) Math.atan2(y10, x10);
        ArrayList arrayList = new ArrayList();
        double d10 = fAtan2;
        if (d10 >= -1.1780972450961724d && d10 < 1.1780972450961724d) {
            arrayList.add(HMDpadDirection.Right);
        } else if ((d10 >= 1.9634954084936207d && d10 <= 3.141592653589793d) || (d10 >= -3.141592653589793d && d10 <= -1.9634954084936207d)) {
            arrayList.add(HMDpadDirection.Left);
        }
        if (d10 >= 0.39269908169872414d && d10 < 2.748893571891069d) {
            arrayList.add(HMDpadDirection.Up);
        } else if (d10 >= -2.748893571891069d && d10 < -0.39269908169872414d) {
            arrayList.add(HMDpadDirection.Down);
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0033  */
    private final boolean consume(float x10, float y10) {
        float f10 = x10 - this.centerX;
        float f11 = y10 - this.centerY;
        float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        if (fSqrt < this.threshold) {
            if (this.mX == 0.0f) {
                if (!(this.mY == 0.0f)) {
                    this.mX = 0.0f;
                    this.mY = 0.0f;
                    onTranslationUi(0.0f, 0.0f);
                    onNotifyLocation(0.0f, 0.0f);
                }
            } else {
                this.mX = 0.0f;
                this.mY = 0.0f;
                onTranslationUi(0.0f, 0.0f);
                onNotifyLocation(0.0f, 0.0f);
            }
            return this.mPointerId != null;
        }
        int i10 = this.maxRadius;
        float f12 = fSqrt >= ((float) i10) ? i10 / fSqrt : 1.0f;
        float f13 = f10 * f12;
        float f14 = f11 * f12;
        onTranslationUi(f13, f14);
        int i11 = this.maxRadius;
        float f15 = f13 / i11;
        this.mX = f15;
        float f16 = (-f14) / i11;
        this.mY = f16;
        onNotifyLocation(f15, f16);
        return true;
    }

    private final boolean consumeInternalEvent(MotionEvent event) {
        float x10;
        float y10;
        Integer num = this.mPointerId;
        if (num == null) {
            return false;
        }
        Intrinsics.checkNotNull(num);
        if (num.intValue() >= event.getPointerCount()) {
            return false;
        }
        Integer num2 = this.mPointerId;
        Intrinsics.checkNotNull(num2);
        int iIntValue = num2.intValue();
        if (Build.VERSION.SDK_INT >= 29) {
            x10 = event.getRawX(iIntValue);
            y10 = event.getRawY(iIntValue);
        } else {
            x10 = event.getX(iIntValue);
            y10 = event.getY(iIntValue);
        }
        return consume(x10, y10);
    }

    private final boolean isInView(float x10, float y10) {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        int i10 = iArr[0];
        if (x10 < i10 || x10 > i10 + getWidth()) {
            return false;
        }
        int i11 = iArr[1];
        return y10 >= ((float) i11) && y10 <= ((float) (i11 + getHeight()));
    }

    private final void onNotifyDirections(List<? extends HMDpadDirection> directions) {
        onDirectionUi(directions);
        Function1<? super List<? extends HMDpadDirection>, Unit> function1 = this.onDpad;
        if (function1 != null) {
            function1.invoke(directions);
        }
    }

    private final void onNotifyLocation(float x10, float y10) {
        Function2<? super Float, ? super Float, Unit> function2 = this.onMove;
        if (function2 != null) {
            function2.invoke(Float.valueOf(x10), Float.valueOf(y10));
        }
        onNotifyDirections(computeDirections(this.mX, this.mY));
    }

    @Nullable
    public final Function1<List<? extends HMDpadDirection>, Unit> getOnDpad() {
        return this.onDpad;
    }

    @Nullable
    public final Function2<Float, Float, Unit> getOnMove() {
        return this.onMove;
    }

    /* JADX INFO: renamed from: isTouchable, reason: from getter */
    public final boolean getIsTouchable() {
        return this.isTouchable;
    }

    protected void onDirectionUi(@NotNull List<? extends HMDpadDirection> directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent event) {
        if (this.isTouchable) {
            return super.onTouchEvent(event);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0042  */
    /* JADX WARN: Code duplicated, block: B:28:0x0047  */
    /* JADX WARN: Code duplicated, block: B:32:0x005c  */
    public final boolean onTouchEventInternal(@Nullable MotionEvent event) {
        float x10;
        float y10;
        Integer num;
        int iFindPointerIndex;
        if (this.isTouchable && event != null) {
            int actionMasked = event.getActionMasked();
            int actionIndex = event.getActionIndex();
            int pointerId = event.getPointerId(actionIndex);
            if (actionMasked == 0) {
                x10 = event.getX(actionIndex);
                y10 = event.getY(actionIndex);
                if (this.mPointerId == null && isInView(x10, y10)) {
                    this.mPointerId = Integer.valueOf(pointerId);
                    return consume(x10, y10);
                }
            } else if (actionMasked == 1) {
                num = this.mPointerId;
                if (num != null && pointerId == num.intValue()) {
                    this.mX = 0.0f;
                    this.mY = 0.0f;
                    onTranslationUi(0.0f, 0.0f);
                    onNotifyLocation(0.0f, 0.0f);
                    this.mPointerId = null;
                    return true;
                }
            } else if (actionMasked == 2) {
                Integer num2 = this.mPointerId;
                if (num2 != null && (iFindPointerIndex = event.findPointerIndex(num2.intValue())) > -1) {
                    return consume(event.getX(iFindPointerIndex), event.getY(iFindPointerIndex));
                }
            } else if (actionMasked == 3) {
                num = this.mPointerId;
                if (num != null) {
                    this.mX = 0.0f;
                    this.mY = 0.0f;
                    onTranslationUi(0.0f, 0.0f);
                    onNotifyLocation(0.0f, 0.0f);
                    this.mPointerId = null;
                    return true;
                }
            } else if (actionMasked == 5) {
                x10 = event.getX(actionIndex);
                y10 = event.getY(actionIndex);
                if (this.mPointerId == null) {
                    this.mPointerId = Integer.valueOf(pointerId);
                    return consume(x10, y10);
                }
            } else if (actionMasked == 6) {
                num = this.mPointerId;
                if (num != null) {
                    this.mX = 0.0f;
                    this.mY = 0.0f;
                    onTranslationUi(0.0f, 0.0f);
                    onNotifyLocation(0.0f, 0.0f);
                    this.mPointerId = null;
                    return true;
                }
            }
        }
        return false;
    }

    protected void onTranslationUi(float x10, float y10) {
    }

    protected final void setMaxTranslation(int radius) {
        this.maxRadius = radius;
        if (radius == 0) {
            this.maxRadius = 1;
        }
        this.threshold = (int) (((double) this.maxRadius) * 0.01d);
    }

    public final void setOnDpad(@Nullable Function1<? super List<? extends HMDpadDirection>, Unit> function1) {
        this.onDpad = function1;
    }

    public final void setOnMove(@Nullable Function2<? super Float, ? super Float, Unit> function2) {
        this.onMove = function2;
    }

    public final void setTouchable(boolean z10) {
        this.isTouchable = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMControllerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "HMControllerView";
        this.isTouchable = true;
        this.threshold = 5;
        post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.f
            @Override // java.lang.Runnable
            public final void run() {
                HMControllerView._init_$lambda$1(this.f48809b);
            }
        });
    }
}
