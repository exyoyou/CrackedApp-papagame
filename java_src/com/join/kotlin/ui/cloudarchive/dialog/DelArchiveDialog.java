package com.join.kotlin.ui.cloudarchive.dialog;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.yl0;
import com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle;
import com.join.mgps.activity.TagGameListActivity_;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0012H\u0016J\u000e\u0010$\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fJ\u000e\u0010+\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020&J\u001a\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010%\u001a\u00020&X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00061"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ModDelArchiveDialogBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ModDelArchiveDialogBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ModDelArchiveDialogBinding;)V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onClick", "v", "listener", "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V", "setClickDelDialogListener", "dialogData", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "getDialogData", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "setDialogData", "(Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;)V", "setDatas", "show", "manager", "Landroidx/fragment/app/FragmentManager;", TagGameListActivity_.TAG_EXTRA, "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DelArchiveDialog extends DialogFragment implements View.OnClickListener {
    public yl0 dataBinding;
    public DialogData dialogData;
    public ClickDelDialogListener listener;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DelArchiveDialog.viewModle_delegate$lambda$0(this.f48966b);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final DelArchiveDialogViewModle viewModle_delegate$lambda$0(DelArchiveDialog delArchiveDialog) {
        return (DelArchiveDialogViewModle) new ViewModelProvider(delArchiveDialog, new ViewModelProvider.NewInstanceFactory()).get(DelArchiveDialogViewModle.class);
    }

    @NotNull
    public final yl0 getDataBinding() {
        yl0 yl0Var = this.dataBinding;
        if (yl0Var != null) {
            return yl0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    @NotNull
    public final DialogData getDialogData() {
        DialogData dialogData = this.dialogData;
        if (dialogData != null) {
            return dialogData;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dialogData");
        return null;
    }

    @NotNull
    public final ClickDelDialogListener getListener() {
        ClickDelDialogListener clickDelDialogListener = this.listener;
        if (clickDelDialogListener != null) {
            return clickDelDialogListener;
        }
        Intrinsics.throwUninitializedPropertyAccessException("listener");
        return null;
    }

    @NotNull
    public final DelArchiveDialogViewModle getViewModle() {
        return (DelArchiveDialogViewModle) this.viewModle.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.okButn) {
            getListener().onClickOkButn();
        } else if (numValueOf != null && numValueOf.intValue() == R.id.cancelBtn) {
            getListener().onClickCancleButn();
        } else if (numValueOf != null && numValueOf.intValue() == R.id.closed) {
            dismiss();
        }
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setDataBinding((yl0) DataBindingUtil.inflate(inflater, R.layout.mod_del_archive_dialog, container, false));
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(8, this);
        getViewModle().getDialogData().setValue(getDialogData());
        return getDataBinding().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
    }

    public final void setClickDelDialogListener(@NotNull ClickDelDialogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        setListener(listener);
    }

    public final void setDataBinding(@NotNull yl0 yl0Var) {
        Intrinsics.checkNotNullParameter(yl0Var, "<set-?>");
        this.dataBinding = yl0Var;
    }

    public final void setDatas(@NotNull DialogData dialogData) {
        Intrinsics.checkNotNullParameter(dialogData, "dialogData");
        setDialogData(dialogData);
    }

    public final void setDialogData(@NotNull DialogData dialogData) {
        Intrinsics.checkNotNullParameter(dialogData, "<set-?>");
        this.dialogData = dialogData;
    }

    public final void setListener(@NotNull ClickDelDialogListener clickDelDialogListener) {
        Intrinsics.checkNotNullParameter(clickDelDialogListener, "<set-?>");
        this.listener = clickDelDialogListener;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        super.show(manager, tag);
    }
}
