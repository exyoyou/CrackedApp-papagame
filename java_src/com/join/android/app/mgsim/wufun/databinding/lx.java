package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.model.bean.DownState;
import com.join.kotlin.ui.search.model.SearchGameBean;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class lx extends kx {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41593s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41594t;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f41595r;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41594t = sparseIntArray;
        sparseIntArray.put(R.id.ll_title, 11);
        sparseIntArray.put(R.id.ll_tips, 12);
        sparseIntArray.put(R.id.line, 13);
    }

    public lx(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 14, f41593s, f41594t));
    }

    private boolean w(DownState DownState, int fieldId) {
        if (fieldId == 0) {
            synchronized (this) {
                this.f41595r |= 1;
            }
            return true;
        }
        if (fieldId == 47) {
            synchronized (this) {
                this.f41595r |= 4;
            }
            return true;
        }
        if (fieldId == 14) {
            synchronized (this) {
                this.f41595r |= 8;
            }
            return true;
        }
        if (fieldId == 41) {
            synchronized (this) {
                this.f41595r |= 16;
            }
            return true;
        }
        if (fieldId == 38) {
            synchronized (this) {
                this.f41595r |= 32;
            }
            return true;
        }
        if (fieldId == 12) {
            synchronized (this) {
                this.f41595r |= 64;
            }
            return true;
        }
        if (fieldId != 7) {
            return false;
        }
        synchronized (this) {
            this.f41595r |= 128;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        String info;
        String showName;
        String ico;
        boolean buttonEnable;
        Drawable drawable;
        int progress;
        String statusText;
        String downText;
        int i11;
        int i12;
        int i13;
        int i14;
        Context context;
        int i15;
        boolean zGiftSwitch;
        GInfoBean g_info;
        synchronized (this) {
            j10 = this.f41595r;
            this.f41595r = 0L;
        }
        SearchGameBean searchGameBean = this.f41040p;
        DownState downState = this.f41041q;
        long j11 = j10 & 258;
        if (j11 != 0) {
            CommonGameInfoBean game = searchGameBean != null ? searchGameBean.getGame() : null;
            if (game != null) {
                g_info = game.getG_info();
                showName = game.getShowName();
                zGiftSwitch = game.giftSwitch();
            } else {
                zGiftSwitch = false;
                g_info = null;
                showName = null;
            }
            if (j11 != 0) {
                j10 |= zGiftSwitch ? 65536L : 32768L;
            }
            if (g_info != null) {
                ico = g_info.getIco();
                info = g_info.getInfo();
            } else {
                info = null;
                ico = null;
            }
            i10 = zGiftSwitch ? 0 : 8;
        } else {
            i10 = 0;
            info = null;
            showName = null;
            ico = null;
        }
        if ((509 & j10) != 0) {
            downText = ((j10 & 265) == 0 || downState == null) ? null : downState.getDownText();
            long j12 = j10 & 261;
            if (j12 != 0) {
                int uiMode = downState != null ? downState.getUiMode() : 0;
                boolean z10 = uiMode == 0;
                boolean z11 = uiMode == 1;
                if (j12 != 0) {
                    j10 |= z10 ? 1024L : 512L;
                }
                if ((j10 & 261) != 0) {
                    j10 |= z11 ? 4096L : 2048L;
                }
                i14 = z10 ? 0 : 8;
                i13 = z11 ? 0 : 8;
            } else {
                i13 = 0;
                i14 = 0;
            }
            progress = ((j10 & 289) == 0 || downState == null) ? 0 : downState.getProgress();
            long j13 = j10 & 321;
            if (j13 != 0) {
                boolean z12 = (downState != null ? downState.getDownMode() : 0) == 0;
                if (j13 != 0) {
                    j10 |= z12 ? 16384L : 8192L;
                }
                if (z12) {
                    context = this.f41037m.getContext();
                    i15 = R.drawable.mg_progress;
                } else {
                    context = this.f41037m.getContext();
                    i15 = R.drawable.mg_zip_progress;
                }
                drawable = AppCompatResources.getDrawable(context, i15);
            } else {
                drawable = null;
            }
            statusText = ((j10 & 273) == 0 || downState == null) ? null : downState.getStatusText();
            if ((j10 & 385) == 0 || downState == null) {
                i11 = i13;
                i12 = i14;
                buttonEnable = false;
            } else {
                buttonEnable = downState.getButtonEnable();
                i11 = i13;
                i12 = i14;
            }
        } else {
            buttonEnable = false;
            drawable = null;
            progress = 0;
            statusText = null;
            downText = null;
            i11 = 0;
            i12 = 0;
        }
        if ((j10 & 265) != 0) {
            TextViewBindingAdapter.setText(this.f41026b, downText);
        }
        if ((j10 & 385) != 0) {
            this.f41027c.setEnabled(buttonEnable);
        }
        if ((258 & j10) != 0) {
            this.f41028d.setVisibility(i10);
            TextViewBindingAdapter.setText(this.f41035k, showName);
            TextViewBindingAdapter.setText(this.f41036l, info);
            SimpleDrawableViewKt.loadUrl(this.f41039o, ico, null, 0);
        }
        if ((j10 & 261) != 0) {
            this.f41030f.setVisibility(i11);
            this.f41031g.setVisibility(i12);
        }
        if ((j10 & 273) != 0) {
            TextViewBindingAdapter.setText(this.f41034j, statusText);
        }
        if ((j10 & 289) != 0) {
            this.f41037m.setProgress(progress);
        }
        if ((j10 & 321) != 0) {
            this.f41037m.setProgressDrawable(drawable);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41595r != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41595r = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        if (localFieldId != 0) {
            return false;
        }
        return w((DownState) object, fieldId);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 == variableId) {
            u((SearchGameBean) variable);
        } else {
            if (13 != variableId) {
                return false;
            }
            t((DownState) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kx
    public void t(@Nullable DownState DownState) {
        updateRegistration(0, DownState);
        this.f41041q = DownState;
        synchronized (this) {
            this.f41595r |= 1;
        }
        notifyPropertyChanged(13);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.kx
    public void u(@Nullable SearchGameBean ItemData) {
        this.f41040p = ItemData;
        synchronized (this) {
            this.f41595r |= 2;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private lx(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (TextView) bindings[7], (DownloadNormalView) bindings[10], (ImageView) bindings[2], (View) bindings[13], (ConstraintLayout) bindings[6], (LinearLayout) bindings[4], (LinearLayout) bindings[12], (LinearLayout) bindings[11], (TextView) bindings[8], (TextView) bindings[3], (TextView) bindings[5], (ProgressBar) bindings[9], (ConstraintLayout) bindings[0], (SimpleDraweeView) bindings[1]);
        this.f41595r = -1L;
        this.f41026b.setTag(null);
        this.f41027c.setTag(null);
        this.f41028d.setTag(null);
        this.f41030f.setTag(null);
        this.f41031g.setTag(null);
        this.f41034j.setTag(null);
        this.f41035k.setTag(null);
        this.f41036l.setTag(null);
        this.f41037m.setTag(null);
        this.f41038n.setTag(null);
        this.f41039o.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
