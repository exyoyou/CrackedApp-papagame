package ab;

import android.graphics.Paint;
import android.graphics.Typeface;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.RawRes;
import com.zyyoona7.wheel.WheelView;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class d implements cb.b, cb.c, c, g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private bb.d f109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bb.g f110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cb.c f111d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private bb.e f112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WheelView f113f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private WheelView f114g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WheelView f115h;

    public d(@Nullable WheelView wheelView, @Nullable WheelView wheelView2, @Nullable WheelView wheelView3) {
        this.f113f = wheelView;
        this.f114g = wheelView2;
        this.f115h = wheelView3;
        if (wheelView != null) {
            wheelView.setOnItemSelectedListener(this);
        }
        WheelView wheelView4 = this.f114g;
        if (wheelView4 != null) {
            wheelView4.setOnItemSelectedListener(this);
        }
        WheelView wheelView5 = this.f115h;
        if (wheelView5 != null) {
            wheelView5.setOnItemSelectedListener(this);
        }
        WheelView wheelView6 = this.f113f;
        if (wheelView6 != null) {
            wheelView6.setOnScrollChangedListener(this);
        }
        WheelView wheelView7 = this.f114g;
        if (wheelView7 != null) {
            wheelView7.setOnScrollChangedListener(this);
        }
        WheelView wheelView8 = this.f115h;
        if (wheelView8 != null) {
            wheelView8.setOnScrollChangedListener(this);
        }
        setAutoFitTextSize(true);
        setResetSelectedPosition(true);
    }

    @Override // cb.c
    public void a(@NotNull WheelView wheelView, int i10) {
        cb.c cVar = this.f111d;
        if (cVar != null) {
            cVar.a(wheelView, i10);
        }
    }

    @Override // cb.c
    public void d(@NotNull WheelView wheelView, int i10) {
        cb.c cVar = this.f111d;
        if (cVar != null) {
            cVar.d(wheelView, i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    /* JADX WARN: Code duplicated, block: B:24:0x004a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0059  */
    @Override // cb.b
    public void e(@NotNull WheelView wheelView, @NotNull com.zyyoona7.wheel.adapter.a<?> aVar, int i10) {
        bb.g gVar;
        WheelView wheelView2;
        WheelView wheelView3;
        bb.d dVar;
        List<Object> listEmptyList;
        Unit unit;
        WheelView wheelView4 = this.f113f;
        int id2 = wheelView4 != null ? wheelView4.getId() : -1;
        WheelView wheelView5 = this.f114g;
        int id3 = wheelView5 != null ? wheelView5.getId() : -1;
        int id4 = wheelView.getId();
        if (id4 == id2) {
            bb.g gVar2 = this.f110c;
            if (gVar2 == null) {
                wheelView3 = this.f114g;
                if (wheelView3 != null) {
                    dVar = this.f109b;
                    if (dVar != null || (listEmptyList = dVar.a(getLinkage1WheelView())) == null) {
                        listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                    }
                    wheelView3.setData(listEmptyList);
                    Unit unit2 = Unit.INSTANCE;
                }
            } else {
                WheelView wheelView6 = this.f114g;
                if (wheelView6 != null) {
                    wheelView6.setData(gVar2.a(getLinkage1WheelView()));
                }
                WheelView wheelView7 = this.f115h;
                if (wheelView7 != null) {
                    wheelView7.setData(gVar2.b(getLinkage1WheelView(), getLinkage2WheelView()));
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    wheelView3 = this.f114g;
                    if (wheelView3 != null) {
                        dVar = this.f109b;
                        if (dVar != null) {
                            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                        } else {
                            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                        }
                        wheelView3.setData(listEmptyList);
                        Unit unit3 = Unit.INSTANCE;
                    }
                }
            }
        } else if (id4 == id3 && (gVar = this.f110c) != null && (wheelView2 = this.f115h) != null) {
            wheelView2.setData(gVar.b(getLinkage1WheelView(), getLinkage2WheelView()));
        }
        bb.e eVar = this.f112e;
        if (eVar != null) {
            eVar.a(getLinkage1WheelView(), this.f114g, this.f115h);
        }
    }

    @Override // ab.c
    @Nullable
    public <T> T getLinkage1SelectedItem() {
        return (T) getLinkage1WheelView().getSelectedItem();
    }

    @Override // ab.c
    @NotNull
    public WheelView getLinkage1WheelView() {
        WheelView wheelView = this.f113f;
        if (!(wheelView != null)) {
            throw new IllegalArgumentException("First WheelView is null.".toString());
        }
        if (wheelView == null) {
            Intrinsics.throwNpe();
        }
        return wheelView;
    }

    @Override // ab.c
    @Nullable
    public <T> T getLinkage2SelectedItem() {
        return (T) getLinkage2WheelView().getSelectedItem();
    }

    @Override // ab.c
    @NotNull
    public WheelView getLinkage2WheelView() {
        WheelView wheelView = this.f114g;
        if (!(wheelView != null)) {
            throw new IllegalArgumentException("Second WheelView is null.".toString());
        }
        if (wheelView == null) {
            Intrinsics.throwNpe();
        }
        return wheelView;
    }

    @Override // ab.c
    @Nullable
    public <T> T getLinkage3SelectedItem() {
        return (T) getLinkage3WheelView().getSelectedItem();
    }

    @Override // ab.c
    @NotNull
    public WheelView getLinkage3WheelView() {
        WheelView wheelView = this.f115h;
        if (!(wheelView != null)) {
            throw new IllegalArgumentException("Third WheelView is null.".toString());
        }
        if (wheelView == null) {
            Intrinsics.throwNpe();
        }
        return wheelView;
    }

    @Override // ab.g
    public void setAutoFitTextSize(boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setAutoFitTextSize(z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setAutoFitTextSize(z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setAutoFitTextSize(z10);
        }
    }

    @Override // ab.g
    public void setCurtainColor(@ColorInt int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setCurtainColor(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setCurtainColor(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setCurtainColor(i10);
        }
    }

    @Override // ab.g
    public void setCurtainColorRes(@ColorRes int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setCurtainColorRes(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setCurtainColorRes(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setCurtainColorRes(i10);
        }
    }

    @Override // ab.g
    public void setCurved(boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setCurved(z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setCurved(z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setCurved(z10);
        }
    }

    @Override // ab.g
    public void setCurvedArcDirection(@NotNull WheelView.CurvedArcDirection curvedArcDirection) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setCurvedArcDirection(curvedArcDirection);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setCurvedArcDirection(curvedArcDirection);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setCurvedArcDirection(curvedArcDirection);
        }
    }

    @Override // ab.g
    public void setCurvedArcDirectionFactor(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setCurvedArcDirectionFactor(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setCurvedArcDirectionFactor(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setCurvedArcDirectionFactor(f10);
        }
    }

    @Override // ab.g
    public void setCyclic(boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setCyclic(z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setCyclic(z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setCyclic(z10);
        }
    }

    @Override // ab.c
    public void setData(@NotNull List<? extends Object> list, @NotNull bb.d dVar) {
        List<Object> listEmptyList;
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setData(list);
        }
        this.f109b = dVar;
        this.f110c = null;
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            if (dVar == null || (listEmptyList = dVar.a(getLinkage1WheelView())) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            wheelView2.setData(listEmptyList);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setVisibility(8);
        }
    }

    @Override // ab.g
    public void setDividerCap(@NotNull Paint.Cap cap) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerCap(cap);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerCap(cap);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerCap(cap);
        }
    }

    @Override // ab.g
    public void setDividerColor(@ColorInt int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerColor(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerColor(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerColor(i10);
        }
    }

    @Override // ab.g
    public void setDividerColorRes(@ColorRes int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerColorRes(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerColorRes(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerColorRes(i10);
        }
    }

    @Override // ab.g
    public void setDividerHeight(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerHeight(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerHeight(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerHeight(i10);
        }
    }

    @Override // ab.g
    public void setDividerOffsetY(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerOffsetY(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerOffsetY(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerOffsetY(i10);
        }
    }

    @Override // ab.g
    public void setDividerType(@NotNull WheelView.DividerType dividerType) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerType(dividerType);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerType(dividerType);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerType(dividerType);
        }
    }

    @Override // ab.g
    public void setLeftText(@NotNull CharSequence charSequence) {
        setLeftText(charSequence, charSequence, charSequence);
    }

    @Override // ab.g
    public void setLeftTextColor(@ColorInt int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftTextColor(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftTextColor(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftTextColor(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextColorRes(@ColorRes int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftTextColorRes(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftTextColorRes(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextGravity(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftTextGravity(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftTextGravity(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftTextGravity(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextMarginRight(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftTextMarginRight(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftTextMarginRight(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftTextMarginRight(i10);
        }
    }

    @Override // ab.g
    public void setLeftTextSize(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftTextSize(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftTextSize(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftTextSize(i10);
        }
    }

    @Override // ab.g
    public void setLineSpacing(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLineSpacing(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLineSpacing(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLineSpacing(i10);
        }
    }

    @Override // ab.c
    public void setLinkage1TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextFormatter(cVar);
        }
    }

    @Override // ab.c
    public void setLinkage2TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar) {
        WheelView wheelView = this.f114g;
        if (wheelView != null) {
            wheelView.setTextFormatter(cVar);
        }
    }

    @Override // ab.c
    public void setLinkage3TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar) {
        WheelView wheelView = this.f115h;
        if (wheelView != null) {
            wheelView.setTextFormatter(cVar);
        }
    }

    @Override // ab.c
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        setMaxTextWidthMeasureType(measureType, measureType, measureType);
    }

    @Override // ab.g
    public void setMinTextSize(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setMinTextSize(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setMinTextSize(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setMinTextSize(i10);
        }
    }

    @Override // ab.g
    public void setNormalTextColor(@ColorInt int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setNormalTextColor(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setNormalTextColor(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setNormalTextColor(i10);
        }
    }

    @Override // ab.g
    public void setNormalTextColorRes(@ColorRes int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setNormalTextColorRes(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setNormalTextColorRes(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setNormalTextColorRes(i10);
        }
    }

    @Override // ab.c
    public void setOnLinkageSelectedListener(@Nullable bb.e eVar) {
        this.f112e = eVar;
    }

    @Override // ab.c
    public void setOnScrollChangedListener(@Nullable cb.c cVar) {
        this.f111d = cVar;
    }

    @Override // ab.g
    public void setRefractRatio(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRefractRatio(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRefractRatio(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRefractRatio(f10);
        }
    }

    @Override // ab.g
    public void setResetSelectedPosition(boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setResetSelectedPosition(z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setResetSelectedPosition(z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setResetSelectedPosition(z10);
        }
    }

    @Override // ab.g
    public void setRightText(@NotNull CharSequence charSequence) {
        setRightText(charSequence, charSequence, charSequence);
    }

    @Override // ab.g
    public void setRightTextColor(@ColorInt int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightTextColor(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightTextColor(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightTextColor(i10);
        }
    }

    @Override // ab.g
    public void setRightTextColorRes(@ColorRes int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightTextColorRes(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightTextColorRes(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setRightTextGravity(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightTextGravity(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightTextGravity(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightTextGravity(i10);
        }
    }

    @Override // ab.g
    public void setRightTextMarginLeft(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightTextMarginLeft(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightTextMarginLeft(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightTextMarginLeft(i10);
        }
    }

    @Override // ab.g
    public void setRightTextSize(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightTextSize(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightTextSize(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightTextSize(i10);
        }
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object obj, @NotNull Object obj2) {
        setSelectedItem(obj, obj2, false);
    }

    @Override // ab.c
    public void setSelectedPosition(int i10, int i11) {
        setSelectedPosition(i10, i11, -1);
    }

    @Override // ab.g
    public void setSelectedTextColor(@ColorInt int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setSelectedTextColor(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setSelectedTextColor(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setSelectedTextColor(i10);
        }
    }

    @Override // ab.g
    public void setSelectedTextColorRes(@ColorRes int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setSelectedTextColorRes(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setSelectedTextColorRes(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setSelectedTextColorRes(i10);
        }
    }

    @Override // ab.g
    public void setShowCurtain(boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setShowCurtain(z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setShowCurtain(z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setShowCurtain(z10);
        }
    }

    @Override // ab.g
    public void setShowDivider(boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setShowDivider(z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setShowDivider(z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setShowDivider(z10);
        }
    }

    @Override // ab.g
    public void setSoundEffect(boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setSoundEffect(z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setSoundEffect(z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setSoundEffect(z10);
        }
    }

    @Override // ab.g
    public void setSoundResource(@RawRes int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setSoundResource(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setSoundResource(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setSoundResource(i10);
        }
    }

    @Override // ab.g
    public void setSoundVolume(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setSoundVolume(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setSoundVolume(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setSoundVolume(f10);
        }
    }

    @Override // ab.g
    public void setTextAlign(@NotNull Paint.Align align) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextAlign(align);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextAlign(align);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextAlign(align);
        }
    }

    @Override // ab.c
    public void setTextFormatter(@NotNull com.zyyoona7.wheel.formatter.c cVar) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextFormatter(cVar);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextFormatter(cVar);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextFormatter(cVar);
        }
    }

    @Override // ab.g
    public void setTextPadding(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextPaddingLeft(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextPaddingLeft(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextPaddingLeft(i10);
        }
        WheelView wheelView4 = this.f113f;
        if (wheelView4 != null) {
            wheelView4.setTextPaddingRight(i10);
        }
        WheelView wheelView5 = this.f114g;
        if (wheelView5 != null) {
            wheelView5.setTextPaddingRight(i10);
        }
        WheelView wheelView6 = this.f115h;
        if (wheelView6 != null) {
            wheelView6.setTextPaddingRight(i10);
        }
    }

    @Override // ab.g
    public void setTextPaddingLeft(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextPaddingLeft(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextPaddingLeft(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextPaddingLeft(i10);
        }
    }

    @Override // ab.g
    public void setTextPaddingRight(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextPaddingRight(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextPaddingRight(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextPaddingRight(i10);
        }
    }

    @Override // ab.g
    public void setTextSize(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextSize(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextSize(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextSize(i10);
        }
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            WheelView.setTypeface$default(wheelView, typeface, false, 2, null);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            WheelView.setTypeface$default(wheelView2, typeface, false, 2, null);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            WheelView.setTypeface$default(wheelView3, typeface, false, 2, null);
        }
    }

    @Override // ab.g
    public void setVisibleItems(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setVisibleItems(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setVisibleItems(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setVisibleItems(i10);
        }
    }

    @Override // ab.g
    public void setWheelDividerPadding(int i10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerPadding(i10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerPadding(i10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerPadding(i10);
        }
    }

    @Override // ab.c
    public void setLeftText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftText(charSequence);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftText(charSequence2);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftText(charSequence3);
        }
    }

    @Override // ab.c
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType, @NotNull WheelView.MeasureType measureType2, @NotNull WheelView.MeasureType measureType3) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setMaxTextWidthMeasureType(measureType);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setMaxTextWidthMeasureType(measureType2);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setMaxTextWidthMeasureType(measureType3);
        }
    }

    @Override // ab.c
    public void setRightText(@NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightText(charSequence);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightText(charSequence2);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightText(charSequence3);
        }
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object obj, @NotNull Object obj2, boolean z10) {
        setSelectedItem(obj, obj2, "", z10);
    }

    @Override // ab.c
    public void setSelectedPosition(int i10, int i11, int i12) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            WheelView.setSelectedPosition$default(wheelView, i10, false, 0, 6, null);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            WheelView.setSelectedPosition$default(wheelView2, i11, false, 0, 6, null);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            WheelView.setSelectedPosition$default(wheelView3, i12, false, 0, 6, null);
        }
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object obj, @NotNull Object obj2, @NotNull Object obj3) {
        setSelectedItem(obj, obj2, obj3, false);
    }

    @Override // ab.g
    public void setDividerHeight(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerHeight(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerHeight(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerHeight(f10);
        }
    }

    @Override // ab.g
    public void setDividerOffsetY(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerOffsetY(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerOffsetY(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerOffsetY(f10);
        }
    }

    @Override // ab.g
    public void setLeftTextMarginRight(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftTextMarginRight(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftTextMarginRight(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftTextMarginRight(f10);
        }
    }

    @Override // ab.g
    public void setLeftTextSize(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLeftTextSize(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLeftTextSize(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLeftTextSize(f10);
        }
    }

    @Override // ab.g
    public void setLineSpacing(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setLineSpacing(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setLineSpacing(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setLineSpacing(f10);
        }
    }

    @Override // ab.g
    public void setMinTextSize(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setMinTextSize(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setMinTextSize(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setMinTextSize(f10);
        }
    }

    @Override // ab.g
    public void setRightTextMarginLeft(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightTextMarginLeft(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightTextMarginLeft(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightTextMarginLeft(f10);
        }
    }

    @Override // ab.g
    public void setRightTextSize(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setRightTextSize(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setRightTextSize(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setRightTextSize(f10);
        }
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object obj, @NotNull Object obj2, @NotNull Object obj3, boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            WheelView.setSelectedPosition$default(wheelView, wheelView.l0(obj, z10), false, 0, 6, null);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            WheelView.setSelectedPosition$default(wheelView2, wheelView2.l0(obj2, z10), false, 0, 6, null);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            WheelView.setSelectedPosition$default(wheelView3, wheelView3.l0(obj3, z10), false, 0, 6, null);
        }
    }

    @Override // ab.g
    public void setTextPaddingLeft(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextPaddingLeft(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextPaddingLeft(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextPaddingLeft(f10);
        }
    }

    @Override // ab.g
    public void setTextPaddingRight(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextPaddingRight(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextPaddingRight(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextPaddingRight(f10);
        }
    }

    @Override // ab.g
    public void setTextSize(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextSize(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextSize(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextSize(f10);
        }
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface, boolean z10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTypeface(typeface, z10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTypeface(typeface, z10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTypeface(typeface, z10);
        }
    }

    @Override // ab.g
    public void setWheelDividerPadding(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setDividerPadding(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setDividerPadding(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setDividerPadding(f10);
        }
    }

    @Override // ab.g
    public void setTextPadding(float f10) {
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setTextPadding(f10);
        }
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            wheelView2.setTextPadding(f10);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            wheelView3.setTextPadding(f10);
        }
    }

    @Override // ab.c
    public void setData(@NotNull List<? extends Object> list, @NotNull bb.g gVar) {
        List<Object> listEmptyList;
        List<Object> listEmptyList2;
        WheelView wheelView = this.f113f;
        if (wheelView != null) {
            wheelView.setData(list);
        }
        this.f110c = gVar;
        this.f109b = null;
        WheelView wheelView2 = this.f114g;
        if (wheelView2 != null) {
            if (gVar == null || (listEmptyList2 = gVar.a(getLinkage1WheelView())) == null) {
                listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
            }
            wheelView2.setData(listEmptyList2);
        }
        WheelView wheelView3 = this.f115h;
        if (wheelView3 != null) {
            bb.g gVar2 = this.f110c;
            if (gVar2 == null || (listEmptyList = gVar2.b(getLinkage1WheelView(), getLinkage2WheelView())) == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            }
            wheelView3.setData(listEmptyList);
        }
    }
}
