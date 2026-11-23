package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareViewModel;
import com.youth.banner.Banner;

/* JADX INFO: loaded from: classes4.dex */
public class w4 extends v4 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46618y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46619z;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46620s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46621t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46622u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46623v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private InverseBindingListener f46624w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f46625x;

    class a implements InverseBindingListener {
        a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(w4.this.f46040l);
            SourceShareViewModel sourceShareViewModel = w4.this.f46045q;
            if (sourceShareViewModel != null) {
                MutableLiveData<String> searchKeyword = sourceShareViewModel.getSearchKeyword();
                if (searchKeyword != null) {
                    searchKeyword.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f46619z = sparseIntArray;
        sparseIntArray.put(R.id.main_content, 7);
        sparseIntArray.put(R.id.appBarLayout, 8);
        sparseIntArray.put(R.id.banner_view, 9);
        sparseIntArray.put(R.id.lLayout_search, 10);
        sparseIntArray.put(R.id.iv_search, 11);
        sparseIntArray.put(R.id.divider, 12);
        sparseIntArray.put(R.id.searchClear, 13);
        sparseIntArray.put(R.id.tabLayout, 14);
        sparseIntArray.put(R.id.viewPager, 15);
    }

    public w4(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 16, f46618y, f46619z));
    }

    private boolean w(MutableLiveData<String> VmSearchKeyword, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f46625x |= 4;
        }
        return true;
    }

    private boolean x(MutableLiveData<Boolean> VmShowBanner, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f46625x |= 2;
        }
        return true;
    }

    private boolean y(MutableLiveData<String> VmTitle, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f46625x |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            SourceShareClickProxy sourceShareClickProxy = this.f46046r;
            if (sourceShareClickProxy != null) {
                sourceShareClickProxy.onBackClick();
                return;
            }
            return;
        }
        if (sourceId == 2) {
            SourceShareClickProxy sourceShareClickProxy2 = this.f46046r;
            if (sourceShareClickProxy2 != null) {
                sourceShareClickProxy2.onShareClick();
                return;
            }
            return;
        }
        if (sourceId != 3) {
            return;
        }
        SourceShareClickProxy sourceShareClickProxy3 = this.f46046r;
        if (sourceShareClickProxy3 != null) {
            sourceShareClickProxy3.onSearchClick();
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    /* JADX WARN: Code duplicated, block: B:35:0x0068 A[PHI: r2
      0x0068: PHI (r2v3 long) = (r2v0 long), (r2v5 long) binds: [B:18:0x003a, B:32:0x0062] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x0084  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String value;
        String value2;
        int i10;
        synchronized (this) {
            j10 = this.f46625x;
            this.f46625x = 0L;
        }
        SourceShareViewModel sourceShareViewModel = this.f46045q;
        if ((47 & j10) != 0) {
            if ((j10 & 41) == 0) {
                value2 = null;
            } else {
                MutableLiveData<String> title = sourceShareViewModel != null ? sourceShareViewModel.getTitle() : null;
                updateLiveDataRegistration(0, title);
                if (title != null) {
                    value2 = title.getValue();
                } else {
                    value2 = null;
                }
            }
            long j11 = j10 & 42;
            if (j11 == 0) {
                i10 = 0;
            } else {
                MutableLiveData<Boolean> showBanner = sourceShareViewModel != null ? sourceShareViewModel.getShowBanner() : null;
                updateLiveDataRegistration(1, showBanner);
                boolean zSafeUnbox = ViewDataBinding.safeUnbox(showBanner != null ? showBanner.getValue() : null);
                if (j11 != 0) {
                    j10 |= zSafeUnbox ? 128L : 64L;
                }
                if (zSafeUnbox) {
                    i10 = 0;
                } else {
                    i10 = 8;
                }
            }
            if ((j10 & 44) == 0) {
                value = null;
            } else {
                MutableLiveData<String> searchKeyword = sourceShareViewModel != null ? sourceShareViewModel.getSearchKeyword() : null;
                updateLiveDataRegistration(2, searchKeyword);
                if (searchKeyword != null) {
                    value = searchKeyword.getValue();
                } else {
                    value = null;
                }
            }
        } else {
            value = null;
            value2 = null;
            i10 = 0;
        }
        if ((32 & j10) != 0) {
            this.f46031c.setOnClickListener(this.f46622u);
            this.f46036h.setOnClickListener(this.f46623v);
            TextViewBindingAdapter.setTextWatcher(this.f46040l, null, null, null, this.f46624w);
            this.f46043o.setOnClickListener(this.f46621t);
        }
        if ((42 & j10) != 0) {
            this.f46033e.setVisibility(i10);
        }
        if ((j10 & 44) != 0) {
            TextViewBindingAdapter.setText(this.f46040l, value);
        }
        if ((j10 & 41) != 0) {
            TextViewBindingAdapter.setText(this.f46042n, value2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46625x != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46625x = 32L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId == 0) {
            return y((MutableLiveData) object, fieldId);
        }
        if (localFieldId == 1) {
            return x((MutableLiveData) object, fieldId);
        }
        if (localFieldId != 2) {
            return false;
        }
        return w((MutableLiveData) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            u((SourceShareViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((SourceShareClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v4
    public void t(@Nullable SourceShareClickProxy Click) {
        this.f46046r = Click;
        synchronized (this) {
            this.f46625x |= 16;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v4
    public void u(@Nullable SourceShareViewModel Vm) {
        this.f46045q = Vm;
        synchronized (this) {
            this.f46625x |= 8;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private w4(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 3, (AppBarLayout) bindings[8], (ImageView) bindings[1], (Banner) bindings[9], (CollapsingToolbarLayout) bindings[4], (View) bindings[12], (ImageView) bindings[11], (ImageView) bindings[3], (RelativeLayout) bindings[10], (CoordinatorLayout) bindings[7], (ImageView) bindings[13], (EditText) bindings[5], (TabLayout) bindings[14], (TextView) bindings[2], (TextView) bindings[6], (ViewPager) bindings[15]);
        this.f46624w = new a();
        this.f46625x = -1L;
        this.f46031c.setTag(null);
        this.f46033e.setTag(null);
        this.f46036h.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f46620s = linearLayout;
        linearLayout.setTag(null);
        this.f46040l.setTag(null);
        this.f46042n.setTag(null);
        this.f46043o.setTag(null);
        setRootTag(root);
        this.f46621t = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f46622u = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f46623v = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
