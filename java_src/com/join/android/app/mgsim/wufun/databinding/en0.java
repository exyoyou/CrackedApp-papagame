package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LifecycleOwner;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.customview.DownloadNormalView;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class en0 extends dn0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f38025o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f38026p;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38027l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final ax0 f38028m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f38029n;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(9);
        f38025o = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"video_dbs_layout"}, new int[]{6}, new int[]{R.layout.video_dbs_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f38026p = sparseIntArray;
        sparseIntArray.put(R.id.tag, 7);
        sparseIntArray.put(R.id.dv_view, 8);
    }

    public en0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 9, f38025o, f38026p));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dn0
    public void A(@Nullable VideoModle VideoData) {
        this.f37552k = VideoData;
        synchronized (this) {
            this.f38029n |= 1;
        }
        notifyPropertyChanged(48);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dn0
    public void B(@Nullable com.join.android.app.component.video.c VideoHelper) {
        this.f37550i = VideoHelper;
        synchronized (this) {
            this.f38029n |= 4;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String info;
        List<String> tags;
        String gameName;
        boolean z10;
        boolean z11;
        int i10;
        int i11;
        String str;
        String str2;
        long j11;
        long j12;
        synchronized (this) {
            j10 = this.f38029n;
            this.f38029n = 0L;
        }
        VideoModle videoModle = this.f37552k;
        MustplayItemBean mustplayItemBean = this.f37551j;
        com.join.android.app.component.video.c cVar = this.f37550i;
        long j13 = j10 & 10;
        if (j13 != 0) {
            if (mustplayItemBean != null) {
                tags = mustplayItemBean.getTags();
                gameName = mustplayItemBean.getGameName();
                info = mustplayItemBean.getInfo();
            } else {
                info = null;
                tags = null;
                gameName = null;
            }
            int size = tags != null ? tags.size() : 0;
            z11 = size > 1;
            z10 = size > 0;
            if (j13 != 0) {
                if (z11) {
                    j11 = j10 | 128;
                    j12 = 512;
                } else {
                    j11 = j10 | 64;
                    j12 = 256;
                }
                j10 = j11 | j12;
            }
            if ((j10 & 10) != 0) {
                j10 = z10 ? j10 | 32 | 2048 : j10 | 16 | 1024;
            }
            int i12 = z11 ? 0 : 8;
            i10 = z10 ? 0 : 8;
            i11 = i12;
        } else {
            info = null;
            tags = null;
            gameName = null;
            z10 = false;
            z11 = false;
            i10 = 0;
            i11 = 0;
        }
        long j14 = j10 & 12;
        String str3 = ((128 & j10) == 0 || tags == null) ? null : (String) ViewDataBinding.getFromList(tags, 1);
        String str4 = ((2048 & j10) == 0 || tags == null) ? null : (String) ViewDataBinding.getFromList(tags, 0);
        long j15 = 10 & j10;
        if (j15 != 0) {
            str = z11 ? str3 : "";
            str2 = z10 ? str4 : "";
        } else {
            str = null;
            str2 = null;
        }
        if (j15 != 0) {
            TextViewBindingAdapter.setText(this.f37543b, str2);
            this.f37543b.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f37544c, str);
            this.f37544c.setVisibility(i11);
            TextViewBindingAdapter.setText(this.f37546e, gameName);
            TextViewBindingAdapter.setText(this.f37547f, info);
        }
        if (j14 != 0) {
            this.f38028m.u(cVar);
        }
        if ((j10 & 9) != 0) {
            this.f38028m.t(videoModle);
        }
        ViewDataBinding.executeBindingsOn(this.f38028m);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f38029n != 0) {
                return true;
            }
            return this.f38028m.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f38029n = 8L;
        }
        this.f38028m.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f38028m.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (48 == variableId) {
            A((VideoModle) variable);
        } else if (11 == variableId) {
            z((MustplayItemBean) variable);
        } else {
            if (49 != variableId) {
                return false;
            }
            B((com.join.android.app.component.video.c) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.dn0
    public void z(@Nullable MustplayItemBean Data) {
        this.f37551j = Data;
        synchronized (this) {
            this.f38029n |= 2;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    private en0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (TextView) bindings[2], (TextView) bindings[3], (DownloadNormalView) bindings[8], (TextView) bindings[4], (TextView) bindings[5], (LinearLayout) bindings[7], (CornersLinearLayout) bindings[1]);
        this.f38029n = -1L;
        this.f37543b.setTag(null);
        this.f37544c.setTag(null);
        this.f37546e.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f38027l = linearLayout;
        linearLayout.setTag(null);
        ax0 ax0Var = (ax0) bindings[6];
        this.f38028m = ax0Var;
        setContainedBinding(ax0Var);
        this.f37547f.setTag(null);
        this.f37549h.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
