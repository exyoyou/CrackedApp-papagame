package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.customview.LoadingImageView;

/* JADX INFO: loaded from: classes4.dex */
public class d7 extends c7 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f37307u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f37308v;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37309q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f37310r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f37311s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long f37312t;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f37308v = sparseIntArray;
        sparseIntArray.put(R.id.loading_view, 6);
        sparseIntArray.put(R.id.textView2, 7);
        sparseIntArray.put(R.id.failedMessage, 8);
        sparseIntArray.put(R.id.lodingBackImage, 9);
        sparseIntArray.put(R.id.setting, 10);
        sparseIntArray.put(R.id.noneReloadImage, 11);
        sparseIntArray.put(R.id.noneMessage, 12);
        sparseIntArray.put(R.id.setAll, 13);
    }

    public d7(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 14, f37307u, f37308v));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            LoadBindClickProxy loadBindClickProxy = this.f36806p;
            if (loadBindClickProxy != null) {
                loadBindClickProxy.onClickReload();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        LoadBindClickProxy loadBindClickProxy2 = this.f36806p;
        if (loadBindClickProxy2 != null) {
            loadBindClickProxy2.onClickSetNetWork();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        int i11;
        synchronized (this) {
            j10 = this.f37312t;
            this.f37312t = 0L;
        }
        LoadBindindData loadBindindData = this.f36805o;
        long j11 = j10 & 6;
        int i12 = 0;
        if (j11 != 0) {
            int showStatus = loadBindindData != null ? loadBindindData.getShowStatus() : 0;
            boolean z10 = showStatus == 4;
            boolean z11 = showStatus == 2;
            boolean z12 = showStatus == 3;
            if (j11 != 0) {
                j10 |= z10 ? 16L : 8L;
            }
            if ((j10 & 6) != 0) {
                j10 |= z11 ? 256L : 128L;
            }
            if ((j10 & 6) != 0) {
                j10 |= z12 ? 64L : 32L;
            }
            int i13 = z10 ? 0 : 8;
            i11 = z11 ? 0 : 8;
            i10 = z12 ? 0 : 8;
            i12 = i13;
        } else {
            i10 = 0;
            i11 = 0;
        }
        if ((6 & j10) != 0) {
            this.f36793c.setVisibility(i12);
            this.f36796f.setVisibility(i10);
            this.f36797g.setVisibility(i11);
        }
        if ((j10 & 4) != 0) {
            this.f36800j.setOnClickListener(this.f37311s);
            this.f36802l.setOnClickListener(this.f37310r);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f37312t != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f37312t = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (30 == variableId) {
            u((LoadBindClickProxy) variable);
        } else {
            if (6 != variableId) {
                return false;
            }
            t((LoadBindindData) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.c7
    public void t(@Nullable LoadBindindData BindingData) {
        this.f36805o = BindingData;
        synchronized (this) {
            this.f37312t |= 2;
        }
        notifyPropertyChanged(6);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.c7
    public void u(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f36806p = LoadBindProxy;
        synchronized (this) {
            this.f37312t |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    private d7(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[8], (LinearLayout) bindings[5], (LoadingImageView) bindings[6], (ImageView) bindings[9], (LinearLayout) bindings[2], (LinearLayout) bindings[1], (TextView) bindings[12], (ImageView) bindings[11], (ImageView) bindings[3], (TextView) bindings[13], (Button) bindings[4], (TextView) bindings[10], (TextView) bindings[7]);
        this.f37312t = -1L;
        this.f36793c.setTag(null);
        this.f36796f.setTag(null);
        this.f36797g.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f37309q = relativeLayout;
        relativeLayout.setTag(null);
        this.f36800j.setTag(null);
        this.f36802l.setTag(null);
        setRootTag(root);
        this.f37310r = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f37311s = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
