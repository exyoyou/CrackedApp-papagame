package com.join.kotlin.module.hmcloud.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.aa0;
import com.join.kotlin.module.hmcloud.pad.HMKeyData;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMKeyAddDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;", "<init>", "()V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmPadAddBinding;)V", "onAddKey", "Lkotlin/Function1;", "", "", "getOnAddKey", "()Lkotlin/jvm/functions/Function1;", "setOnAddKey", "(Lkotlin/jvm/functions/Function1;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMKeyAddDialog extends HMBaseFragmentDialog {
    public aa0 binding;

    @Nullable
    private Function1<? super String, Unit> onAddKey;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(HMKeyAddDialog hMKeyAddDialog, Map map, View view) {
        Function1<? super String, Unit> function1 = hMKeyAddDialog.onAddKey;
        if (function1 != null) {
            String str = (String) map.get(Integer.valueOf(view.getId()));
            if (str == null) {
                str = "";
            }
            function1.invoke(str);
        }
        hMKeyAddDialog.dismiss();
    }

    @NotNull
    public final aa0 getBinding() {
        aa0 aa0Var = this.binding;
        if (aa0Var != null) {
            return aa0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final Function1<String, Unit> getOnAddKey() {
        return this.onAddKey;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(aa0.inflate(inflater, container, false));
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getBinding().f35742s.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f48633b.dismiss();
            }
        });
        final Map mapMapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.id.lt), HMKeyData.BtnLT.getKey()), TuplesKt.to(Integer.valueOf(R.id.f35475lb), HMKeyData.BtnLB.getKey()), TuplesKt.to(Integer.valueOf(R.id.ls), HMKeyData.BtnLS.getKey()), TuplesKt.to(Integer.valueOf(R.id.rt), HMKeyData.BtnRT.getKey()), TuplesKt.to(Integer.valueOf(R.id.f35484rb), HMKeyData.BtnRB.getKey()), TuplesKt.to(Integer.valueOf(R.id.rs), HMKeyData.BtnRS.getKey()), TuplesKt.to(Integer.valueOf(R.id.f35491x), HMKeyData.BtnX.getKey()), TuplesKt.to(Integer.valueOf(R.id.f35492y), HMKeyData.BtnY.getKey()), TuplesKt.to(Integer.valueOf(R.id.f35449a), HMKeyData.BtnA.getKey()), TuplesKt.to(Integer.valueOf(R.id.f35453b), HMKeyData.BtnB.getKey()), TuplesKt.to(Integer.valueOf(R.id.menu), HMKeyData.BtnStart.getKey()), TuplesKt.to(Integer.valueOf(R.id.screenshot), HMKeyData.BtnSelect.getKey()), TuplesKt.to(Integer.valueOf(R.id.dpad), HMKeyData.Dpad.getKey()), TuplesKt.to(Integer.valueOf(R.id.analog_l), HMKeyData.JoyL.getKey()), TuplesKt.to(Integer.valueOf(R.id.analog_r), HMKeyData.JoyR.getKey()), TuplesKt.to(Integer.valueOf(R.id.analog_all), HMKeyData.JoyDpad.getKey()));
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HMKeyAddDialog.onViewCreated$lambda$1(this.f48635b, mapMapOf, view2);
            }
        };
        aa0 binding = getBinding();
        binding.f35736m.setOnClickListener(onClickListener);
        binding.f35734k.setOnClickListener(onClickListener);
        binding.f35735l.setOnClickListener(onClickListener);
        binding.f35740q.setOnClickListener(onClickListener);
        binding.f35738o.setOnClickListener(onClickListener);
        binding.f35739p.setOnClickListener(onClickListener);
        binding.f35744u.setOnClickListener(onClickListener);
        binding.f35726c.setOnClickListener(onClickListener);
        binding.f35745v.setOnClickListener(onClickListener);
        binding.f35730g.setOnClickListener(onClickListener);
        binding.f35737n.setOnClickListener(onClickListener);
        binding.f35741r.setOnClickListener(onClickListener);
        binding.f35732i.getRoot().setOnClickListener(onClickListener);
        binding.f35728e.getRoot().setOnClickListener(onClickListener);
        binding.f35729f.getRoot().setOnClickListener(onClickListener);
        binding.f35727d.getRoot().setOnClickListener(onClickListener);
    }

    public final void setBinding(@NotNull aa0 aa0Var) {
        Intrinsics.checkNotNullParameter(aa0Var, "<set-?>");
        this.binding = aa0Var;
    }

    public final void setOnAddKey(@Nullable Function1<? super String, Unit> function1) {
        this.onAddKey = function1;
    }
}
