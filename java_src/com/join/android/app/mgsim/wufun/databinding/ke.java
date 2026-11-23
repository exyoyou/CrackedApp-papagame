package com.join.android.app.mgsim.wufun.databinding;

import android.text.Spanned;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;

/* JADX INFO: loaded from: classes4.dex */
public class ke extends je {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f40735q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f40736r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final FrameLayout f40737o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f40738p;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40736r = sparseIntArray;
        sparseIntArray.put(R.id.tv_label_1, 6);
        sparseIntArray.put(R.id.ll_btn_1, 7);
        sparseIntArray.put(R.id.iv_2, 8);
        sparseIntArray.put(R.id.iv_btn_1, 9);
    }

    public ke(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 10, f40735q, f40736r));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.je
    public void B(@Nullable String GameIcon) {
        this.f40200k = GameIcon;
        synchronized (this) {
            this.f40738p |= 2;
        }
        notifyPropertyChanged(19);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.je
    public void C(@Nullable String GameName) {
        this.f40201l = GameName;
        synchronized (this) {
            this.f40738p |= 4;
        }
        notifyPropertyChanged(20);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.je
    public void D(@Nullable Spanned TimeStr) {
        this.f40202m = TimeStr;
        synchronized (this) {
            this.f40738p |= 8;
        }
        notifyPropertyChanged(42);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.je
    public void E(@Nullable Boolean TimeVisible) {
        this.f40203n = TimeVisible;
        synchronized (this) {
            this.f40738p |= 1;
        }
        notifyPropertyChanged(43);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002f A[PHI: r2
      0x002f: PHI (r2v1 long) = (r2v0 long), (r2v5 long) binds: [B:7:0x0019, B:14:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        String str;
        synchronized (this) {
            j10 = this.f40738p;
            this.f40738p = 0L;
        }
        Boolean bool = this.f40203n;
        String str2 = this.f40200k;
        String str3 = this.f40201l;
        Spanned spanned = this.f40202m;
        long j11 = j10 & 17;
        if (j11 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j11 != 0) {
                j10 |= zSafeUnbox ? 64L : 32L;
            }
            if (zSafeUnbox) {
                i10 = 0;
            } else {
                i10 = 8;
            }
        } else {
            i10 = 0;
        }
        long j12 = 18 & j10;
        long j13 = 20 & j10;
        if (j13 != 0) {
            str = "继续云玩" + str3;
        } else {
            str = null;
        }
        long j14 = j10 & 24;
        if (j12 != 0) {
            SimpleDrawableViewKt.loadUrl(this.f40191b, str2, null, 0);
            SimpleDrawableViewKt.loadUrl(this.f40195f, str2, null, 0);
        }
        if (j13 != 0) {
            TextViewBindingAdapter.setText(this.f40197h, str3);
            TextViewBindingAdapter.setText(this.f40199j, str);
        }
        if (j14 != 0) {
            TextViewBindingAdapter.setText(this.f40198i, spanned);
        }
        if ((j10 & 17) != 0) {
            this.f40198i.setVisibility(i10);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f40738p != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f40738p = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (43 == variableId) {
            E((Boolean) variable);
        } else if (19 == variableId) {
            B((String) variable);
        } else if (20 == variableId) {
            C((String) variable);
        } else {
            if (42 != variableId) {
                return false;
            }
            D((Spanned) variable);
        }
        return true;
    }

    private ke(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[1], (ImageView) bindings[8], (ImageView) bindings[9], (LinearLayout) bindings[7], (SimpleDraweeView) bindings[3], (TextView) bindings[6], (TextView) bindings[2], (TextView) bindings[5], (TextView) bindings[4]);
        this.f40738p = -1L;
        this.f40191b.setTag(null);
        FrameLayout frameLayout = (FrameLayout) bindings[0];
        this.f40737o = frameLayout;
        frameLayout.setTag(null);
        this.f40195f.setTag(null);
        this.f40197h.setTag(null);
        this.f40198i.setTag(null);
        this.f40199j.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
