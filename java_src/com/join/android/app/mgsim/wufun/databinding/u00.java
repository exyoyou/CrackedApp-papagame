package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.CompoundButtonBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.kotlin.bindingadapter.ImageViewExtKt;
import com.join.kotlin.ui.endgame.adapter.ISlotAdapterListener;
import com.join.mgps.dto.ArchiveListBean;

/* JADX INFO: loaded from: classes4.dex */
public class u00 extends t00 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f45503n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f45504o = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final ImageView f45506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45507g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    private final TextView f45508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    private final CheckBox f45509i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45510j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45511k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f45512l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f45513m;

    public u00(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f45503n, f45504o));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            ArchiveListBean archiveListBean = this.f45066c;
            ISlotAdapterListener iSlotAdapterListener = this.f45067d;
            if (iSlotAdapterListener != null) {
                iSlotAdapterListener.onItemCheckedChanged(archiveListBean);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            ArchiveListBean archiveListBean2 = this.f45066c;
            ISlotAdapterListener iSlotAdapterListener2 = this.f45067d;
            if (iSlotAdapterListener2 != null) {
                iSlotAdapterListener2.onItemCheckedChanged(archiveListBean2);
                return;
            }
            return;
        }
        if (sourceId != 3) {
            return;
        }
        ArchiveListBean archiveListBean3 = this.f45066c;
        ISlotAdapterListener iSlotAdapterListener3 = this.f45067d;
        if (iSlotAdapterListener3 != null) {
            iSlotAdapterListener3.onItemCheckedChanged(archiveListBean3);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String archiveName;
        String archiveCover;
        int isCheck;
        synchronized (this) {
            j10 = this.f45513m;
            this.f45513m = 0L;
        }
        ArchiveListBean archiveListBean = this.f45066c;
        long j11 = 5 & j10;
        String addTime = null;
        boolean z10 = false;
        if (j11 != 0) {
            if (archiveListBean != null) {
                isCheck = archiveListBean.getIsCheck();
                addTime = archiveListBean.getAddTime();
                archiveName = archiveListBean.getArchiveName();
                archiveCover = archiveListBean.getArchiveCover();
            } else {
                archiveCover = null;
                archiveName = null;
                isCheck = 0;
            }
            z10 = isCheck == 1;
            String str2 = addTime;
            addTime = archiveCover;
            str = str2;
        } else {
            str = null;
            archiveName = null;
        }
        if (j11 != 0) {
            ImageViewExtKt.loadUri(this.f45506f, addTime);
            TextViewBindingAdapter.setText(this.f45508h, archiveName);
            CompoundButtonBindingAdapter.setChecked(this.f45509i, z10);
            TextViewBindingAdapter.setText(this.f45065b, str);
        }
        if ((j10 & 4) != 0) {
            this.f45506f.setOnClickListener(this.f45510j);
            this.f45507g.setOnClickListener(this.f45511k);
            this.f45509i.setOnClickListener(this.f45512l);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f45513m != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f45513m = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 == variableId) {
            t((ArchiveListBean) variable);
        } else {
            if (29 != variableId) {
                return false;
            }
            u((ISlotAdapterListener) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t00
    public void t(@Nullable ArchiveListBean ItemData) {
        this.f45066c = ItemData;
        synchronized (this) {
            this.f45513m |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.t00
    public void u(@Nullable ISlotAdapterListener Listener) {
        this.f45067d = Listener;
        synchronized (this) {
            this.f45513m |= 2;
        }
        notifyPropertyChanged(29);
        super.requestRebind();
    }

    private u00(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[4]);
        this.f45513m = -1L;
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f45505e = linearLayout;
        linearLayout.setTag(null);
        ImageView imageView = (ImageView) bindings[1];
        this.f45506f = imageView;
        imageView.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[2];
        this.f45507g = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[3];
        this.f45508h = textView;
        textView.setTag(null);
        CheckBox checkBox = (CheckBox) bindings[5];
        this.f45509i = checkBox;
        checkBox.setTag(null);
        this.f45065b.setTag(null);
        setRootTag(root);
        this.f45510j = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f45511k = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f45512l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        invalidateAll();
    }
}
