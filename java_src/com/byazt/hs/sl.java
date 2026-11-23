package com.byazt.hs;

import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1404, 158})
public class sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f15090c = "sl";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<Object> f15091a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicReference<t> f15092n;
    public int sp;
    public final uj tt;
    public final AtomicReference<t> uj;
    public volatile boolean ve;

    /* JADX INFO: renamed from: com.byazt.hs.sl$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 1404, 696})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f15093c;

        static {
            int[] iArr = new int[t.values().length];
            f15093c = iArr;
            try {
                iArr[t.POOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15093c[t.MODERATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15093c[t.GOOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15093c[t.EXCELLENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 1404, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_VERSION})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final sl f15094c = new sl(null);
    }

    public /* synthetic */ sl(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static sl c() {
        return c.f15094c;
    }

    private void uj() {
        try {
            int size = this.f15091a.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f15091a.get(i10);
                this.uj.get();
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private boolean ve() {
        double d10;
        if (this.tt == null) {
            return false;
        }
        try {
            int i10 = AnonymousClass1.f15093c[this.uj.get().ordinal()];
            double d11 = 150.0d;
            if (i10 == 1) {
                d10 = 0.0d;
            } else if (i10 == 2) {
                d11 = 550.0d;
                d10 = 150.0d;
            } else if (i10 == 3) {
                d10 = 550.0d;
                d11 = 2000.0d;
            } else {
                if (i10 != 4) {
                    return true;
                }
                d11 = 3.4028234663852886E38d;
                d10 = 2000.0d;
            }
            double dC = this.tt.c();
            if (dC > d11) {
                if (dC > d11 * 1.25d) {
                    return true;
                }
            } else if (dC < d10 * 0.8d) {
                return true;
            }
        } catch (Throwable th) {
            m.c(th);
        }
        return false;
    }

    public synchronized t tt() {
        uj ujVar = this.tt;
        if (ujVar == null) {
            return t.UNKNOWN;
        }
        try {
            return c(ujVar.c());
        } catch (Throwable th) {
            m.c(th);
            return t.UNKNOWN;
        }
    }

    private sl() {
        this.tt = new uj(0.05d);
        this.ve = false;
        this.uj = new AtomicReference<>(t.UNKNOWN);
        this.f15091a = new ArrayList<>();
    }

    public synchronized void c(long j10, long j11) {
        double d10 = ((j10 * 1.0d) / j11) * 8.0d;
        if (j11 == 0 || d10 < 3.0d) {
            return;
        }
        try {
            this.tt.c(d10);
            t tVarTt = tt();
            if (!this.ve) {
                if (this.uj.get() != tVarTt) {
                    this.ve = true;
                    this.f15092n = new AtomicReference<>(tVarTt);
                }
                return;
            }
            this.sp++;
            if (tVarTt != this.f15092n.get()) {
                this.ve = false;
                this.sp = 1;
            }
            if (this.sp >= 5.0d && ve()) {
                this.ve = false;
                this.sp = 1;
                this.uj.set(this.f15092n.get());
                uj();
            }
        } catch (Throwable unused) {
        }
    }

    private t c(double d10) {
        if (d10 < 0.0d) {
            return t.UNKNOWN;
        }
        if (d10 < 150.0d) {
            return t.POOR;
        }
        if (d10 < 550.0d) {
            return t.MODERATE;
        }
        if (d10 < 2000.0d) {
            return t.GOOD;
        }
        return t.EXCELLENT;
    }
}
