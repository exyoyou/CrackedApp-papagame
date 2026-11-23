package ab;

import com.zyyoona7.picker.ex.WheelDayView;
import com.zyyoona7.picker.ex.WheelMonthView;
import com.zyyoona7.picker.ex.WheelYearView;
import com.zyyoona7.wheel.WheelView;
import java.util.Calendar;
import java.util.Date;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface a {
    @NotNull
    Date getSelectedDate();

    @NotNull
    String getSelectedDateStr();

    int getSelectedDay();

    int getSelectedMonth();

    int getSelectedYear();

    @NotNull
    WheelDayView getWheelDayView();

    @NotNull
    WheelMonthView getWheelMonthView();

    @NotNull
    WheelYearView getWheelYearView();

    void setDateRange(@NotNull Calendar calendar, @NotNull Calendar calendar2);

    void setDateRange(@NotNull Calendar calendar, @NotNull Calendar calendar2, @NotNull WheelView.OverRangeMode overRangeMode);

    void setDateRange(@NotNull Date date, @NotNull Date date2);

    void setDateRange(@NotNull Date date, @NotNull Date date2, @NotNull WheelView.OverRangeMode overRangeMode);

    void setDayMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setDayTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar);

    void setLeftText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3);

    void setMaxSelectedDate(@NotNull Calendar calendar);

    void setMaxSelectedDate(@NotNull Calendar calendar, @NotNull WheelView.OverRangeMode overRangeMode);

    void setMaxSelectedDate(@NotNull Date date);

    void setMaxSelectedDate(@NotNull Date date, @NotNull WheelView.OverRangeMode overRangeMode);

    void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType, @NotNull WheelView.MeasureType measureType2, @NotNull WheelView.MeasureType measureType3);

    void setMonthMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setMonthTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar);

    void setOnDateSelectedListener(@Nullable bb.c cVar);

    void setOnScrollChangedListener(@Nullable cb.c cVar);

    void setRightText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3);

    void setSelectedDate(int i10, int i11, int i12);

    void setSelectedDate(@NotNull Calendar calendar);

    void setSelectedDate(@NotNull Date date);

    void setShowDay(boolean z10);

    void setShowMonth(boolean z10);

    void setShowYear(boolean z10);

    void setYearMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setYearRange(int i10, int i11);

    void setYearTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar);
}
