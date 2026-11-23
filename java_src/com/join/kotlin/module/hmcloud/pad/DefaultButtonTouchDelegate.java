package com.join.kotlin.module.hmcloud.pad;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.join.kotlin.utils.extention.ViewKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u001d\u001a\u00020\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015R7\u0010\b\u001a\u001f\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/DefaultButtonTouchDelegate;", "Landroid/view/TouchDelegate;", "rect", "Landroid/graphics/Rect;", "child", "Landroid/view/View;", "<init>", "(Landroid/graphics/Rect;Landroid/view/View;)V", "onClick", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "pressed", "", "getOnClick", "()Lkotlin/jvm/functions/Function1;", "setOnClick", "(Lkotlin/jvm/functions/Function1;)V", "onTouchEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "mPointerId", "", "getMPointerId", "()Ljava/lang/Integer;", "setMPointerId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "onTouchEventInternal", "v", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DefaultButtonTouchDelegate extends TouchDelegate {

    @Nullable
    private Integer mPointerId;

    @Nullable
    private Function1<? super Boolean, Unit> onClick;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultButtonTouchDelegate(@NotNull Rect rect, @NotNull View child) {
        super(rect, child);
        Intrinsics.checkNotNullParameter(rect, "rect");
        Intrinsics.checkNotNullParameter(child, "child");
        child.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.kotlin.module.hmcloud.pad.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return DefaultButtonTouchDelegate._init_$lambda$0(view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(View view, MotionEvent motionEvent) {
        return false;
    }

    @Nullable
    public final Integer getMPointerId() {
        return this.mPointerId;
    }

    @Nullable
    public final Function1<Boolean, Unit> getOnClick() {
        return this.onClick;
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0037  */
    /* JADX WARN: Code duplicated, block: B:25:0x003c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0044  */
    /* JADX WARN: Code duplicated, block: B:31:0x004e  */
    /* JADX WARN: Code duplicated, block: B:33:0x0054  */
    /* JADX WARN: Code duplicated, block: B:35:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    public final boolean onTouchEventInternal(@Nullable View v10, @Nullable MotionEvent event) {
        boolean z10;
        Function1<? super Boolean, Unit> function1;
        Integer num;
        Function1<? super Boolean, Unit> function2;
        int iFindPointerIndex;
        if (event != null) {
            int actionMasked = event.getActionMasked();
            int actionIndex = event.getActionIndex();
            int pointerId = event.getPointerId(actionIndex);
            if (actionMasked == 0) {
                float x10 = event.getX(actionIndex);
                float y10 = event.getY(actionIndex);
                if (this.mPointerId == null) {
                    if (v10 == null && ViewKt.isTouchInView(v10, x10, y10)) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        this.mPointerId = Integer.valueOf(pointerId);
                        v10.performClick();
                        v10.setPressed(true);
                        function1 = this.onClick;
                        if (function1 != null) {
                            function1.invoke(Boolean.TRUE);
                        }
                        return true;
                    }
                }
            } else if (actionMasked == 1) {
                num = this.mPointerId;
                if (num != null && pointerId == num.intValue()) {
                    if (v10 != null) {
                        v10.setPressed(false);
                    }
                    this.mPointerId = null;
                    function2 = this.onClick;
                    if (function2 != null) {
                        function2.invoke(Boolean.FALSE);
                    }
                    return true;
                }
            } else if (actionMasked == 2) {
                Integer num2 = this.mPointerId;
                if (num2 != null && (iFindPointerIndex = event.findPointerIndex(num2.intValue())) > -1) {
                    event.getX(iFindPointerIndex);
                    event.getY(iFindPointerIndex);
                    return true;
                }
            } else if (actionMasked == 3) {
                num = this.mPointerId;
                if (num != null) {
                    if (v10 != null) {
                        v10.setPressed(false);
                    }
                    this.mPointerId = null;
                    function2 = this.onClick;
                    if (function2 != null) {
                        function2.invoke(Boolean.FALSE);
                    }
                    return true;
                }
            } else if (actionMasked == 5) {
                float x11 = event.getX(actionIndex);
                float y11 = event.getY(actionIndex);
                if (this.mPointerId == null) {
                    if (v10 == null) {
                        z10 = false;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        this.mPointerId = Integer.valueOf(pointerId);
                        v10.performClick();
                        v10.setPressed(true);
                        function1 = this.onClick;
                        if (function1 != null) {
                            function1.invoke(Boolean.TRUE);
                        }
                        return true;
                    }
                }
            } else if (actionMasked == 6) {
                num = this.mPointerId;
                if (num != null) {
                    if (v10 != null) {
                        v10.setPressed(false);
                    }
                    this.mPointerId = null;
                    function2 = this.onClick;
                    if (function2 != null) {
                        function2.invoke(Boolean.FALSE);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final void setMPointerId(@Nullable Integer num) {
        this.mPointerId = num;
    }

    public final void setOnClick(@Nullable Function1<? super Boolean, Unit> function1) {
        this.onClick = function1;
    }
}
