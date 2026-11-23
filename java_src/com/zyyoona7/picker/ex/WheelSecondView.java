package com.zyyoona7.picker.ex;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.zyyoona7.picker.R;
import com.zyyoona7.wheel.WheelView;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u0007H\u0007J\"\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0007¨\u0006\u0014"}, d2 = {"Lcom/zyyoona7/picker/ex/WheelSecondView;", "Lcom/zyyoona7/picker/ex/Wheel60View;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "setSelectedSecond", "", "second", "isSmoothScroll", "", "smoothDuration", "setSelectedSecondRange", "minSecond", "maxSecond", "overRangeMode", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "picker_release"}, k = 1, mv = {1, 1, 16})
public final class WheelSecondView extends Wheel60View {

    /* JADX INFO: renamed from: x3, reason: collision with root package name */
    private HashMap f90590x3;

    @JvmOverloads
    public WheelSecondView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    public static /* synthetic */ void setSelectedSecond$default(WheelSecondView wheelSecondView, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            i11 = 250;
        }
        wheelSecondView.setSelectedSecond(i10, z10, i11);
    }

    public static /* synthetic */ void setSelectedSecondRange$default(WheelSecondView wheelSecondView, int i10, int i11, WheelView.OverRangeMode overRangeMode, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            overRangeMode = WheelView.OverRangeMode.NORMAL;
        }
        wheelSecondView.setSelectedSecondRange(i10, i11, overRangeMode);
    }

    @Override // com.zyyoona7.picker.ex.Wheel60View, com.zyyoona7.wheel.WheelView
    public void b() {
        HashMap map = this.f90590x3;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.zyyoona7.picker.ex.Wheel60View, com.zyyoona7.wheel.WheelView
    public View c(int i10) {
        if (this.f90590x3 == null) {
            this.f90590x3 = new HashMap();
        }
        View view = (View) this.f90590x3.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90590x3.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @JvmOverloads
    public final void setSelectedSecond(int i10) {
        setSelectedSecond$default(this, i10, false, 0, 6, null);
    }

    @JvmOverloads
    public final void setSelectedSecondRange(int i10, int i11) {
        setSelectedSecondRange$default(this, i10, i11, null, 4, null);
    }

    @JvmOverloads
    public WheelSecondView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectedSecond(int i10, boolean z10) {
        setSelectedSecond$default(this, i10, z10, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectedSecondRange(int minSecond, int maxSecond, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(minSecond), false, 2, null), WheelView.m0(this, Integer.valueOf(maxSecond), false, 2, null), overRangeMode);
    }

    public /* synthetic */ WheelSecondView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public final void setSelectedSecond(int second, boolean isSmoothScroll, int smoothDuration) {
        setSelectedPosition(WheelView.m0(this, Integer.valueOf(second), false, 2, null), isSmoothScroll, smoothDuration);
    }

    @JvmOverloads
    public WheelSecondView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WheelSecondView);
            Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…tyleable.WheelSecondView)");
            int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelSecondView_wv_selectedSecond, 0);
            int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelSecondView_wv_minSelectedSecond, -1);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelSecondView_wv_maxSelectedSecond, -1);
            typedArrayObtainStyledAttributes.recycle();
            p0(WheelView.m0(this, Integer.valueOf(i11), false, 2, null), WheelView.m0(this, Integer.valueOf(i12), false, 2, null), WheelView.m0(this, Integer.valueOf(i13), false, 2, null));
        }
        c1();
    }
}
