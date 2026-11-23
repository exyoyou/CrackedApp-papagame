package com.join.kotlin.module.hmcloud.pad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ca0;
import com.join.android.app.mgsim.wufun.databinding.da0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u0014\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u0018\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0014J\u0016\u0010\u0017\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0014R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;", "Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "bgMap", "", "", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogAllBinding;", "setDirection", "", "directions", "onTranslationUi", "x", "", "y", "onDirectionUi", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMAnalogDpadView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMAnalogDpadView.kt\ncom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,57:1\n1#2:58\n*E\n"})
public final class HMAnalogDpadView extends HMControllerView {

    @NotNull
    private final Map<Integer, List<HMDpadDirection>> bgMap;

    @NotNull
    private ca0 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAnalogDpadView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Integer numValueOf = Integer.valueOf(R.drawable.hm_ana_l);
        HMDpadDirection hMDpadDirection = HMDpadDirection.Left;
        Integer numValueOf2 = Integer.valueOf(R.drawable.hm_ana_r);
        HMDpadDirection hMDpadDirection2 = HMDpadDirection.Right;
        Integer numValueOf3 = Integer.valueOf(R.drawable.hm_ana_u);
        HMDpadDirection hMDpadDirection3 = HMDpadDirection.Up;
        Integer numValueOf4 = Integer.valueOf(R.drawable.hm_ana_d);
        HMDpadDirection hMDpadDirection4 = HMDpadDirection.Down;
        this.bgMap = MapsKt__MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_default), CollectionsKt__CollectionsKt.emptyList()), TuplesKt.to(numValueOf, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection)), TuplesKt.to(numValueOf2, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection2)), TuplesKt.to(numValueOf3, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection3)), TuplesKt.to(numValueOf4, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection4)), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ur), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection2, hMDpadDirection3})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ul), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection3, hMDpadDirection})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dr), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection2})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dl), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection})));
        ca0 ca0VarInflate = ca0.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(ca0VarInflate, "inflate(...)");
        this.binding = ca0VarInflate;
        addView(ca0VarInflate.getRoot(), -1, -1);
        final da0 da0Var = this.binding.f36827c;
        da0Var.f37350d.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.c
            @Override // java.lang.Runnable
            public final void run() {
                HMAnalogDpadView.lambda$1$lambda$0(this.f48805b, da0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lambda$1$lambda$0(HMAnalogDpadView hMAnalogDpadView, da0 da0Var) {
        hMAnalogDpadView.setMaxTranslation((da0Var.f37351e.getMeasuredWidth() - da0Var.f37350d.getMeasuredWidth()) / 2);
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMControllerView
    protected void onDirectionUi(@NotNull List<? extends HMDpadDirection> directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        setDirection(directions);
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMControllerView
    protected void onTranslationUi(float x10, float y10) {
        this.binding.f36827c.f37350d.setTranslationX(x10);
        this.binding.f36827c.f37350d.setTranslationY(y10);
    }

    public final void setDirection(@NotNull List<? extends HMDpadDirection> directions) {
        Object next;
        Intrinsics.checkNotNullParameter(directions, "directions");
        Iterator<T> it2 = this.bgMap.entrySet().iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!Intrinsics.areEqual(((Map.Entry) next).getValue(), CollectionsKt___CollectionsKt.toSet(directions)));
        Map.Entry entry = (Map.Entry) next;
        this.binding.f36827c.f37349c.setImageResource(entry != null ? ((Number) entry.getKey()).intValue() : R.drawable.hm_ana_default);
        this.binding.f36831g.setSelected(directions.contains(HMDpadDirection.Up));
        this.binding.f36828d.setSelected(directions.contains(HMDpadDirection.Down));
        this.binding.f36829e.setSelected(directions.contains(HMDpadDirection.Left));
        this.binding.f36830f.setSelected(directions.contains(HMDpadDirection.Right));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAnalogDpadView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        Integer numValueOf = Integer.valueOf(R.drawable.hm_ana_l);
        HMDpadDirection hMDpadDirection = HMDpadDirection.Left;
        Integer numValueOf2 = Integer.valueOf(R.drawable.hm_ana_r);
        HMDpadDirection hMDpadDirection2 = HMDpadDirection.Right;
        Integer numValueOf3 = Integer.valueOf(R.drawable.hm_ana_u);
        HMDpadDirection hMDpadDirection3 = HMDpadDirection.Up;
        Integer numValueOf4 = Integer.valueOf(R.drawable.hm_ana_d);
        HMDpadDirection hMDpadDirection4 = HMDpadDirection.Down;
        this.bgMap = MapsKt__MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_default), CollectionsKt__CollectionsKt.emptyList()), TuplesKt.to(numValueOf, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection)), TuplesKt.to(numValueOf2, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection2)), TuplesKt.to(numValueOf3, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection3)), TuplesKt.to(numValueOf4, CollectionsKt__CollectionsJVMKt.listOf(hMDpadDirection4)), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ur), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection2, hMDpadDirection3})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ul), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection3, hMDpadDirection})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dr), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection2})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dl), CollectionsKt__CollectionsKt.listOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection})));
        ca0 ca0VarInflate = ca0.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(ca0VarInflate, "inflate(...)");
        this.binding = ca0VarInflate;
        addView(ca0VarInflate.getRoot(), -1, -1);
        final da0 da0Var = this.binding.f36827c;
        da0Var.f37350d.post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.c
            @Override // java.lang.Runnable
            public final void run() {
                HMAnalogDpadView.lambda$1$lambda$0(this.f48805b, da0Var);
            }
        });
    }
}
