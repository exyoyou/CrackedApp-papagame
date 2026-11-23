package com.byazt.uj;

import android.app.Activity;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 15, 71})
public abstract class x extends ve {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f20595da;
    public int sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f20596t;

    public x(com.byazt.wn.tt ttVar, Function<SparseArray<Object>, Object> function) {
        super(ttVar, function);
        this.f20595da = 0;
        this.sl = 0;
        this.f20596t = false;
    }

    public final void checkClick(c cVar) {
        int i10 = this.sl;
        if (i10 >= 60) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.sl = i10 + 1;
        if (cVar != null) {
            cVar.c();
        }
    }

    public final void checkShow(c cVar) {
        if (!this.f20596t) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i10 = this.f20595da;
        if (i10 >= 2) {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.f20595da = i10 + 1;
        if (cVar != null) {
            cVar.c();
        }
    }

    public abstract void register(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.me.da daVar);

    @Override // com.byazt.yl.ve
    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.byazt.me.da daVar, List<View> list4) {
        super.registerViewForInteraction(activity, viewGroup, list, list2, list3, daVar, list4);
        try {
            this.f20596t = true;
            register(activity, viewGroup, list, list2, list3, daVar);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    @Override // com.byazt.yl.ve
    public void render() {
        try {
            this.f20596t = true;
            if (((ve) this).f20593i != null) {
                ((ve) this).f20593i.apply(com.byazt.yxi.uj.c().c(6083).c(Void.class).tt());
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }
}
