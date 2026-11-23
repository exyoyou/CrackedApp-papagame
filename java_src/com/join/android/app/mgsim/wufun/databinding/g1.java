package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.endgame.EndGameSlotViewModel;
import com.join.kotlin.ui.endgame.ISlotListener;
import com.join.mgps.dto.ArchiveListBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class g1 extends f1 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38653o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38654p = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38655k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38656l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f38657m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f38658n;

    public g1(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 6, f38653o, f38654p));
    }

    private boolean F(MutableLiveData<Boolean> ViewModleCommitEnableStatus, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38658n |= 8;
        }
        return true;
    }

    private boolean G(MutableLiveData<String> ViewModleCommitText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38658n |= 4;
        }
        return true;
    }

    private boolean H(MutableLiveData<List<ArchiveListBean>> ViewModleListArchive, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38658n |= 2;
        }
        return true;
    }

    private boolean I(MutableLiveData<LoadBindindData> ViewModleLoadBindData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f38658n |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f1
    public void B(@Nullable RecyclerView.Adapter Adapter) {
        this.f38217h = Adapter;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f1
    public void C(@Nullable ISlotListener Listener) {
        this.f38219j = Listener;
        synchronized (this) {
            this.f38658n |= 32;
        }
        notifyPropertyChanged(29);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f1
    public void D(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f38218i = LoadBindProxy;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.f1
    public void E(@Nullable EndGameSlotViewModel ViewModle) {
        this.f38216g = ViewModle;
        synchronized (this) {
            this.f38658n |= 64;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            ISlotListener iSlotListener = this.f38219j;
            if (iSlotListener != null) {
                iSlotListener.onBack();
                return;
            }
            return;
        }
        if (sourceId != 2) {
            return;
        }
        ISlotListener iSlotListener2 = this.f38219j;
        if (iSlotListener2 != null) {
            iSlotListener2.onCommit();
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x005a A[PHI: r2
      0x005a: PHI (r2v3 long) = (r2v0 long), (r2v9 long) binds: [B:9:0x0023, B:28:0x0054] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:60:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ed  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        List<ArchiveListBean> list;
        String str;
        String value;
        boolean zSafeUnbox;
        int i10;
        int i11;
        List<ArchiveListBean> value2;
        String title;
        MutableLiveData<Boolean> commitEnableStatus;
        MutableLiveData<String> commitText;
        synchronized (this) {
            j10 = this.f38658n;
            this.f38658n = 0L;
        }
        EndGameSlotViewModel endGameSlotViewModel = this.f38216g;
        if ((335 & j10) != 0) {
            long j11 = j10 & 321;
            if (j11 == 0) {
                i10 = 0;
            } else {
                MutableLiveData<LoadBindindData> loadBindData = endGameSlotViewModel != null ? endGameSlotViewModel.getLoadBindData() : null;
                updateLiveDataRegistration(0, loadBindData);
                LoadBindindData value3 = loadBindData != null ? loadBindData.getValue() : null;
                boolean z10 = (value3 != null ? value3.getShowStatus() : 0) == 1;
                if (j11 != 0) {
                    j10 |= z10 ? 4096L : 2048L;
                }
                if (z10) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
            }
            long j12 = j10 & 322;
            if (j12 != 0) {
                MutableLiveData<List<ArchiveListBean>> listArchive = endGameSlotViewModel != null ? endGameSlotViewModel.getListArchive() : null;
                updateLiveDataRegistration(1, listArchive);
                value2 = listArchive != null ? listArchive.getValue() : null;
                boolean z11 = (value2 != null ? value2.size() : 0) > 0;
                if (j12 != 0) {
                    j10 |= z11 ? 1024L : 512L;
                }
                int i12 = z11 ? 8 : 0;
                if ((j10 & 320) != 0 || endGameSlotViewModel == null) {
                    title = null;
                } else {
                    title = endGameSlotViewModel.getTitle();
                }
                if ((j10 & 324) == 0) {
                    value = null;
                } else {
                    if (endGameSlotViewModel != null) {
                        commitText = endGameSlotViewModel.getCommitText();
                    } else {
                        commitText = null;
                    }
                    updateLiveDataRegistration(2, commitText);
                    if (commitText != null) {
                        value = commitText.getValue();
                    } else {
                        value = null;
                    }
                }
                if ((j10 & 328) != 0) {
                    if (endGameSlotViewModel != null) {
                        commitEnableStatus = endGameSlotViewModel.getCommitEnableStatus();
                    } else {
                        commitEnableStatus = null;
                    }
                    updateLiveDataRegistration(3, commitEnableStatus);
                    zSafeUnbox = ViewDataBinding.safeUnbox(commitEnableStatus != null ? commitEnableStatus.getValue() : null);
                } else {
                    zSafeUnbox = false;
                }
                int i13 = i12;
                str = title;
                list = value2;
                i11 = i13;
            } else {
                value2 = null;
            }
            if ((j10 & 320) != 0) {
                title = null;
            } else {
                title = null;
            }
            if ((j10 & 324) == 0) {
                value = null;
            } else {
                if (endGameSlotViewModel != null) {
                    commitText = endGameSlotViewModel.getCommitText();
                } else {
                    commitText = null;
                }
                updateLiveDataRegistration(2, commitText);
                if (commitText != null) {
                    value = commitText.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 328) != 0) {
                if (endGameSlotViewModel != null) {
                    commitEnableStatus = endGameSlotViewModel.getCommitEnableStatus();
                } else {
                    commitEnableStatus = null;
                }
                updateLiveDataRegistration(3, commitEnableStatus);
                zSafeUnbox = ViewDataBinding.safeUnbox(commitEnableStatus != null ? commitEnableStatus.getValue() : null);
            } else {
                zSafeUnbox = false;
            }
            int i14 = i12;
            str = title;
            list = value2;
            i11 = i14;
        } else {
            list = null;
            str = null;
            value = null;
            zSafeUnbox = false;
            i10 = 0;
            i11 = 0;
        }
        if ((j10 & 256) != 0) {
            this.f38211b.setOnClickListener(this.f38656l);
            this.f38214e.setOnClickListener(this.f38657m);
        }
        if ((j10 & 322) != 0) {
            this.f38212c.setVisibility(i11);
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.f38213d, list);
        }
        if ((j10 & 321) != 0) {
            this.f38213d.setVisibility(i10);
        }
        if ((328 & j10) != 0) {
            this.f38214e.setEnabled(zSafeUnbox);
        }
        if ((324 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f38214e, value);
        }
        if ((j10 & 320) != 0) {
            TextViewBindingAdapter.setText(this.f38215f, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f38658n != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38658n = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return I((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return H((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 2) {
            return G((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 3) {
            return false;
        }
        return F((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (30 == variableId) {
            D((LoadBindClickProxy) variable);
            return true;
        }
        if (29 == variableId) {
            C((ISlotListener) variable);
            return true;
        }
        if (50 == variableId) {
            E((EndGameSlotViewModel) variable);
            return true;
        }
        if (1 != variableId) {
            return false;
        }
        B((RecyclerView.Adapter) variable);
        return true;
    }

    private g1(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 4, (ImageView) bindings[1], (LinearLayout) bindings[4], (XRecyclerView) bindings[5], (TextView) bindings[3], (TextView) bindings[2]);
        this.f38658n = -1L;
        this.f38211b.setTag(null);
        this.f38212c.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f38655k = linearLayout;
        linearLayout.setTag(null);
        this.f38213d.setTag(null);
        this.f38214e.setTag(null);
        this.f38215f.setTag(null);
        setRootTag(root);
        this.f38656l = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f38657m = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
