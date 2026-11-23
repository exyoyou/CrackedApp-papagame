package com.byazt.jd;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TTAdConstant.STYLE_SIZE_RADIO_3_2, 34})
public class a extends sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile a f15809c;

    private a(Context context) {
        super(context);
    }

    public static a c(Context context) {
        if (f15809c == null) {
            synchronized (a.class) {
                if (f15809c == null) {
                    f15809c = new a(context);
                }
            }
        }
        return f15809c;
    }
}
