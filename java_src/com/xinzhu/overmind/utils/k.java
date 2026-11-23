package com.xinzhu.overmind.utils;

import java.text.DecimalFormat;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final k f90096a = new k();

    private k() {
    }

    @NotNull
    public final String a(long j10) {
        String str;
        DecimalFormat decimalFormat = new DecimalFormat("#");
        if (j10 < 1024) {
            str = decimalFormat.format(j10) + 'B';
        } else if (j10 < 1048576) {
            str = decimalFormat.format(j10 / ((double) 1024)) + "KB";
        } else if (j10 < 1073741824) {
            str = decimalFormat.format(j10 / ((double) 1048576)) + 'M';
        } else {
            str = decimalFormat.format(j10 / ((double) 1073741824)) + 'G';
        }
        return (Intrinsics.areEqual(str, ".0B") || Intrinsics.areEqual(str, ".00B")) ? "0B" : str;
    }
}
