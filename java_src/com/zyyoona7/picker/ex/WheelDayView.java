package com.zyyoona7.picker.ex;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.windmill.sdk.strategy.m;
import com.zyyoona7.picker.R;
import com.zyyoona7.wheel.WheelView;
import com.zyyoona7.wheel.adapter.a;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 62\u00020\u0001:\u00017B'\b\u0007\u0012\u0006\u00100\u001a\u00020/\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u000101\u0012\b\b\u0002\u00103\u001a\u00020\u0004¢\u0006\u0004\b4\u00105J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\r\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0016\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0011J$\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\u0004H\u0007J\u001a\u0010\u001b\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J\"\u0010\u001b\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0007J\u0006\u0010\u001e\u001a\u00020\u0004R*\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R*\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010!\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R'\u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00070)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-¨\u00068"}, d2 = {"Lcom/zyyoona7/picker/ex/WheelDayView;", "Lcom/zyyoona7/wheel/WheelView;", "", "d1", "", "getDaysByCalendar", "days", "", "c1", "", "item", "", "isCompareFormatText", "l0", "year", m.a.f87212d, "setYearAndMonth", "Ljava/util/Date;", "date", "setDate", "getDate", "dayOfMonth", "isSmoothScroll", "smoothDuration", "setSelectedDay", "min", "max", "setSelectedDayRange", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "overRangeMode", "getMaxDay", HmInputMappingContent.FIELD_VALUE, "v3", "I", "getYear", "()I", "setYear", "(I)V", "w3", "getMonth", "setMonth", "Landroid/util/SparseArray;", "x3", "Lkotlin/Lazy;", "getDaysArray", "()Landroid/util/SparseArray;", "daysArray", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "A3", "a", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class WheelDayView extends WheelView {

    /* JADX INFO: renamed from: z3, reason: collision with root package name */
    public static final int f90574z3 = 1;

    /* JADX INFO: renamed from: v3, reason: collision with root package name and from kotlin metadata */
    private int year;

    /* JADX INFO: renamed from: w3, reason: collision with root package name and from kotlin metadata */
    private int month;

    /* JADX INFO: renamed from: x3, reason: collision with root package name and from kotlin metadata */
    private final Lazy daysArray;

    /* JADX INFO: renamed from: y3, reason: collision with root package name */
    private HashMap f90578y3;

    @JvmOverloads
    public WheelDayView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final List<Integer> c1(int days) {
        ArrayList arrayList = new ArrayList();
        int i10 = 1;
        if (1 <= days) {
            while (true) {
                arrayList.add(Integer.valueOf(i10));
                if (i10 == days) {
                    break;
                }
                i10++;
            }
        }
        getDaysArray().put(days, arrayList);
        return arrayList;
    }

    private final void d1() {
        int daysByCalendar = getDaysByCalendar();
        if (daysByCalendar == getItemCount()) {
            return;
        }
        List<Integer> listC1 = getDaysArray().get(daysByCalendar);
        if (listC1 == null) {
            listC1 = c1(daysByCalendar);
        }
        setData(listC1);
    }

    private final SparseArray<List<Integer>> getDaysArray() {
        return (SparseArray) this.daysArray.getValue();
    }

    private final int getDaysByCalendar() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, this.year);
        calendar.set(2, this.month - 1);
        calendar.set(5, 1);
        calendar.roll(5, -1);
        return calendar.get(5);
    }

    public static /* synthetic */ void setSelectedDay$default(WheelDayView wheelDayView, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            i11 = 250;
        }
        wheelDayView.setSelectedDay(i10, z10, i11);
    }

    public static /* synthetic */ void setSelectedDayRange$default(WheelDayView wheelDayView, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 1;
        }
        wheelDayView.setSelectedDayRange(i10, i11);
    }

    @Override // com.zyyoona7.wheel.WheelView
    public void b() {
        HashMap map = this.f90578y3;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.zyyoona7.wheel.WheelView
    public View c(int i10) {
        if (this.f90578y3 == null) {
            this.f90578y3 = new HashMap();
        }
        View view = (View) this.f90578y3.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90578y3.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @NotNull
    public final Date getDate() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, this.year);
        calendar.set(2, this.month - 1);
        Integer num = (Integer) getSelectedItem();
        calendar.set(5, num != null ? num.intValue() : 1);
        Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
        Date time = calendar.getTime();
        Intrinsics.checkExpressionValueIsNotNull(time, "calendar.time");
        return time;
    }

    public final int getMaxDay() {
        Integer num;
        a<?> adapter = getAdapter();
        if (adapter == null || (num = (Integer) adapter.p(getItemCount() - 1)) == null) {
            return -1;
        }
        return num.intValue();
    }

    public final int getMonth() {
        return this.month;
    }

    public final int getYear() {
        return this.year;
    }

    @Override // com.zyyoona7.wheel.WheelView
    public int l0(@Nullable Object item, boolean isCompareFormatText) {
        if (!(item instanceof Integer)) {
            return -1;
        }
        int daysByCalendar = getDaysByCalendar();
        Number number = (Number) item;
        int iIntValue = number.intValue();
        if (1 <= iIntValue && daysByCalendar >= iIntValue) {
            return number.intValue() - 1;
        }
        return -1;
    }

    public final void setDate(@NotNull Date date) {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
        calendar.setTime(date);
        setYear(calendar.get(1));
        setMonth(calendar.get(2) + 1);
        int i10 = calendar.get(5);
        d1();
        setSelectedDay$default(this, i10, false, 0, 6, null);
    }

    public final void setMonth(int i10) {
        if (i10 == this.month) {
            return;
        }
        this.month = Math.min(12, Math.max(0, i10));
        d1();
    }

    @JvmOverloads
    public final void setSelectedDay(int i10) {
        setSelectedDay$default(this, i10, false, 0, 6, null);
    }

    @JvmOverloads
    public final void setSelectedDayRange(int i10) {
        setSelectedDayRange$default(this, 0, i10, 1, null);
    }

    public final void setYear(int i10) {
        if (i10 == this.year) {
            return;
        }
        this.year = Math.max(i10, 0);
        d1();
    }

    public final void setYearAndMonth(int year, int month) {
        setYear(year);
        setMonth(month);
        d1();
    }

    @JvmOverloads
    public WheelDayView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public static /* synthetic */ void setSelectedDayRange$default(WheelDayView wheelDayView, int i10, int i11, WheelView.OverRangeMode overRangeMode, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 1;
        }
        wheelDayView.setSelectedDayRange(i10, i11, overRangeMode);
    }

    @JvmOverloads
    public final void setSelectedDay(int i10, boolean z10) {
        setSelectedDay$default(this, i10, z10, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectedDayRange(int i10, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectedDayRange$default(this, 0, i10, overRangeMode, 1, null);
    }

    public /* synthetic */ WheelDayView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public final void setSelectedDay(int dayOfMonth, boolean isSmoothScroll, int smoothDuration) {
        setSelectedPosition(WheelView.m0(this, Integer.valueOf(dayOfMonth), false, 2, null), isSmoothScroll, smoothDuration);
    }

    @JvmOverloads
    public final void setSelectedDayRange(int min, int max) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(min), false, 2, null), WheelView.m0(this, Integer.valueOf(max), false, 2, null));
    }

    @JvmOverloads
    public WheelDayView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.year = -1;
        this.month = -1;
        this.daysArray = LazyKt__LazyJVMKt.lazy(new Function0<SparseArray<List<? extends Integer>>>() { // from class: com.zyyoona7.picker.ex.WheelDayView$daysArray$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final SparseArray<List<Integer>> invoke() {
                return new SparseArray<>();
            }
        });
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WheelDayView);
            Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…R.styleable.WheelDayView)");
            setYear(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelDayView_wv_year, 2019));
            setMonth(typedArrayObtainStyledAttributes.getInt(R.styleable.WheelDayView_wv_month, 1));
            int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelDayView_wv_selectedDay, 1);
            int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelDayView_wv_minSelectedDay, -1);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelDayView_wv_maxSelectedDay, -1);
            typedArrayObtainStyledAttributes.recycle();
            p0(WheelView.m0(this, Integer.valueOf(i11), false, 2, null), WheelView.m0(this, Integer.valueOf(i12), false, 2, null), WheelView.m0(this, Integer.valueOf(i13), false, 2, null));
        }
        d1();
    }

    @JvmOverloads
    public final void setSelectedDayRange(int min, int max, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(min), false, 2, null), WheelView.m0(this, Integer.valueOf(max), false, 2, null), overRangeMode);
    }
}
