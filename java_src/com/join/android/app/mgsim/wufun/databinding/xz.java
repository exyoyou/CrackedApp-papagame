package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.discount.model.bean.GameServerInfoBean;
import com.join.kotlin.discount.proxy.GameDetailServerBookDialogClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class xz extends wz {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47487i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47488j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    private final TextView f47490f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final TextView f47491g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f47492h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47488j = sparseIntArray;
        sparseIntArray.put(R.id.redPoint, 3);
    }

    public xz(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f47487i, f47488j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int colorFromResource;
        String str;
        int colorFromResource2;
        String str2;
        String serverName;
        String times_suffix;
        String server_name;
        long j11;
        long j12;
        synchronized (this) {
            j10 = this.f47492h;
            this.f47492h = 0L;
        }
        GameServerInfoBean gameServerInfoBean = this.f47018c;
        long j13 = j10 & 5;
        String str3 = null;
        Boolean bool = null;
        if (j13 != 0) {
            if (gameServerInfoBean != null) {
                String times = gameServerInfoBean.getTimes();
                Boolean expire = gameServerInfoBean.getExpire();
                times_suffix = gameServerInfoBean.getTimes_suffix();
                server_name = gameServerInfoBean.getServer_name();
                serverName = gameServerInfoBean.getServerName();
                str2 = times;
                bool = expire;
            } else {
                str2 = null;
                serverName = null;
                times_suffix = null;
                server_name = null;
            }
            String str4 = str2 + times_suffix;
            boolean z10 = !ViewDataBinding.safeUnbox(bool);
            String str5 = (serverName + " ") + server_name;
            if (j13 != 0) {
                if (z10) {
                    j11 = j10 | 16;
                    j12 = 64;
                } else {
                    j11 = j10 | 8;
                    j12 = 32;
                }
                j10 = j11 | j12;
            }
            TextView textView = this.f47490f;
            colorFromResource = z10 ? ViewDataBinding.getColorFromResource(textView, R.color.textBlack) : ViewDataBinding.getColorFromResource(textView, R.color.textGrey);
            colorFromResource2 = z10 ? ViewDataBinding.getColorFromResource(this.f47491g, R.color.textA3Black) : ViewDataBinding.getColorFromResource(this.f47491g, R.color.textGrey);
            str3 = str4;
            str = str5;
        } else {
            colorFromResource = 0;
            str = null;
            colorFromResource2 = 0;
        }
        if ((j10 & 5) != 0) {
            TextViewBindingAdapter.setText(this.f47490f, str3);
            this.f47490f.setTextColor(colorFromResource);
            TextViewBindingAdapter.setText(this.f47491g, str);
            this.f47491g.setTextColor(colorFromResource2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47492h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47492h = 4L;
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
            u((GameServerInfoBean) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailServerBookDialogClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wz
    public void t(@Nullable GameDetailServerBookDialogClickProxy Click) {
        this.f47019d = Click;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.wz
    public void u(@Nullable GameServerInfoBean ItemData) {
        this.f47018c = ItemData;
        synchronized (this) {
            this.f47492h |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private xz(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (View) bindings[3]);
        this.f47492h = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f47489e = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f47490f = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[2];
        this.f47491g = textView2;
        textView2.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
