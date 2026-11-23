package com.zyyoona7.picker.ex;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.zyyoona7.wheel.WheelView;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0004R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/zyyoona7/picker/ex/Wheel60View;", "Lcom/zyyoona7/wheel/WheelView;", "", "item", "", "isCompareFormatText", "", "l0", "", "c1", "Lkotlin/ranges/IntRange;", "v3", "Lkotlin/ranges/IntRange;", "range", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "picker_release"}, k = 1, mv = {1, 4, 0})
public class Wheel60View extends WheelView {

    /* JADX INFO: renamed from: v3, reason: collision with root package name and from kotlin metadata */
    private final IntRange range;

    /* JADX INFO: renamed from: w3, reason: collision with root package name */
    private HashMap f90571w3;

    @JvmOverloads
    public Wheel60View(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    @Override // com.zyyoona7.wheel.WheelView
    public void b() {
        HashMap map = this.f90571w3;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.zyyoona7.wheel.WheelView
    public View c(int i10) {
        if (this.f90571w3 == null) {
            this.f90571w3 = new HashMap();
        }
        View view = (View) this.f90571w3.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90571w3.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    protected final void c1() {
        ArrayList arrayList = new ArrayList();
        IntRange intRange = this.range;
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first <= last) {
            while (true) {
                arrayList.add(Integer.valueOf(first));
                if (first == last) {
                    break;
                } else {
                    first++;
                }
            }
        }
        setData(arrayList);
    }

    @Override // com.zyyoona7.wheel.WheelView
    public int l0(@Nullable Object item, boolean isCompareFormatText) {
        if (item instanceof Integer) {
            Number number = (Number) item;
            if (this.range.contains(number.intValue())) {
                return number.intValue();
            }
        }
        return -1;
    }

    @JvmOverloads
    public Wheel60View(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ Wheel60View(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public Wheel60View(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.range = RangesKt___RangesKt.until(0, 60);
    }
}
