package com.netease.nis.quicklogin;

import android.content.Context;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.helper.b;
import com.netease.nis.quicklogin.helper.c;
import com.netease.nis.quicklogin.helper.d;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;

/* JADX INFO: loaded from: classes2.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f75943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f75944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f75945c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f75946d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f75947e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f75948f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.netease.nis.quicklogin.helper.a f75949g;

    /* JADX INFO: renamed from: com.netease.nis.quicklogin.a$a, reason: collision with other inner class name */
    static class C0978a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f75950a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f75951b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f75952c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f75953d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f75954e;

        C0978a() {
        }

        public C0978a a(String str) {
            this.f75951b = str;
            return this;
        }

        public C0978a b(String str) {
            this.f75950a = str;
            return this;
        }

        public C0978a c(String str) {
            this.f75952c = str;
            return this;
        }

        public C0978a a(int i10) {
            this.f75953d = i10;
            return this;
        }

        public C0978a a(boolean z10) {
            this.f75954e = z10;
            return this;
        }

        public a a(Context context) {
            return new a(context, this);
        }
    }

    public a(Context context, C0978a c0978a) {
        this.f75943a = context;
        this.f75944b = c0978a.f75954e;
        this.f75945c = c0978a.f75952c;
        this.f75946d = c0978a.f75950a;
        this.f75947e = c0978a.f75951b;
        this.f75948f = c0978a.f75953d;
    }

    public void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener) {
        try {
            a().a(str, quickLoginPreMobileListener);
        } catch (Exception e10) {
            e10.printStackTrace();
            quickLoginPreMobileListener.onGetMobileNumberError(str, e10.toString());
        }
    }

    public void a(QuickLoginTokenListener quickLoginTokenListener) {
        try {
            Logger.d("onePass [timeStart]" + System.currentTimeMillis());
            a().a(this.f75945c, quickLoginTokenListener);
        } catch (Exception e10) {
            e10.printStackTrace();
            quickLoginTokenListener.onGetTokenError(this.f75945c, e10.toString());
        }
    }

    public void a(String str, QuickLoginTokenListener quickLoginTokenListener) {
        try {
            a().a(this.f75943a, str, this.f75945c, quickLoginTokenListener);
        } catch (Exception e10) {
            e10.printStackTrace();
            quickLoginTokenListener.onGetTokenError(this.f75945c, e10.toString());
        }
    }

    private com.netease.nis.quicklogin.helper.a a() {
        com.netease.nis.quicklogin.helper.a aVar = this.f75949g;
        if (aVar != null) {
            return aVar;
        }
        int i10 = this.f75948f;
        if (i10 == 2) {
            this.f75949g = new b(this.f75943a, this.f75946d, this.f75947e);
        } else if (i10 == 1) {
            this.f75949g = new c(this.f75943a, this.f75947e, this.f75946d, this.f75944b);
        } else if (i10 == 3) {
            this.f75949g = new d(this.f75943a, this.f75946d, this.f75947e);
        }
        return this.f75949g;
    }
}
