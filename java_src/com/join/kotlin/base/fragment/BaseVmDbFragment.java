package com.join.kotlin.base.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import com.join.kotlin.base.ext.ViewBindUtilKt;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016R\u0012\u0010\n\u001a\u0004\u0018\u00018\u0001X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0011\u0010\f\u001a\u00028\u00018F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u000f\u001a\u0004\u0018\u00018\u00018DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/base/fragment/BaseVmDbFragment;", "VM", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "DB", "Landroidx/databinding/ViewDataBinding;", "Lcom/join/kotlin/base/fragment/BaseVmFragment;", "<init>", "()V", "layoutId", "", "_binding", "Landroidx/databinding/ViewDataBinding;", "mDatabind", "getMDatabind", "()Landroidx/databinding/ViewDataBinding;", "bindingOrNull", "getBindingOrNull", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseVmDbFragment<VM extends BaseViewModel, DB extends ViewDataBinding> extends BaseVmFragment<VM> {

    @Nullable
    private DB _binding;

    @Nullable
    protected final DB getBindingOrNull() {
        return this._binding;
    }

    @NotNull
    public final DB getMDatabind() {
        DB db2 = this._binding;
        Intrinsics.checkNotNull(db2);
        return db2;
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment
    public int layoutId() {
        return 0;
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this._binding = (DB) ViewBindUtilKt.inflateWithGeneric(this, inflater, container, false);
        return getMDatabind().getRoot();
    }

    @Override // com.join.kotlin.base.fragment.BaseVmFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this._binding = null;
    }
}
