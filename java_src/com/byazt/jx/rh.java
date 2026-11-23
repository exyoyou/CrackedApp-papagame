package com.byazt.jx;

import android.graphics.Paint;
import com.byazt.zy.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 214, 115})
public class rh implements ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.kd.tt f15979a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15980c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final boolean f15981da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f15982i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.kd.uj f15983n;
    public final c sp;
    public final com.byazt.kd.tt tt;
    public final com.byazt.kd.c uj;
    public final List<com.byazt.kd.tt> ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final tt f15984x;

    /* JADX INFO: renamed from: com.byazt.jx.rh$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 214, MediaPlayer.MEDIA_PLAYER_OPTION_CLIP_HEAACV2_FIRSTPTS_PACKET})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f15985c;
        public static final /* synthetic */ int[] tt;

        static {
            int[] iArr = new int[tt.values().length];
            tt = iArr;
            try {
                iArr[tt.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                tt[tt.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                tt[tt.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[c.values().length];
            f15985c = iArr2;
            try {
                iArr2[c.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15985c[c.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15985c[c.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum c {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap c() {
            int i10 = AnonymousClass1.f15985c[ordinal()];
            if (i10 != 1) {
                return i10 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public enum tt {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join c() {
            int i10 = AnonymousClass1.tt[ordinal()];
            if (i10 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i10 == 2) {
                return Paint.Join.MITER;
            }
            if (i10 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public rh(String str, com.byazt.kd.tt ttVar, List<com.byazt.kd.tt> list, com.byazt.kd.c cVar, com.byazt.kd.uj ujVar, com.byazt.kd.tt ttVar2, c cVar2, tt ttVar3, float f10, boolean z10) {
        this.f15980c = str;
        this.tt = ttVar;
        this.ve = list;
        this.uj = cVar;
        this.f15983n = ujVar;
        this.f15979a = ttVar2;
        this.sp = cVar2;
        this.f15984x = ttVar3;
        this.f15982i = f10;
        this.f15981da = z10;
    }

    public com.byazt.kd.tt a() {
        return this.tt;
    }

    @Override // com.byazt.jx.ve
    public com.byazt.zy.ve c(com.byazt.ga.x xVar, com.byazt.ga.a aVar, com.byazt.zk.ve veVar) {
        return new gt(xVar, veVar, this);
    }

    public boolean da() {
        return this.f15981da;
    }

    public float i() {
        return this.f15982i;
    }

    public List<com.byazt.kd.tt> n() {
        return this.ve;
    }

    public c sp() {
        return this.sp;
    }

    public com.byazt.kd.c tt() {
        return this.uj;
    }

    public com.byazt.kd.tt uj() {
        return this.f15979a;
    }

    public com.byazt.kd.uj ve() {
        return this.f15983n;
    }

    public tt x() {
        return this.f15984x;
    }

    public String c() {
        return this.f15980c;
    }
}
