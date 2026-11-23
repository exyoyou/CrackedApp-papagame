package com.kwad.sdk.api.loader;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Thread.UncaughtExceptionHandler {
    private static f aHX;
    private Thread.UncaughtExceptionHandler aHY;
    private int aHZ;
    private long aIb;
    private Context mContext;
    private boolean DEBUG = false;
    private final AtomicBoolean aIa = new AtomicBoolean();

    private f(Context context) {
        this.mContext = context;
    }

    public static f bn(Context context) {
        if (aHX == null) {
            synchronized (f.class) {
                if (aHX == null) {
                    aHX = new f(context);
                }
            }
        }
        return aHX;
    }

    public final void cancel() {
        this.aIa.set(true);
    }

    /* JADX INFO: renamed from: do, reason: not valid java name */
    public final void m33do(int i10) {
        this.aIb = System.currentTimeMillis();
        this.aHZ = i10;
    }

    public final void setDefaultUncaughtExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler != this) {
            this.aHY = uncaughtExceptionHandler;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            if (this.DEBUG) {
                StringBuilder sb2 = new StringBuilder("AutoRevertHandler uncaughtException, mStartCheckTime:");
                sb2.append(this.aIb);
                sb2.append(",mMaxDuration:");
                sb2.append(this.aHZ);
                sb2.append(",mIsCancel:");
                sb2.append(this.aIa.get());
            }
            if (!this.aIa.get() && this.aIb > 0 && System.currentTimeMillis() - this.aIb <= this.aHZ) {
                Boolean bool = (Boolean) com.kwad.sdk.api.c.g("filterStack", th);
                boolean zBooleanValue = bool != null ? bool.booleanValue() : true;
                Context context = this.mContext;
                if (context != null && zBooleanValue) {
                    b.a(context, i.aIf, true);
                }
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.aHY;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            }
        } catch (Throwable th2) {
            try {
                th2.printStackTrace();
                if (this.aHY != null) {
                }
            } finally {
                if (this.aHY != null) {
                    this.aHY.uncaughtException(thread, th);
                }
            }
        }
    }
}
