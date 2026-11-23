package ab;

import com.zyyoona7.picker.ex.WheelAmPmView;
import com.zyyoona7.picker.ex.WheelHourView;
import com.zyyoona7.picker.ex.WheelMinuteView;
import com.zyyoona7.picker.ex.WheelSecondView;
import com.zyyoona7.wheel.WheelView;
import java.util.Calendar;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface e {
    boolean b();

    boolean c();

    int getSelectedHour();

    int getSelectedMinute();

    int getSelectedSecond();

    @NotNull
    WheelAmPmView getWheelAmPmView();

    @NotNull
    WheelHourView getWheelHourView();

    @NotNull
    WheelMinuteView getWheelMinuteView();

    @NotNull
    WheelSecondView getWheelSecondView();

    void set24Hour(boolean z10);

    void setAmPmMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setAmPmTextHandler(@NotNull bb.a aVar);

    void setHourMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setHourTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar);

    void setLeftText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3, @NotNull CharSequence charSequence4);

    void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType, @NotNull WheelView.MeasureType measureType2, @NotNull WheelView.MeasureType measureType3, @NotNull WheelView.MeasureType measureType4);

    void setMinuteMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setMinuteTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar);

    void setOnScrollChangedListener(@Nullable cb.c cVar);

    void setOnTimeSelectedListener(@Nullable bb.f fVar);

    void setRightText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3, @NotNull CharSequence charSequence4);

    void setSecondMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setSecondTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar);

    void setShowHour(boolean z10);

    void setShowMinute(boolean z10);

    void setShowSecond(boolean z10);

    void setTime(int i10, int i11, int i12, boolean z10, boolean z11);

    void setTime(@NotNull Calendar calendar, boolean z10);

    void setTimeFor12(int i10, int i11, int i12, boolean z10);

    void setTimeFor24(int i10, int i11, int i12);
}
