package com.zyyoona7.wheel;

import android.graphics.Paint;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class b {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;
    public static final /* synthetic */ int[] $EnumSwitchMapping$1;
    public static final /* synthetic */ int[] $EnumSwitchMapping$2;

    static {
        int[] iArr = new int[Paint.Align.values().length];
        $EnumSwitchMapping$0 = iArr;
        iArr[Paint.Align.LEFT.ordinal()] = 1;
        iArr[Paint.Align.RIGHT.ordinal()] = 2;
        int[] iArr2 = new int[WheelView.DividerType.values().length];
        $EnumSwitchMapping$1 = iArr2;
        iArr2[WheelView.DividerType.WRAP.ordinal()] = 1;
        iArr2[WheelView.DividerType.WRAP_ALL.ordinal()] = 2;
        int[] iArr3 = new int[WheelView.CurvedArcDirection.values().length];
        $EnumSwitchMapping$2 = iArr3;
        iArr3[WheelView.CurvedArcDirection.LEFT.ordinal()] = 1;
        iArr3[WheelView.CurvedArcDirection.RIGHT.ordinal()] = 2;
    }
}
