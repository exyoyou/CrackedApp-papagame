package com.zyyoona7.picker;

import ab.a;
import ab.b;
import ab.g;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.RawRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import bb.c;
import com.google.android.material.timepicker.TimeModel;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.kuaishou.weapon.p0.t;
import com.windmill.sdk.strategy.m;
import com.xinzhu.overmind.server.os.f;
import com.zyyoona7.picker.ex.WheelDayView;
import com.zyyoona7.picker.ex.WheelMonthView;
import com.zyyoona7.picker.ex.WheelYearView;
import com.zyyoona7.wheel.WheelView;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\r\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B*\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\t\b\u0002\u0010Ã\u0001\u001a\u00020\u001b¢\u0006\u0006\bÄ\u0001\u0010Å\u0001J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J \u0010\u0010\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0012\u0010\u0018\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010\u001a\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010!\u001a\u00020\b2\u0006\u0010#\u001a\u00020\"H\u0016J \u0010!\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u001bH\u0016J\u0010\u0010(\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u001fH\u0016J\u0018\u0010(\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u0010(\u001a\u00020\b2\u0006\u0010+\u001a\u00020\"H\u0016J\u0018\u0010(\u001a\u00020\b2\u0006\u0010+\u001a\u00020\"2\u0006\u0010*\u001a\u00020)H\u0016J\u0018\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020\u001fH\u0016J \u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010'\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020)H\u0016J\u0018\u0010-\u001a\u00020\b2\u0006\u0010.\u001a\u00020\"2\u0006\u0010+\u001a\u00020\"H\u0016J \u0010-\u001a\u00020\b2\u0006\u0010.\u001a\u00020\"2\u0006\u0010+\u001a\u00020\"2\u0006\u0010*\u001a\u00020)H\u0016J\u0010\u00101\u001a\u00020\b2\u0006\u00100\u001a\u00020/H\u0016J\u0010\u00102\u001a\u00020\b2\u0006\u00100\u001a\u00020/H\u0016J\u0010\u00103\u001a\u00020\b2\u0006\u00100\u001a\u00020/H\u0016J\u0010\u00106\u001a\u00020\b2\u0006\u00105\u001a\u000204H\u0016J\u0010\u00107\u001a\u00020\b2\u0006\u00105\u001a\u000204H\u0016J\u0010\u00108\u001a\u00020\b2\u0006\u00105\u001a\u000204H\u0016J\u0010\u00109\u001a\u00020\b2\u0006\u00105\u001a\u000204H\u0016J \u00109\u001a\u00020\b2\u0006\u0010:\u001a\u0002042\u0006\u0010;\u001a\u0002042\u0006\u0010<\u001a\u000204H\u0016J\b\u0010=\u001a\u00020\u001fH\u0016J\b\u0010?\u001a\u00020>H\u0016J\b\u0010@\u001a\u00020\u001bH\u0016J\b\u0010A\u001a\u00020\u001bH\u0016J\b\u0010B\u001a\u00020\u001bH\u0016J\b\u0010C\u001a\u00020\nH\u0016J\b\u0010D\u001a\u00020\fH\u0016J\b\u0010E\u001a\u00020\u000eH\u0016J\u0010\u0010G\u001a\u00020\b2\u0006\u0010F\u001a\u00020\u001bH\u0016J\u0010\u0010I\u001a\u00020\b2\u0006\u0010H\u001a\u00020\u001bH\u0016J\u0010\u0010I\u001a\u00020\b2\u0006\u0010K\u001a\u00020JH\u0016J\u0010\u0010M\u001a\u00020\b2\u0006\u0010L\u001a\u00020/H\u0016J\u0010\u0010O\u001a\u00020\b2\u0006\u0010N\u001a\u00020\u001bH\u0016J\u0010\u0010O\u001a\u00020\b2\u0006\u0010P\u001a\u00020JH\u0016J\u0010\u0010R\u001a\u00020\b2\u0006\u0010Q\u001a\u00020/H\u0016J\u0010\u0010T\u001a\u00020\b2\u0006\u0010S\u001a\u00020\u001bH\u0016J\u0010\u0010T\u001a\u00020\b2\u0006\u0010U\u001a\u00020JH\u0016J\u0010\u0010X\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016J\u0012\u0010Z\u001a\u00020\b2\b\b\u0001\u0010Y\u001a\u00020\u001bH\u0016J\u0012\u0010\\\u001a\u00020\b2\b\b\u0001\u0010[\u001a\u00020\u001bH\u0016J\u0012\u0010]\u001a\u00020\b2\b\b\u0001\u0010Y\u001a\u00020\u001bH\u0016J\u0012\u0010^\u001a\u00020\b2\b\b\u0001\u0010[\u001a\u00020\u001bH\u0016J\u0010\u0010`\u001a\u00020\b2\u0006\u0010_\u001a\u00020\u001bH\u0016J\u0010\u0010`\u001a\u00020\b2\u0006\u0010a\u001a\u00020JH\u0016J\u0010\u0010c\u001a\u00020\b2\u0006\u0010b\u001a\u00020\u001bH\u0016J\u0010\u0010c\u001a\u00020\b2\u0006\u0010d\u001a\u00020JH\u0016J\u0010\u0010f\u001a\u00020\b2\u0006\u0010e\u001a\u00020\u001bH\u0016J\u0010\u0010f\u001a\u00020\b2\u0006\u0010g\u001a\u00020JH\u0016J\u0010\u0010j\u001a\u00020\b2\u0006\u0010i\u001a\u00020hH\u0016J\u0018\u0010j\u001a\u00020\b2\u0006\u0010i\u001a\u00020h2\u0006\u0010k\u001a\u00020/H\u0016J\u0010\u0010m\u001a\u00020\b2\u0006\u0010l\u001a\u00020/H\u0016J\u0012\u0010o\u001a\u00020\b2\b\b\u0001\u0010n\u001a\u00020\u001bH\u0016J\u0012\u0010q\u001a\u00020\b2\b\b\u0001\u0010p\u001a\u00020\u001bH\u0016J\u0010\u0010s\u001a\u00020\b2\u0006\u0010r\u001a\u00020\u001bH\u0016J\u0010\u0010s\u001a\u00020\b2\u0006\u0010t\u001a\u00020JH\u0016J\u0010\u0010w\u001a\u00020\b2\u0006\u0010v\u001a\u00020uH\u0016J\u0010\u0010x\u001a\u00020\b2\u0006\u0010_\u001a\u00020\u001bH\u0016J\u0010\u0010x\u001a\u00020\b2\u0006\u0010a\u001a\u00020JH\u0016J\u0010\u0010{\u001a\u00020\b2\u0006\u0010z\u001a\u00020yH\u0016J\u0010\u0010}\u001a\u00020\b2\u0006\u0010|\u001a\u00020\u001bH\u0016J\u0010\u0010}\u001a\u00020\b2\u0006\u0010~\u001a\u00020JH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\b2\u0006\u0010\u007f\u001a\u00020/H\u0016J\u0014\u0010\u0082\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0081\u0001\u001a\u00020\u001bH\u0016J\u0014\u0010\u0084\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0083\u0001\u001a\u00020\u001bH\u0016J\u0012\u0010\u0086\u0001\u001a\u00020\b2\u0007\u0010\u0085\u0001\u001a\u00020/H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020\b2\b\u0010\u0088\u0001\u001a\u00030\u0087\u0001H\u0016J\u0012\u0010\u008b\u0001\u001a\u00020\b2\u0007\u0010\u008a\u0001\u001a\u00020JH\u0016J\u0012\u0010\u008d\u0001\u001a\u00020\b2\u0007\u0010\u008c\u0001\u001a\u00020JH\u0016J\u0012\u0010\u008f\u0001\u001a\u00020\b2\u0007\u0010\u008e\u0001\u001a\u00020/H\u0016J\u0014\u0010\u0091\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0090\u0001\u001a\u00020\u001bH\u0016J\u0012\u0010\u0093\u0001\u001a\u00020\b2\u0007\u0010\u0092\u0001\u001a\u00020JH\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\b2\u0007\u0010\u0094\u0001\u001a\u00020/H\u0016J\u0013\u0010\u0098\u0001\u001a\u00020\b2\b\u0010\u0097\u0001\u001a\u00030\u0096\u0001H\u0016J'\u0010\u0098\u0001\u001a\u00020\b2\b\u0010\u0099\u0001\u001a\u00030\u0096\u00012\b\u0010\u009a\u0001\u001a\u00030\u0096\u00012\b\u0010\u009b\u0001\u001a\u00030\u0096\u0001H\u0016J\u0013\u0010\u009c\u0001\u001a\u00020\b2\b\u0010\u0097\u0001\u001a\u00030\u0096\u0001H\u0016J'\u0010\u009c\u0001\u001a\u00020\b2\b\u0010\u009d\u0001\u001a\u00030\u0096\u00012\b\u0010\u009e\u0001\u001a\u00030\u0096\u00012\b\u0010\u009f\u0001\u001a\u00030\u0096\u0001H\u0016J\u0011\u0010 \u0001\u001a\u00020\b2\u0006\u0010N\u001a\u00020\u001bH\u0016J\u0011\u0010 \u0001\u001a\u00020\b2\u0006\u0010P\u001a\u00020JH\u0016J\u0011\u0010¡\u0001\u001a\u00020\b2\u0006\u0010N\u001a\u00020\u001bH\u0016J\u0011\u0010¡\u0001\u001a\u00020\b2\u0006\u0010P\u001a\u00020JH\u0016J\u0014\u0010£\u0001\u001a\u00020\b2\t\b\u0001\u0010¢\u0001\u001a\u00020\u001bH\u0016J\u0014\u0010¥\u0001\u001a\u00020\b2\t\b\u0001\u0010¤\u0001\u001a\u00020\u001bH\u0016J\u0014\u0010¦\u0001\u001a\u00020\b2\t\b\u0001\u0010¢\u0001\u001a\u00020\u001bH\u0016J\u0014\u0010§\u0001\u001a\u00020\b2\t\b\u0001\u0010¤\u0001\u001a\u00020\u001bH\u0016J\u0012\u0010©\u0001\u001a\u00020\b2\u0007\u0010¨\u0001\u001a\u00020\u001bH\u0016J\u0012\u0010©\u0001\u001a\u00020\b2\u0007\u0010ª\u0001\u001a\u00020JH\u0016J\u0012\u0010¬\u0001\u001a\u00020\b2\u0007\u0010«\u0001\u001a\u00020\u001bH\u0016J\u0012\u0010¬\u0001\u001a\u00020\b2\u0007\u0010\u00ad\u0001\u001a\u00020JH\u0016J\u0012\u0010¯\u0001\u001a\u00020\b2\u0007\u0010®\u0001\u001a\u00020\u001bH\u0016J\u0012\u0010°\u0001\u001a\u00020\b2\u0007\u0010®\u0001\u001a\u00020\u001bH\u0016R\u0018\u0010´\u0001\u001a\u00030±\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u0018\u0010¶\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0010\u0010µ\u0001R\u0018\u0010¸\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\t\u0010·\u0001R\u0019\u0010º\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010·\u0001R\u0019\u0010¼\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010·\u0001R\u0019\u0010¾\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010µ\u0001R\u0019\u0010À\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010µ\u0001R\u0019\u0010Â\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010µ\u0001¨\u0006Æ\u0001"}, d2 = {"Lcom/zyyoona7/picker/DatePickerView;", "Landroid/widget/LinearLayout;", "Lab/a;", "Lab/g;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", t.f74895t, "Lcom/zyyoona7/picker/ex/WheelYearView;", "wheelYearView", "Lcom/zyyoona7/picker/ex/WheelMonthView;", "wheelMonthView", "Lcom/zyyoona7/picker/ex/WheelDayView;", "wheelDayView", "c", "Lcom/zyyoona7/wheel/formatter/a;", "textFormatter", "setYearTextFormatter", "setMonthTextFormatter", "setDayTextFormatter", "Lbb/c;", "listener", "setOnDateSelectedListener", "Lcb/c;", "setOnScrollChangedListener", "", "startYear", "endYear", "setYearRange", "Ljava/util/Date;", "date", "setSelectedDate", "Ljava/util/Calendar;", "calendar", "year", m.a.f87212d, m.a.f87213e, "maxDate", "setMaxSelectedDate", "Lcom/zyyoona7/wheel/WheelView$OverRangeMode;", "overRangeMode", "maxCalendar", "minDate", "setDateRange", "minCalendar", "", "isShow", "setShowYear", "setShowMonth", "setShowDay", "Lcom/zyyoona7/wheel/WheelView$MeasureType;", "measureType", "setYearMaxTextWidthMeasureType", "setMonthMaxTextWidthMeasureType", "setDayMaxTextWidthMeasureType", "setMaxTextWidthMeasureType", "yearType", "monthType", "dayType", "getSelectedDate", "", "getSelectedDateStr", "getSelectedYear", "getSelectedMonth", "getSelectedDay", "getWheelYearView", "getWheelMonthView", "getWheelDayView", "visibleItems", "setVisibleItems", "lineSpacingPx", "setLineSpacing", "", "lineSpacingDp", "isCyclic", "setCyclic", "textSizePx", "setTextSize", "textSizeSp", "autoFit", "setAutoFitTextSize", "minTextSizePx", "setMinTextSize", "minTextSizeSp", "Landroid/graphics/Paint$Align;", "textAlign", "setTextAlign", "textColor", "setNormalTextColor", "textColorRes", "setNormalTextColorRes", "setSelectedTextColor", "setSelectedTextColorRes", "paddingPx", "setTextPadding", "paddingDp", "textPaddingLeftPx", "setTextPaddingLeft", "textPaddingLeftDp", "textPaddingRightPx", "setTextPaddingRight", "textPaddingRightDp", "Landroid/graphics/Typeface;", "typeface", "setTypeface", "isBoldForSelectedItem", "showDivider", "setShowDivider", "dividerColor", "setDividerColor", "dividerColorRes", "setDividerColorRes", "dividerHeightPx", "setDividerHeight", "dividerHeightDp", "Lcom/zyyoona7/wheel/WheelView$DividerType;", "dividerType", "setDividerType", "setWheelDividerPadding", "Landroid/graphics/Paint$Cap;", "cap", "setDividerCap", "offsetYPx", "setDividerOffsetY", "offsetYDp", "showCurtain", "setShowCurtain", "curtainColor", "setCurtainColor", "curtainColorRes", "setCurtainColorRes", "curved", "setCurved", "Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;", HmInputMappingContent.FIELD_DIRECTION, "setCurvedArcDirection", "factor", "setCurvedArcDirectionFactor", "ratio", "setRefractRatio", "soundEffect", "setSoundEffect", "soundRes", "setSoundResource", "playVolume", "setSoundVolume", "reset", "setResetSelectedPosition", "", "text", "setLeftText", "yearLeft", "monthLeft", "dayLeft", "setRightText", "yearRight", "monthRight", "dayRight", "setLeftTextSize", "setRightTextSize", TypedValues.Custom.S_COLOR, "setLeftTextColor", "colorRes", "setLeftTextColorRes", "setRightTextColor", "setRightTextColorRes", "marginRightPx", "setLeftTextMarginRight", "marginRightDp", "marginLeftPx", "setRightTextMarginLeft", "marginLeftDp", "gravity", "setLeftTextGravity", "setRightTextGravity", "Lab/b;", t.f74887l, "Lab/b;", "datePickerHelper", "Z", "widthWeightMode", "F", "yearWeight", "e", "monthWeight", f.TAG, "dayWeight", "g", "isShowYear", "h", "isShowMonth", "i", "isSHowDay", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class DatePickerView extends LinearLayout implements a, g {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final b datePickerHelper;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean widthWeightMode;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float yearWeight;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float monthWeight;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float dayWeight;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean isShowYear;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean isShowMonth;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isSHowDay;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private HashMap f90556j;

    @JvmOverloads
    public DatePickerView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final void c(WheelYearView wheelYearView, WheelMonthView wheelMonthView, WheelDayView wheelDayView) {
        setOrientation(0);
        int i10 = this.widthWeightMode ? 0 : -2;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i10, -2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i10, -2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i10, -2);
        layoutParams.gravity = 16;
        layoutParams2.gravity = 16;
        layoutParams3.gravity = 16;
        if (this.widthWeightMode) {
            layoutParams.weight = this.yearWeight;
            layoutParams2.weight = this.monthWeight;
            layoutParams3.weight = this.dayWeight;
        }
        addView(wheelYearView, layoutParams);
        addView(wheelMonthView, layoutParams2);
        addView(wheelDayView, layoutParams3);
    }

    private final void d(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.DatePickerView);
        Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…styleable.DatePickerView)");
        this.widthWeightMode = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_widthWeightMode, false);
        this.yearWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.DatePickerView_dpv_yearWeight, 1.0f);
        this.monthWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.DatePickerView_dpv_monthWeight, 1.0f);
        this.dayWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.DatePickerView_dpv_dayWeight, 1.0f);
        this.isShowYear = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_showYear, true);
        this.isShowMonth = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_showMonth, true);
        this.isSHowDay = typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_showDay, true);
        int i10 = typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_startYear, -1);
        int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_endYear, -1);
        if (i10 > 0 && i11 > 0 && i11 >= i10) {
            setYearRange(i10, i11);
        }
        int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_selectedYear, -1);
        int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_selectedMonth, -1);
        int i14 = typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_selectedDay, -1);
        if (i12 > 0 && i13 > 0 && i14 > 0) {
            setSelectedDate(i12, i13, i14);
        }
        setVisibleItems(typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_visibleItems, 5));
        int i15 = R.styleable.DatePickerView_dpv_lineSpacing;
        WheelView.Companion companion = WheelView.INSTANCE;
        setLineSpacing(typedArrayObtainStyledAttributes.getDimensionPixelSize(i15, companion.h()));
        setCyclic(typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_cyclic, false));
        setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_textSize, companion.k()));
        setTextAlign(companion.d(typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_textAlign, 1)));
        setTextPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_textPadding, companion.j()));
        CharSequence text = typedArrayObtainStyledAttributes.getText(R.styleable.DatePickerView_dpv_yearLeftText);
        if (text == null) {
            text = "";
        }
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(R.styleable.DatePickerView_dpv_monthLeftText);
        if (text2 == null) {
            text2 = "";
        }
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(R.styleable.DatePickerView_dpv_dayLeftText);
        if (text3 == null) {
            text3 = "";
        }
        setLeftText(text, text2, text3);
        CharSequence text4 = typedArrayObtainStyledAttributes.getText(R.styleable.DatePickerView_dpv_yearRightText);
        if (text4 == null) {
            text4 = "";
        }
        CharSequence text5 = typedArrayObtainStyledAttributes.getText(R.styleable.DatePickerView_dpv_monthRightText);
        if (text5 == null) {
            text5 = "";
        }
        CharSequence text6 = typedArrayObtainStyledAttributes.getText(R.styleable.DatePickerView_dpv_dayRightText);
        setRightText(text4, text5, text6 != null ? text6 : "");
        setLeftTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_leftTextSize, companion.k()));
        setRightTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_rightTextSize, companion.k()));
        setLeftTextMarginRight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_leftTextMarginRight, companion.j()));
        setRightTextMarginLeft(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_rightTextMarginLeft, companion.j()));
        setLeftTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DatePickerView_dpv_leftTextColor, -16777216));
        setRightTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DatePickerView_dpv_rightTextColor, -16777216));
        setLeftTextGravity(companion.e(typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_leftTextGravity, 0)));
        setRightTextGravity(companion.e(typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_rightTextGravity, 0)));
        setNormalTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DatePickerView_dpv_normalTextColor, WheelView.W2));
        setSelectedTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DatePickerView_dpv_selectedTextColor, -16777216));
        setShowDivider(typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_showDivider, false));
        setDividerType(companion.c(typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_dividerType, 0)));
        setDividerColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DatePickerView_dpv_dividerColor, -16777216));
        setDividerHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_dividerHeight, companion.g()));
        setWheelDividerPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.DatePickerView_dpv_dividerPadding, companion.j()));
        setDividerOffsetY(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.DatePickerView_dpv_dividerOffsetY, 0));
        setCurved(typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_curved, true));
        setCurvedArcDirection(companion.b(typedArrayObtainStyledAttributes.getInt(R.styleable.DatePickerView_dpv_curvedArcDirection, 1)));
        setCurvedArcDirectionFactor(typedArrayObtainStyledAttributes.getFloat(R.styleable.DatePickerView_dpv_curvedArcDirectionFactor, 0.75f));
        setShowCurtain(typedArrayObtainStyledAttributes.getBoolean(R.styleable.DatePickerView_dpv_showCurtain, false));
        setCurtainColor(typedArrayObtainStyledAttributes.getColor(R.styleable.DatePickerView_dpv_curtainColor, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void a() {
        HashMap map = this.f90556j;
        if (map != null) {
            map.clear();
        }
    }

    public View b(int i10) {
        if (this.f90556j == null) {
            this.f90556j = new HashMap();
        }
        View view = (View) this.f90556j.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90556j.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @Override // ab.a
    @NotNull
    public Date getSelectedDate() {
        return this.datePickerHelper.getSelectedDate();
    }

    @Override // ab.a
    @NotNull
    public String getSelectedDateStr() {
        return this.datePickerHelper.getSelectedDateStr();
    }

    @Override // ab.a
    public int getSelectedDay() {
        return this.datePickerHelper.getSelectedDay();
    }

    @Override // ab.a
    public int getSelectedMonth() {
        return this.datePickerHelper.getSelectedMonth();
    }

    @Override // ab.a
    public int getSelectedYear() {
        return this.datePickerHelper.getSelectedYear();
    }

    @Override // ab.a
    @NotNull
    public WheelDayView getWheelDayView() {
        return this.datePickerHelper.getWheelDayView();
    }

    @Override // ab.a
    @NotNull
    public WheelMonthView getWheelMonthView() {
        return this.datePickerHelper.getWheelMonthView();
    }

    @Override // ab.a
    @NotNull
    public WheelYearView getWheelYearView() {
        return this.datePickerHelper.getWheelYearView();
    }

    @Override // ab.g
    public void setAutoFitTextSize(boolean autoFit) {
        this.datePickerHelper.setAutoFitTextSize(autoFit);
    }

    @Override // ab.g
    public void setCurtainColor(@ColorInt int curtainColor) {
        this.datePickerHelper.setCurtainColor(curtainColor);
    }

    @Override // ab.g
    public void setCurtainColorRes(@ColorRes int curtainColorRes) {
        this.datePickerHelper.setCurtainColorRes(curtainColorRes);
    }

    @Override // ab.g
    public void setCurved(boolean curved) {
        this.datePickerHelper.setCurved(curved);
    }

    @Override // ab.g
    public void setCurvedArcDirection(@NotNull WheelView.CurvedArcDirection direction) {
        this.datePickerHelper.setCurvedArcDirection(direction);
    }

    @Override // ab.g
    public void setCurvedArcDirectionFactor(float factor) {
        this.datePickerHelper.setCurvedArcDirectionFactor(factor);
    }

    @Override // ab.g
    public void setCyclic(boolean isCyclic) {
        this.datePickerHelper.setCyclic(isCyclic);
    }

    @Override // ab.a
    public void setDateRange(@NotNull Date minDate, @NotNull Date maxDate) {
        this.datePickerHelper.setDateRange(minDate, maxDate);
    }

    @Override // ab.a
    public void setDayMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.datePickerHelper.setDayMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.a
    public void setDayTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a textFormatter) {
        this.datePickerHelper.setDayTextFormatter(textFormatter);
    }

    @Override // ab.g
    public void setDividerCap(@NotNull Paint.Cap cap) {
        this.datePickerHelper.setDividerCap(cap);
    }

    @Override // ab.g
    public void setDividerColor(@ColorInt int dividerColor) {
        this.datePickerHelper.setDividerColor(dividerColor);
    }

    @Override // ab.g
    public void setDividerColorRes(@ColorRes int dividerColorRes) {
        this.datePickerHelper.setDividerColorRes(dividerColorRes);
    }

    @Override // ab.g
    public void setDividerHeight(int dividerHeightPx) {
        this.datePickerHelper.setDividerHeight(dividerHeightPx);
    }

    @Override // ab.g
    public void setDividerOffsetY(int offsetYPx) {
        this.datePickerHelper.setDividerOffsetY(offsetYPx);
    }

    @Override // ab.g
    public void setDividerType(@NotNull WheelView.DividerType dividerType) {
        this.datePickerHelper.setDividerType(dividerType);
    }

    @Override // ab.g
    public void setLeftText(@NotNull CharSequence text) {
        this.datePickerHelper.setLeftText(text);
    }

    @Override // ab.g
    public void setLeftTextColor(@ColorInt int color) {
        this.datePickerHelper.setLeftTextColor(color);
    }

    @Override // ab.g
    public void setLeftTextColorRes(@ColorRes int colorRes) {
        this.datePickerHelper.setLeftTextColorRes(colorRes);
    }

    @Override // ab.g
    public void setLeftTextGravity(int gravity) {
        this.datePickerHelper.setLeftTextGravity(gravity);
    }

    @Override // ab.g
    public void setLeftTextMarginRight(int marginRightPx) {
        this.datePickerHelper.setLeftTextMarginRight(marginRightPx);
    }

    @Override // ab.g
    public void setLeftTextSize(int textSizePx) {
        this.datePickerHelper.setLeftTextSize(textSizePx);
    }

    @Override // ab.g
    public void setLineSpacing(int lineSpacingPx) {
        this.datePickerHelper.setLineSpacing(lineSpacingPx);
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Date maxDate) {
        this.datePickerHelper.setMaxSelectedDate(maxDate);
    }

    @Override // ab.a
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.datePickerHelper.setMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.g
    public void setMinTextSize(int minTextSizePx) {
        this.datePickerHelper.setMinTextSize(minTextSizePx);
    }

    @Override // ab.a
    public void setMonthMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.datePickerHelper.setMonthMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.a
    public void setMonthTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a textFormatter) {
        this.datePickerHelper.setMonthTextFormatter(textFormatter);
    }

    @Override // ab.g
    public void setNormalTextColor(@ColorInt int textColor) {
        this.datePickerHelper.setNormalTextColor(textColor);
    }

    @Override // ab.g
    public void setNormalTextColorRes(@ColorRes int textColorRes) {
        this.datePickerHelper.setNormalTextColorRes(textColorRes);
    }

    @Override // ab.a
    public void setOnDateSelectedListener(@Nullable c listener) {
        this.datePickerHelper.setOnDateSelectedListener(listener);
    }

    @Override // ab.a
    public void setOnScrollChangedListener(@Nullable cb.c listener) {
        this.datePickerHelper.setOnScrollChangedListener(listener);
    }

    @Override // ab.g
    public void setRefractRatio(float ratio) {
        this.datePickerHelper.setRefractRatio(ratio);
    }

    @Override // ab.g
    public void setResetSelectedPosition(boolean reset) {
        this.datePickerHelper.setResetSelectedPosition(reset);
    }

    @Override // ab.g
    public void setRightText(@NotNull CharSequence text) {
        this.datePickerHelper.setRightText(text);
    }

    @Override // ab.g
    public void setRightTextColor(@ColorInt int color) {
        this.datePickerHelper.setRightTextColor(color);
    }

    @Override // ab.g
    public void setRightTextColorRes(@ColorRes int colorRes) {
        this.datePickerHelper.setRightTextColorRes(colorRes);
    }

    @Override // ab.g
    public void setRightTextGravity(int gravity) {
        this.datePickerHelper.setRightTextGravity(gravity);
    }

    @Override // ab.g
    public void setRightTextMarginLeft(int marginLeftPx) {
        this.datePickerHelper.setRightTextMarginLeft(marginLeftPx);
    }

    @Override // ab.g
    public void setRightTextSize(int textSizePx) {
        this.datePickerHelper.setRightTextSize(textSizePx);
    }

    @Override // ab.a
    public void setSelectedDate(@NotNull Date date) {
        this.datePickerHelper.setSelectedDate(date);
    }

    @Override // ab.g
    public void setSelectedTextColor(@ColorInt int textColor) {
        this.datePickerHelper.setSelectedTextColor(textColor);
    }

    @Override // ab.g
    public void setSelectedTextColorRes(@ColorRes int textColorRes) {
        this.datePickerHelper.setSelectedTextColorRes(textColorRes);
    }

    @Override // ab.g
    public void setShowCurtain(boolean showCurtain) {
        this.datePickerHelper.setShowCurtain(showCurtain);
    }

    @Override // ab.a
    public void setShowDay(boolean isShow) {
        this.datePickerHelper.setShowDay(isShow);
    }

    @Override // ab.g
    public void setShowDivider(boolean showDivider) {
        this.datePickerHelper.setShowDivider(showDivider);
    }

    @Override // ab.a
    public void setShowMonth(boolean isShow) {
        this.datePickerHelper.setShowMonth(isShow);
    }

    @Override // ab.a
    public void setShowYear(boolean isShow) {
        this.datePickerHelper.setShowYear(isShow);
    }

    @Override // ab.g
    public void setSoundEffect(boolean soundEffect) {
        this.datePickerHelper.setSoundEffect(soundEffect);
    }

    @Override // ab.g
    public void setSoundResource(@RawRes int soundRes) {
        this.datePickerHelper.setSoundResource(soundRes);
    }

    @Override // ab.g
    public void setSoundVolume(float playVolume) {
        this.datePickerHelper.setSoundVolume(playVolume);
    }

    @Override // ab.g
    public void setTextAlign(@NotNull Paint.Align textAlign) {
        this.datePickerHelper.setTextAlign(textAlign);
    }

    @Override // ab.g
    public void setTextPadding(int paddingPx) {
        this.datePickerHelper.setTextPadding(paddingPx);
    }

    @Override // ab.g
    public void setTextPaddingLeft(int textPaddingLeftPx) {
        this.datePickerHelper.setTextPaddingLeft(textPaddingLeftPx);
    }

    @Override // ab.g
    public void setTextPaddingRight(int textPaddingRightPx) {
        this.datePickerHelper.setTextPaddingRight(textPaddingRightPx);
    }

    @Override // ab.g
    public void setTextSize(int textSizePx) {
        this.datePickerHelper.setTextSize(textSizePx);
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface) {
        this.datePickerHelper.setTypeface(typeface);
    }

    @Override // ab.g
    public void setVisibleItems(int visibleItems) {
        this.datePickerHelper.setVisibleItems(visibleItems);
    }

    @Override // ab.g
    public void setWheelDividerPadding(int paddingPx) {
        this.datePickerHelper.setWheelDividerPadding(paddingPx);
    }

    @Override // ab.a
    public void setYearMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.datePickerHelper.setYearMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.a
    public void setYearRange(int startYear, int endYear) {
        this.datePickerHelper.setYearRange(startYear, endYear);
    }

    @Override // ab.a
    public void setYearTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a textFormatter) {
        this.datePickerHelper.setYearTextFormatter(textFormatter);
    }

    @JvmOverloads
    public DatePickerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @Override // ab.a
    public void setDateRange(@NotNull Date minDate, @NotNull Date maxDate, @NotNull WheelView.OverRangeMode overRangeMode) {
        this.datePickerHelper.setDateRange(minDate, maxDate, overRangeMode);
    }

    @Override // ab.g
    public void setDividerHeight(float dividerHeightDp) {
        this.datePickerHelper.setDividerHeight(dividerHeightDp);
    }

    @Override // ab.g
    public void setDividerOffsetY(float offsetYDp) {
        this.datePickerHelper.setDividerOffsetY(offsetYDp);
    }

    @Override // ab.a
    public void setLeftText(@NotNull CharSequence yearLeft, @NotNull CharSequence monthLeft, @NotNull CharSequence dayLeft) {
        this.datePickerHelper.setLeftText(yearLeft, monthLeft, dayLeft);
    }

    @Override // ab.g
    public void setLeftTextMarginRight(float marginRightDp) {
        this.datePickerHelper.setLeftTextMarginRight(marginRightDp);
    }

    @Override // ab.g
    public void setLeftTextSize(float textSizeSp) {
        this.datePickerHelper.setLeftTextSize(textSizeSp);
    }

    @Override // ab.g
    public void setLineSpacing(float lineSpacingDp) {
        this.datePickerHelper.setLineSpacing(lineSpacingDp);
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Date maxDate, @NotNull WheelView.OverRangeMode overRangeMode) {
        this.datePickerHelper.setMaxSelectedDate(maxDate, overRangeMode);
    }

    @Override // ab.a
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType yearType, @NotNull WheelView.MeasureType monthType, @NotNull WheelView.MeasureType dayType) {
        this.datePickerHelper.setMaxTextWidthMeasureType(yearType, monthType, dayType);
    }

    @Override // ab.g
    public void setMinTextSize(float minTextSizeSp) {
        this.datePickerHelper.setMinTextSize(minTextSizeSp);
    }

    @Override // ab.a
    public void setRightText(@NotNull CharSequence yearRight, @NotNull CharSequence monthRight, @NotNull CharSequence dayRight) {
        this.datePickerHelper.setRightText(yearRight, monthRight, dayRight);
    }

    @Override // ab.g
    public void setRightTextMarginLeft(float marginLeftDp) {
        this.datePickerHelper.setRightTextMarginLeft(marginLeftDp);
    }

    @Override // ab.g
    public void setRightTextSize(float textSizeSp) {
        this.datePickerHelper.setRightTextSize(textSizeSp);
    }

    @Override // ab.a
    public void setSelectedDate(@NotNull Calendar calendar) {
        this.datePickerHelper.setSelectedDate(calendar);
    }

    @Override // ab.g
    public void setTextPadding(float paddingDp) {
        this.datePickerHelper.setTextPadding(paddingDp);
    }

    @Override // ab.g
    public void setTextPaddingLeft(float textPaddingLeftDp) {
        this.datePickerHelper.setTextPaddingLeft(textPaddingLeftDp);
    }

    @Override // ab.g
    public void setTextPaddingRight(float textPaddingRightDp) {
        this.datePickerHelper.setTextPaddingRight(textPaddingRightDp);
    }

    @Override // ab.g
    public void setTextSize(float textSizeSp) {
        this.datePickerHelper.setTextSize(textSizeSp);
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface, boolean isBoldForSelectedItem) {
        this.datePickerHelper.setTypeface(typeface, isBoldForSelectedItem);
    }

    @Override // ab.g
    public void setWheelDividerPadding(float paddingDp) {
        this.datePickerHelper.setWheelDividerPadding(paddingDp);
    }

    public /* synthetic */ DatePickerView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @Override // ab.a
    public void setDateRange(@NotNull Calendar minCalendar, @NotNull Calendar maxCalendar) {
        this.datePickerHelper.setDateRange(minCalendar, maxCalendar);
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Calendar maxCalendar) {
        this.datePickerHelper.setMaxSelectedDate(maxCalendar);
    }

    @Override // ab.a
    public void setSelectedDate(int year, int month, int day) {
        this.datePickerHelper.setSelectedDate(year, month, day);
    }

    @JvmOverloads
    public DatePickerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.yearWeight = 1.0f;
        this.monthWeight = 1.0f;
        this.dayWeight = 1.0f;
        this.isShowYear = true;
        this.isShowMonth = true;
        this.isSHowDay = true;
        WheelYearView wheelYearView = new WheelYearView(context, null, 0, 6, null);
        WheelMonthView wheelMonthView = new WheelMonthView(context, null, 0, 6, null);
        WheelDayView wheelDayView = new WheelDayView(context, null, 0, 6, null);
        wheelYearView.setId(R.id.wheel_year);
        wheelMonthView.setId(R.id.wheel_month);
        wheelDayView.setId(R.id.wheel_day);
        this.datePickerHelper = new b(wheelYearView, wheelMonthView, wheelDayView);
        if (attributeSet != null) {
            d(context, attributeSet);
        }
        c(wheelYearView, wheelMonthView, wheelDayView);
        setShowYear(this.isShowYear);
        setShowMonth(this.isShowMonth);
        setShowDay(this.isSHowDay);
        wheelYearView.setTextFormatter(new com.zyyoona7.wheel.formatter.a("%04d"));
        wheelMonthView.setTextFormatter(new com.zyyoona7.wheel.formatter.a(TimeModel.f32343i));
        wheelDayView.setTextFormatter(new com.zyyoona7.wheel.formatter.a(TimeModel.f32343i));
        setMaxTextWidthMeasureType(WheelView.MeasureType.SAME_WIDTH_WITH_NUM);
    }

    @Override // ab.a
    public void setDateRange(@NotNull Calendar minCalendar, @NotNull Calendar maxCalendar, @NotNull WheelView.OverRangeMode overRangeMode) {
        this.datePickerHelper.setDateRange(minCalendar, maxCalendar, overRangeMode);
    }

    @Override // ab.a
    public void setMaxSelectedDate(@NotNull Calendar maxCalendar, @NotNull WheelView.OverRangeMode overRangeMode) {
        this.datePickerHelper.setMaxSelectedDate(maxCalendar, overRangeMode);
    }
}
