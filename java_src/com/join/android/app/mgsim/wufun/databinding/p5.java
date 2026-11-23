package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.VASingleGameViewModle;

/* JADX INFO: loaded from: classes4.dex */
public class p5 extends o5 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts F;

    @Nullable
    private static final SparseIntArray G;

    @Nullable
    private final c7 A;

    @NonNull
    private final LinearLayout B;

    @Nullable
    private final va0 C;

    @Nullable
    private final View.OnClickListener D;
    private long E;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43230y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43231z;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(26);
        F = includedLayouts;
        includedLayouts.setIncludes(4, new String[]{"bindding_load_layout_include"}, new int[]{8}, new int[]{R.layout.bindding_load_layout_include});
        SparseIntArray sparseIntArray = new SparseIntArray();
        G = sparseIntArray;
        sparseIntArray.put(R.id.ll_title, 9);
        sparseIntArray.put(R.id.ll_mod_start, 10);
        sparseIntArray.put(R.id.cl_mod, 11);
        sparseIntArray.put(R.id.iv_mod_play, 12);
        sparseIntArray.put(R.id.tv_mod_start, 13);
        sparseIntArray.put(R.id.tv_mod_type, 14);
        sparseIntArray.put(R.id.tv_mod_status, 15);
        sparseIntArray.put(R.id.tv_new_version, 16);
        sparseIntArray.put(R.id.sdv_mod_dot, 17);
        sparseIntArray.put(R.id.tv_mod_install_status, 18);
        sparseIntArray.put(R.id.ll_stand_start, 19);
        sparseIntArray.put(R.id.tv_stand_type, 20);
        sparseIntArray.put(R.id.iv_stand_font, 21);
        sparseIntArray.put(R.id.tv_stand_status, 22);
        sparseIntArray.put(R.id.tv_stand_new_version, 23);
        sparseIntArray.put(R.id.tabLayout, 24);
        sparseIntArray.put(R.id.viewPager, 25);
    }

    public p5(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 26, F, G));
    }

    private boolean w(MutableLiveData<String> ViewModleBackGroundURl, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.E |= 1;
        }
        return true;
    }

    private boolean x(MutableLiveData<String> ViewModleGameName, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.E |= 4;
        }
        return true;
    }

    private boolean y(MutableLiveData<LoadBindindData> ViewModleLoadBindData, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.E |= 2;
        }
        return true;
    }

    private boolean z(MutableLiveData<Integer> ViewModleShowStatus, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.E |= 8;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        VASingleGameViewModle vASingleGameViewModle = this.f42670x;
        if (vASingleGameViewModle != null) {
            vASingleGameViewModle.onClickView(callbackArg_0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    /* JADX WARN: Code duplicated, block: B:34:0x0072  */
    /* JADX WARN: Code duplicated, block: B:56:0x00aa A[PHI: r2
      0x00aa: PHI (r2v3 long) = (r2v0 long), (r2v4 long) binds: [B:36:0x0079, B:53:0x00a4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        String value;
        LoadBindindData value2;
        String value3;
        synchronized (this) {
            j10 = this.E;
            this.E = 0L;
        }
        LoadBindClickProxy loadBindClickProxy = this.f42669w;
        VASingleGameViewModle vASingleGameViewModle = this.f42670x;
        if ((111 & j10) != 0) {
            if ((j10 & 97) == 0) {
                value = null;
            } else {
                MutableLiveData<String> backGroundURl = vASingleGameViewModle != null ? vASingleGameViewModle.getBackGroundURl() : null;
                updateLiveDataRegistration(0, backGroundURl);
                if (backGroundURl != null) {
                    value = backGroundURl.getValue();
                } else {
                    value = null;
                }
            }
            if ((j10 & 98) == 0) {
                value2 = null;
            } else {
                MutableLiveData<LoadBindindData> loadBindData = vASingleGameViewModle != null ? vASingleGameViewModle.getLoadBindData() : null;
                updateLiveDataRegistration(1, loadBindData);
                if (loadBindData != null) {
                    value2 = loadBindData.getValue();
                } else {
                    value2 = null;
                }
            }
            if ((j10 & 100) == 0) {
                value3 = null;
            } else {
                MutableLiveData<String> gameName = vASingleGameViewModle != null ? vASingleGameViewModle.getGameName() : null;
                updateLiveDataRegistration(2, gameName);
                if (gameName != null) {
                    value3 = gameName.getValue();
                } else {
                    value3 = null;
                }
            }
            long j11 = j10 & 104;
            if (j11 == 0) {
                i10 = 0;
            } else {
                MutableLiveData<Integer> showStatus = vASingleGameViewModle != null ? vASingleGameViewModle.getShowStatus() : null;
                updateLiveDataRegistration(3, showStatus);
                boolean z10 = ViewDataBinding.safeUnbox(showStatus != null ? showStatus.getValue() : null) == 1;
                if (j11 != 0) {
                    j10 |= z10 ? 256L : 128L;
                }
                if (z10) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
            }
        } else {
            i10 = 0;
            value = null;
            value2 = null;
            value3 = null;
        }
        if ((j10 & 64) != 0) {
            this.f42649c.setOnClickListener(this.D);
        }
        if ((j10 & 98) != 0) {
            this.A.t(value2);
        }
        if ((80 & j10) != 0) {
            this.A.u(loadBindClickProxy);
        }
        if ((104 & j10) != 0) {
            this.f42655i.setVisibility(i10);
        }
        if ((j10 & 97) != 0) {
            SimpleDrawableViewKt.loadUrl(this.f42656j, value, null, 0);
        }
        if ((j10 & 100) != 0) {
            this.f42659m.setText(value3);
        }
        ViewDataBinding.executeBindingsOn(this.A);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.E != 0) {
                return true;
            }
            return this.A.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.E = 64L;
        }
        this.A.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return w((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return y((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 2) {
            return x((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 3) {
            return false;
        }
        return z((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.A.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (30 == variableId) {
            t((LoadBindClickProxy) variable);
        } else {
            if (50 != variableId) {
                return false;
            }
            u((VASingleGameViewModle) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o5
    public void t(@Nullable LoadBindClickProxy LoadBindProxy) {
        this.f42669w = LoadBindProxy;
        synchronized (this) {
            this.E |= 16;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.o5
    public void u(@Nullable VASingleGameViewModle ViewModle) {
        this.f42670x = ViewModle;
        synchronized (this) {
            this.E |= 32;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    private p5(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 4, (ConstraintLayout) bindings[11], (ImageView) bindings[2], (ImageView) bindings[12], (ImageView) bindings[21], (LinearLayout) bindings[10], (LinearLayout) bindings[19], (LinearLayout) bindings[9], (LinearLayout) bindings[6], (SimpleDraweeView) bindings[1], (SimpleDraweeView) bindings[17], (TabLayout) bindings[24], (TextView) bindings[3], (TextView) bindings[18], (TextView) bindings[13], (TextView) bindings[15], (TextView) bindings[14], (TextView) bindings[16], (TextView) bindings[23], (TextView) bindings[22], (TextView) bindings[20], (ViewPager) bindings[25]);
        this.E = -1L;
        this.f42649c.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f43230y = relativeLayout;
        relativeLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[4];
        this.f43231z = linearLayout;
        linearLayout.setTag(null);
        c7 c7Var = (c7) bindings[8];
        this.A = c7Var;
        setContainedBinding(c7Var);
        LinearLayout linearLayout2 = (LinearLayout) bindings[5];
        this.B = linearLayout2;
        linearLayout2.setTag(null);
        Object obj = bindings[7];
        this.C = obj != null ? va0.bind((View) obj) : null;
        this.f42655i.setTag(null);
        this.f42656j.setTag(null);
        this.f42659m.setTag(null);
        setRootTag(root);
        this.D = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        invalidateAll();
    }
}
