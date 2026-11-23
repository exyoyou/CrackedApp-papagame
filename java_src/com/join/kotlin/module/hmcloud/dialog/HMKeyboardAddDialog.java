package com.join.kotlin.module.hmcloud.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.databinding.t90;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R.\u0010\u0004\u001a\u0016\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/module/hmcloud/dialog/HMKeyboardAddDialog;", "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseFragmentDialog;", "<init>", "()V", "onAddKey", "Lkotlin/Function1;", "", "", "", "getOnAddKey", "()Lkotlin/jvm/functions/Function1;", "setOnAddKey", "(Lkotlin/jvm/functions/Function1;)V", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyboardAddBinding;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyboardAddBinding;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/LayoutHmKeyboardAddBinding;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HMKeyboardAddDialog extends HMBaseFragmentDialog {
    public t90 binding;

    @Nullable
    private Function1<? super List<String>, Unit> onAddKey;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$2$lambda$1(HMKeyboardAddDialog hMKeyboardAddDialog, String key, boolean z10) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (!z10) {
            Function1<? super List<String>, Unit> function1 = hMKeyboardAddDialog.onAddKey;
            if (function1 != null) {
                function1.invoke(CollectionsKt__CollectionsJVMKt.listOf(key));
            }
            hMKeyboardAddDialog.dismiss();
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public final t90 getBinding() {
        t90 t90Var = this.binding;
        if (t90Var != null) {
            return t90Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @Nullable
    public final Function1<List<String>, Unit> getOnAddKey() {
        return this.onAddKey;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setBinding(t90.inflate(inflater, container, false));
        return getBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        t90 binding = getBinding();
        binding.f45163d.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.module.hmcloud.dialog.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f48628b.dismiss();
            }
        });
        binding.f45162c.setOnKeyClick(new Function2() { // from class: com.join.kotlin.module.hmcloud.dialog.f0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HMKeyboardAddDialog.onViewCreated$lambda$2$lambda$1(this.f48630b, (String) obj, ((Boolean) obj2).booleanValue());
            }
        });
    }

    public final void setBinding(@NotNull t90 t90Var) {
        Intrinsics.checkNotNullParameter(t90Var, "<set-?>");
        this.binding = t90Var;
    }

    public final void setOnAddKey(@Nullable Function1<? super List<String>, Unit> function1) {
        this.onAddKey = function1;
    }
}
