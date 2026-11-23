package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;

/* JADX INFO: loaded from: classes4.dex */
public class bz extends az {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36653g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36654h = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final FrameLayout f36655c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final View f36656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final View f36657e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f36658f;

    public bz(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f36653g, f36654h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        long j11;
        long j12;
        synchronized (this) {
            j10 = this.f36658f;
            this.f36658f = 0L;
        }
        Boolean bool = this.f36116b;
        long j13 = j10 & 3;
        int i11 = 0;
        if (j13 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j13 != 0) {
                if (zSafeUnbox) {
                    j11 = j10 | 8;
                    j12 = 32;
                } else {
                    j11 = j10 | 4;
                    j12 = 16;
                }
                j10 = j11 | j12;
            }
            i10 = zSafeUnbox ? 0 : 8;
            if (zSafeUnbox) {
                i11 = 8;
            }
        } else {
            i10 = 0;
        }
        if ((j10 & 3) != 0) {
            this.f36656d.setVisibility(i11);
            this.f36657e.setVisibility(i10);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36658f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36658f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.az
    public void n(@Nullable Boolean IsSelected) {
        this.f36116b = IsSelected;
        synchronized (this) {
            this.f36658f |= 1;
        }
        notifyPropertyChanged(23);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (23 != variableId) {
            return false;
        }
        n((Boolean) variable);
        return true;
    }

    private bz(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0);
        this.f36658f = -1L;
        FrameLayout frameLayout = (FrameLayout) bindings[0];
        this.f36655c = frameLayout;
        frameLayout.setTag(null);
        View view = (View) bindings[1];
        this.f36656d = view;
        view.setTag(null);
        View view2 = (View) bindings[2];
        this.f36657e = view2;
        view2.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
