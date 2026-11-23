package com.join.mgps.Util;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class x2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f50129d = "JIGUANG-TagAliasHelper";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f50130e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f50131f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f50132g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f50133h = 3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f50134i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f50135j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f50136k = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f50137l = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f50138m = 2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static x2 f50139n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f50140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SparseArray<Object> f50141b = new SparseArray<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f50142c = new a();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what != 2) {
                return;
            }
            Object obj = msg.obj;
            if (obj == null || !(obj instanceof String)) {
                h1.c(x2.f50129d, "#unexcepted - msg obj was incorrect");
                return;
            }
            h1.d(x2.f50129d, "retry set mobile number");
            x2.f50130e++;
            String str = (String) msg.obj;
            x2.this.f50141b.put(x2.f50130e, str);
            if (x2.this.f50140a == null) {
                h1.c(x2.f50129d, "#unexcepted - context was null");
            } else {
                x2 x2Var = x2.this;
                x2Var.h(x2Var.f50140a, x2.f50130e, str);
            }
        }
    }

    private x2() {
    }

    private boolean a(int errorCode, String mobileNumber) {
        if (!k0.e(this.f50140a)) {
            h1.c(f50129d, "no network");
            return false;
        }
        if (errorCode != 6002 && errorCode != 6024) {
            return false;
        }
        h1.a(f50129d, "need retry");
        Message message = new Message();
        message.what = 2;
        message.obj = mobileNumber;
        this.f50142c.sendMessageDelayed(message, 60000L);
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[1];
        objArr[0] = errorCode == 6002 ? "timeout" : "server internal error”";
        k0.j(String.format(locale, "Failed to set mobile number due to %s. Try again after 60s.", objArr), this.f50140a);
        return true;
    }

    private String e(int actionType) {
        switch (actionType) {
            case 1:
                return "add";
            case 2:
                return "set";
            case 3:
                return "delete";
            case 4:
                return "clean";
            case 5:
                return "get";
            case 6:
                return "check";
            default:
                return "unkonw operation";
        }
    }

    public static x2 f() {
        if (f50139n == null) {
            synchronized (x2.class) {
                if (f50139n == null) {
                    f50139n = new x2();
                }
            }
        }
        return f50139n;
    }

    private String g(boolean isAliasAction, int actionType, int errorCode) {
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[3];
        objArr[0] = e(actionType);
        objArr[1] = isAliasAction ? "alias" : " tags";
        objArr[2] = errorCode == 6002 ? "timeout" : "server too busy";
        return String.format(locale, "Failed to %s %s due to %s. Try again after 60s.", objArr);
    }

    public Object d(int sequence) {
        return this.f50141b.get(sequence);
    }

    public void h(Context context, int sequence, String mobileNumber) {
    }

    public void i(Context context) {
        if (context != null) {
            this.f50140a = context.getApplicationContext();
        }
    }

    public void j(int sequence, Object tagAliasBean) {
        this.f50141b.put(sequence, tagAliasBean);
    }

    public Object k(int sequence) {
        return this.f50141b.get(sequence);
    }
}
