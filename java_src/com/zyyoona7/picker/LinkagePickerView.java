package com.zyyoona7.picker;

import ab.c;
import ab.d;
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
import bb.e;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.kuaishou.weapon.p0.t;
import com.zyyoona7.wheel.WheelView;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\r\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B*\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\t\b\u0002\u0010£\u0001\u001a\u00020\u0018¢\u0006\u0006\b¤\u0001\u0010¥\u0001J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u001e\u0010\u0015\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u001e\u0010\u0015\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\u0018\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J \u0010\u001b\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0018H\u0016J\u0018\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0011H\u0016J \u0010\u001f\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010!\u001a\u00020 H\u0016J \u0010\u001f\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0011H\u0016J(\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020 H\u0016J\u0012\u0010%\u001a\u00020\b2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010'\u001a\u00020\b2\b\u0010$\u001a\u0004\u0018\u00010&H\u0016J\u0010\u0010*\u001a\u00020\b2\u0006\u0010)\u001a\u00020(H\u0016J \u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020(2\u0006\u0010-\u001a\u00020(H\u0016J\u0017\u0010/\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010.H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00101\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010.H\u0016¢\u0006\u0004\b1\u00100J\u0017\u00102\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010.H\u0016¢\u0006\u0004\b2\u00100J\b\u00104\u001a\u000203H\u0016J\b\u00105\u001a\u000203H\u0016J\b\u00106\u001a\u000203H\u0016J\u0010\u00108\u001a\u00020\b2\u0006\u00107\u001a\u00020\u0018H\u0016J\u0010\u0010:\u001a\u00020\b2\u0006\u00109\u001a\u00020\u0018H\u0016J\u0010\u0010:\u001a\u00020\b2\u0006\u0010<\u001a\u00020;H\u0016J\u0010\u0010>\u001a\u00020\b2\u0006\u0010=\u001a\u00020 H\u0016J\u0010\u0010@\u001a\u00020\b2\u0006\u0010?\u001a\u00020\u0018H\u0016J\u0010\u0010@\u001a\u00020\b2\u0006\u0010A\u001a\u00020;H\u0016J\u0010\u0010C\u001a\u00020\b2\u0006\u0010B\u001a\u00020 H\u0016J\u0010\u0010E\u001a\u00020\b2\u0006\u0010D\u001a\u00020\u0018H\u0016J\u0010\u0010E\u001a\u00020\b2\u0006\u0010F\u001a\u00020;H\u0016J\u0010\u0010I\u001a\u00020\b2\u0006\u0010H\u001a\u00020GH\u0016J\u0012\u0010K\u001a\u00020\b2\b\b\u0001\u0010J\u001a\u00020\u0018H\u0016J\u0012\u0010M\u001a\u00020\b2\b\b\u0001\u0010L\u001a\u00020\u0018H\u0016J\u0012\u0010N\u001a\u00020\b2\b\b\u0001\u0010J\u001a\u00020\u0018H\u0016J\u0012\u0010O\u001a\u00020\b2\b\b\u0001\u0010L\u001a\u00020\u0018H\u0016J\u0010\u0010Q\u001a\u00020\b2\u0006\u0010P\u001a\u00020\u0018H\u0016J\u0010\u0010Q\u001a\u00020\b2\u0006\u0010R\u001a\u00020;H\u0016J\u0010\u0010T\u001a\u00020\b2\u0006\u0010S\u001a\u00020\u0018H\u0016J\u0010\u0010T\u001a\u00020\b2\u0006\u0010U\u001a\u00020;H\u0016J\u0010\u0010W\u001a\u00020\b2\u0006\u0010V\u001a\u00020\u0018H\u0016J\u0010\u0010W\u001a\u00020\b2\u0006\u0010X\u001a\u00020;H\u0016J\u0010\u0010[\u001a\u00020\b2\u0006\u0010Z\u001a\u00020YH\u0016J\u0018\u0010[\u001a\u00020\b2\u0006\u0010Z\u001a\u00020Y2\u0006\u0010\\\u001a\u00020 H\u0016J\u0010\u0010^\u001a\u00020\b2\u0006\u0010]\u001a\u00020 H\u0016J\u0012\u0010`\u001a\u00020\b2\b\b\u0001\u0010_\u001a\u00020\u0018H\u0016J\u0012\u0010b\u001a\u00020\b2\b\b\u0001\u0010a\u001a\u00020\u0018H\u0016J\u0010\u0010d\u001a\u00020\b2\u0006\u0010c\u001a\u00020\u0018H\u0016J\u0010\u0010d\u001a\u00020\b2\u0006\u0010e\u001a\u00020;H\u0016J\u0010\u0010h\u001a\u00020\b2\u0006\u0010g\u001a\u00020fH\u0016J\u0010\u0010i\u001a\u00020\b2\u0006\u0010P\u001a\u00020\u0018H\u0016J\u0010\u0010i\u001a\u00020\b2\u0006\u0010R\u001a\u00020;H\u0016J\u0010\u0010l\u001a\u00020\b2\u0006\u0010k\u001a\u00020jH\u0016J\u0010\u0010n\u001a\u00020\b2\u0006\u0010m\u001a\u00020\u0018H\u0016J\u0010\u0010n\u001a\u00020\b2\u0006\u0010o\u001a\u00020;H\u0016J\u0010\u0010q\u001a\u00020\b2\u0006\u0010p\u001a\u00020 H\u0016J\u0012\u0010s\u001a\u00020\b2\b\b\u0001\u0010r\u001a\u00020\u0018H\u0016J\u0012\u0010u\u001a\u00020\b2\b\b\u0001\u0010t\u001a\u00020\u0018H\u0016J\u0010\u0010w\u001a\u00020\b2\u0006\u0010v\u001a\u00020 H\u0016J\u0010\u0010z\u001a\u00020\b2\u0006\u0010y\u001a\u00020xH\u0016J\u0010\u0010|\u001a\u00020\b2\u0006\u0010{\u001a\u00020;H\u0016J\u0010\u0010~\u001a\u00020\b2\u0006\u0010}\u001a\u00020;H\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\b2\u0006\u0010\u007f\u001a\u00020 H\u0016J\u0014\u0010\u0082\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0081\u0001\u001a\u00020\u0018H\u0016J\u0012\u0010\u0084\u0001\u001a\u00020\b2\u0007\u0010\u0083\u0001\u001a\u00020;H\u0016J\u0012\u0010\u0086\u0001\u001a\u00020\b2\u0007\u0010\u0085\u0001\u001a\u00020 H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020\b2\b\u0010\u0088\u0001\u001a\u00030\u0087\u0001H\u0016J'\u0010\u0089\u0001\u001a\u00020\b2\b\u0010\u008a\u0001\u001a\u00030\u0087\u00012\b\u0010\u008b\u0001\u001a\u00030\u0087\u00012\b\u0010\u008c\u0001\u001a\u00030\u0087\u0001H\u0016J\u0013\u0010\u008d\u0001\u001a\u00020\b2\b\u0010\u0088\u0001\u001a\u00030\u0087\u0001H\u0016J'\u0010\u008d\u0001\u001a\u00020\b2\b\u0010\u008a\u0001\u001a\u00030\u0087\u00012\b\u0010\u008b\u0001\u001a\u00030\u0087\u00012\b\u0010\u008c\u0001\u001a\u00030\u0087\u0001H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020\b2\u0006\u0010?\u001a\u00020\u0018H\u0016J\u0011\u0010\u008e\u0001\u001a\u00020\b2\u0006\u0010A\u001a\u00020;H\u0016J\u0011\u0010\u008f\u0001\u001a\u00020\b2\u0006\u0010?\u001a\u00020\u0018H\u0016J\u0011\u0010\u008f\u0001\u001a\u00020\b2\u0006\u0010A\u001a\u00020;H\u0016J\u0014\u0010\u0091\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0090\u0001\u001a\u00020\u0018H\u0016J\u0014\u0010\u0093\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0092\u0001\u001a\u00020\u0018H\u0016J\u0014\u0010\u0094\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0090\u0001\u001a\u00020\u0018H\u0016J\u0014\u0010\u0095\u0001\u001a\u00020\b2\t\b\u0001\u0010\u0092\u0001\u001a\u00020\u0018H\u0016J\u0012\u0010\u0097\u0001\u001a\u00020\b2\u0007\u0010\u0096\u0001\u001a\u00020\u0018H\u0016J\u0012\u0010\u0097\u0001\u001a\u00020\b2\u0007\u0010\u0098\u0001\u001a\u00020;H\u0016J\u0012\u0010\u009a\u0001\u001a\u00020\b2\u0007\u0010\u0099\u0001\u001a\u00020\u0018H\u0016J\u0012\u0010\u009a\u0001\u001a\u00020\b2\u0007\u0010\u009b\u0001\u001a\u00020;H\u0016J\u0012\u0010\u009d\u0001\u001a\u00020\b2\u0007\u0010\u009c\u0001\u001a\u00020\u0018H\u0016J\u0012\u0010\u009e\u0001\u001a\u00020\b2\u0007\u0010\u009c\u0001\u001a\u00020\u0018H\u0016R\u0018\u0010¢\u0001\u001a\u00030\u009f\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001¨\u0006¦\u0001"}, d2 = {"Lcom/zyyoona7/picker/LinkagePickerView;", "Landroid/widget/LinearLayout;", "Lab/c;", "Lab/g;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "c", "Lcom/zyyoona7/wheel/formatter/c;", "textFormatter", "setTextFormatter", "setLinkage1TextFormatter", "setLinkage2TextFormatter", "setLinkage3TextFormatter", "", "", "firstData", "Lbb/d;", "doubleLoadDataListener", "setData", "Lbb/g;", "tripleLoadDataListener", "", "linkage1Pos", "linkage2Pos", "setSelectedPosition", "linkage3Pos", "linkage1Item", "linkage2Item", "setSelectedItem", "", "isCompareFormatText", "linkage3Item", "Lcb/c;", "listener", "setOnScrollChangedListener", "Lbb/e;", "setOnLinkageSelectedListener", "Lcom/zyyoona7/wheel/WheelView$MeasureType;", "measureType", "setMaxTextWidthMeasureType", "linkage1Type", "linkage2Type", "linkage3Type", "T", "getLinkage1SelectedItem", "()Ljava/lang/Object;", "getLinkage2SelectedItem", "getLinkage3SelectedItem", "Lcom/zyyoona7/wheel/WheelView;", "getLinkage1WheelView", "getLinkage2WheelView", "getLinkage3WheelView", "visibleItems", "setVisibleItems", "lineSpacingPx", "setLineSpacing", "", "lineSpacingDp", "isCyclic", "setCyclic", "textSizePx", "setTextSize", "textSizeSp", "autoFit", "setAutoFitTextSize", "minTextSizePx", "setMinTextSize", "minTextSizeSp", "Landroid/graphics/Paint$Align;", "textAlign", "setTextAlign", "textColor", "setNormalTextColor", "textColorRes", "setNormalTextColorRes", "setSelectedTextColor", "setSelectedTextColorRes", "paddingPx", "setTextPadding", "paddingDp", "textPaddingLeftPx", "setTextPaddingLeft", "textPaddingLeftDp", "textPaddingRightPx", "setTextPaddingRight", "textPaddingRightDp", "Landroid/graphics/Typeface;", "typeface", "setTypeface", "isBoldForSelectedItem", "showDivider", "setShowDivider", "dividerColor", "setDividerColor", "dividerColorRes", "setDividerColorRes", "dividerHeightPx", "setDividerHeight", "dividerHeightDp", "Lcom/zyyoona7/wheel/WheelView$DividerType;", "dividerType", "setDividerType", "setWheelDividerPadding", "Landroid/graphics/Paint$Cap;", "cap", "setDividerCap", "offsetYPx", "setDividerOffsetY", "offsetYDp", "showCurtain", "setShowCurtain", "curtainColor", "setCurtainColor", "curtainColorRes", "setCurtainColorRes", "curved", "setCurved", "Lcom/zyyoona7/wheel/WheelView$CurvedArcDirection;", HmInputMappingContent.FIELD_DIRECTION, "setCurvedArcDirection", "factor", "setCurvedArcDirectionFactor", "ratio", "setRefractRatio", "soundEffect", "setSoundEffect", "soundRes", "setSoundResource", "playVolume", "setSoundVolume", "reset", "setResetSelectedPosition", "", "text", "setLeftText", "linkage1Text", "linkage2Text", "linkage3Text", "setRightText", "setLeftTextSize", "setRightTextSize", TypedValues.Custom.S_COLOR, "setLeftTextColor", "colorRes", "setLeftTextColorRes", "setRightTextColor", "setRightTextColorRes", "marginRightPx", "setLeftTextMarginRight", "marginRightDp", "marginLeftPx", "setRightTextMarginLeft", "marginLeftDp", "gravity", "setLeftTextGravity", "setRightTextGravity", "Lab/d;", t.f74887l, "Lab/d;", "linkagePickerHelper", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "picker_release"}, k = 1, mv = {1, 4, 0})
public final class LinkagePickerView extends LinearLayout implements c, g {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final d linkagePickerHelper;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap f90558c;

    @JvmOverloads
    public LinkagePickerView(@NotNull Context context) {
        this(context, null, 0, 6, null);
    }

    private final void c(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.LinkagePickerView);
        Intrinsics.checkExpressionValueIsNotNull(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…leable.LinkagePickerView)");
        setVisibleItems(typedArrayObtainStyledAttributes.getInt(R.styleable.LinkagePickerView_lpv_visibleItems, 5));
        int i10 = R.styleable.LinkagePickerView_lpv_lineSpacing;
        WheelView.Companion companion = WheelView.INSTANCE;
        setLineSpacing(typedArrayObtainStyledAttributes.getDimensionPixelSize(i10, companion.h()));
        setCyclic(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LinkagePickerView_lpv_cyclic, false));
        setTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_textSize, companion.k()));
        setTextAlign(companion.d(typedArrayObtainStyledAttributes.getInt(R.styleable.LinkagePickerView_lpv_textAlign, 1)));
        setTextPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_textPadding, companion.j()));
        CharSequence text = typedArrayObtainStyledAttributes.getText(R.styleable.LinkagePickerView_lpv_linkage1LeftText);
        if (text == null) {
            text = "";
        }
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(R.styleable.LinkagePickerView_lpv_linkage2LeftText);
        if (text2 == null) {
            text2 = "";
        }
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(R.styleable.LinkagePickerView_lpv_linkage3LeftText);
        if (text3 == null) {
            text3 = "";
        }
        setLeftText(text, text2, text3);
        CharSequence text4 = typedArrayObtainStyledAttributes.getText(R.styleable.LinkagePickerView_lpv_linkage1RightText);
        if (text4 == null) {
            text4 = "";
        }
        CharSequence text5 = typedArrayObtainStyledAttributes.getText(R.styleable.LinkagePickerView_lpv_linkage2RightText);
        if (text5 == null) {
            text5 = "";
        }
        CharSequence text6 = typedArrayObtainStyledAttributes.getText(R.styleable.LinkagePickerView_lpv_linkage3RightText);
        setRightText(text4, text5, text6 != null ? text6 : "");
        setLeftTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_leftTextSize, companion.k()));
        setRightTextSize(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_rightTextSize, companion.k()));
        setLeftTextMarginRight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_leftTextMarginRight, companion.j()));
        setRightTextMarginLeft(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_rightTextMarginLeft, companion.j()));
        setLeftTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.LinkagePickerView_lpv_leftTextColor, -16777216));
        setRightTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.LinkagePickerView_lpv_rightTextColor, -16777216));
        setLeftTextGravity(companion.e(typedArrayObtainStyledAttributes.getInt(R.styleable.LinkagePickerView_lpv_leftTextGravity, 0)));
        setRightTextGravity(companion.e(typedArrayObtainStyledAttributes.getInt(R.styleable.LinkagePickerView_lpv_rightTextGravity, 0)));
        setNormalTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.LinkagePickerView_lpv_normalTextColor, WheelView.W2));
        setSelectedTextColor(typedArrayObtainStyledAttributes.getColor(R.styleable.LinkagePickerView_lpv_selectedTextColor, -16777216));
        setShowDivider(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LinkagePickerView_lpv_showDivider, false));
        setDividerType(companion.c(typedArrayObtainStyledAttributes.getInt(R.styleable.LinkagePickerView_lpv_dividerType, 0)));
        setDividerColor(typedArrayObtainStyledAttributes.getColor(R.styleable.LinkagePickerView_lpv_dividerColor, -16777216));
        setDividerHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_dividerHeight, companion.g()));
        setWheelDividerPadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.LinkagePickerView_lpv_dividerPadding, companion.j()));
        setDividerOffsetY(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.LinkagePickerView_lpv_dividerOffsetY, 0));
        setCurved(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LinkagePickerView_lpv_curved, true));
        setCurvedArcDirection(companion.b(typedArrayObtainStyledAttributes.getInt(R.styleable.LinkagePickerView_lpv_curvedArcDirection, 1)));
        setCurvedArcDirectionFactor(typedArrayObtainStyledAttributes.getFloat(R.styleable.LinkagePickerView_lpv_curvedArcDirectionFactor, 0.75f));
        setShowCurtain(typedArrayObtainStyledAttributes.getBoolean(R.styleable.LinkagePickerView_lpv_showCurtain, false));
        setCurtainColor(typedArrayObtainStyledAttributes.getColor(R.styleable.LinkagePickerView_lpv_curtainColor, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void a() {
        HashMap map = this.f90558c;
        if (map != null) {
            map.clear();
        }
    }

    public View b(int i10) {
        if (this.f90558c == null) {
            this.f90558c = new HashMap();
        }
        View view = (View) this.f90558c.get(Integer.valueOf(i10));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i10);
        this.f90558c.put(Integer.valueOf(i10), viewFindViewById);
        return viewFindViewById;
    }

    @Override // ab.c
    @Nullable
    public <T> T getLinkage1SelectedItem() {
        return (T) this.linkagePickerHelper.getLinkage1SelectedItem();
    }

    @Override // ab.c
    @NotNull
    public WheelView getLinkage1WheelView() {
        return this.linkagePickerHelper.getLinkage1WheelView();
    }

    @Override // ab.c
    @Nullable
    public <T> T getLinkage2SelectedItem() {
        return (T) this.linkagePickerHelper.getLinkage2SelectedItem();
    }

    @Override // ab.c
    @NotNull
    public WheelView getLinkage2WheelView() {
        return this.linkagePickerHelper.getLinkage2WheelView();
    }

    @Override // ab.c
    @Nullable
    public <T> T getLinkage3SelectedItem() {
        return (T) this.linkagePickerHelper.getLinkage3SelectedItem();
    }

    @Override // ab.c
    @NotNull
    public WheelView getLinkage3WheelView() {
        return this.linkagePickerHelper.getLinkage3WheelView();
    }

    @Override // ab.g
    public void setAutoFitTextSize(boolean autoFit) {
        this.linkagePickerHelper.setAutoFitTextSize(autoFit);
    }

    @Override // ab.g
    public void setCurtainColor(@ColorInt int curtainColor) {
        this.linkagePickerHelper.setCurtainColor(curtainColor);
    }

    @Override // ab.g
    public void setCurtainColorRes(@ColorRes int curtainColorRes) {
        this.linkagePickerHelper.setCurtainColorRes(curtainColorRes);
    }

    @Override // ab.g
    public void setCurved(boolean curved) {
        this.linkagePickerHelper.setCurved(curved);
    }

    @Override // ab.g
    public void setCurvedArcDirection(@NotNull WheelView.CurvedArcDirection direction) {
        this.linkagePickerHelper.setCurvedArcDirection(direction);
    }

    @Override // ab.g
    public void setCurvedArcDirectionFactor(float factor) {
        this.linkagePickerHelper.setCurvedArcDirectionFactor(factor);
    }

    @Override // ab.g
    public void setCyclic(boolean isCyclic) {
        this.linkagePickerHelper.setCyclic(isCyclic);
    }

    @Override // ab.c
    public void setData(@NotNull List<? extends Object> firstData, @NotNull bb.d doubleLoadDataListener) {
        this.linkagePickerHelper.setData(firstData, doubleLoadDataListener);
    }

    @Override // ab.g
    public void setDividerCap(@NotNull Paint.Cap cap) {
        this.linkagePickerHelper.setDividerCap(cap);
    }

    @Override // ab.g
    public void setDividerColor(@ColorInt int dividerColor) {
        this.linkagePickerHelper.setDividerColor(dividerColor);
    }

    @Override // ab.g
    public void setDividerColorRes(@ColorRes int dividerColorRes) {
        this.linkagePickerHelper.setDividerColorRes(dividerColorRes);
    }

    @Override // ab.g
    public void setDividerHeight(int dividerHeightPx) {
        this.linkagePickerHelper.setDividerHeight(dividerHeightPx);
    }

    @Override // ab.g
    public void setDividerOffsetY(int offsetYPx) {
        this.linkagePickerHelper.setDividerOffsetY(offsetYPx);
    }

    @Override // ab.g
    public void setDividerType(@NotNull WheelView.DividerType dividerType) {
        this.linkagePickerHelper.setDividerType(dividerType);
    }

    @Override // ab.g
    public void setLeftText(@NotNull CharSequence text) {
        this.linkagePickerHelper.setLeftText(text);
    }

    @Override // ab.g
    public void setLeftTextColor(@ColorInt int color) {
        this.linkagePickerHelper.setLeftTextColor(color);
    }

    @Override // ab.g
    public void setLeftTextColorRes(@ColorRes int colorRes) {
        this.linkagePickerHelper.setLeftTextColorRes(colorRes);
    }

    @Override // ab.g
    public void setLeftTextGravity(int gravity) {
        this.linkagePickerHelper.setLeftTextGravity(gravity);
    }

    @Override // ab.g
    public void setLeftTextMarginRight(int marginRightPx) {
        this.linkagePickerHelper.setLeftTextMarginRight(marginRightPx);
    }

    @Override // ab.g
    public void setLeftTextSize(int textSizePx) {
        this.linkagePickerHelper.setLeftTextSize(textSizePx);
    }

    @Override // ab.g
    public void setLineSpacing(int lineSpacingPx) {
        this.linkagePickerHelper.setLineSpacing(lineSpacingPx);
    }

    @Override // ab.c
    public void setLinkage1TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c textFormatter) {
        this.linkagePickerHelper.setLinkage1TextFormatter(textFormatter);
    }

    @Override // ab.c
    public void setLinkage2TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c textFormatter) {
        this.linkagePickerHelper.setLinkage2TextFormatter(textFormatter);
    }

    @Override // ab.c
    public void setLinkage3TextFormatter(@NotNull com.zyyoona7.wheel.formatter.c textFormatter) {
        this.linkagePickerHelper.setLinkage3TextFormatter(textFormatter);
    }

    @Override // ab.c
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType measureType) {
        this.linkagePickerHelper.setMaxTextWidthMeasureType(measureType);
    }

    @Override // ab.g
    public void setMinTextSize(int minTextSizePx) {
        this.linkagePickerHelper.setMinTextSize(minTextSizePx);
    }

    @Override // ab.g
    public void setNormalTextColor(@ColorInt int textColor) {
        this.linkagePickerHelper.setNormalTextColor(textColor);
    }

    @Override // ab.g
    public void setNormalTextColorRes(@ColorRes int textColorRes) {
        this.linkagePickerHelper.setNormalTextColorRes(textColorRes);
    }

    @Override // ab.c
    public void setOnLinkageSelectedListener(@Nullable e listener) {
        this.linkagePickerHelper.setOnLinkageSelectedListener(listener);
    }

    @Override // ab.c
    public void setOnScrollChangedListener(@Nullable cb.c listener) {
        this.linkagePickerHelper.setOnScrollChangedListener(listener);
    }

    @Override // ab.g
    public void setRefractRatio(float ratio) {
        this.linkagePickerHelper.setRefractRatio(ratio);
    }

    @Override // ab.g
    public void setResetSelectedPosition(boolean reset) {
        this.linkagePickerHelper.setResetSelectedPosition(reset);
    }

    @Override // ab.g
    public void setRightText(@NotNull CharSequence text) {
        this.linkagePickerHelper.setRightText(text);
    }

    @Override // ab.g
    public void setRightTextColor(@ColorInt int color) {
        this.linkagePickerHelper.setRightTextColor(color);
    }

    @Override // ab.g
    public void setRightTextColorRes(@ColorRes int colorRes) {
        this.linkagePickerHelper.setRightTextColorRes(colorRes);
    }

    @Override // ab.g
    public void setRightTextGravity(int gravity) {
        this.linkagePickerHelper.setRightTextGravity(gravity);
    }

    @Override // ab.g
    public void setRightTextMarginLeft(int marginLeftPx) {
        this.linkagePickerHelper.setRightTextMarginLeft(marginLeftPx);
    }

    @Override // ab.g
    public void setRightTextSize(int textSizePx) {
        this.linkagePickerHelper.setRightTextSize(textSizePx);
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object linkage1Item, @NotNull Object linkage2Item) {
        this.linkagePickerHelper.setSelectedItem(linkage1Item, linkage2Item);
    }

    @Override // ab.c
    public void setSelectedPosition(int linkage1Pos, int linkage2Pos) {
        this.linkagePickerHelper.setSelectedPosition(linkage1Pos, linkage2Pos);
    }

    @Override // ab.g
    public void setSelectedTextColor(@ColorInt int textColor) {
        this.linkagePickerHelper.setSelectedTextColor(textColor);
    }

    @Override // ab.g
    public void setSelectedTextColorRes(@ColorRes int textColorRes) {
        this.linkagePickerHelper.setSelectedTextColorRes(textColorRes);
    }

    @Override // ab.g
    public void setShowCurtain(boolean showCurtain) {
        this.linkagePickerHelper.setShowCurtain(showCurtain);
    }

    @Override // ab.g
    public void setShowDivider(boolean showDivider) {
        this.linkagePickerHelper.setShowDivider(showDivider);
    }

    @Override // ab.g
    public void setSoundEffect(boolean soundEffect) {
        this.linkagePickerHelper.setSoundEffect(soundEffect);
    }

    @Override // ab.g
    public void setSoundResource(@RawRes int soundRes) {
        this.linkagePickerHelper.setSoundResource(soundRes);
    }

    @Override // ab.g
    public void setSoundVolume(float playVolume) {
        this.linkagePickerHelper.setSoundVolume(playVolume);
    }

    @Override // ab.g
    public void setTextAlign(@NotNull Paint.Align textAlign) {
        this.linkagePickerHelper.setTextAlign(textAlign);
    }

    @Override // ab.c
    public void setTextFormatter(@NotNull com.zyyoona7.wheel.formatter.c textFormatter) {
        this.linkagePickerHelper.setTextFormatter(textFormatter);
    }

    @Override // ab.g
    public void setTextPadding(int paddingPx) {
        this.linkagePickerHelper.setTextPadding(paddingPx);
    }

    @Override // ab.g
    public void setTextPaddingLeft(int textPaddingLeftPx) {
        this.linkagePickerHelper.setTextPaddingLeft(textPaddingLeftPx);
    }

    @Override // ab.g
    public void setTextPaddingRight(int textPaddingRightPx) {
        this.linkagePickerHelper.setTextPaddingRight(textPaddingRightPx);
    }

    @Override // ab.g
    public void setTextSize(int textSizePx) {
        this.linkagePickerHelper.setTextSize(textSizePx);
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface) {
        this.linkagePickerHelper.setTypeface(typeface);
    }

    @Override // ab.g
    public void setVisibleItems(int visibleItems) {
        this.linkagePickerHelper.setVisibleItems(visibleItems);
    }

    @Override // ab.g
    public void setWheelDividerPadding(int paddingPx) {
        this.linkagePickerHelper.setWheelDividerPadding(paddingPx);
    }

    @JvmOverloads
    public LinkagePickerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @Override // ab.c
    public void setData(@NotNull List<? extends Object> firstData, @NotNull bb.g tripleLoadDataListener) {
        this.linkagePickerHelper.setData(firstData, tripleLoadDataListener);
    }

    @Override // ab.g
    public void setDividerHeight(float dividerHeightDp) {
        this.linkagePickerHelper.setDividerHeight(dividerHeightDp);
    }

    @Override // ab.g
    public void setDividerOffsetY(float offsetYDp) {
        this.linkagePickerHelper.setDividerOffsetY(offsetYDp);
    }

    @Override // ab.c
    public void setLeftText(@NotNull CharSequence linkage1Text, @NotNull CharSequence linkage2Text, @NotNull CharSequence linkage3Text) {
        this.linkagePickerHelper.setLeftText(linkage1Text, linkage2Text, linkage3Text);
    }

    @Override // ab.g
    public void setLeftTextMarginRight(float marginRightDp) {
        this.linkagePickerHelper.setLeftTextMarginRight(marginRightDp);
    }

    @Override // ab.g
    public void setLeftTextSize(float textSizeSp) {
        this.linkagePickerHelper.setLeftTextSize(textSizeSp);
    }

    @Override // ab.g
    public void setLineSpacing(float lineSpacingDp) {
        this.linkagePickerHelper.setLineSpacing(lineSpacingDp);
    }

    @Override // ab.c
    public void setMaxTextWidthMeasureType(@NotNull WheelView.MeasureType linkage1Type, @NotNull WheelView.MeasureType linkage2Type, @NotNull WheelView.MeasureType linkage3Type) {
        this.linkagePickerHelper.setMaxTextWidthMeasureType(linkage1Type, linkage2Type, linkage3Type);
    }

    @Override // ab.g
    public void setMinTextSize(float minTextSizeSp) {
        this.linkagePickerHelper.setMinTextSize(minTextSizeSp);
    }

    @Override // ab.c
    public void setRightText(@NotNull CharSequence linkage1Text, @NotNull CharSequence linkage2Text, @NotNull CharSequence linkage3Text) {
        this.linkagePickerHelper.setRightText(linkage1Text, linkage2Text, linkage3Text);
    }

    @Override // ab.g
    public void setRightTextMarginLeft(float marginLeftDp) {
        this.linkagePickerHelper.setRightTextMarginLeft(marginLeftDp);
    }

    @Override // ab.g
    public void setRightTextSize(float textSizeSp) {
        this.linkagePickerHelper.setRightTextSize(textSizeSp);
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object linkage1Item, @NotNull Object linkage2Item, boolean isCompareFormatText) {
        this.linkagePickerHelper.setSelectedItem(linkage1Item, linkage2Item, isCompareFormatText);
    }

    @Override // ab.c
    public void setSelectedPosition(int linkage1Pos, int linkage2Pos, int linkage3Pos) {
        this.linkagePickerHelper.setSelectedPosition(linkage1Pos, linkage2Pos, linkage3Pos);
    }

    @Override // ab.g
    public void setTextPadding(float paddingDp) {
        this.linkagePickerHelper.setTextPadding(paddingDp);
    }

    @Override // ab.g
    public void setTextPaddingLeft(float textPaddingLeftDp) {
        this.linkagePickerHelper.setTextPaddingLeft(textPaddingLeftDp);
    }

    @Override // ab.g
    public void setTextPaddingRight(float textPaddingRightDp) {
        this.linkagePickerHelper.setTextPaddingRight(textPaddingRightDp);
    }

    @Override // ab.g
    public void setTextSize(float textSizeSp) {
        this.linkagePickerHelper.setTextSize(textSizeSp);
    }

    @Override // ab.g
    public void setTypeface(@NotNull Typeface typeface, boolean isBoldForSelectedItem) {
        this.linkagePickerHelper.setTypeface(typeface, isBoldForSelectedItem);
    }

    @Override // ab.g
    public void setWheelDividerPadding(float paddingDp) {
        this.linkagePickerHelper.setWheelDividerPadding(paddingDp);
    }

    public /* synthetic */ LinkagePickerView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object linkage1Item, @NotNull Object linkage2Item, @NotNull Object linkage3Item) {
        this.linkagePickerHelper.setSelectedItem(linkage1Item, linkage2Item, linkage3Item);
    }

    @JvmOverloads
    public LinkagePickerView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        WheelView wheelView = new WheelView(context, null, 0, 6, null);
        WheelView wheelView2 = new WheelView(context, null, 0, 6, null);
        WheelView wheelView3 = new WheelView(context, null, 0, 6, null);
        wheelView.setId(R.id.wheel_linkage1);
        wheelView2.setId(R.id.wheel_linkage2);
        wheelView3.setId(R.id.wheel_linkage3);
        this.linkagePickerHelper = new d(wheelView, wheelView2, wheelView3);
        if (attributeSet != null) {
            c(context, attributeSet);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        layoutParams.gravity = 16;
        addView(wheelView, layoutParams);
        addView(wheelView2, layoutParams);
        addView(wheelView3, layoutParams);
        setMaxTextWidthMeasureType(WheelView.MeasureType.MAX_LENGTH);
    }

    @Override // ab.c
    public void setSelectedItem(@NotNull Object linkage1Item, @NotNull Object linkage2Item, @NotNull Object linkage3Item, boolean isCompareFormatText) {
        this.linkagePickerHelper.setSelectedItem(linkage1Item, linkage2Item, linkage3Item, isCompareFormatText);
    }
}
