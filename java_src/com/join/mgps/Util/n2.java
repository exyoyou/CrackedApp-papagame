package com.join.mgps.Util;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class n2 extends m2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static n2 f49803d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f49804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f49805c;

    class a extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f49807c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String id2, long delay, String serial, final Context val$context, final String val$gameId) {
            super(id2, delay, serial);
            this.f49806b = val$context;
            this.f49807c = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n2.super.c(this.f49806b, this.f49807c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class b extends org.androidannotations.api.a.c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49809b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f49810c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String id2, long delay, String serial, final Context val$context, final String val$gameId) {
            super(id2, delay, serial);
            this.f49809b = val$context;
            this.f49810c = val$gameId;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n2.super.d(this.f49809b, this.f49810c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private n2(Context context) {
        this.f49804b = context;
    }

    public static n2 g(Context context) {
        if (f49803d == null) {
            zc.c cVarC = zc.c.c(null);
            n2 n2Var = new n2(context.getApplicationContext());
            f49803d = n2Var;
            n2Var.h();
            zc.c.c(cVarC);
        }
        return f49803d;
    }

    private void h() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.Util.m2
    public void c(final Context context, final String gameId) {
        org.androidannotations.api.a.l(new a("", 0L, "", context, gameId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.Util.m2
    public void d(final Context context, final String gameId) {
        org.androidannotations.api.a.l(new b("", 0L, "", context, gameId));
    }

    private n2(Context context, Object rootFragment) {
        this.f49804b = context;
        this.f49805c = rootFragment;
    }
}
