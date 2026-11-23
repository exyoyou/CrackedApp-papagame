package com.kongzue.dialogx;

import android.content.Context;
import android.content.res.Resources;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.f;
import com.kongzue.dialogx.style.a;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.d;
import com.kongzue.dialogx.util.j;

/* JADX INFO: loaded from: classes3.dex */
public class DialogX {
    public static String A = null;
    public static TextInfo B = null;
    public static f<BaseDialog> E = null;
    public static CharSequence V = null;
    public static CharSequence W = null;
    public static CharSequence X = null;
    public static CharSequence Y = null;
    public static CharSequence Z = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f73589a = "DialogX.init: 初始化异常，context 为 null 或未初始化，详情请查看 https://github.com/kongzue/DialogX/wiki";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f73590b = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static THEME f73593e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f73595g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f73596h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f73597i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f73598j;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static TextInfo f73602n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static TextInfo f73603o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static TextInfo f73604p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static TextInfo f73605q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static TextInfo f73606r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static j f73607s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static TextInfo f73608t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static TextInfo f73609u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static DialogXStyle f73591c = a.q();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static THEME f73592d = THEME.LIGHT;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static IMPL_MODE f73594f = IMPL_MODE.VIEW;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f73599k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f73600l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f73601m = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static Integer f73610v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static Integer f73611w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static Integer f73612x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static boolean f73613y = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static boolean f73614z = false;
    public static long C = -1;
    public static long D = -1;
    public static boolean F = true;
    public static boolean G = true;

    @Deprecated
    public static boolean H = false;
    public static int I = 0;
    public static int J = a(35.0f);
    public static boolean K = false;
    public static String[] L = {"com.bytedance.sdk.openadsdk.stub.activity", "com.mobile.auth.gatewayauth", "com.google.android.gms.ads"};
    public static int M = -1;
    public static int N = -1;
    public static int O = -1;
    public static int P = -1;
    public static int Q = -1;
    public static int R = -1;
    public static int S = -1;
    public static boolean T = true;
    public static boolean U = false;

    public enum IMPL_MODE {
        VIEW,
        WINDOW,
        DIALOG_FRAGMENT,
        FLOATING_ACTIVITY
    }

    public enum THEME {
        LIGHT,
        DARK,
        AUTO
    }

    private static int a(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static void b(Object obj) {
        if (f73590b) {
            obj.toString();
        }
    }

    public static void c(Context context) {
        if (context == null) {
            b(f73589a);
        } else {
            BaseDialog.b0(context);
        }
    }

    public static d d(BaseDialog... baseDialogArr) {
        return d.c(baseDialogArr).e();
    }
}
