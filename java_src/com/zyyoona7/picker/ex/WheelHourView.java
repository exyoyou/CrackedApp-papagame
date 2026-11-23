package com.zyyoona7.picker.ex;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import bb.b;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.windmill.sdk.strategy.m;
import com.zyyoona7.picker.R;
import com.zyyoona7.wheel.WheelView;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001>B'\b\u0007\u0012\u0006\u00108\u001a\u000207\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u000109\u0012\b\b\u0002\u0010;\u001a\u00020\u0005¢\u0006\u0004\b<\u0010=J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u001a\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J$\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\u0005H\u0007J\"\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0007J\u0010\u0010\u0017\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0005H\u0014R*\u0010!\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010)\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0016\u0010,\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010.\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010+R\u0016\u00100\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010+R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106¨\u0006?"}, d2 = {"Lcom/zyyoona7/picker/ex/WheelHourView;", "Lcom/zyyoona7/wheel/WheelView;", "", "e1", "f1", "", "c1", "", "item", "", "isCompareFormatText", "l0", m.a.f87214f, "isSmoothScroll", "smoothDuration", "setSelectedHour", "minHour", "maxHour", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "overRangeMode", "setSelectedHourRange", "Lbb/b;", "amPmChangedListener", "setOnAmPmChangedListener", "scrollOffsetY", "P0", HmInputMappingContent.FIELD_VALUE, "v3", "Z", "d1", "()Z", "set24Hour", "(Z)V", "is24Hour", "Lcom/zyyoona7/picker/ex/WheelHourView$HourType;", "w3", "Lcom/zyyoona7/picker/ex/WheelHourView$HourType;", "getHourType", "()Lcom/zyyoona7/picker/ex/WheelHourView$HourType;", "setHourType", "(Lcom/zyyoona7/picker/ex/WheelHourView$HourType;)V", "hourType", "x3", "I", "dataHeight", "y3", "currentOffsetCount", "z3", "currentOffsetYDirection", "Lkotlin/ranges/IntRange;", "A3", "Lkotlin/ranges/IntRange;", "hourRange", "B3", "Lbb/b;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "HourType", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class WheelHourView extends WheelView {

    /* JADX INFO: renamed from: A3, reason: from kotlin metadata */
    private IntRange hourRange;

    /* JADX INFO: renamed from: B3, reason: from kotlin metadata */
    private b amPmChangedListener;
    private HashMap C3;

    /* JADX INFO: renamed from: v3, reason: collision with root package name and from kotlin metadata */
    private boolean is24Hour;

    /* JADX INFO: renamed from: w3, reason: collision with root package name and from kotlin metadata */
    @NotNull
    private HourType hourType;

    /* JADX INFO: renamed from: x3, reason: collision with root package name and from kotlin metadata */
    private int dataHeight;

    /* JADX INFO: renamed from: y3, reason: collision with root package name and from kotlin metadata */
    private int currentOffsetCount;

    /* JADX INFO: renamed from: z3, reason: collision with root package name and from kotlin metadata */
    private int currentOffsetYDirection;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/zyyoona7/picker/ex/WheelHourView$HourType;", "", "(Ljava/lang/String;I)V", "DEFAULT", "AM", "PM", "picker_release"}, k = 1, mv = {1, 1, 16})
    public enum HourType {
        DEFAULT,
        AM,
        PM
    }

    @JvmOverloads
    public WheelHourView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final int c1() {
        return getItemHeight() * getItemCount();
    }

    private final void e1() {
        ArrayList arrayList = new ArrayList();
        f1();
        IntRange intRange = this.hourRange;
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first <= last) {
            while (true) {
                if (this.is24Hour || first != 0) {
                    arrayList.add(Integer.valueOf(first));
                } else {
                    arrayList.add(12);
                }
                if (first == last) {
                    break;
                } else {
                    first++;
                }
            }
        }
        setData(arrayList);
        this.dataHeight = c1();
    }

    private final void f1() {
        this.hourRange = this.is24Hour ? RangesKt___RangesKt.until(0, 24) : new IntRange(0, 11);
    }

    public static /* synthetic */ void setSelectedHour$default(WheelHourView wheelHourView, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            z10 = false;
        }
        if ((i12 & 4) != 0) {
            i11 = 250;
        }
        wheelHourView.setSelectedHour(i10, z10, i11);
    }

    public static /* synthetic */ void setSelectedHourRange$default(WheelHourView wheelHourView, int i10, int i11, WheelView.OverRangeMode overRangeMode, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            overRangeMode = WheelView.OverRangeMode.NORMAL;
        }
        wheelHourView.setSelectedHourRange(i10, i11, overRangeMode);
    }

    @Override // com.zyyoona7.wheel.WheelView
    protected void P0(int scrollOffsetY) {
        super.P0(scrollOffsetY);
        if (!this.is24Hour || getIsCyclic()) {
            if (this.hourType == HourType.DEFAULT) {
                this.hourType = HourType.AM;
            }
            if (this.dataHeight <= 0) {
                this.dataHeight = c1();
            }
            if (this.dataHeight == 0) {
                return;
            }
            int itemHeight = (scrollOffsetY < 0 ? getItemHeight() + scrollOffsetY : scrollOffsetY) / this.dataHeight;
            int i10 = scrollOffsetY >= 0 ? 1 : -1;
            if (this.currentOffsetCount == itemHeight && this.currentOffsetYDirection == i10) {
                return;
            }
            this.currentOffsetYDirection = i10;
            this.currentOffsetCount = itemHeight;
            HourType hourType = this.hourType;
            HourType hourType2 = HourType.AM;
            HourType hourType3 = hourType == hourType2 ? HourType.PM : hourType2;
            this.hourType = hourType3;
            b bVar = this.amPmChangedListener;
            if (bVar != null) {
                bVar.f(this, hourType3 == hourType2);
            }
        }
    }

    @Override // com.zyyoona7.wheel.WheelView
    public void b() {
        HashMap map = this.C3;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.zyyoona7.wheel.WheelView
    public View c(int i10) {
        if (this.C3 == null) {
            this.C3 = new HashMap();
        }
        View view = (View) this.C3.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.C3.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX INFO: renamed from: d1, reason: from getter */
    public final boolean getIs24Hour() {
        return this.is24Hour;
    }

    @NotNull
    public final HourType getHourType() {
        return this.hourType;
    }

    @Override // com.zyyoona7.wheel.WheelView
    public int l0(@Nullable Object item, boolean isCompareFormatText) {
        if (!(item instanceof Integer)) {
            return -1;
        }
        if (!this.is24Hour && Intrinsics.areEqual(item, (Object) 12)) {
            return 0;
        }
        Number number = (Number) item;
        if (this.hourRange.contains(number.intValue())) {
            return number.intValue();
        }
        return -1;
    }

    public final void set24Hour(boolean z10) {
        if (z10 == this.is24Hour) {
            return;
        }
        this.is24Hour = z10;
        e1();
    }

    public final void setHourType(@NotNull HourType hourType) {
        this.hourType = hourType;
    }

    public final void setOnAmPmChangedListener(@Nullable b amPmChangedListener) {
        this.amPmChangedListener = amPmChangedListener;
    }

    @JvmOverloads
    public final void setSelectedHour(int i10) {
        setSelectedHour$default(this, i10, false, 0, 6, null);
    }

    @JvmOverloads
    public final void setSelectedHourRange(int i10, int i11) {
        setSelectedHourRange$default(this, i10, i11, null, 4, null);
    }

    @JvmOverloads
    public WheelHourView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectedHour(int i10, boolean z10) {
        setSelectedHour$default(this, i10, z10, 0, 4, null);
    }

    @JvmOverloads
    public final void setSelectedHourRange(int minHour, int maxHour, @NotNull WheelView.OverRangeMode overRangeMode) {
        setSelectableRange(WheelView.m0(this, Integer.valueOf(minHour), false, 2, null), WheelView.m0(this, Integer.valueOf(maxHour), false, 2, null), overRangeMode);
    }

    public /* synthetic */ WheelHourView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public final void setSelectedHour(int hour, boolean isSmoothScroll, int smoothDuration) {
        setSelectedPosition(WheelView.m0(this, Integer.valueOf(hour), false, 2, null), isSmoothScroll, smoothDuration);
    }

    @JvmOverloads
    public WheelHourView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.is24Hour = true;
        this.hourType = HourType.DEFAULT;
        this.currentOffsetYDirection = 1;
        this.hourRange = RangesKt___RangesKt.until(0, 24);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WheelHourView);
            Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr….styleable.WheelHourView)");
            set24Hour(typedArrayObtainStyledAttributes.getBoolean(R.styleable.WheelHourView_wv_is24Hour, true));
            int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelHourView_wv_selectedHour, 1);
            int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelHourView_wv_minSelectedHour, -1);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.WheelHourView_wv_maxSelectedHour, -1);
            typedArrayObtainStyledAttributes.recycle();
            p0(WheelView.m0(this, Integer.valueOf(i11), false, 2, null), WheelView.m0(this, Integer.valueOf(i12), false, 2, null), WheelView.m0(this, Integer.valueOf(i13), false, 2, null));
        }
        e1();
    }
}
