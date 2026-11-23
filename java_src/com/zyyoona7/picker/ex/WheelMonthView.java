package com.zyyoona7.picker.ex;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.windmill.sdk.strategy.m;
import com.zyyoona7.picker.R;
import com.zyyoona7.wheel.WheelView;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB'\b\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\b\b\u0002\u0010\u0017\u001a\u00020\b¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J$\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\bH\u0007J\u001a\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007J\"\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¨\u0006\u001c"}, d2 = {"Lcom/zyyoona7/picker/ex/WheelMonthView;", "Lcom/zyyoona7/wheel/WheelView;", "", "c1", "", "item", "", "isCompareFormatText", "", "l0", m.a.f87212d, "isSmoothScroll", "smoothDuration", "setSelectedMonth", "minMonth", "maxMonth", "setSelectedMonthRange", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "overRangeMode", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "y3", "a", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class WheelMonthView extends WheelView {

    /* JADX INFO: renamed from: w3, reason: collision with root package name */
    public static final int f90586w3 = 1;

    /* JADX INFO: renamed from: x3, reason: collision with root package name */
    public static final int f90587x3 = 12;

    /* JADX INFO: renamed from: v3, reason: collision with root package name */
    private HashMap f90589v3;

    @JvmOverloads
    public WheelMonthView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final void c1() {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 1; i10 <= 12; i10++) {
            arrayList.add(Integer.valueOf(i10));
        }
        setData(arrayList);
    }

    public static /* synthetic */ void setSelectedMonth$default(WheelMonthView wheelMonthView, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            i11 = 250;
        }
        wheelMonthView.setSelectedMonth(i10, z10, i11);
    }

    public static /* synthetic */ void setSelectedMonthRange$default(WheelMonthView wheelMonthView, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 1;
        }
        wheelMonthView.setSelectedMonthRange(i10, i11);
    }

    @Override // com.zyyoona7.wheel.WheelView
    public void b() {
        HashMap map = this.f90589v3;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.zyyoona7.wheel.WheelView
    public View c(int i10) {
        if (this.f90589v3 == null) {
            this.f90589v3 = new HashMap();
        }
        View view = (View) this.f90589v3.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90589v3.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.zyyoona7.wheel.WheelView
    public int l0(@Nullable Object item, boolean isCompareFormatText) {
        Number number;
        int iIntValue;
        if ((item instanceof Integer) && 1 <= (iIntValue = (number = (Number) item).intValue()) && 12 >= iIntValue) {
            return number.intValue() - 1;
        }
        return -1;
    }

    @JvmOverloads
    public final void setSelectedMonth(int i10) {
        setSelectedMonth$default(this, i10, false, 0, 6, null);
    }

    @JvmOverloads
    public final void setSelectedMonthRange(int i10) {
        setSelectedMonthRange$default(this, 0, i10, 1, null);
    }

    @JvmOverloads
    public WheelMonthView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public static /* synthetic */ void setSelectedMonthRange$default(WheelMonthView wheelMonthView, int i10, int i11, WheelView.OverRangeMode overRangeMode, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 1;
        }
        wheelMonthView.setSelectedMonthRange(i10, i11, overRangeMode);
    }

    @JvmOverloads
    public final void setSelectedMonth(int i10, boolean z10) {
        setSelectedMonth$default(this, i10, z10, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectedMonthRange(int i10, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectedMonthRange$default(this, 0, i10, overRangeMode, 1, null);
    }

    public /* synthetic */ WheelMonthView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public final void setSelectedMonth(int month, boolean isSmoothScroll, int smoothDuration) {
        setSelectedPosition(WheelView.m0(this, Integer.valueOf(month), false, 2, null), isSmoothScroll, smoothDuration);
    }

    @JvmOverloads
    public final void setSelectedMonthRange(int minMonth, int maxMonth) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(minMonth), false, 2, null), WheelView.m0(this, Integer.valueOf(maxMonth), false, 2, null));
    }

    @JvmOverloads
    public WheelMonthView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WheelMonthView);
            Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…styleable.WheelMonthView)");
            int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelMonthView_wv_selectedMonth, 1);
            int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelYearView_wv_minSelectedYear, -1);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelMonthView_wv_maxSelectedMonth, -1);
            typedArrayObtainStyledAttributes.recycle();
            p0(WheelView.m0(this, Integer.valueOf(i11), false, 2, null), WheelView.m0(this, Integer.valueOf(i12), false, 2, null), WheelView.m0(this, Integer.valueOf(i13), false, 2, null));
        }
        c1();
    }

    @JvmOverloads
    public final void setSelectedMonthRange(int minMonth, int maxMonth, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(minMonth), false, 2, null), WheelView.m0(this, Integer.valueOf(maxMonth), false, 2, null), overRangeMode);
    }
}
