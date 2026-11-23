package com.join.kotlin.module.hmcloud.pad;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.da0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0004\u0010\bJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000fJ\u0014\u0010\u0015\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0017J\u0018\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0014J\u0016\u0010\u001c\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0017H\u0014R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR \u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;", "Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAnalogBinding;", "bgMap", "", "", "", "Lcom/join/kotlin/module/hmcloud/pad/HMDpadDirection;", "setStickResource", "", "resId", "setDirection", "directions", "", "onTranslationUi", "x", "", "y", "onDirectionUi", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHMAnalogView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMAnalogView.kt\ncom/join/kotlin/module/hmcloud/pad/HMAnalogView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"})
public final class HMAnalogView extends HMControllerView {

    @NotNull
    private final Map<Integer, Set<HMDpadDirection>> bgMap;

    @NotNull
    private final da0 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAnalogView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        da0 da0VarInflate = da0.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(da0VarInflate, "inflate(...)");
        this.binding = da0VarInflate;
        Integer numValueOf = Integer.valueOf(R.drawable.hm_ana_l);
        HMDpadDirection hMDpadDirection = HMDpadDirection.Left;
        Integer numValueOf2 = Integer.valueOf(R.drawable.hm_ana_r);
        HMDpadDirection hMDpadDirection2 = HMDpadDirection.Right;
        Integer numValueOf3 = Integer.valueOf(R.drawable.hm_ana_u);
        HMDpadDirection hMDpadDirection3 = HMDpadDirection.Up;
        Integer numValueOf4 = Integer.valueOf(R.drawable.hm_ana_d);
        HMDpadDirection hMDpadDirection4 = HMDpadDirection.Down;
        this.bgMap = MapsKt__MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_default), SetsKt__SetsKt.emptySet()), TuplesKt.to(numValueOf, SetsKt__SetsJVMKt.setOf(hMDpadDirection)), TuplesKt.to(numValueOf2, SetsKt__SetsJVMKt.setOf(hMDpadDirection2)), TuplesKt.to(numValueOf3, SetsKt__SetsJVMKt.setOf(hMDpadDirection3)), TuplesKt.to(numValueOf4, SetsKt__SetsJVMKt.setOf(hMDpadDirection4)), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ur), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection2, hMDpadDirection3})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ul), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection3, hMDpadDirection})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dr), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection2})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dl), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection})));
        addView(da0VarInflate.getRoot(), -1, -1);
        da0VarInflate.getRoot().post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.d
            @Override // java.lang.Runnable
            public final void run() {
                HMAnalogView._init_$lambda$0(this.f48807b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(HMAnalogView hMAnalogView) {
        hMAnalogView.setMaxTranslation((hMAnalogView.binding.f37351e.getMeasuredWidth() - hMAnalogView.binding.f37350d.getMeasuredWidth()) / 2);
    }

    @NotNull
    public final da0 getBinding() {
        return this.binding;
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMControllerView
    protected void onDirectionUi(@NotNull List<? extends HMDpadDirection> directions) {
        Intrinsics.checkNotNullParameter(directions, "directions");
        setDirection(directions);
    }

    @Override // com.join.kotlin.module.hmcloud.pad.HMControllerView
    protected void onTranslationUi(float x10, float y10) {
        this.binding.f37350d.setTranslationX(x10);
        this.binding.f37350d.setTranslationY(y10);
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
        this.binding.f37349c.setImageResource(entry != null ? ((Number) entry.getKey()).intValue() : R.drawable.hm_ana_default);
    }

    public final void setStickResource(int resId) {
        this.binding.f37350d.setImageResource(resId);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HMAnalogView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        da0 da0VarInflate = da0.inflate(LayoutInflater.from(getContext()), this, false);
        Intrinsics.checkNotNullExpressionValue(da0VarInflate, "inflate(...)");
        this.binding = da0VarInflate;
        Integer numValueOf = Integer.valueOf(R.drawable.hm_ana_l);
        HMDpadDirection hMDpadDirection = HMDpadDirection.Left;
        Integer numValueOf2 = Integer.valueOf(R.drawable.hm_ana_r);
        HMDpadDirection hMDpadDirection2 = HMDpadDirection.Right;
        Integer numValueOf3 = Integer.valueOf(R.drawable.hm_ana_u);
        HMDpadDirection hMDpadDirection3 = HMDpadDirection.Up;
        Integer numValueOf4 = Integer.valueOf(R.drawable.hm_ana_d);
        HMDpadDirection hMDpadDirection4 = HMDpadDirection.Down;
        this.bgMap = MapsKt__MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_default), SetsKt__SetsKt.emptySet()), TuplesKt.to(numValueOf, SetsKt__SetsJVMKt.setOf(hMDpadDirection)), TuplesKt.to(numValueOf2, SetsKt__SetsJVMKt.setOf(hMDpadDirection2)), TuplesKt.to(numValueOf3, SetsKt__SetsJVMKt.setOf(hMDpadDirection3)), TuplesKt.to(numValueOf4, SetsKt__SetsJVMKt.setOf(hMDpadDirection4)), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ur), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection2, hMDpadDirection3})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_ul), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection3, hMDpadDirection})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dr), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection2})), TuplesKt.to(Integer.valueOf(R.drawable.hm_ana_dl), SetsKt__SetsKt.setOf((Object[]) new HMDpadDirection[]{hMDpadDirection4, hMDpadDirection})));
        addView(da0VarInflate.getRoot(), -1, -1);
        da0VarInflate.getRoot().post(new Runnable() { // from class: com.join.kotlin.module.hmcloud.pad.d
            @Override // java.lang.Runnable
            public final void run() {
                HMAnalogView._init_$lambda$0(this.f48807b);
            }
        });
    }
}
