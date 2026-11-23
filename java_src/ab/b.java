package ab;

import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.RawRes;
import com.zyyoona7.picker.ex.WheelDayView;
import com.zyyoona7.picker.ex.WheelMonthView;
import com.zyyoona7.picker.ex.WheelYearView;
import com.zyyoona7.wheel.WheelView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class b implements cb.b, cb.c, ab.a, g {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f93n = 1970;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f94o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f95p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f96q = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f97b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f98c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f99d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f100e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f101f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f102g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WheelView.OverRangeMode f103h = WheelView.OverRangeMode.NORMAL;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private bb.c f104i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private cb.c f105j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WheelYearView f106k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private WheelMonthView f107l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WheelDayView f108m;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(@Nullable WheelYearView wheelYearView, @Nullable WheelMonthView wheelMonthView, @Nullable WheelDayView wheelDayView) {
        this.f106k = wheelYearView;
        this.f107l = wheelMonthView;
        this.f108m = wheelDayView;
        if (wheelYearView != null) {
            wheelYearView.setOnItemSelectedListener(this);
        }
        WheelMonthView wheelMonthView2 = this.f107l;
        if (wheelMonthView2 != null) {
            wheelMonthView2.setOnItemSelectedListener(this);
        }
        WheelDayView wheelDayView2 = this.f108m;
        if (wheelDayView2 != null) {
            wheelDayView2.setOnItemSelectedListener(this);
        }
        WheelYearView wheelYearView2 = this.f106k;
        if (wheelYearView2 != null) {
            wheelYearView2.setOnScrollChangedListener(this);
        }
        WheelMonthView wheelMonthView3 = this.f107l;
        if (wheelMonthView3 != null) {
            wheelMonthView3.setOnScrollChangedListener(this);
        }
        WheelDayView wheelDayView3 = this.f108m;
        if (wheelDayView3 != null) {
            wheelDayView3.setOnScrollChangedListener(this);
        }
    }

    @Override // cb.c
    public void a(@NotNull WheelView wheelView, int i10) {
        cb.c cVar = this.f105j;
        if (cVar != null) {
            cVar.a(wheelView, i10);
        }
    }

    @Override // cb.c
    public void d(@NotNull WheelView wheelView, int i10) {
        cb.c cVar = this.f105j;
        if (cVar != null) {
            cVar.d(wheelView, i10);
        }
    }

    @Override // cb.b
    public void e(@NotNull WheelView wheelView, @NotNull com.zyyoona7.wheel.adapter.a<?> aVar, int i10) {
        Integer num;
        Integer num2;
        Integer num3;
        WheelYearView wheelYearView = this.f106k;
        int id2 = wheelYearView != null ? wheelYearView.getId() : -1;
        WheelMonthView wheelMonthView = this.f107l;
        int id3 = wheelMonthView != null ? wheelMonthView.getId() : -1;
        int id4 = wheelView.getId();
        if (id4 == id2) {
            WheelYearView wheelYearView2 = this.f106k;
            int iIntValue = (wheelYearView2 == null || (num3 = (Integer) wheelYearView2.h0(i10)) == null) ? f93n : num3.intValue();
            WheelDayView wheelDayView = this.f108m;
            if (wheelDayView != null) {
                wheelDayView.setYear(iIntValue);
            }
            if (iIntValue == this.f97b) {
                WheelMonthView wheelMonthView2 = this.f107l;
                if (wheelMonthView2 != null) {
                    wheelMonthView2.setSelectedMonthRange(this.f99d, 12, this.f103h);
                }
                int selectedMonth = getSelectedMonth();
                WheelDayView wheelDayView2 = this.f108m;
                if (wheelDayView2 != null) {
                    wheelDayView2.setMonth(selectedMonth);
                }
                if (selectedMonth == this.f99d) {
                    WheelDayView wheelDayView3 = this.f108m;
                    if (wheelDayView3 != null) {
                        wheelDayView3.setSelectedDayRange(this.f101f, wheelDayView3.getMaxDay(), this.f103h);
                    }
                } else {
                    WheelDayView wheelDayView4 = this.f108m;
                    if (wheelDayView4 != null) {
                        wheelDayView4.setSelectedDayRange(-1, -1);
                    }
                }
            } else if (iIntValue == this.f98c) {
                WheelMonthView wheelMonthView3 = this.f107l;
                if (wheelMonthView3 != null) {
                    wheelMonthView3.setSelectedMonthRange(1, this.f100e, this.f103h);
                }
                int selectedMonth2 = getSelectedMonth();
                WheelDayView wheelDayView5 = this.f108m;
                if (wheelDayView5 != null) {
                    wheelDayView5.setMonth(selectedMonth2);
                }
                if (selectedMonth2 == this.f100e) {
                    WheelDayView wheelDayView6 = this.f108m;
                    if (wheelDayView6 != null) {
                        wheelDayView6.setSelectedDayRange(1, this.f102g, this.f103h);
                    }
                } else {
                    WheelDayView wheelDayView7 = this.f108m;
                    if (wheelDayView7 != null) {
                        wheelDayView7.setSelectedDayRange(-1, -1);
                    }
                }
            } else {
                WheelDayView wheelDayView8 = this.f108m;
                if (wheelDayView8 != null) {
                    wheelDayView8.setMonth(getSelectedMonth());
                }
                WheelMonthView wheelMonthView4 = this.f107l;
                if (wheelMonthView4 != null) {
                    wheelMonthView4.setSelectedMonthRange(-1, -1);
                }
                WheelDayView wheelDayView9 = this.f108m;
                if (wheelDayView9 != null) {
                    wheelDayView9.setSelectedDayRange(-1, -1);
                }
            }
        } else if (id4 == id3) {
            WheelDayView wheelDayView10 = this.f108m;
            if (wheelDayView10 != null) {
                WheelMonthView wheelMonthView5 = this.f107l;
                wheelDayView10.setMonth((wheelMonthView5 == null || (num2 = (Integer) wheelMonthView5.h0(i10)) == null) ? 1 : num2.intValue());
            }
            int selectedYear = getSelectedYear();
            WheelMonthView wheelMonthView6 = this.f107l;
            int iIntValue2 = (wheelMonthView6 == null || (num = (Integer) wheelMonthView6.h0(i10)) == null) ? 1 : num.intValue();
            if (iIntValue2 == this.f99d && selectedYear == this.f97b) {
                WheelDayView wheelDayView11 = this.f108m;
                if (wheelDayView11 != null) {
                    wheelDayView11.setSelectedDayRange(this.f101f, wheelDayView11.getMaxDay(), this.f103h);
                }
            } else if (iIntValue2 == this.f100e && selectedYear == this.f98c) {
                WheelDayView wheelDayView12 = this.f108m;
                if (wheelDayView12 != null) {
                    wheelDayView12.setSelectedDayRange(1, this.f102g, this.f103h);
                }
            } else {
                WheelDayView wheelDayView13 = this.f108m;
                if (wheelDayView13 != null) {
                    wheelDayView13.setSelectedDayRange(-1, -1);
                }
            }
        }
        bb.c cVar = this.f104i;
        if (cVar != null) {
            cVar.a(getSelectedYear(), getSelectedMonth(), getSelectedDay(), getSelectedDate());
        }
    }

    @Override // ab.a
    @NotNull
    public Date getSelectedDate() {
        try {
            Date date = new SimpleDateFormat("yyyy-M-d", Locale.getDefault()).parse(getSelectedDateStr());
            return date != null ? date : new Date();
        } catch (ParseException unused) {
            return new Date();
        }
    }

    @Override // ab.a
    @NotNull
    public String getSelectedDateStr() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getSelectedYear());
        sb2.append('-');
        sb2.append(getSelectedMonth());
        sb2.append('-');
        sb2.append(getSelectedDay());
        return sb2.toString();
    }

    @Override // ab.a
    public int getSelectedDay() {
        Integer num = (Integer) getWheelDayView().getSelectedItem();
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    @Override // ab.a
    public int getSelectedMonth() {
        Integer num = (Integer) getWheelMonthView().getSelectedItem();
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    @Override // ab.a
    public int getSelectedYear() {
        Integer num = (Integer) getWheelYearView().getSelectedItem();
        return num != null ? num.intValue() : f93n;
    }

    @Override // ab.a
    @NotNull
    public WheelDayView getWheelDayView() {
        if (!(this.f106k != null)) {
            throw new IllegalArgumentException("WheelDayView is null.".toString());
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView == null) {
            Intrinsics.throwNpe();
        }
        return wheelDayView;
    }

    @Override // ab.a
    @NotNull
    public WheelMonthView getWheelMonthView() {
        if (!(this.f106k != null)) {
            throw new IllegalArgumentException("WheelMonthView is null.".toString());
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView == null) {
            Intrinsics.throwNpe();
        }
        return wheelMonthView;
    }

    @Override // ab.a
    @NotNull
    public WheelYearView getWheelYearView() {
        WheelYearView wheelYearView = this.f106k;
        if (!(wheelYearView != null)) {
            throw new IllegalArgumentException("WheelYearView is null.".toString());
        }
        if (wheelYearView == null) {
            Intrinsics.throwNpe();
        }
        return wheelYearView;
    }

    @Override // ab.g
    public void setAutoFitTextSize(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setAutoFitTextSize(z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setAutoFitTextSize(z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setAutoFitTextSize(z10);
        }
    }

    @Override // ab.g
    public void setCurtainColor(@ColorInt int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setCurtainColor(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setCurtainColor(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setCurtainColor(i10);
        }
    }

    @Override // ab.g
    public void setCurtainColorRes(@ColorRes int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setCurtainColorRes(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setCurtainColorRes(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setCurtainColorRes(i10);
        }
    }

    @Override // ab.g
    public void setCurved(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setCurved(z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setCurved(z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setCurved(z10);
        }
    }

    @Override // ab.g
    public void setCurvedArcDirection(@NotNull WheelView.CurvedArcDirection curvedArcDirection) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setCurvedArcDirection(curvedArcDirection);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setCurvedArcDirection(curvedArcDirection);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setCurvedArcDirection(curvedArcDirection);
        }
    }

    @Override // ab.g
    public void setCurvedArcDirectionFactor(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setCurvedArcDirectionFactor(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setCurvedArcDirectionFactor(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setCurvedArcDirectionFactor(f10);
        }
    }

    @Override // ab.g
    public void setCyclic(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setCyclic(z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setCyclic(z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setCyclic(z10);
        }
    }

    @Override // ab.a
    public void setDateRange(@NotNull Date date, @NotNull Date date2) {
        Calendar minCalendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(minCalendar, "minCalendar");
        minCalendar.setTime(date);
        Calendar maxCalendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(maxCalendar, "maxCalendar");
        maxCalendar.setTime(date2);
        setDateRange(minCalendar, maxCalendar, WheelView.OverRangeMode.NORMAL);
    }

    @Override // ab.a
    public void setDayMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setMaxTextWidthMeasureType(measureType);
        }
    }

    @Override // ab.a
    public void setDayTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar) {
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextFormatter(aVar);
        }
    }

    @Override // ab.g
    public void setDividerCap(@NotNull Paint.Cap cap) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerCap(cap);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerCap(cap);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerCap(cap);
        }
    }

    @Override // ab.g
    public void setDividerColor(@ColorInt int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerColor(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerColor(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerColor(i10);
        }
    }

    @Override // ab.g
    public void setDividerColorRes(@ColorRes int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerColorRes(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerColorRes(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerColorRes(i10);
        }
    }

    @Override // ab.g
    public void setDividerHeight(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerHeight(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerHeight(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerHeight(i10);
        }
    }

    @Override // ab.g
    public void setDividerOffsetY(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerOffsetY(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerOffsetY(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerOffsetY(i10);
        }
    }

    @Override // ab.g
    public void setDividerType(@NotNull WheelView.DividerType dividerType) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerType(dividerType);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerType(dividerType);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerType(dividerType);
        }
    }

    @Override // ab.g
    public void setLeftText(@NotNull CharSequence charSequence) {
        setLeftText(charSequence, charSequence, charSequence);
    }

    @Override // ab.g
    public void setLeftTextColor(@ColorInt int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftTextColor(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftTextColor(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftTextColor(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextColorRes(@ColorRes int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftTextColorRes(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftTextColorRes(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextGravity(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftTextGravity(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftTextGravity(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftTextGravity(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextMarginRight(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftTextMarginRight(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftTextMarginRight(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftTextMarginRight(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextSize(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftTextSize(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftTextSize(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftTextSize(i10);
        }
    }

    @Override // ab.g
    public void setLineSpacing(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLineSpacing(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLineSpacing(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLineSpacing(i10);
        }
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Date date) {
        Calendar maxCalendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(maxCalendar, "maxCalendar");
        maxCalendar.setTime(date);
        setMaxSelectedDate(maxCalendar, WheelView.OverRangeMode.NORMAL);
    }

    @Override // ab.a
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        setMaxTextWidthMeasureType(measureType, measureType, measureType);
    }

    @Override // ab.g
    public void setMinTextSize(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setMinTextSize(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setMinTextSize(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setMinTextSize(i10);
        }
    }

    @Override // ab.a
    public void setMonthMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setMaxTextWidthMeasureType(measureType);
        }
    }

    @Override // ab.a
    public void setMonthTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar) {
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextFormatter(aVar);
        }
    }

    @Override // ab.g
    public void setNormalTextColor(@ColorInt int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setNormalTextColor(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setNormalTextColor(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setNormalTextColor(i10);
        }
    }

    @Override // ab.g
    public void setNormalTextColorRes(@ColorRes int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setNormalTextColorRes(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setNormalTextColorRes(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setNormalTextColorRes(i10);
        }
    }

    @Override // ab.a
    public void setOnDateSelectedListener(@Nullable bb.c cVar) {
        this.f104i = cVar;
    }

    @Override // ab.a
    public void setOnScrollChangedListener(@Nullable cb.c cVar) {
        this.f105j = cVar;
    }

    @Override // ab.g
    public void setRefractRatio(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRefractRatio(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRefractRatio(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRefractRatio(f10);
        }
    }

    @Override // ab.g
    public void setResetSelectedPosition(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setResetSelectedPosition(z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setResetSelectedPosition(z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setResetSelectedPosition(z10);
        }
    }

    @Override // ab.g
    public void setRightText(@NotNull CharSequence charSequence) {
        setRightText(charSequence, charSequence, charSequence);
    }

    @Override // ab.g
    public void setRightTextColor(@ColorInt int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightTextColor(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightTextColor(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightTextColor(i10);
        }
    }

    @Override // ab.g
    public void setRightTextColorRes(@ColorRes int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightTextColorRes(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightTextColorRes(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setRightTextGravity(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightTextGravity(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightTextGravity(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightTextGravity(i10);
        }
    }

    @Override // ab.g
    public void setRightTextMarginLeft(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightTextMarginLeft(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightTextMarginLeft(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightTextMarginLeft(i10);
        }
    }

    @Override // ab.g
    public void setRightTextSize(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightTextSize(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightTextSize(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightTextSize(i10);
        }
    }

    @Override // ab.a
    public void setSelectedDate(@NotNull Date date) {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
        calendar.setTime(date);
        setSelectedDate(calendar);
    }

    @Override // ab.g
    public void setSelectedTextColor(@ColorInt int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setSelectedTextColor(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setSelectedTextColor(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setSelectedTextColor(i10);
        }
    }

    @Override // ab.g
    public void setSelectedTextColorRes(@ColorRes int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setSelectedTextColorRes(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setSelectedTextColorRes(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setSelectedTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setShowCurtain(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setShowCurtain(z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setShowCurtain(z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setShowCurtain(z10);
        }
    }

    @Override // ab.a
    public void setShowDay(boolean z10) {
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // ab.g
    public void setShowDivider(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setShowDivider(z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setShowDivider(z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setShowDivider(z10);
        }
    }

    @Override // ab.a
    public void setShowMonth(boolean z10) {
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // ab.a
    public void setShowYear(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // ab.g
    public void setSoundEffect(boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setSoundEffect(z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setSoundEffect(z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setSoundEffect(z10);
        }
    }

    @Override // ab.g
    public void setSoundResource(@RawRes int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setSoundResource(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setSoundResource(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setSoundResource(i10);
        }
    }

    @Override // ab.g
    public void setSoundVolume(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setSoundVolume(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setSoundVolume(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setSoundVolume(f10);
        }
    }

    @Override // ab.g
    public void setTextAlign(@NotNull Paint.Align align) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextAlign(align);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextAlign(align);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextAlign(align);
        }
    }

    @Override // ab.g
    public void setTextPadding(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextPaddingLeft(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextPaddingLeft(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextPaddingLeft(i10);
        }
        WheelYearView wheelYearView2 = this.f106k;
        if (wheelYearView2 != null) {
            wheelYearView2.setTextPaddingRight(i10);
        }
        WheelMonthView wheelMonthView2 = this.f107l;
        if (wheelMonthView2 != null) {
            wheelMonthView2.setTextPaddingRight(i10);
        }
        WheelDayView wheelDayView2 = this.f108m;
        if (wheelDayView2 != null) {
            wheelDayView2.setTextPaddingRight(i10);
        }
    }

    @Override // ab.g
    public void setTextPaddingLeft(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextPaddingLeft(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextPaddingLeft(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextPaddingLeft(i10);
        }
    }

    @Override // ab.g
    public void setTextPaddingRight(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextPaddingRight(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextPaddingRight(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextPaddingRight(i10);
        }
    }

    @Override // ab.g
    public void setTextSize(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextSize(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextSize(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextSize(i10);
        }
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTypeface(typeface, false);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTypeface(typeface, false);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTypeface(typeface, false);
        }
    }

    @Override // ab.g
    public void setVisibleItems(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setVisibleItems(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setVisibleItems(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setVisibleItems(i10);
        }
    }

    @Override // ab.g
    public void setWheelDividerPadding(int i10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerPadding(i10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerPadding(i10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerPadding(i10);
        }
    }

    @Override // ab.a
    public void setYearMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setMaxTextWidthMeasureType(measureType);
        }
    }

    @Override // ab.a
    public void setYearRange(int i10, int i11) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setYearRange(i10, i11);
        }
    }

    @Override // ab.a
    public void setYearTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextFormatter(aVar);
        }
    }

    @Override // ab.a
    public void setLeftText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftText(charSequence);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftText(charSequence2);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftText(charSequence3);
        }
    }

    @Override // ab.a
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType, @NotNull WheelView.MeasureType measureType2, @NotNull WheelView.MeasureType measureType3) {
        setYearMaxTextWidthMeasureType(measureType);
        setMonthMaxTextWidthMeasureType(measureType2);
        setDayMaxTextWidthMeasureType(measureType3);
    }

    @Override // ab.a
    public void setRightText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightText(charSequence);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightText(charSequence2);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightText(charSequence3);
        }
    }

    @Override // ab.g
    public void setDividerHeight(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerHeight(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerHeight(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerHeight(f10);
        }
    }

    @Override // ab.g
    public void setDividerOffsetY(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerOffsetY(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerOffsetY(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerOffsetY(f10);
        }
    }

    @Override // ab.g
    public void setLeftTextMarginRight(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftTextMarginRight(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftTextMarginRight(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftTextMarginRight(f10);
        }
    }

    @Override // ab.g
    public void setLeftTextSize(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLeftTextSize(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLeftTextSize(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLeftTextSize(f10);
        }
    }

    @Override // ab.g
    public void setLineSpacing(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setLineSpacing(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setLineSpacing(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setLineSpacing(f10);
        }
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Date date, @NotNull WheelView.OverRangeMode overRangeMode) {
        Calendar maxCalendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(maxCalendar, "maxCalendar");
        maxCalendar.setTime(date);
        setMaxSelectedDate(maxCalendar, overRangeMode);
    }

    @Override // ab.g
    public void setMinTextSize(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setMinTextSize(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setMinTextSize(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setMinTextSize(f10);
        }
    }

    @Override // ab.g
    public void setRightTextMarginLeft(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightTextMarginLeft(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightTextMarginLeft(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightTextMarginLeft(f10);
        }
    }

    @Override // ab.g
    public void setRightTextSize(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setRightTextSize(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setRightTextSize(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setRightTextSize(f10);
        }
    }

    @Override // ab.a
    public void setSelectedDate(@NotNull Calendar calendar) {
        setSelectedDate(calendar.get(1), calendar.get(2) + 1, calendar.get(5));
    }

    @Override // ab.g
    public void setTextPaddingLeft(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextPaddingLeft(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextPaddingLeft(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextPaddingLeft(f10);
        }
    }

    @Override // ab.g
    public void setTextPaddingRight(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextPaddingRight(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextPaddingRight(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextPaddingRight(f10);
        }
    }

    @Override // ab.g
    public void setTextSize(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextSize(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextSize(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextSize(f10);
        }
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface, boolean z10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTypeface(typeface, z10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTypeface(typeface, z10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTypeface(typeface, z10);
        }
    }

    @Override // ab.g
    public void setWheelDividerPadding(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setDividerPadding(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setDividerPadding(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setDividerPadding(f10);
        }
    }

    @Override // ab.a
    public void setDateRange(@NotNull Date date, @NotNull Date date2, @NotNull WheelView.OverRangeMode overRangeMode) {
        Calendar minCalendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(minCalendar, "minCalendar");
        minCalendar.setTime(date);
        Calendar maxCalendar = Calendar.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(maxCalendar, "maxCalendar");
        maxCalendar.setTime(date2);
        setDateRange(minCalendar, maxCalendar, overRangeMode);
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Calendar calendar) {
        setMaxSelectedDate(calendar, WheelView.OverRangeMode.NORMAL);
    }

    @Override // ab.g
    public void setTextPadding(float f10) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setTextPadding(f10);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            wheelMonthView.setTextPadding(f10);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            wheelDayView.setTextPadding(f10);
        }
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Calendar calendar, @NotNull WheelView.OverRangeMode overRangeMode) {
        Integer num = (Integer) getWheelYearView().h0(0);
        this.f97b = num != null ? num.intValue() : f93n;
        this.f98c = calendar.get(1);
        this.f99d = 1;
        this.f100e = calendar.get(2) + 1;
        this.f101f = 1;
        this.f102g = calendar.get(5);
        this.f103h = overRangeMode;
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            WheelYearView.setSelectedYearRange$default(wheelYearView, 0, this.f98c, overRangeMode, 1, null);
        }
    }

    @Override // ab.a
    public void setSelectedDate(int i10, int i11, int i12) {
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            WheelYearView.setSelectedYear$default(wheelYearView, i10, false, 0, 6, null);
        }
        WheelMonthView wheelMonthView = this.f107l;
        if (wheelMonthView != null) {
            WheelMonthView.setSelectedMonth$default(wheelMonthView, i11, false, 0, 6, null);
        }
        WheelDayView wheelDayView = this.f108m;
        if (wheelDayView != null) {
            WheelDayView.setSelectedDay$default(wheelDayView, i12, false, 0, 6, null);
        }
    }

    @Override // ab.a
    public void setDateRange(@NotNull Calendar calendar, @NotNull Calendar calendar2) {
        setDateRange(calendar, calendar2, WheelView.OverRangeMode.NORMAL);
    }

    @Override // ab.a
    public void setDateRange(@NotNull Calendar calendar, @NotNull Calendar calendar2, @NotNull WheelView.OverRangeMode overRangeMode) {
        this.f97b = calendar.get(1);
        this.f98c = calendar2.get(1);
        this.f99d = calendar.get(2) + 1;
        this.f100e = calendar2.get(2) + 1;
        this.f101f = calendar.get(5);
        this.f102g = calendar2.get(5);
        this.f103h = overRangeMode;
        WheelYearView wheelYearView = this.f106k;
        if (wheelYearView != null) {
            wheelYearView.setSelectedYearRange(this.f97b, this.f98c, overRangeMode);
        }
    }
}
