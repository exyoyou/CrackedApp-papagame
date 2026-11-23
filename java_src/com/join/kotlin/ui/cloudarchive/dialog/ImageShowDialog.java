package com.join.kotlin.ui.cloudarchive.dialog;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.pv;
import com.join.mgps.activity.TagGameListActivity_;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00172\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010!\u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010\u0017H\u0016J\u000e\u0010)\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$J\u0010\u00100\u001a\u00020\u001f2\b\u00101\u001a\u0004\u0018\u00010+J\u001a\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010+H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006R\u001a\u0010\n\u001a\u00020\u000bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00118FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010#\u001a\u00020$X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010*\u001a\u0004\u0018\u00010+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00066"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/View$OnClickListener;", "orientation", "", "<init>", "(I)V", "getOrientation", "()I", "setOrientation", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ImageShowDialogBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ImageShowDialogBinding;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ImageShowDialogBinding;)V", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;", "viewModle$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "onClick", "v", "listener", "Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/dialog/ClickDelDialogListener;)V", "setClickDelDialogListener", "imagePath", "", "getImagePath", "()Ljava/lang/String;", "setImagePath", "(Ljava/lang/String;)V", "setImageDialogPath", "imagePathx", "show", "manager", "Landroidx/fragment/app/FragmentManager;", TagGameListActivity_.TAG_EXTRA, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageShowDialog extends DialogFragment implements View.OnClickListener {
    public pv dataBinding;

    @Nullable
    private String imagePath;
    public ClickDelDialogListener listener;
    private int orientation;

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle;

    public ImageShowDialog() {
        this(0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageDialogViewmodle viewModle_delegate$lambda$0(ImageShowDialog imageShowDialog) {
        return (ImageDialogViewmodle) new ViewModelProvider(imageShowDialog, new ViewModelProvider.NewInstanceFactory()).get(ImageDialogViewmodle.class);
    }

    @NotNull
    public final pv getDataBinding() {
        pv pvVar = this.dataBinding;
        if (pvVar != null) {
            return pvVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        return null;
    }

    @Nullable
    public final String getImagePath() {
        return this.imagePath;
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

    public final int getOrientation() {
        return this.orientation;
    }

    @NotNull
    public final ImageDialogViewmodle getViewModle() {
        return (ImageDialogViewmodle) this.viewModle.getValue();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.closed) {
            dismiss();
        }
        dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        setDataBinding((pv) DataBindingUtil.inflate(inflater, R.layout.image_show_dialog, container, false));
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(8, this);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null) {
            dialog2.setCanceledOnTouchOutside(true);
        }
        getViewModle().getImagePath().setValue(this.imagePath);
        getViewModle().getOrientation().setValue(Integer.valueOf(this.orientation));
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

    public final void setDataBinding(@NotNull pv pvVar) {
        Intrinsics.checkNotNullParameter(pvVar, "<set-?>");
        this.dataBinding = pvVar;
    }

    public final void setImageDialogPath(@Nullable String imagePathx) {
        this.imagePath = imagePathx;
    }

    public final void setImagePath(@Nullable String str) {
        this.imagePath = str;
    }

    public final void setListener(@NotNull ClickDelDialogListener clickDelDialogListener) {
        Intrinsics.checkNotNullParameter(clickDelDialogListener, "<set-?>");
        this.listener = clickDelDialogListener;
    }

    public final void setOrientation(int i10) {
        this.orientation = i10;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NotNull FragmentManager manager, @Nullable String tag) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        manager.beginTransaction().remove(this).commit();
        super.show(manager, tag);
    }

    public ImageShowDialog(int i10) {
        this.orientation = i10;
        this.viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.dialog.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ImageShowDialog.viewModle_delegate$lambda$0(this.f48971b);
            }
        });
    }

    public /* synthetic */ ImageShowDialog(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
