package ab;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.format.DateFormat;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.RawRes;
import com.zyyoona7.picker.ex.WheelAmPmView;
import com.zyyoona7.picker.ex.WheelHourView;
import com.zyyoona7.picker.ex.WheelMinuteView;
import com.zyyoona7.picker.ex.WheelSecondView;
import com.zyyoona7.wheel.WheelView;
import java.util.Calendar;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class f implements cb.b, cb.c, bb.b, e, g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f116i = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private cb.c f117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.zyyoona7.wheel.formatter.a f118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private bb.f f119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WheelAmPmView f120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WheelHourView f121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WheelMinuteView f122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WheelSecondView f123h;

    public static final class a {
        private a() {
        }

        public final boolean a(@NotNull Context context) {
            return DateFormat.is24HourFormat(context);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public f(@Nullable WheelAmPmView wheelAmPmView, @Nullable WheelHourView wheelHourView, @Nullable WheelMinuteView wheelMinuteView, @Nullable WheelSecondView wheelSecondView) {
        this.f120e = wheelAmPmView;
        this.f121f = wheelHourView;
        this.f122g = wheelMinuteView;
        this.f123h = wheelSecondView;
        if (wheelAmPmView != null) {
            wheelAmPmView.setOnItemSelectedListener(this);
        }
        WheelHourView wheelHourView2 = this.f121f;
        if (wheelHourView2 != null) {
            wheelHourView2.setOnItemSelectedListener(this);
        }
        WheelMinuteView wheelMinuteView2 = this.f122g;
        if (wheelMinuteView2 != null) {
            wheelMinuteView2.setOnItemSelectedListener(this);
        }
        WheelSecondView wheelSecondView2 = this.f123h;
        if (wheelSecondView2 != null) {
            wheelSecondView2.setOnItemSelectedListener(this);
        }
        WheelAmPmView wheelAmPmView2 = this.f120e;
        if (wheelAmPmView2 != null) {
            wheelAmPmView2.setOnScrollChangedListener(this);
        }
        WheelHourView wheelHourView3 = this.f121f;
        if (wheelHourView3 != null) {
            wheelHourView3.setOnScrollChangedListener(this);
        }
        WheelMinuteView wheelMinuteView3 = this.f122g;
        if (wheelMinuteView3 != null) {
            wheelMinuteView3.setOnScrollChangedListener(this);
        }
        WheelSecondView wheelSecondView3 = this.f123h;
        if (wheelSecondView3 != null) {
            wheelSecondView3.setOnScrollChangedListener(this);
        }
        WheelHourView wheelHourView4 = this.f121f;
        if (wheelHourView4 != null) {
            wheelHourView4.setOnAmPmChangedListener(this);
        }
    }

    @Override // cb.c
    public void a(@NotNull WheelView wheelView, int i10) {
        cb.c cVar = this.f117b;
        if (cVar != null) {
            cVar.a(wheelView, i10);
        }
    }

    @Override // ab.e
    public boolean b() {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            return wheelAmPmView.c1();
        }
        return false;
    }

    @Override // ab.e
    public boolean c() {
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            return wheelHourView.getIs24Hour();
        }
        return false;
    }

    @Override // cb.c
    public void d(@NotNull WheelView wheelView, int i10) {
        cb.c cVar = this.f117b;
        if (cVar != null) {
            cVar.d(wheelView, i10);
        }
    }

    @Override // cb.b
    public void e(@NotNull WheelView wheelView, @NotNull com.zyyoona7.wheel.adapter.a<?> aVar, int i10) {
        com.zyyoona7.wheel.adapter.a<?> adapter;
        Integer num;
        com.zyyoona7.wheel.adapter.a<?> adapter2;
        Integer num2;
        com.zyyoona7.wheel.adapter.a<?> adapter3;
        Integer num3;
        WheelHourView wheelHourView;
        int id2 = wheelView.getId();
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null && wheelAmPmView.getId() == id2 && (wheelHourView = this.f121f) != null) {
            wheelHourView.setHourType(i10 == 0 ? WheelHourView.HourType.AM : WheelHourView.HourType.PM);
        }
        WheelHourView wheelHourView2 = this.f121f;
        boolean is24Hour = wheelHourView2 != null ? wheelHourView2.getIs24Hour() : false;
        WheelHourView wheelHourView3 = this.f121f;
        int iIntValue = (wheelHourView3 == null || (adapter3 = wheelHourView3.getAdapter()) == null || (num3 = (Integer) adapter3.p(i10)) == null) ? -1 : num3.intValue();
        WheelHourView wheelHourView4 = this.f121f;
        boolean z10 = (wheelHourView4 != null ? wheelHourView4.getHourType() : null) == WheelHourView.HourType.AM;
        WheelMinuteView wheelMinuteView = this.f122g;
        int iIntValue2 = (wheelMinuteView == null || (adapter2 = wheelMinuteView.getAdapter()) == null || (num2 = (Integer) adapter2.p(i10)) == null) ? -1 : num2.intValue();
        WheelSecondView wheelSecondView = this.f123h;
        int iIntValue3 = (wheelSecondView == null || (adapter = wheelSecondView.getAdapter()) == null || (num = (Integer) adapter.p(i10)) == null) ? -1 : num.intValue();
        bb.f fVar = this.f119d;
        if (fVar != null) {
            fVar.a(is24Hour, iIntValue, iIntValue2, iIntValue3, z10);
        }
    }

    @Override // bb.b
    public void f(@NotNull WheelHourView wheelHourView, boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            WheelView.setSelectedPosition$default(wheelAmPmView, !z10 ? 1 : 0, true, 0, 4, null);
        }
    }

    @Override // ab.e
    public int getSelectedHour() {
        Integer num = (Integer) getWheelHourView().getSelectedItem();
        if (num != null) {
            return num.intValue();
        }
        return 12;
    }

    @Override // ab.e
    public int getSelectedMinute() {
        Integer num = (Integer) getWheelMinuteView().getSelectedItem();
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // ab.e
    public int getSelectedSecond() {
        Integer num = (Integer) getWheelSecondView().getSelectedItem();
        if (num != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // ab.e
    @NotNull
    public WheelAmPmView getWheelAmPmView() {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (!(wheelAmPmView != null)) {
            throw new IllegalArgumentException("WheelAmPmView is null.".toString());
        }
        if (wheelAmPmView == null) {
            Intrinsics.throwNpe();
        }
        return wheelAmPmView;
    }

    @Override // ab.e
    @NotNull
    public WheelHourView getWheelHourView() {
        WheelHourView wheelHourView = this.f121f;
        if (!(wheelHourView != null)) {
            throw new IllegalArgumentException("WheelHourView is null.".toString());
        }
        if (wheelHourView == null) {
            Intrinsics.throwNpe();
        }
        return wheelHourView;
    }

    @Override // ab.e
    @NotNull
    public WheelMinuteView getWheelMinuteView() {
        WheelMinuteView wheelMinuteView = this.f122g;
        if (!(wheelMinuteView != null)) {
            throw new IllegalArgumentException("WheelMinuteView is null.".toString());
        }
        if (wheelMinuteView == null) {
            Intrinsics.throwNpe();
        }
        return wheelMinuteView;
    }

    @Override // ab.e
    @NotNull
    public WheelSecondView getWheelSecondView() {
        WheelSecondView wheelSecondView = this.f123h;
        if (!(wheelSecondView != null)) {
            throw new IllegalArgumentException("WheelSecondView is null.".toString());
        }
        if (wheelSecondView == null) {
            Intrinsics.throwNpe();
        }
        return wheelSecondView;
    }

    @Override // ab.e
    public void set24Hour(boolean z10) {
        WheelHourView wheelHourView;
        WheelHourView wheelHourView2 = this.f121f;
        boolean z11 = wheelHourView2 != null && wheelHourView2.getVisibility() == 0;
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setVisibility((z10 || !z11) ? 8 : 0);
        }
        WheelHourView wheelHourView3 = this.f121f;
        if (wheelHourView3 != null) {
            wheelHourView3.set24Hour(z10);
        }
        if (this.f118c != null || (wheelHourView = this.f121f) == null) {
            return;
        }
        wheelHourView.setTextFormatter(z10 ? new com.zyyoona7.wheel.formatter.a(null, 1, null) : new com.zyyoona7.wheel.formatter.a("%d"));
    }

    @Override // ab.e
    public void setAmPmMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setMaxTextWidthMeasureType(measureType);
        }
    }

    @Override // ab.e
    public void setAmPmTextHandler(@NotNull bb.a aVar) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setAmPmTextHandler(aVar);
        }
    }

    @Override // ab.g
    public void setAutoFitTextSize(boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setAutoFitTextSize(z10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setAutoFitTextSize(z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setAutoFitTextSize(z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setAutoFitTextSize(z10);
        }
    }

    @Override // ab.g
    public void setCurtainColor(@ColorInt int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setCurtainColor(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setCurtainColor(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setCurtainColor(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setCurtainColor(i10);
        }
    }

    @Override // ab.g
    public void setCurtainColorRes(@ColorRes int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setCurtainColorRes(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setCurtainColorRes(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setCurtainColorRes(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setCurtainColorRes(i10);
        }
    }

    @Override // ab.g
    public void setCurved(boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setCurved(z10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setCurved(z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setCurved(z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setCurved(z10);
        }
    }

    @Override // ab.g
    public void setCurvedArcDirection(@NotNull WheelView.CurvedArcDirection curvedArcDirection) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setCurvedArcDirection(curvedArcDirection);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setCurvedArcDirection(curvedArcDirection);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setCurvedArcDirection(curvedArcDirection);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setCurvedArcDirection(curvedArcDirection);
        }
    }

    @Override // ab.g
    public void setCurvedArcDirectionFactor(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setCurvedArcDirectionFactor(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setCurvedArcDirectionFactor(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setCurvedArcDirectionFactor(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setCurvedArcDirectionFactor(f10);
        }
    }

    @Override // ab.g
    public void setCyclic(boolean z10) {
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setCyclic(z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setCyclic(z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setCyclic(z10);
        }
    }

    @Override // ab.g
    public void setDividerCap(@NotNull Paint.Cap cap) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerCap(cap);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerCap(cap);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerCap(cap);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerCap(cap);
        }
    }

    @Override // ab.g
    public void setDividerColor(@ColorInt int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerColor(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerColor(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerColor(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerColor(i10);
        }
    }

    @Override // ab.g
    public void setDividerColorRes(@ColorRes int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerColorRes(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerColorRes(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerColorRes(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerColorRes(i10);
        }
    }

    @Override // ab.g
    public void setDividerHeight(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerHeight(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerHeight(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerHeight(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerHeight(i10);
        }
    }

    @Override // ab.g
    public void setDividerOffsetY(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerOffsetY(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerOffsetY(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerOffsetY(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerOffsetY(i10);
        }
    }

    @Override // ab.g
    public void setDividerType(@NotNull WheelView.DividerType dividerType) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerType(dividerType);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerType(dividerType);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerType(dividerType);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerType(dividerType);
        }
    }

    @Override // ab.e
    public void setHourMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setMaxTextWidthMeasureType(measureType);
        }
    }

    @Override // ab.e
    public void setHourTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar) {
        this.f118c = aVar;
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextFormatter(aVar);
        }
    }

    @Override // ab.g
    public void setLeftText(@NotNull CharSequence charSequence) {
        setLeftText(charSequence, charSequence, charSequence, charSequence);
    }

    @Override // ab.g
    public void setLeftTextColor(@ColorInt int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftTextColor(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftTextColor(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftTextColor(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftTextColor(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextColorRes(@ColorRes int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftTextColorRes(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftTextColorRes(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftTextColorRes(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextGravity(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftTextGravity(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftTextGravity(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftTextGravity(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftTextGravity(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextMarginRight(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftTextMarginRight(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftTextMarginRight(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftTextMarginRight(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftTextMarginRight(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextSize(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftTextSize(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftTextSize(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftTextSize(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftTextSize(i10);
        }
    }

    @Override // ab.g
    public void setLineSpacing(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLineSpacing(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLineSpacing(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLineSpacing(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLineSpacing(i10);
        }
    }

    @Override // ab.e
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        setMaxTextWidthMeasureType(measureType, measureType, measureType, measureType);
    }

    @Override // ab.g
    public void setMinTextSize(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setMinTextSize(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setMinTextSize(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setMinTextSize(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setMinTextSize(i10);
        }
    }

    @Override // ab.e
    public void setMinuteMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setMaxTextWidthMeasureType(measureType);
        }
    }

    @Override // ab.e
    public void setMinuteTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar) {
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextFormatter(aVar);
        }
    }

    @Override // ab.g
    public void setNormalTextColor(@ColorInt int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setNormalTextColor(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setNormalTextColor(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setNormalTextColor(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setNormalTextColor(i10);
        }
    }

    @Override // ab.g
    public void setNormalTextColorRes(@ColorRes int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setNormalTextColorRes(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setNormalTextColorRes(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setNormalTextColorRes(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setNormalTextColorRes(i10);
        }
    }

    @Override // ab.e
    public void setOnScrollChangedListener(@Nullable cb.c cVar) {
        this.f117b = cVar;
    }

    @Override // ab.e
    public void setOnTimeSelectedListener(@Nullable bb.f fVar) {
        this.f119d = fVar;
    }

    @Override // ab.g
    public void setRefractRatio(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRefractRatio(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRefractRatio(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRefractRatio(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRefractRatio(f10);
        }
    }

    @Override // ab.g
    public void setResetSelectedPosition(boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setResetSelectedPosition(z10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setResetSelectedPosition(z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setResetSelectedPosition(z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setResetSelectedPosition(z10);
        }
    }

    @Override // ab.g
    public void setRightText(@NotNull CharSequence charSequence) {
        setRightText(charSequence, charSequence, charSequence, charSequence);
    }

    @Override // ab.g
    public void setRightTextColor(@ColorInt int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightTextColor(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightTextColor(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightTextColor(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightTextColor(i10);
        }
    }

    @Override // ab.g
    public void setRightTextColorRes(@ColorRes int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightTextColorRes(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightTextColorRes(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightTextColorRes(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setRightTextGravity(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightTextGravity(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightTextGravity(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightTextGravity(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightTextGravity(i10);
        }
    }

    @Override // ab.g
    public void setRightTextMarginLeft(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightTextMarginLeft(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightTextMarginLeft(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightTextMarginLeft(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightTextMarginLeft(i10);
        }
    }

    @Override // ab.g
    public void setRightTextSize(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightTextSize(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightTextSize(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightTextSize(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightTextSize(i10);
        }
    }

    @Override // ab.e
    public void setSecondMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setMaxTextWidthMeasureType(measureType);
        }
    }

    @Override // ab.e
    public void setSecondTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a aVar) {
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextFormatter(aVar);
        }
    }

    @Override // ab.g
    public void setSelectedTextColor(@ColorInt int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setSelectedTextColor(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setSelectedTextColor(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setSelectedTextColor(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setSelectedTextColor(i10);
        }
    }

    @Override // ab.g
    public void setSelectedTextColorRes(@ColorRes int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setSelectedTextColorRes(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setSelectedTextColorRes(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setSelectedTextColorRes(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setSelectedTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setShowCurtain(boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setShowCurtain(z10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setShowCurtain(z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setShowCurtain(z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setShowCurtain(z10);
        }
    }

    @Override // ab.g
    public void setShowDivider(boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setShowDivider(z10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setShowDivider(z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setShowDivider(z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setShowDivider(z10);
        }
    }

    @Override // ab.e
    public void setShowHour(boolean z10) {
        WheelHourView wheelHourView;
        int i10 = z10 ? 0 : 8;
        WheelHourView wheelHourView2 = this.f121f;
        if (wheelHourView2 != null) {
            wheelHourView2.setVisibility(i10);
        }
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setVisibility((!z10 || (wheelHourView = this.f121f) == null || wheelHourView.getIs24Hour()) ? i10 : 0);
        }
    }

    @Override // ab.e
    public void setShowMinute(boolean z10) {
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // ab.e
    public void setShowSecond(boolean z10) {
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setVisibility(z10 ? 0 : 8);
        }
    }

    @Override // ab.g
    public void setSoundEffect(boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setSoundEffect(z10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setSoundEffect(z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setSoundEffect(z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setSoundEffect(z10);
        }
    }

    @Override // ab.g
    public void setSoundResource(@RawRes int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setSoundResource(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setSoundResource(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setSoundResource(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setSoundResource(i10);
        }
    }

    @Override // ab.g
    public void setSoundVolume(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setSoundVolume(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setSoundVolume(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setSoundVolume(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setSoundVolume(f10);
        }
    }

    @Override // ab.g
    public void setTextAlign(@NotNull Paint.Align align) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextAlign(align);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextAlign(align);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextAlign(align);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextAlign(align);
        }
    }

    @Override // ab.g
    public void setTextPadding(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextPaddingLeft(i10);
        }
        WheelAmPmView wheelAmPmView2 = this.f120e;
        if (wheelAmPmView2 != null) {
            wheelAmPmView2.setTextPaddingRight(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextPaddingLeft(i10);
        }
        WheelHourView wheelHourView2 = this.f121f;
        if (wheelHourView2 != null) {
            wheelHourView2.setTextPaddingRight(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextPaddingLeft(i10);
        }
        WheelMinuteView wheelMinuteView2 = this.f122g;
        if (wheelMinuteView2 != null) {
            wheelMinuteView2.setTextPaddingRight(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextPaddingLeft(i10);
        }
        WheelSecondView wheelSecondView2 = this.f123h;
        if (wheelSecondView2 != null) {
            wheelSecondView2.setTextPaddingRight(i10);
        }
    }

    @Override // ab.g
    public void setTextPaddingLeft(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextPaddingLeft(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextPaddingLeft(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextPaddingLeft(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextPaddingLeft(i10);
        }
    }

    @Override // ab.g
    public void setTextPaddingRight(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextPaddingRight(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextPaddingRight(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextPaddingRight(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextPaddingRight(i10);
        }
    }

    @Override // ab.g
    public void setTextSize(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextSize(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextSize(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextSize(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextSize(i10);
        }
    }

    @Override // ab.e
    public void setTime(@NotNull Calendar calendar, boolean z10) {
        int i10 = calendar.get(11);
        int i11 = calendar.get(10);
        int i12 = calendar.get(9);
        int i13 = calendar.get(12);
        int i14 = calendar.get(13);
        if (z10) {
            setTimeFor24(i10, i13, i14);
        } else {
            setTimeFor12(i11, i13, i14, i12 == 0);
        }
    }

    @Override // ab.e
    public void setTimeFor12(int i10, int i11, int i12, boolean z10) {
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null ? wheelHourView.getIs24Hour() : true) {
            set24Hour(false);
        }
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            WheelView.setSelectedPosition$default(wheelAmPmView, !z10 ? 1 : 0, false, 0, 6, null);
        }
        WheelHourView wheelHourView2 = this.f121f;
        if (wheelHourView2 != null) {
            WheelHourView.setSelectedHour$default(wheelHourView2, i10, false, 0, 6, null);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            WheelMinuteView.setSelectedMinute$default(wheelMinuteView, i11, false, 0, 6, null);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            WheelSecondView.setSelectedSecond$default(wheelSecondView, i12, false, 0, 6, null);
        }
    }

    @Override // ab.e
    public void setTimeFor24(int i10, int i11, int i12) {
        WheelHourView wheelHourView = this.f121f;
        if (!(wheelHourView != null ? wheelHourView.getIs24Hour() : true)) {
            set24Hour(true);
        }
        WheelHourView wheelHourView2 = this.f121f;
        if (wheelHourView2 != null) {
            WheelHourView.setSelectedHour$default(wheelHourView2, i10, false, 0, 6, null);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            WheelMinuteView.setSelectedMinute$default(wheelMinuteView, i11, false, 0, 6, null);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            WheelSecondView.setSelectedSecond$default(wheelSecondView, i12, false, 0, 6, null);
        }
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTypeface(typeface, false);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTypeface(typeface, false);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTypeface(typeface, false);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTypeface(typeface, false);
        }
    }

    @Override // ab.g
    public void setVisibleItems(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setVisibleItems(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setVisibleItems(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setVisibleItems(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setVisibleItems(i10);
        }
    }

    @Override // ab.g
    public void setWheelDividerPadding(int i10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerPadding(i10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerPadding(i10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerPadding(i10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerPadding(i10);
        }
    }

    @Override // ab.e
    public void setLeftText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3, @NotNull CharSequence charSequence4) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftText(charSequence);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftText(charSequence2);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftText(charSequence3);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftText(charSequence4);
        }
    }

    @Override // ab.e
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType, @NotNull WheelView.MeasureType measureType2, @NotNull WheelView.MeasureType measureType3, @NotNull WheelView.MeasureType measureType4) {
        setAmPmMaxTextWidthMeasureType(measureType);
        setHourMaxTextWidthMeasureType(measureType2);
        setMinuteMaxTextWidthMeasureType(measureType3);
        setSecondMaxTextWidthMeasureType(measureType4);
    }

    @Override // ab.e
    public void setRightText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3, @NotNull CharSequence charSequence4) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightText(charSequence);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightText(charSequence2);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightText(charSequence3);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightText(charSequence4);
        }
    }

    @Override // ab.g
    public void setDividerHeight(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerHeight(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerHeight(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerHeight(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerHeight(f10);
        }
    }

    @Override // ab.g
    public void setDividerOffsetY(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerOffsetY(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerOffsetY(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerOffsetY(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerOffsetY(f10);
        }
    }

    @Override // ab.g
    public void setLeftTextMarginRight(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftTextMarginRight(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftTextMarginRight(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftTextMarginRight(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftTextMarginRight(f10);
        }
    }

    @Override // ab.g
    public void setLeftTextSize(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLeftTextSize(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLeftTextSize(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLeftTextSize(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLeftTextSize(f10);
        }
    }

    @Override // ab.g
    public void setLineSpacing(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setLineSpacing(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setLineSpacing(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setLineSpacing(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setLineSpacing(f10);
        }
    }

    @Override // ab.g
    public void setMinTextSize(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setMinTextSize(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setMinTextSize(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setMinTextSize(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setMinTextSize(f10);
        }
    }

    @Override // ab.g
    public void setRightTextMarginLeft(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightTextMarginLeft(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightTextMarginLeft(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightTextMarginLeft(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightTextMarginLeft(f10);
        }
    }

    @Override // ab.g
    public void setRightTextSize(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setRightTextSize(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setRightTextSize(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setRightTextSize(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setRightTextSize(f10);
        }
    }

    @Override // ab.g
    public void setTextPaddingLeft(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextPaddingLeft(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextPaddingLeft(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextPaddingLeft(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextPaddingLeft(f10);
        }
    }

    @Override // ab.g
    public void setTextPaddingRight(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextPaddingRight(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextPaddingRight(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextPaddingRight(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextPaddingRight(f10);
        }
    }

    @Override // ab.g
    public void setTextSize(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextSize(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextSize(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextSize(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextSize(f10);
        }
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface, boolean z10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTypeface(typeface, z10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTypeface(typeface, z10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTypeface(typeface, z10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTypeface(typeface, z10);
        }
    }

    @Override // ab.g
    public void setWheelDividerPadding(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setDividerPadding(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setDividerPadding(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setDividerPadding(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setDividerPadding(f10);
        }
    }

    @Override // ab.e
    public void setTime(int i10, int i11, int i12, boolean z10, boolean z11) {
        Calendar calendar = Calendar.getInstance();
        if (z10) {
            calendar.set(11, i10);
        } else {
            calendar.set(10, i10);
        }
        calendar.set(9, !z11 ? 1 : 0);
        calendar.set(12, i11);
        calendar.set(13, i12);
        Intrinsics.checkExpressionValueIsNotNull(calendar, "calendar");
        setTime(calendar, z10);
    }

    @Override // ab.g
    public void setTextPadding(float f10) {
        WheelAmPmView wheelAmPmView = this.f120e;
        if (wheelAmPmView != null) {
            wheelAmPmView.setTextPadding(f10);
        }
        WheelHourView wheelHourView = this.f121f;
        if (wheelHourView != null) {
            wheelHourView.setTextPadding(f10);
        }
        WheelMinuteView wheelMinuteView = this.f122g;
        if (wheelMinuteView != null) {
            wheelMinuteView.setTextPadding(f10);
        }
        WheelSecondView wheelSecondView = this.f123h;
        if (wheelSecondView != null) {
            wheelSecondView.setTextPadding(f10);
        }
    }
}
