package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import androidx.lifecycle.LifecycleOwner;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes4.dex */
public class w7 extends v7 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46652p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46653q;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46654l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final ax0 f46655m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final TextView f46656n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f46657o;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(9);
        f46652p = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"video_dbs_layout"}, new int[]{6}, new int[]{R.layout.video_dbs_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f46653q = sparseIntArray;
        sparseIntArray.put(R.id.tag, 7);
        sparseIntArray.put(R.id.dv_view, 8);
    }

    public w7(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 9, f46652p, f46653q));
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v7
    public void B(@Nullable MustplayItemBean Data) {
        this.f46101j = Data;
        synchronized (this) {
            this.f46657o |= 4;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v7
    public void C(@Nullable Boolean IsshowWhite) {
        this.f46099h = IsshowWhite;
        synchronized (this) {
            this.f46657o |= 2;
        }
        notifyPropertyChanged(26);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v7
    public void D(@Nullable VideoModle VideoData) {
        this.f46102k = VideoData;
        synchronized (this) {
            this.f46657o |= 1;
        }
        notifyPropertyChanged(48);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.v7
    public void E(@Nullable com.join.android.app.component.video.c VideoHelper) {
        this.f46100i = VideoHelper;
        synchronized (this) {
            this.f46657o |= 8;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        Drawable drawable;
        String str;
        int i10;
        String ico_remote;
        String str2;
        String gameName;
        String str3;
        String info;
        String tip;
        CollectionBeanSub gameinfo;
        String gif_ico_remote;
        Context context;
        int i11;
        synchronized (this) {
            j10 = this.f46657o;
            this.f46657o = 0L;
        }
        VideoModle videoModle = this.f46102k;
        Boolean bool = this.f46099h;
        MustplayItemBean mustplayItemBean = this.f46101j;
        com.join.android.app.component.video.c cVar = this.f46100i;
        long j11 = j10 & 18;
        if (j11 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j11 != 0) {
                j10 |= zSafeUnbox ? 64L : 32L;
            }
            if (zSafeUnbox) {
                context = this.f46654l.getContext();
                i11 = R.drawable.white;
            } else {
                context = this.f46654l.getContext();
                i11 = R.drawable.alph;
            }
            drawable = AppCompatResources.getDrawable(context, i11);
        } else {
            drawable = null;
        }
        long j12 = j10 & 20;
        if (j12 != 0) {
            if (mustplayItemBean != null) {
                tip = mustplayItemBean.getTip();
                gameName = mustplayItemBean.getGameName();
                gameinfo = mustplayItemBean.getGameinfo();
                info = mustplayItemBean.getInfo();
            } else {
                info = null;
                tip = null;
                gameName = null;
                gameinfo = null;
            }
            boolean z10 = tip == "";
            if (j12 != 0) {
                j10 |= z10 ? 256L : 128L;
            }
            if (gameinfo != null) {
                gif_ico_remote = gameinfo.getGif_ico_remote();
                ico_remote = gameinfo.getIco_remote();
            } else {
                ico_remote = null;
                gif_ico_remote = null;
            }
            i10 = z10 ? 8 : 0;
            str3 = tip;
            str2 = info;
            str = gif_ico_remote;
        } else {
            str = null;
            i10 = 0;
            ico_remote = null;
            str2 = null;
            gameName = null;
            str3 = null;
        }
        long j13 = j10 & 24;
        if ((20 & j10) != 0) {
            TextViewBindingAdapter.setText(this.f46094c, gameName);
            SimpleDrawableViewKt.loadUrl(this.f46095d, ico_remote, str, 0);
            TextViewBindingAdapter.setText(this.f46656n, str2);
            this.f46656n.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f46096e, str3);
        }
        if ((18 & j10) != 0) {
            ViewBindingAdapter.setBackground(this.f46654l, drawable);
        }
        if (j13 != 0) {
            this.f46655m.u(cVar);
        }
        if ((j10 & 17) != 0) {
            this.f46655m.t(videoModle);
        }
        ViewDataBinding.executeBindingsOn(this.f46655m);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f46657o != 0) {
                return true;
            }
            return this.f46655m.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46657o = 16L;
        }
        this.f46655m.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f46655m.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (48 == variableId) {
            D((VideoModle) variable);
        } else if (26 == variableId) {
            C((Boolean) variable);
        } else if (11 == variableId) {
            B((MustplayItemBean) variable);
        } else {
            if (49 != variableId) {
                return false;
            }
            E((com.join.android.app.component.video.c) variable);
        }
        return true;
    }

    private w7(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (DownloadNormalView) bindings[8], (TextView) bindings[4], (SimpleDraweeView) bindings[3], (TextView) bindings[5], (LinearLayout) bindings[7], (CornersLinearLayout) bindings[1]);
        this.f46657o = -1L;
        this.f46094c.setTag(null);
        this.f46095d.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[0];
        this.f46654l = linearLayout;
        linearLayout.setTag(null);
        ax0 ax0Var = (ax0) bindings[6];
        this.f46655m = ax0Var;
        setContainedBinding(ax0Var);
        TextView textView = (TextView) bindings[2];
        this.f46656n = textView;
        textView.setTag(null);
        this.f46096e.setTag(null);
        this.f46098g.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
