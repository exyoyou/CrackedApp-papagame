package ab;

import com.zyyoona7.wheel.WheelView;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface c {
    @Nullable
    <T> T getLinkage1SelectedItem();

    @NotNull
    WheelView getLinkage1WheelView();

    @Nullable
    <T> T getLinkage2SelectedItem();

    @NotNull
    WheelView getLinkage2WheelView();

    @Nullable
    <T> T getLinkage3SelectedItem();

    @NotNull
    WheelView getLinkage3WheelView();

    void setData(@NotNull List<? extends Object> list, @NotNull bb.d dVar);

    void setData(@NotNull List<? extends Object> list, @NotNull bb.g gVar);

    void setLeftText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3);

    void setLinkage1TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar);

    void setLinkage2TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar);

    void setLinkage3TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar);

    void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType);

    void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType, @NotNull WheelView.MeasureType measureType2, @NotNull WheelView.MeasureType measureType3);

    void setOnLinkageSelectedListener(@Nullable bb.e eVar);

    void setOnScrollChangedListener(@Nullable cb.c cVar);

    void setRightText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3);

    void setSelectedItem(@NotNull Object obj, @NotNull Object obj2);

    void setSelectedItem(@NotNull Object obj, @NotNull Object obj2, @NotNull Object obj3);

    void setSelectedItem(@NotNull Object obj, @NotNull Object obj2, @NotNull Object obj3, boolean z10);

    void setSelectedItem(@NotNull Object obj, @NotNull Object obj2, boolean z10);

    void setSelectedPosition(int i10, int i11);

    void setSelectedPosition(int i10, int i11, int i12);

    void setTextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar);
}
