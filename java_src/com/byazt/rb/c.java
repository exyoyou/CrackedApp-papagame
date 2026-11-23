package com.byazt.rb;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 23, 20})
public class c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f19413a = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.xj.ve f19414c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public tt f19415i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f19416n;
    public com.byazt.hp.c sp;
    public ve tt;
    public Context uj;
    public ValueAnimator ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f19417x;

    public c(Context context, com.byazt.xj.ve veVar, ve veVar2) {
        this.f19414c = veVar;
        this.tt = veVar2;
        this.uj = context;
    }

    public void c() {
        ValueAnimator valueAnimator = this.ve;
        if (valueAnimator == null || this.f19413a == 0 || this.f19416n == Integer.MIN_VALUE) {
            return;
        }
        valueAnimator.start();
    }

    public String n() {
        return this.f19417x;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        tt ttVar = this.f19415i;
        if (ttVar != null) {
            ttVar.tt();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        super.onAnimationStart(animator);
        tt ttVar = this.f19415i;
        if (ttVar != null) {
            ttVar.c();
        }
    }

    public void tt() {
        ValueAnimator valueAnimator = this.ve;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    public ValueAnimator uj() {
        com.byazt.yc.c veVar;
        ve veVar2 = this.tt;
        if (veVar2 == null || this.f19414c == null) {
            return null;
        }
        Map<String, TreeMap<Float, String>> mapTt = veVar2.tt();
        ArrayList arrayList = new ArrayList();
        if (mapTt != null && !mapTt.isEmpty()) {
            for (Map.Entry<String, TreeMap<Float, String>> entry : mapTt.entrySet()) {
                if (entry != null) {
                    String key = entry.getKey();
                    String strVe = n.c(key).ve();
                    strVe.hashCode();
                    switch (strVe) {
                        case "int":
                            veVar = new com.byazt.yc.ve(this.uj, this.f19414c, key, entry.getValue());
                            break;
                        case "float":
                            veVar = new com.byazt.yc.tt(this.uj, this.f19414c, key, entry.getValue());
                            break;
                        case "point":
                            veVar = new com.byazt.yc.uj(this.uj, this.f19414c, key, entry.getValue());
                            break;
                        default:
                            veVar = null;
                            break;
                    }
                    if (veVar != null) {
                        arrayList.addAll(veVar.n());
                    }
                }
            }
        }
        JSONObject jSONObjectC = this.tt.c();
        if (jSONObjectC != null) {
            com.byazt.hp.c cVarC = com.byazt.hp.c.C0330c.c(this.f19414c, jSONObjectC);
            this.sp = cVarC;
            if (cVarC != null) {
                arrayList.addAll(cVarC.ve());
            }
        }
        final View viewI = this.f19414c.i();
        if (viewI == null) {
            return null;
        }
        final ve.c cVarSp = this.tt.sp();
        if (cVarSp != null) {
            viewI.post(new Runnable() { // from class: com.byazt.rb.c.1
                @Override // java.lang.Runnable
                public void run() {
                    int width = viewI.getWidth();
                    int height = viewI.getHeight();
                    viewI.setPivotX(uj.c(cVarSp.f19435c, width));
                    viewI.setPivotY(uj.c(cVarSp.tt, height));
                }
            });
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(viewI, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[0]));
        this.f19416n = uj.c(this.tt.uj());
        objectAnimatorOfPropertyValuesHolder.setDuration(this.tt.ve());
        int i10 = this.f19416n;
        if (i10 != Integer.MIN_VALUE) {
            objectAnimatorOfPropertyValuesHolder.setRepeatCount(i10);
        }
        this.f19413a = this.tt.da();
        this.f19417x = this.tt.i();
        objectAnimatorOfPropertyValuesHolder.setStartDelay(this.tt.a());
        objectAnimatorOfPropertyValuesHolder.setRepeatMode(uj.c(this.tt.n()));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(uj.tt(this.tt.x()));
        objectAnimatorOfPropertyValuesHolder.addListener(this);
        this.ve = objectAnimatorOfPropertyValuesHolder;
        return objectAnimatorOfPropertyValuesHolder;
    }

    public void ve() {
        ValueAnimator valueAnimator = this.ve;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void tt(Canvas canvas) {
        com.byazt.hp.c cVar = this.sp;
        if (cVar != null) {
            cVar.tt(canvas);
        }
    }

    public void c(tt ttVar) {
        this.f19415i = ttVar;
    }

    public void c(Canvas canvas) {
        com.byazt.hp.c cVar = this.sp;
        if (cVar != null) {
            cVar.c(canvas);
        }
    }

    public void c(int i10, int i11) {
        com.byazt.hp.c cVar = this.sp;
        if (cVar != null) {
            cVar.c(i10, i11);
        }
    }
}
