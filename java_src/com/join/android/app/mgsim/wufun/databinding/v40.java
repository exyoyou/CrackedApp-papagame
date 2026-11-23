package com.join.android.app.mgsim.wufun.databinding;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.SourceHopeItemClickProxy;

/* JADX INFO: loaded from: classes4.dex */
public class v40 extends u40 implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46047w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46048x = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    private final CardView f46049m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    private final ImageView f46050n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    private final ImageView f46051o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    private final View f46052p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46053q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46054r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46055s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46056t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f46057u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f46058v;

    public v40(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 13, f46047w, f46048x));
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        if (sourceId == 1) {
            SourceListItemBean sourceListItemBean = this.f45555k;
            SourceHopeItemClickProxy sourceHopeItemClickProxy = this.f45556l;
            if (sourceHopeItemClickProxy != null) {
                sourceHopeItemClickProxy.onViewSourceClick(sourceListItemBean);
                return;
            }
            return;
        }
        if (sourceId == 2) {
            SourceListItemBean sourceListItemBean2 = this.f45555k;
            SourceHopeItemClickProxy sourceHopeItemClickProxy2 = this.f45556l;
            if (sourceHopeItemClickProxy2 != null) {
                sourceHopeItemClickProxy2.onWantClick(sourceListItemBean2);
                return;
            }
            return;
        }
        if (sourceId == 3) {
            SourceListItemBean sourceListItemBean3 = this.f45555k;
            SourceHopeItemClickProxy sourceHopeItemClickProxy3 = this.f45556l;
            if (sourceHopeItemClickProxy3 != null) {
                sourceHopeItemClickProxy3.onWantClick(sourceListItemBean3);
                return;
            }
            return;
        }
        if (sourceId == 4) {
            SourceListItemBean sourceListItemBean4 = this.f45555k;
            SourceHopeItemClickProxy sourceHopeItemClickProxy4 = this.f45556l;
            if (sourceHopeItemClickProxy4 != null) {
                sourceHopeItemClickProxy4.onWantClick(sourceListItemBean4);
                return;
            }
            return;
        }
        if (sourceId != 5) {
            return;
        }
        SourceListItemBean sourceListItemBean5 = this.f45555k;
        SourceHopeItemClickProxy sourceHopeItemClickProxy5 = this.f45556l;
        if (sourceHopeItemClickProxy5 != null) {
            sourceHopeItemClickProxy5.onUploadSourceClick(sourceListItemBean5);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        float dimension;
        String typeName;
        Drawable drawable;
        int i10;
        String str;
        int i11;
        boolean z10;
        int i12;
        String str2;
        String typeColor;
        String title;
        String str3;
        int i13;
        String str4;
        int i14;
        boolean z11;
        Integer wanters;
        boolean zWantVisible;
        Integer status;
        Integer wanted;
        String avatar;
        boolean zHideUploadView;
        String authorName;
        boolean zWithWant;
        Resources resources;
        int i15;
        long j11;
        long j12;
        long j13;
        long j14;
        synchronized (this) {
            j10 = this.f46058v;
            this.f46058v = 0L;
        }
        SourceListItemBean sourceListItemBean = this.f45555k;
        long j15 = j10 & 5;
        if (j15 != 0) {
            if (sourceListItemBean != null) {
                wanters = sourceListItemBean.getWanters();
                zWantVisible = sourceListItemBean.wantVisible();
                status = sourceListItemBean.getStatus();
                typeColor = sourceListItemBean.getTypeColor();
                title = sourceListItemBean.getTitle();
                wanted = sourceListItemBean.getWanted();
                avatar = sourceListItemBean.getAvatar();
                zHideUploadView = sourceListItemBean.hideUploadView();
                authorName = sourceListItemBean.getAuthorName();
                zWithWant = sourceListItemBean.withWant();
                typeName = sourceListItemBean.getTypeName();
            } else {
                typeName = null;
                wanters = null;
                zWantVisible = false;
                status = null;
                typeColor = null;
                title = null;
                wanted = null;
                avatar = null;
                zHideUploadView = false;
                authorName = null;
                zWithWant = false;
            }
            if (j15 != 0) {
                if (zWantVisible) {
                    j13 = j10 | 256;
                    j14 = 16384;
                } else {
                    j13 = j10 | 128;
                    j14 = 8192;
                }
                j10 = j13 | j14;
            }
            if ((j10 & 5) != 0) {
                j10 |= zHideUploadView ? 64L : 32L;
            }
            if ((j10 & 5) != 0) {
                j10 |= zWithWant ? 16L : 8L;
            }
            int iSafeUnbox = ViewDataBinding.safeUnbox(wanters);
            str = wanters + "人想要";
            int i16 = zWantVisible ? 0 : 8;
            if (zWantVisible) {
                resources = this.f45550f.getResources();
                i15 = R.dimen.wdp62;
            } else {
                resources = this.f45550f.getResources();
                i15 = R.dimen.wdp16;
            }
            dimension = resources.getDimension(i15);
            int iSafeUnbox2 = ViewDataBinding.safeUnbox(status);
            int iSafeUnbox3 = ViewDataBinding.safeUnbox(wanted);
            int i17 = zHideUploadView ? 8 : 0;
            int i18 = zWithWant ? 0 : 8;
            boolean z12 = iSafeUnbox > 0;
            boolean z13 = iSafeUnbox2 != 0;
            boolean z14 = iSafeUnbox2 == 0;
            boolean z15 = iSafeUnbox2 == 1;
            z10 = iSafeUnbox3 == 0;
            if ((j10 & 5) != 0) {
                j10 |= z12 ? 1024L : 512L;
            }
            if ((j10 & 5) != 0) {
                if (z14) {
                    j11 = j10 | 4096;
                    j12 = 65536;
                } else {
                    j11 = j10 | 2048;
                    j12 = 32768;
                }
                j10 = j11 | j12;
            }
            if ((j10 & 5) != 0) {
                j10 |= z15 ? 262144L : 131072L;
            }
            i12 = z12 ? 0 : 8;
            str2 = z14 ? "收集中" : "已实现";
            drawable = AppCompatResources.getDrawable(this.f45554j.getContext(), z14 ? R.drawable.shape_a8cf7c_83bf57_r_6 : R.drawable.shape_8fd2ff_77beff_58a5ff_r_6);
            i11 = z15 ? 0 : 8;
            i10 = i17;
            str3 = avatar;
            i13 = i18;
            str4 = authorName;
            i14 = i16;
            z11 = z13;
        } else {
            dimension = 0.0f;
            typeName = null;
            drawable = null;
            i10 = 0;
            str = null;
            i11 = 0;
            z10 = false;
            i12 = 0;
            str2 = null;
            typeColor = null;
            title = null;
            str3 = null;
            i13 = 0;
            str4 = null;
            i14 = 0;
            z11 = false;
        }
        if ((j10 & 4) != 0) {
            this.f46050n.setOnClickListener(this.f46053q);
            this.f45549e.setOnClickListener(this.f46054r);
            this.f45550f.setOnClickListener(this.f46057u);
            this.f45553i.setOnClickListener(this.f46055s);
        }
        if ((j10 & 5) != 0) {
            int i19 = i14;
            this.f46050n.setVisibility(i19);
            this.f46051o.setVisibility(i11);
            this.f46052p.setVisibility(i19);
            SimpleDrawableViewKt.loadUrl(this.f45546b, str3, null, 0);
            TextViewBindingAdapter.setText(this.f45547c, str4);
            TextViewBindingAdapter.setText(this.f45548d, title);
            this.f45549e.setVisibility(i13);
            this.f45550f.setEnabled(z10);
            ViewBindingAdapter.setPaddingRight(this.f45550f, dimension);
            TextViewBindingAdapter.setText(this.f45550f, str);
            this.f45550f.setVisibility(i12);
            ViewBindingTextviewKt.textViewColorBinding(this.f45551g, typeColor);
            TextViewBindingAdapter.setText(this.f45551g, typeName);
            TextViewBindingAdapter.setText(this.f45552h, str2);
            this.f45553i.setVisibility(i10);
            ViewBindingAdapter.setBackground(this.f45554j, drawable);
            ViewBindingAdapter.setOnClick(this.f45554j, this.f46056t, z11);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46058v != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46058v = 4L;
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
            u((SourceListItemBean) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((SourceHopeItemClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.u40
    public void t(@Nullable SourceHopeItemClickProxy Click) {
        this.f45556l = Click;
        synchronized (this) {
            this.f46058v |= 2;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.u40
    public void u(@Nullable SourceListItemBean ItemData) {
        this.f45555k = ItemData;
        synchronized (this) {
            this.f46058v |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private v40(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[6], (TextView) bindings[7], (TextView) bindings[2], (ImageView) bindings[11], (TextView) bindings[8], (TextView) bindings[1], (TextView) bindings[4], (TextView) bindings[12], (View) bindings[3]);
        this.f46058v = -1L;
        CardView cardView = (CardView) bindings[0];
        this.f46049m = cardView;
        cardView.setTag(null);
        ImageView imageView = (ImageView) bindings[10];
        this.f46050n = imageView;
        imageView.setTag(null);
        ImageView imageView2 = (ImageView) bindings[5];
        this.f46051o = imageView2;
        imageView2.setTag(null);
        View view = (View) bindings[9];
        this.f46052p = view;
        view.setTag(null);
        this.f45546b.setTag(null);
        this.f45547c.setTag(null);
        this.f45548d.setTag(null);
        this.f45549e.setTag(null);
        this.f45550f.setTag(null);
        this.f45551g.setTag(null);
        this.f45552h.setTag(null);
        this.f45553i.setTag(null);
        this.f45554j.setTag(null);
        setRootTag(root);
        this.f46053q = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f46054r = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        this.f46055s = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f46056t = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f46057u = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        invalidateAll();
    }
}
