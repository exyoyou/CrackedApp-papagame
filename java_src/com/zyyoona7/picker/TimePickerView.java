package com.zyyoona7.picker;

import ab.e;
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
import bb.a;
import cb.c;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.kuaishou.weapon.p0.t;
import com.windmill.sdk.strategy.m;
import com.xinzhu.overmind.server.os.f;
import com.zyyoona7.picker.ex.WheelAmPmView;
import com.zyyoona7.picker.ex.WheelHourView;
import com.zyyoona7.picker.ex.WheelMinuteView;
import com.zyyoona7.picker.ex.WheelSecondView;
import com.zyyoona7.wheel.WheelView;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\r\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B*\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\t\b\u0002\u0010Á\u0001\u001a\u00020%¢\u0006\u0006\bÂ\u0001\u0010Ã\u0001J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J(\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0012\u0010\u001d\u001a\u00020\b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001f\u001a\u00020\b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001eH\u0016J\u0018\u0010$\u001a\u00020\b2\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0016J0\u0010$\u001a\u00020\b2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020%2\u0006\u0010#\u001a\u00020\"2\u0006\u0010)\u001a\u00020\"H\u0016J \u0010*\u001a\u00020\b2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020%H\u0016J(\u0010+\u001a\u00020\b2\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020\"H\u0016J\u0010\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020\"H\u0016J\u0010\u0010.\u001a\u00020\b2\u0006\u0010,\u001a\u00020\"H\u0016J\u0010\u0010/\u001a\u00020\b2\u0006\u0010,\u001a\u00020\"H\u0016J\u0010\u00102\u001a\u00020\b2\u0006\u00101\u001a\u000200H\u0016J\u0010\u00103\u001a\u00020\b2\u0006\u00101\u001a\u000200H\u0016J\u0010\u00104\u001a\u00020\b2\u0006\u00101\u001a\u000200H\u0016J\u0010\u00105\u001a\u00020\b2\u0006\u00101\u001a\u000200H\u0016J\u0010\u00106\u001a\u00020\b2\u0006\u00101\u001a\u000200H\u0016J(\u00106\u001a\u00020\b2\u0006\u00107\u001a\u0002002\u0006\u00108\u001a\u0002002\u0006\u00109\u001a\u0002002\u0006\u0010:\u001a\u000200H\u0016J(\u0010@\u001a\u00020\b2\u0006\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020;2\u0006\u0010>\u001a\u00020;2\u0006\u0010?\u001a\u00020;H\u0016J(\u0010A\u001a\u00020\b2\u0006\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020;2\u0006\u0010>\u001a\u00020;2\u0006\u0010?\u001a\u00020;H\u0016J\b\u0010B\u001a\u00020\nH\u0016J\b\u0010C\u001a\u00020\fH\u0016J\b\u0010D\u001a\u00020\u000eH\u0016J\b\u0010E\u001a\u00020\u0010H\u0016J\u0010\u0010G\u001a\u00020\b2\u0006\u0010F\u001a\u00020%H\u0016J\u0010\u0010I\u001a\u00020\b2\u0006\u0010H\u001a\u00020%H\u0016J\u0010\u0010I\u001a\u00020\b2\u0006\u0010K\u001a\u00020JH\u0016J\u0010\u0010M\u001a\u00020\b2\u0006\u0010L\u001a\u00020\"H\u0016J\u0010\u0010O\u001a\u00020\b2\u0006\u0010N\u001a\u00020%H\u0016J\u0010\u0010O\u001a\u00020\b2\u0006\u0010P\u001a\u00020JH\u0016J\u0010\u0010R\u001a\u00020\b2\u0006\u0010Q\u001a\u00020\"H\u0016J\u0010\u0010T\u001a\u00020\b2\u0006\u0010S\u001a\u00020%H\u0016J\u0010\u0010T\u001a\u00020\b2\u0006\u0010U\u001a\u00020JH\u0016J\u0010\u0010X\u001a\u00020\b2\u0006\u0010W\u001a\u00020VH\u0016J\u0012\u0010Z\u001a\u00020\b2\b\b\u0001\u0010Y\u001a\u00020%H\u0016J\u0012\u0010\\\u001a\u00020\b2\b\b\u0001\u0010[\u001a\u00020%H\u0016J\u0012\u0010]\u001a\u00020\b2\b\b\u0001\u0010Y\u001a\u00020%H\u0016J\u0012\u0010^\u001a\u00020\b2\b\b\u0001\u0010[\u001a\u00020%H\u0016J\u0010\u0010`\u001a\u00020\b2\u0006\u0010_\u001a\u00020%H\u0016J\u0010\u0010`\u001a\u00020\b2\u0006\u0010a\u001a\u00020JH\u0016J\u0010\u0010c\u001a\u00020\b2\u0006\u0010b\u001a\u00020%H\u0016J\u0010\u0010c\u001a\u00020\b2\u0006\u0010d\u001a\u00020JH\u0016J\u0010\u0010f\u001a\u00020\b2\u0006\u0010e\u001a\u00020%H\u0016J\u0010\u0010f\u001a\u00020\b2\u0006\u0010g\u001a\u00020JH\u0016J\u0010\u0010j\u001a\u00020\b2\u0006\u0010i\u001a\u00020hH\u0016J\u0018\u0010j\u001a\u00020\b2\u0006\u0010i\u001a\u00020h2\u0006\u0010k\u001a\u00020\"H\u0016J\u0010\u0010m\u001a\u00020\b2\u0006\u0010l\u001a\u00020\"H\u0016J\u0012\u0010o\u001a\u00020\b2\b\b\u0001\u0010n\u001a\u00020%H\u0016J\u0012\u0010q\u001a\u00020\b2\b\b\u0001\u0010p\u001a\u00020%H\u0016J\u0010\u0010s\u001a\u00020\b2\u0006\u0010r\u001a\u00020%H\u0016J\u0010\u0010s\u001a\u00020\b2\u0006\u0010t\u001a\u00020JH\u0016J\u0010\u0010w\u001a\u00020\b2\u0006\u0010v\u001a\u00020uH\u0016J\u0010\u0010x\u001a\u00020\b2\u0006\u0010_\u001a\u00020%H\u0016J\u0010\u0010x\u001a\u00020\b2\u0006\u0010a\u001a\u00020JH\u0016J\u0010\u0010{\u001a\u00020\b2\u0006\u0010z\u001a\u00020yH\u0016J\u0010\u0010}\u001a\u00020\b2\u0006\u0010|\u001a\u00020%H\u0016J\u0010\u0010}\u001a\u00020\b2\u0006\u0010~\u001a\u00020JH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\b2\u0006\u0010\u007f\u001a\u00020\"H\u0016J\u0014\u0010\u0082\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0081\u0001\u001a\u00020%H\u0016J\u0014\u0010\u0084\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0083\u0001\u001a\u00020%H\u0016J\u0012\u0010\u0086\u0001\u001a\u00020\b2\u0007\u0010\u0085\u0001\u001a\u00020\"H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020\b2\b\u0010\u0088\u0001\u001a\u00030\u0087\u0001H\u0016J\u0012\u0010\u008b\u0001\u001a\u00020\b2\u0007\u0010\u008a\u0001\u001a\u00020JH\u0016J\u0012\u0010\u008d\u0001\u001a\u00020\b2\u0007\u0010\u008c\u0001\u001a\u00020JH\u0016J\u0012\u0010\u008f\u0001\u001a\u00020\b2\u0007\u0010\u008e\u0001\u001a\u00020\"H\u0016J\u0014\u0010\u0091\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0090\u0001\u001a\u00020%H\u0016J\u0012\u0010\u0093\u0001\u001a\u00020\b2\u0007\u0010\u0092\u0001\u001a\u00020JH\u0016J\u0012\u0010\u0095\u0001\u001a\u00020\b2\u0007\u0010\u0094\u0001\u001a\u00020\"H\u0016J\u0011\u0010@\u001a\u00020\b2\u0007\u0010\u0096\u0001\u001a\u00020;H\u0016J\u0011\u0010A\u001a\u00020\b2\u0007\u0010\u0096\u0001\u001a\u00020;H\u0016J\u0011\u0010\u0097\u0001\u001a\u00020\b2\u0006\u0010N\u001a\u00020%H\u0016J\u0011\u0010\u0097\u0001\u001a\u00020\b2\u0006\u0010P\u001a\u00020JH\u0016J\u0011\u0010\u0098\u0001\u001a\u00020\b2\u0006\u0010N\u001a\u00020%H\u0016J\u0011\u0010\u0098\u0001\u001a\u00020\b2\u0006\u0010P\u001a\u00020JH\u0016J\u0014\u0010\u009a\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0099\u0001\u001a\u00020%H\u0016J\u0014\u0010\u009c\u0001\u001a\u00020\b2\t\b\u0001\u0010\u009b\u0001\u001a\u00020%H\u0016J\u0014\u0010\u009d\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0099\u0001\u001a\u00020%H\u0016J\u0014\u0010\u009e\u0001\u001a\u00020\b2\t\b\u0001\u0010\u009b\u0001\u001a\u00020%H\u0016J\u0012\u0010 \u0001\u001a\u00020\b2\u0007\u0010\u009f\u0001\u001a\u00020%H\u0016J\u0012\u0010 \u0001\u001a\u00020\b2\u0007\u0010¡\u0001\u001a\u00020JH\u0016J\u0012\u0010£\u0001\u001a\u00020\b2\u0007\u0010¢\u0001\u001a\u00020%H\u0016J\u0012\u0010£\u0001\u001a\u00020\b2\u0007\u0010¤\u0001\u001a\u00020JH\u0016J\u0012\u0010¦\u0001\u001a\u00020\b2\u0007\u0010¥\u0001\u001a\u00020%H\u0016J\u0012\u0010§\u0001\u001a\u00020\b2\u0007\u0010¥\u0001\u001a\u00020%H\u0016J\u0011\u0010¨\u0001\u001a\u00020\b2\u0006\u0010#\u001a\u00020\"H\u0016J\t\u0010©\u0001\u001a\u00020\"H\u0016J\t\u0010ª\u0001\u001a\u00020\"H\u0016J\t\u0010«\u0001\u001a\u00020%H\u0016J\t\u0010¬\u0001\u001a\u00020%H\u0016J\t\u0010\u00ad\u0001\u001a\u00020%H\u0016R\u0018\u0010°\u0001\u001a\u00030®\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bª\u0001\u0010¯\u0001R\u0019\u0010²\u0001\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010±\u0001R\u0019\u0010µ\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010´\u0001R\u0018\u0010¶\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0012\u0010´\u0001R\u0018\u0010·\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\t\u0010´\u0001R\u0019\u0010¹\u0001\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010´\u0001R\u0018\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010±\u0001R\u0019\u0010¼\u0001\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010±\u0001R\u0019\u0010¾\u0001\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010±\u0001R\u0019\u0010À\u0001\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010±\u0001¨\u0006Ä\u0001"}, d2 = {"Lcom/zyyoona7/picker/TimePickerView;", "Landroid/widget/LinearLayout;", "Lab/e;", "Lab/g;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", f.TAG, "Lcom/zyyoona7/picker/ex/WheelAmPmView;", "amPmView", "Lcom/zyyoona7/picker/ex/WheelHourView;", "hourView", "Lcom/zyyoona7/picker/ex/WheelMinuteView;", "minuteView", "Lcom/zyyoona7/picker/ex/WheelSecondView;", "secondView", "e", "Lbb/a;", "textHandler", "setAmPmTextHandler", "Lcom/zyyoona7/wheel/formatter/a;", "textFormatter", "setHourTextFormatter", "setMinuteTextFormatter", "setSecondTextFormatter", "Lcb/c;", "listener", "setOnScrollChangedListener", "Lbb/f;", "setOnTimeSelectedListener", "Ljava/util/Calendar;", "calendar", "", "is24Hour", "setTime", "", m.a.f87214f, "minute", "second", "isAm", "setTimeFor24", "setTimeFor12", "isShow", "setShowHour", "setShowMinute", "setShowSecond", "Lcom/zyyoona7/wheel/WheelView$MeasureType;", "measureType", "setAmPmMaxTextWidthMeasureType", "setHourMaxTextWidthMeasureType", "setMinuteMaxTextWidthMeasureType", "setSecondMaxTextWidthMeasureType", "setMaxTextWidthMeasureType", "amPmType", "hourType", "minuteType", "secondType", "", "amPmText", "hourText", "minuteText", "secondText", "setLeftText", "setRightText", "getWheelAmPmView", "getWheelHourView", "getWheelMinuteView", "getWheelSecondView", "visibleItems", "setVisibleItems", "lineSpacingPx", "setLineSpacing", "", "lineSpacingDp", "isCyclic", "setCyclic", "textSizePx", "setTextSize", "textSizeSp", "autoFit", "setAutoFitTextSize", "minTextSizePx", "setMinTextSize", "minTextSizeSp", "Landroid/graphics/Paint$Align;", "textAlign", "setTextAlign", "textColor", "setNormalTextColor", "textColorRes", "setNormalTextColorRes", "setSelectedTextColor", "setSelectedTextColorRes", "paddingPx", "setTextPadding", "paddingDp", "textPaddingLeftPx", "setTextPaddingLeft", "textPaddingLeftDp", "textPaddingRightPx", "setTextPaddingRight", "textPaddingRightDp", "Landroid/graphics/Typeface;", "typeface", "setTypeface", "isBoldForSelectedItem", "showDivider", "setShowDivider", "dividerColor", "setDividerColor", "dividerColorRes", "setDividerColorRes", "dividerHeightPx", "setDividerHeight", "dividerHeightDp", "Lcom/zyyoona7/wheel/WheelView$DividerType;", "dividerType", "setDividerType", "setWheelDividerPadding", "Landroid/graphics/Paint$Cap;", "cap", "setDividerCap", "offsetYPx", "setDividerOffsetY", "offsetYDp", "showCurtain", "setShowCurtain", "curtainColor", "setCurtainColor", "curtainColorRes", "setCurtainColorRes", "curved", "setCurved", "Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;", HmInputMappingContent.FIELD_DIRECTION, "setCurvedArcDirection", "factor", "setCurvedArcDirectionFactor", "ratio", "setRefractRatio", "soundEffect", "setSoundEffect", "soundRes", "setSoundResource", "playVolume", "setSoundVolume", "reset", "setResetSelectedPosition", "text", "setLeftTextSize", "setRightTextSize", TypedValues.Custom.S_COLOR, "setLeftTextColor", "colorRes", "setLeftTextColorRes", "setRightTextColor", "setRightTextColorRes", "marginRightPx", "setLeftTextMarginRight", "marginRightDp", "marginLeftPx", "setRightTextMarginLeft", "marginLeftDp", "gravity", "setLeftTextGravity", "setRightTextGravity", "set24Hour", "c", t.f74887l, "getSelectedHour", "getSelectedMinute", "getSelectedSecond", "Lab/f;", "Lab/f;", "timePickerHelper", "Z", "widthWeightMode", t.f74895t, "F", "amPmWeight", "hourWeight", "minuteWeight", "g", "secondWeight", "h", "i", "isShowHour", "j", "isShowMinute", t.f74876a, "isShowSecond", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class TimePickerView extends LinearLayout implements e, g {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final ab.f timePickerHelper;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean widthWeightMode;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float amPmWeight;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private float hourWeight;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private float minuteWeight;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private float secondWeight;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean is24Hour;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isShowHour;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean isShowMinute;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isShowSecond;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private HashMap f90569l;

    @JvmOverloads
    public TimePickerView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final void e(WheelAmPmView amPmView, WheelHourView hourView, WheelMinuteView minuteView, WheelSecondView secondView) {
        setOrientation(0);
        int i10 = this.widthWeightMode ? 0 : -2;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i10, -2);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i10, -2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(i10, -2);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(i10, -2);
        layoutParams.gravity = 16;
        layoutParams2.gravity = 16;
        layoutParams3.gravity = 16;
        layoutParams4.gravity = 16;
        if (this.widthWeightMode) {
            layoutParams.weight = this.amPmWeight;
            layoutParams2.weight = this.hourWeight;
            layoutParams3.weight = this.minuteWeight;
            layoutParams4.weight = this.secondWeight;
        }
        addView(amPmView, layoutParams);
        addView(hourView, layoutParams2);
        addView(minuteView, layoutParams3);
        addView(secondView, layoutParams4);
    }

    private final void f(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.TimePickerView);
        Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…styleable.TimePickerView)");
        this.is24Hour = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_is24Hour, ab.f.f116i.a(context));
        this.widthWeightMode = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_widthWeightMode, false);
        this.amPmWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.TimePickerView_tpv_amPmWeight, 1.0f);
        this.hourWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.TimePickerView_tpv_hourWeight, 1.0f);
        this.minuteWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.TimePickerView_tpv_minuteWeight, 1.0f);
        this.secondWeight = typedArrayObtainStyledAttributes.getFloat(R.styleable.TimePickerView_tpv_secondWeight, 1.0f);
        this.isShowHour = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_showHour, true);
        this.isShowMinute = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_showMinute, true);
        this.isShowSecond = typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_showSecond, true);
        setVisibleItems(typedArrayObtainStyledAttributes.getInt(R.styleable.TimePickerView_tpv_visibleItems, 5));
        int i10 = R.styleable.TimePickerView_tpv_lineSpacing;
        WheelView.Companion companion = WheelView.INSTANCE;
        setLineSpacing(typedArrayObtainStyledAttributes.getDimensionPixelSize(i10, companion.h()));
        setCyclic(typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_cyclic, true));
        setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_textSize, companion.k()));
        setTextAlign(companion.d(typedArrayObtainStyledAttributes.getInt(R.styleable.TimePickerView_tpv_textAlign, 1)));
        setTextPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_textPadding, companion.j()));
        CharSequence text = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_amPmLeftText);
        if (text == null) {
            text = "";
        }
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_hourLeftText);
        if (text2 == null) {
            text2 = "";
        }
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_minuteLeftText);
        if (text3 == null) {
            text3 = "";
        }
        CharSequence text4 = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_secondLeftText);
        if (text4 == null) {
            text4 = "";
        }
        setLeftText(text, text2, text3, text4);
        CharSequence text5 = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_amPmRightText);
        if (text5 == null) {
            text5 = "";
        }
        CharSequence text6 = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_hourRightText);
        if (text6 == null) {
            text6 = "";
        }
        CharSequence text7 = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_minuteRightText);
        if (text7 == null) {
            text7 = "";
        }
        CharSequence text8 = typedArrayObtainStyledAttributes.getText(R.styleable.TimePickerView_tpv_secondRightText);
        setRightText(text5, text6, text7, text8 != null ? text8 : "");
        setLeftTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_leftTextSize, companion.k()));
        setRightTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_rightTextSize, companion.k()));
        setLeftTextMarginRight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_leftTextMarginRight, companion.j()));
        setRightTextMarginLeft(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_rightTextMarginLeft, companion.j()));
        setLeftTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.TimePickerView_tpv_leftTextColor, -16777216));
        setRightTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.TimePickerView_tpv_rightTextColor, -16777216));
        setLeftTextGravity(companion.e(typedArrayObtainStyledAttributes.getInt(R.styleable.TimePickerView_tpv_leftTextGravity, 0)));
        setRightTextGravity(companion.e(typedArrayObtainStyledAttributes.getInt(R.styleable.TimePickerView_tpv_rightTextGravity, 0)));
        setNormalTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.TimePickerView_tpv_normalTextColor, WheelView.W2));
        setSelectedTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.TimePickerView_tpv_selectedTextColor, -16777216));
        setShowDivider(typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_showDivider, false));
        setDividerType(companion.c(typedArrayObtainStyledAttributes.getInt(R.styleable.TimePickerView_tpv_dividerType, 0)));
        setDividerColor(typedArrayObtainStyledAttributes.getColor(R.styleable.TimePickerView_tpv_dividerColor, -16777216));
        setDividerHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_dividerHeight, companion.g()));
        setWheelDividerPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.TimePickerView_tpv_dividerPadding, companion.j()));
        setDividerOffsetY(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.TimePickerView_tpv_dividerOffsetY, 0));
        setCurved(typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_curved, true));
        setCurvedArcDirection(companion.b(typedArrayObtainStyledAttributes.getInt(R.styleable.TimePickerView_tpv_curvedArcDirection, 1)));
        setCurvedArcDirectionFactor(typedArrayObtainStyledAttributes.getFloat(R.styleable.TimePickerView_tpv_curvedArcDirectionFactor, 0.75f));
        setShowCurtain(typedArrayObtainStyledAttributes.getBoolean(R.styleable.TimePickerView_tpv_showCurtain, false));
        setCurtainColor(typedArrayObtainStyledAttributes.getColor(R.styleable.TimePickerView_tpv_curtainColor, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void a() {
        HashMap map = this.f90569l;
        if (map != null) {
            map.clear();
        }
    }

    @Override // ab.e
    public boolean b() {
        return this.timePickerHelper.b();
    }

    @Override // ab.e
    public boolean c() {
        return this.timePickerHelper.c();
    }

    public View d(int i10) {
        if (this.f90569l == null) {
            this.f90569l = new HashMap();
        }
        View view = (View) this.f90569l.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90569l.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @Override // ab.e
    public int getSelectedHour() {
        return this.timePickerHelper.getSelectedHour();
    }

    @Override // ab.e
    public int getSelectedMinute() {
        return this.timePickerHelper.getSelectedMinute();
    }

    @Override // ab.e
    public int getSelectedSecond() {
        return this.timePickerHelper.getSelectedSecond();
    }

    @Override // ab.e
    @NotNull
    public WheelAmPmView getWheelAmPmView() {
        return this.timePickerHelper.getWheelAmPmView();
    }

    @Override // ab.e
    @NotNull
    public WheelHourView getWheelHourView() {
        return this.timePickerHelper.getWheelHourView();
    }

    @Override // ab.e
    @NotNull
    public WheelMinuteView getWheelMinuteView() {
        return this.timePickerHelper.getWheelMinuteView();
    }

    @Override // ab.e
    @NotNull
    public WheelSecondView getWheelSecondView() {
        return this.timePickerHelper.getWheelSecondView();
    }

    @Override // ab.e
    public void set24Hour(boolean is24Hour) {
        this.timePickerHelper.set24Hour(is24Hour);
    }

    @Override // ab.e
    public void setAmPmMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.timePickerHelper.setAmPmMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.e
    public void setAmPmTextHandler(@NotNull a textHandler) {
        this.timePickerHelper.setAmPmTextHandler(textHandler);
    }

    @Override // ab.g
    public void setAutoFitTextSize(boolean autoFit) {
        this.timePickerHelper.setAutoFitTextSize(autoFit);
    }

    @Override // ab.g
    public void setCurtainColor(@ColorInt int curtainColor) {
        this.timePickerHelper.setCurtainColor(curtainColor);
    }

    @Override // ab.g
    public void setCurtainColorRes(@ColorRes int curtainColorRes) {
        this.timePickerHelper.setCurtainColorRes(curtainColorRes);
    }

    @Override // ab.g
    public void setCurved(boolean curved) {
        this.timePickerHelper.setCurved(curved);
    }

    @Override // ab.g
    public void setCurvedArcDirection(@NotNull WheelView.CurvedArcDirection direction) {
        this.timePickerHelper.setCurvedArcDirection(direction);
    }

    @Override // ab.g
    public void setCurvedArcDirectionFactor(float factor) {
        this.timePickerHelper.setCurvedArcDirectionFactor(factor);
    }

    @Override // ab.g
    public void setCyclic(boolean isCyclic) {
        this.timePickerHelper.setCyclic(isCyclic);
    }

    @Override // ab.g
    public void setDividerCap(@NotNull Paint.Cap cap) {
        this.timePickerHelper.setDividerCap(cap);
    }

    @Override // ab.g
    public void setDividerColor(@ColorInt int dividerColor) {
        this.timePickerHelper.setDividerColor(dividerColor);
    }

    @Override // ab.g
    public void setDividerColorRes(@ColorRes int dividerColorRes) {
        this.timePickerHelper.setDividerColorRes(dividerColorRes);
    }

    @Override // ab.g
    public void setDividerHeight(int dividerHeightPx) {
        this.timePickerHelper.setDividerHeight(dividerHeightPx);
    }

    @Override // ab.g
    public void setDividerOffsetY(int offsetYPx) {
        this.timePickerHelper.setDividerOffsetY(offsetYPx);
    }

    @Override // ab.g
    public void setDividerType(@NotNull WheelView.DividerType dividerType) {
        this.timePickerHelper.setDividerType(dividerType);
    }

    @Override // ab.e
    public void setHourMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.timePickerHelper.setHourMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.e
    public void setHourTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a textFormatter) {
        this.timePickerHelper.setHourTextFormatter(textFormatter);
    }

    @Override // ab.e
    public void setLeftText(@NotNull CharSequence amPmText, @NotNull CharSequence hourText, @NotNull CharSequence minuteText, @NotNull CharSequence secondText) {
        this.timePickerHelper.setLeftText(amPmText, hourText, minuteText, secondText);
    }

    @Override // ab.g
    public void setLeftTextColor(@ColorInt int color) {
        this.timePickerHelper.setLeftTextColor(color);
    }

    @Override // ab.g
    public void setLeftTextColorRes(@ColorRes int colorRes) {
        this.timePickerHelper.setLeftTextColorRes(colorRes);
    }

    @Override // ab.g
    public void setLeftTextGravity(int gravity) {
        this.timePickerHelper.setLeftTextGravity(gravity);
    }

    @Override // ab.g
    public void setLeftTextMarginRight(int marginRightPx) {
        this.timePickerHelper.setLeftTextMarginRight(marginRightPx);
    }

    @Override // ab.g
    public void setLeftTextSize(int textSizePx) {
        this.timePickerHelper.setLeftTextSize(textSizePx);
    }

    @Override // ab.g
    public void setLineSpacing(int lineSpacingPx) {
        this.timePickerHelper.setLineSpacing(lineSpacingPx);
    }

    @Override // ab.e
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.timePickerHelper.setMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.g
    public void setMinTextSize(int minTextSizePx) {
        this.timePickerHelper.setMinTextSize(minTextSizePx);
    }

    @Override // ab.e
    public void setMinuteMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.timePickerHelper.setMinuteMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.e
    public void setMinuteTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a textFormatter) {
        this.timePickerHelper.setMinuteTextFormatter(textFormatter);
    }

    @Override // ab.g
    public void setNormalTextColor(@ColorInt int textColor) {
        this.timePickerHelper.setNormalTextColor(textColor);
    }

    @Override // ab.g
    public void setNormalTextColorRes(@ColorRes int textColorRes) {
        this.timePickerHelper.setNormalTextColorRes(textColorRes);
    }

    @Override // ab.e
    public void setOnScrollChangedListener(@Nullable c listener) {
        this.timePickerHelper.setOnScrollChangedListener(listener);
    }

    @Override // ab.e
    public void setOnTimeSelectedListener(@Nullable bb.f listener) {
        this.timePickerHelper.setOnTimeSelectedListener(listener);
    }

    @Override // ab.g
    public void setRefractRatio(float ratio) {
        this.timePickerHelper.setRefractRatio(ratio);
    }

    @Override // ab.g
    public void setResetSelectedPosition(boolean reset) {
        this.timePickerHelper.setResetSelectedPosition(reset);
    }

    @Override // ab.e
    public void setRightText(@NotNull CharSequence amPmText, @NotNull CharSequence hourText, @NotNull CharSequence minuteText, @NotNull CharSequence secondText) {
        this.timePickerHelper.setRightText(amPmText, hourText, minuteText, secondText);
    }

    @Override // ab.g
    public void setRightTextColor(@ColorInt int color) {
        this.timePickerHelper.setRightTextColor(color);
    }

    @Override // ab.g
    public void setRightTextColorRes(@ColorRes int colorRes) {
        this.timePickerHelper.setRightTextColorRes(colorRes);
    }

    @Override // ab.g
    public void setRightTextGravity(int gravity) {
        this.timePickerHelper.setRightTextGravity(gravity);
    }

    @Override // ab.g
    public void setRightTextMarginLeft(int marginLeftPx) {
        this.timePickerHelper.setRightTextMarginLeft(marginLeftPx);
    }

    @Override // ab.g
    public void setRightTextSize(int textSizePx) {
        this.timePickerHelper.setRightTextSize(textSizePx);
    }

    @Override // ab.e
    public void setSecondMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.timePickerHelper.setSecondMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.e
    public void setSecondTextFormatter(@NotNull com.zyyoona7.wheel.formatter.a textFormatter) {
        this.timePickerHelper.setSecondTextFormatter(textFormatter);
    }

    @Override // ab.g
    public void setSelectedTextColor(@ColorInt int textColor) {
        this.timePickerHelper.setSelectedTextColor(textColor);
    }

    @Override // ab.g
    public void setSelectedTextColorRes(@ColorRes int textColorRes) {
        this.timePickerHelper.setSelectedTextColorRes(textColorRes);
    }

    @Override // ab.g
    public void setShowCurtain(boolean showCurtain) {
        this.timePickerHelper.setShowCurtain(showCurtain);
    }

    @Override // ab.g
    public void setShowDivider(boolean showDivider) {
        this.timePickerHelper.setShowDivider(showDivider);
    }

    @Override // ab.e
    public void setShowHour(boolean isShow) {
        this.timePickerHelper.setShowHour(isShow);
    }

    @Override // ab.e
    public void setShowMinute(boolean isShow) {
        this.timePickerHelper.setShowMinute(isShow);
    }

    @Override // ab.e
    public void setShowSecond(boolean isShow) {
        this.timePickerHelper.setShowSecond(isShow);
    }

    @Override // ab.g
    public void setSoundEffect(boolean soundEffect) {
        this.timePickerHelper.setSoundEffect(soundEffect);
    }

    @Override // ab.g
    public void setSoundResource(@RawRes int soundRes) {
        this.timePickerHelper.setSoundResource(soundRes);
    }

    @Override // ab.g
    public void setSoundVolume(float playVolume) {
        this.timePickerHelper.setSoundVolume(playVolume);
    }

    @Override // ab.g
    public void setTextAlign(@NotNull Paint.Align textAlign) {
        this.timePickerHelper.setTextAlign(textAlign);
    }

    @Override // ab.g
    public void setTextPadding(int paddingPx) {
        this.timePickerHelper.setTextPadding(paddingPx);
    }

    @Override // ab.g
    public void setTextPaddingLeft(int textPaddingLeftPx) {
        this.timePickerHelper.setTextPaddingLeft(textPaddingLeftPx);
    }

    @Override // ab.g
    public void setTextPaddingRight(int textPaddingRightPx) {
        this.timePickerHelper.setTextPaddingRight(textPaddingRightPx);
    }

    @Override // ab.g
    public void setTextSize(int textSizePx) {
        this.timePickerHelper.setTextSize(textSizePx);
    }

    @Override // ab.e
    public void setTime(@NotNull Calendar calendar, boolean is24Hour) {
        this.timePickerHelper.setTime(calendar, is24Hour);
    }

    @Override // ab.e
    public void setTimeFor12(int hour, int minute, int second, boolean isAm) {
        this.timePickerHelper.setTimeFor12(hour, minute, second, isAm);
    }

    @Override // ab.e
    public void setTimeFor24(int hour, int minute, int second) {
        this.timePickerHelper.setTimeFor24(hour, minute, second);
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface) {
        this.timePickerHelper.setTypeface(typeface);
    }

    @Override // ab.g
    public void setVisibleItems(int visibleItems) {
        this.timePickerHelper.setVisibleItems(visibleItems);
    }

    @Override // ab.g
    public void setWheelDividerPadding(int paddingPx) {
        this.timePickerHelper.setWheelDividerPadding(paddingPx);
    }

    @JvmOverloads
    public TimePickerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @Override // ab.g
    public void setDividerHeight(float dividerHeightDp) {
        this.timePickerHelper.setDividerHeight(dividerHeightDp);
    }

    @Override // ab.g
    public void setDividerOffsetY(float offsetYDp) {
        this.timePickerHelper.setDividerOffsetY(offsetYDp);
    }

    @Override // ab.g
    public void setLeftText(@NotNull CharSequence text) {
        this.timePickerHelper.setLeftText(text);
    }

    @Override // ab.g
    public void setLeftTextMarginRight(float marginRightDp) {
        this.timePickerHelper.setLeftTextMarginRight(marginRightDp);
    }

    @Override // ab.g
    public void setLeftTextSize(float textSizeSp) {
        this.timePickerHelper.setLeftTextSize(textSizeSp);
    }

    @Override // ab.g
    public void setLineSpacing(float lineSpacingDp) {
        this.timePickerHelper.setLineSpacing(lineSpacingDp);
    }

    @Override // ab.e
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType amPmType, @NotNull WheelView.MeasureType hourType, @NotNull WheelView.MeasureType minuteType, @NotNull WheelView.MeasureType secondType) {
        this.timePickerHelper.setMaxTextWidthMeasureType(amPmType, hourType, minuteType, secondType);
    }

    @Override // ab.g
    public void setMinTextSize(float minTextSizeSp) {
        this.timePickerHelper.setMinTextSize(minTextSizeSp);
    }

    @Override // ab.g
    public void setRightText(@NotNull CharSequence text) {
        this.timePickerHelper.setRightText(text);
    }

    @Override // ab.g
    public void setRightTextMarginLeft(float marginLeftDp) {
        this.timePickerHelper.setRightTextMarginLeft(marginLeftDp);
    }

    @Override // ab.g
    public void setRightTextSize(float textSizeSp) {
        this.timePickerHelper.setRightTextSize(textSizeSp);
    }

    @Override // ab.g
    public void setTextPadding(float paddingDp) {
        this.timePickerHelper.setTextPadding(paddingDp);
    }

    @Override // ab.g
    public void setTextPaddingLeft(float textPaddingLeftDp) {
        this.timePickerHelper.setTextPaddingLeft(textPaddingLeftDp);
    }

    @Override // ab.g
    public void setTextPaddingRight(float textPaddingRightDp) {
        this.timePickerHelper.setTextPaddingRight(textPaddingRightDp);
    }

    @Override // ab.g
    public void setTextSize(float textSizeSp) {
        this.timePickerHelper.setTextSize(textSizeSp);
    }

    @Override // ab.e
    public void setTime(int hour, int minute, int second, boolean is24Hour, boolean isAm) {
        this.timePickerHelper.setTime(hour, minute, second, is24Hour, isAm);
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface, boolean isBoldForSelectedItem) {
        this.timePickerHelper.setTypeface(typeface, isBoldForSelectedItem);
    }

    @Override // ab.g
    public void setWheelDividerPadding(float paddingDp) {
        this.timePickerHelper.setWheelDividerPadding(paddingDp);
    }

    public /* synthetic */ TimePickerView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @JvmOverloads
    public TimePickerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.amPmWeight = 1.0f;
        this.hourWeight = 1.0f;
        this.minuteWeight = 1.0f;
        this.secondWeight = 1.0f;
        this.isShowHour = true;
        this.isShowMinute = true;
        this.isShowSecond = true;
        WheelAmPmView wheelAmPmView = new WheelAmPmView(context, null, 0, 6, null);
        WheelHourView wheelHourView = new WheelHourView(context, null, 0, 6, null);
        WheelMinuteView wheelMinuteView = new WheelMinuteView(context, null, 0, 6, null);
        WheelSecondView wheelSecondView = new WheelSecondView(context, null, 0, 6, null);
        wheelAmPmView.setId(R.id.wheel_am_pm);
        wheelHourView.setId(R.id.wheel_hour);
        wheelMinuteView.setId(R.id.wheel_minute);
        wheelSecondView.setId(R.id.wheel_second);
        this.timePickerHelper = new ab.f(wheelAmPmView, wheelHourView, wheelMinuteView, wheelSecondView);
        if (attributeSet != null) {
            f(context, attributeSet);
        }
        e(wheelAmPmView, wheelHourView, wheelMinuteView, wheelSecondView);
        setShowHour(this.isShowHour);
        setShowMinute(this.isShowMinute);
        setShowSecond(this.isShowSecond);
        set24Hour(this.is24Hour);
        setMinuteTextFormatter(new com.zyyoona7.wheel.formatter.a(null, 1, null));
        setSecondTextFormatter(new com.zyyoona7.wheel.formatter.a(null, 1, null));
        WheelView.MeasureType measureType = WheelView.MeasureType.MAX_LENGTH;
        WheelView.MeasureType measureType2 = WheelView.MeasureType.MAX_LENGTH_WITH_NUM;
        WheelView.MeasureType measureType3 = WheelView.MeasureType.SAME_WIDTH_WITH_NUM;
        setMaxTextWidthMeasureType(measureType, measureType2, measureType3, measureType3);
    }
}
