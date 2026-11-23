package com.join.kotlin.ui.base;

import android.util.SparseArray;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/join/kotlin/ui/base/DataBindingConfig;", "", "layout", "", "vmVariableId", "stateViewModle", "Landroidx/lifecycle/ViewModel;", "<init>", "(IILandroidx/lifecycle/ViewModel;)V", "getLayout", "()I", "getVmVariableId", "getStateViewModle", "()Landroidx/lifecycle/ViewModel;", "bindingParms", "Landroid/util/SparseArray;", "getBindingParms", "()Landroid/util/SparseArray;", "setBindingParms", "(Landroid/util/SparseArray;)V", "addBindingParam", "variableId", "any", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DataBindingConfig {

    @NotNull
    private SparseArray<Object> bindingParms;
    private final int layout;

    @NotNull
    private final ViewModel stateViewModle;
    private final int vmVariableId;

    public DataBindingConfig(int i10, int i11, @NotNull ViewModel stateViewModle) {
        Intrinsics.checkNotNullParameter(stateViewModle, "stateViewModle");
        this.layout = i10;
        this.vmVariableId = i11;
        this.stateViewModle = stateViewModle;
        this.bindingParms = new SparseArray<>();
    }

    @NotNull
    public final DataBindingConfig addBindingParam(int variableId, @NotNull Object any) {
        Intrinsics.checkNotNullParameter(any, "any");
        if (this.bindingParms.get(variableId) == null) {
            this.bindingParms.put(variableId, any);
        }
        return this;
    }

    @NotNull
    public final SparseArray<Object> getBindingParms() {
        return this.bindingParms;
    }

    public final int getLayout() {
        return this.layout;
    }

    @NotNull
    public final ViewModel getStateViewModle() {
        return this.stateViewModle;
    }

    public final int getVmVariableId() {
        return this.vmVariableId;
    }

    public final void setBindingParms(@NotNull SparseArray<Object> sparseArray) {
        Intrinsics.checkNotNullParameter(sparseArray, "<set-?>");
        this.bindingParms = sparseArray;
    }
}
