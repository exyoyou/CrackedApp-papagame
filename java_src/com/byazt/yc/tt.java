package com.byazt.yc;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.byazt.cd.x;
import com.byazt.rb.n;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1136, 13})
public class tt extends c {

    /* JADX INFO: renamed from: com.byazt.yc.tt$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 1136, 28})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f22163c;

        static {
            int[] iArr = new int[n.values().length];
            f22163c = iArr;
            try {
                iArr[n.TRANSLATE_X.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22163c[n.TRANSLATE_Y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22163c[n.SCALE_X.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22163c[n.SCALE_Y.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f22163c[n.ROTATE_X.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f22163c[n.ROTATE_Y.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f22163c[n.ROTATE_Z.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f22163c[n.ALPHA.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f22163c[n.BORDER_RADIUS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public tt(Context context, com.byazt.xj.ve veVar, String str, TreeMap<Float, String> treeMap) {
        super(context, veVar, str, treeMap);
    }

    @Override // com.byazt.yc.c
    public TypeEvaluator a() {
        return new FloatEvaluator();
    }

    @Override // com.byazt.yc.c
    public void c(float f10, String str) {
        this.f22162n.add(Keyframe.ofFloat(f10, (this.tt.startsWith(n.TRANSLATE.c()) || this.uj == n.BORDER_RADIUS) ? x.c(this.f22161c, com.byazt.cd.ve.c(str, 0.0f)) : com.byazt.cd.ve.c(str, 0.0f)));
    }

    @Override // com.byazt.yc.c
    public void tt() {
        float fU;
        switch (AnonymousClass1.f22163c[this.uj.ordinal()]) {
            case 1:
                fU = this.sp.u();
                break;
            case 2:
                fU = this.sp.yp();
                break;
            case 3:
                fU = this.sp.z();
                break;
            case 4:
                fU = this.sp.m();
                break;
            case 5:
                fU = this.sp.nu();
                if (this.sp.i() != null) {
                    this.sp.i().setCameraDistance(10000.0f);
                }
                break;
            case 6:
                fU = this.sp.rh();
                if (this.sp.i() != null) {
                    this.sp.i().setCameraDistance(10000.0f);
                }
                break;
            case 7:
                fU = this.sp.my();
                break;
            case 8:
                fU = this.sp.gt();
                break;
            case 9:
                fU = this.sp.rl();
                break;
            default:
                fU = 0.0f;
                break;
        }
        this.f22162n.add(Keyframe.ofFloat(0.0f, fU));
    }
}
