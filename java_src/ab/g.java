package ab;

import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.RawRes;
import com.zyyoona7.wheel.WheelView;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface g {
    void setAutoFitTextSize(boolean z10);

    void setCurtainColor(@ColorInt int i10);

    void setCurtainColorRes(@ColorRes int i10);

    void setCurved(boolean z10);

    void setCurvedArcDirection(@NotNull WheelView.CurvedArcDirection curvedArcDirection);

    void setCurvedArcDirectionFactor(float f10);

    void setCyclic(boolean z10);

    void setDividerCap(@NotNull Paint.Cap cap);

    void setDividerColor(@ColorInt int i10);

    void setDividerColorRes(@ColorRes int i10);

    void setDividerHeight(float f10);

    void setDividerHeight(int i10);

    void setDividerOffsetY(float f10);

    void setDividerOffsetY(int i10);

    void setDividerType(@NotNull WheelView.DividerType dividerType);

    void setLeftText(@NotNull CharSequence charSequence);

    void setLeftTextColor(@ColorInt int i10);

    void setLeftTextColorRes(@ColorRes int i10);

    void setLeftTextGravity(int i10);

    void setLeftTextMarginRight(float f10);

    void setLeftTextMarginRight(int i10);

    void setLeftTextSize(float f10);

    void setLeftTextSize(int i10);

    void setLineSpacing(float f10);

    void setLineSpacing(int i10);

    void setMinTextSize(float f10);

    void setMinTextSize(int i10);

    void setNormalTextColor(@ColorInt int i10);

    void setNormalTextColorRes(@ColorRes int i10);

    void setRefractRatio(float f10);

    void setResetSelectedPosition(boolean z10);

    void setRightText(@NotNull CharSequence charSequence);

    void setRightTextColor(@ColorInt int i10);

    void setRightTextColorRes(@ColorRes int i10);

    void setRightTextGravity(int i10);

    void setRightTextMarginLeft(float f10);

    void setRightTextMarginLeft(int i10);

    void setRightTextSize(float f10);

    void setRightTextSize(int i10);

    void setSelectedTextColor(@ColorInt int i10);

    void setSelectedTextColorRes(@ColorRes int i10);

    void setShowCurtain(boolean z10);

    void setShowDivider(boolean z10);

    void setSoundEffect(boolean z10);

    void setSoundResource(@RawRes int i10);

    void setSoundVolume(float f10);

    void setTextAlign(@NotNull Paint.Align align);

    void setTextPadding(float f10);

    void setTextPadding(int i10);

    void setTextPaddingLeft(float f10);

    void setTextPaddingLeft(int i10);

    void setTextPaddingRight(float f10);

    void setTextPaddingRight(int i10);

    void setTextSize(float f10);

    void setTextSize(int i10);

    void setTypeface(@NotNull Typeface typeface);

    void setTypeface(@NotNull Typeface typeface, boolean z10);

    void setVisibleItems(int i10);

    void setWheelDividerPadding(float f10);

    void setWheelDividerPadding(int i10);
}
