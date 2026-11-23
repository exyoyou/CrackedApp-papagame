package com.byazt.yc;

import android.animation.ArgbEvaluator;
import android.animation.IntEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.byazt.rb.n;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1136, 54})
public class ve extends c {
    public ve(Context context, com.byazt.xj.ve veVar, String str, TreeMap<Float, String> treeMap) {
        super(context, veVar, str, treeMap);
    }

    @Override // com.byazt.yc.c
    public TypeEvaluator a() {
        return this.uj == n.BACKGROUND_COLOR ? new ArgbEvaluator() : new IntEvaluator();
    }

    @Override // com.byazt.yc.c
    public void c(float f10, String str) {
        this.f22162n.add(this.uj == n.BACKGROUND_COLOR ? Keyframe.ofInt(f10, com.byazt.cd.c.c(str)) : Keyframe.ofInt(f10, com.byazt.cd.ve.c(str, 0)));
    }

    @Override // com.byazt.yc.c
    public void tt() {
        if (this.uj == n.BACKGROUND_COLOR) {
            this.f22162n.add(Keyframe.ofInt(0.0f, this.sp.pf()));
        }
    }
}
