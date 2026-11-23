package com.zyyoona7.picker.ex;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.airsaid.pickerviewlibrary.widget.c;
import com.sigmob.sdk.base.mta.PointCategory;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\b\u0002\u0010\u001f\u001a\u00020\b¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bJ$\u0010\u0010\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\bH\u0007J\u001a\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\bH\u0007J\"\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0007R\u0016\u0010\u0018\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017¨\u0006\""}, d2 = {"Lcom/zyyoona7/picker/ex/WheelYearView;", "Lcom/zyyoona7/wheel/WheelView;", "", "c1", "", "item", "", "isCompareFormatText", "", "l0", "start", PointCategory.END, "setYearRange", "year", "isSmoothScroll", "smoothDuration", "setSelectedYear", "minYear", "maxYear", "setSelectedYearRange", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "overRangeMode", "v3", "I", "startYear", "w3", "endYear", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class WheelYearView extends WheelView {

    /* JADX INFO: renamed from: v3, reason: collision with root package name and from kotlin metadata */
    private int startYear;

    /* JADX INFO: renamed from: w3, reason: collision with root package name and from kotlin metadata */
    private int endYear;

    /* JADX INFO: renamed from: x3, reason: collision with root package name */
    private HashMap f90593x3;

    @JvmOverloads
    public WheelYearView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final void c1() {
        ArrayList arrayList = new ArrayList();
        int i10 = this.startYear;
        int i11 = this.endYear;
        if (i10 <= i11) {
            while (true) {
                arrayList.add(Integer.valueOf(i10));
                if (i10 == i11) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        setData(arrayList);
    }

    public static /* synthetic */ void setSelectedYear$default(WheelYearView wheelYearView, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            i11 = 250;
        }
        wheelYearView.setSelectedYear(i10, z10, i11);
    }

    public static /* synthetic */ void setSelectedYearRange$default(WheelYearView wheelYearView, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = wheelYearView.startYear;
        }
        wheelYearView.setSelectedYearRange(i10, i11);
    }

    @Override // com.zyyoona7.wheel.WheelView
    public void b() {
        HashMap map = this.f90593x3;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.zyyoona7.wheel.WheelView
    public View c(int i10) {
        if (this.f90593x3 == null) {
            this.f90593x3 = new HashMap();
        }
        View view = (View) this.f90593x3.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90593x3.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.zyyoona7.wheel.WheelView
    public int l0(@Nullable Object item, boolean isCompareFormatText) {
        if (!(item instanceof Integer)) {
            return -1;
        }
        int i10 = this.startYear;
        int i11 = this.endYear;
        Number number = (Number) item;
        int iIntValue = number.intValue();
        if (i10 <= iIntValue && i11 >= iIntValue) {
            return number.intValue() - this.startYear;
        }
        return -1;
    }

    @JvmOverloads
    public final void setSelectedYear(int i10) {
        setSelectedYear$default(this, i10, false, 0, 6, null);
    }

    @JvmOverloads
    public final void setSelectedYearRange(int i10) {
        setSelectedYearRange$default(this, 0, i10, 1, null);
    }

    public final void setYearRange(int start, int end) {
        if (!(start <= end)) {
            throw new IllegalArgumentException("endYear must be greater than startYear in WheelYearView.".toString());
        }
        this.startYear = start;
        this.endYear = end;
        c1();
    }

    @JvmOverloads
    public WheelYearView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public static /* synthetic */ void setSelectedYearRange$default(WheelYearView wheelYearView, int i10, int i11, WheelView.OverRangeMode overRangeMode, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = wheelYearView.startYear;
        }
        wheelYearView.setSelectedYearRange(i10, i11, overRangeMode);
    }

    @JvmOverloads
    public final void setSelectedYear(int i10, boolean z10) {
        setSelectedYear$default(this, i10, z10, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectedYearRange(int i10, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectedYearRange$default(this, 0, i10, overRangeMode, 1, null);
    }

    public /* synthetic */ WheelYearView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public final void setSelectedYear(int year, boolean isSmoothScroll, int smoothDuration) {
        setSelectedPosition(WheelView.m0(this, Integer.valueOf(year), false, 2, null), isSmoothScroll, smoothDuration);
    }

    @JvmOverloads
    public final void setSelectedYearRange(int minYear, int maxYear) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(minYear), false, 2, null), WheelView.m0(this, Integer.valueOf(maxYear), false, 2, null));
    }

    @JvmOverloads
    public WheelYearView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.startYear = 1970;
        this.endYear = c.f6242m;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WheelYearView);
            Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr….styleable.WheelYearView)");
            this.startYear = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelYearView_wv_startYear, 1970);
            this.endYear = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelYearView_wv_endYear, c.f6242m);
            int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelYearView_wv_selectedYear, this.startYear);
            int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelYearView_wv_maxSelectedYear, -1);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelYearView_wv_minSelectedYear, -1);
            typedArrayObtainStyledAttributes.recycle();
            p0(WheelView.m0(this, Integer.valueOf(i11), false, 2, null), WheelView.m0(this, Integer.valueOf(i13), false, 2, null), WheelView.m0(this, Integer.valueOf(i12), false, 2, null));
        }
        c1();
    }

    @JvmOverloads
    public final void setSelectedYearRange(int minYear, int maxYear, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(minYear), false, 2, null), WheelView.m0(this, Integer.valueOf(maxYear), false, 2, null), overRangeMode);
    }
}
