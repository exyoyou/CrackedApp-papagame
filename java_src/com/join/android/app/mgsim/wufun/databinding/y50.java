package com.join.android.app.mgsim.wufun.databinding;

import android.graphics.drawable.Drawable;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
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
import com.papa91.arc.widget.htmltext.HtmlTextView;

/* JADX INFO: loaded from: classes4.dex */
public class y50 extends x50 {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f47583v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f47584w;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47585r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    private final ImageView f47586s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    private final TextView f47587t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f47588u;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47584w = sparseIntArray;
        sparseIntArray.put(R.id.iv_star, 16);
    }

    public y50(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 17, f47583v, f47584w));
    }

    private boolean w(DownState DownState, int fieldId) {
        if (fieldId == 0) {
            synchronized (this) {
                this.f47588u |= 1;
            }
            return true;
        }
        if (fieldId == 47) {
            synchronized (this) {
                this.f47588u |= 4;
            }
            return true;
        }
        if (fieldId == 14) {
            synchronized (this) {
                this.f47588u |= 8;
            }
            return true;
        }
        if (fieldId == 41) {
            synchronized (this) {
                this.f47588u |= 16;
            }
            return true;
        }
        if (fieldId == 38) {
            synchronized (this) {
                this.f47588u |= 32;
            }
            return true;
        }
        if (fieldId == 12) {
            synchronized (this) {
                this.f47588u |= 64;
            }
            return true;
        }
        if (fieldId != 7) {
            return false;
        }
        synchronized (this) {
            this.f47588u |= 128;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0191  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        int i10;
        int i11;
        String showScore;
        String str;
        String str2;
        int i12;
        String ico;
        String labelStr;
        String str3;
        String str4;
        long j11;
        int i13;
        int progress;
        int i14;
        Drawable drawable;
        boolean z10;
        String str5;
        String downText;
        boolean zShowRecTag;
        boolean zShowADLabel;
        CommonGameInfoBean game;
        String strShowSizeStr;
        String strShowHtmlName;
        String strShowGfTagStr;
        GInfoBean g_info;
        String info;
        boolean zShowGfTag;
        synchronized (this) {
            j10 = this.f47588u;
            this.f47588u = 0L;
        }
        SearchGameBean searchGameBean = this.f47111p;
        DownState downState = this.f47112q;
        long j12 = j10 & 258;
        if (j12 != 0) {
            if (searchGameBean != null) {
                zShowADLabel = searchGameBean.showADLabel();
                game = searchGameBean.getGame();
                labelStr = searchGameBean.getLabelStr();
                strShowSizeStr = searchGameBean.showSizeStr();
                strShowHtmlName = searchGameBean.showHtmlName();
                strShowGfTagStr = searchGameBean.showGfTagStr();
                zShowRecTag = searchGameBean.showRecTag();
            } else {
                zShowRecTag = false;
                zShowADLabel = false;
                game = null;
                labelStr = null;
                strShowSizeStr = null;
                strShowHtmlName = null;
                strShowGfTagStr = null;
            }
            if (j12 != 0) {
                j10 |= zShowADLabel ? 65536L : 32768L;
            }
            if ((j10 & 258) != 0) {
                j10 |= zShowRecTag ? 1048576L : PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED;
            }
            i11 = zShowADLabel ? 0 : 8;
            i10 = zShowRecTag ? 0 : 8;
            if (game != null) {
                g_info = game.getG_info();
                showScore = game.getShowScore();
            } else {
                showScore = null;
                g_info = null;
            }
            if (g_info != null) {
                info = g_info.getInfo();
                zShowGfTag = g_info.showGfTag();
                ico = g_info.getIco();
            } else {
                ico = null;
                info = null;
                zShowGfTag = false;
            }
            if ((j10 & 258) != 0) {
                j10 |= zShowGfTag ? 4096L : 2048L;
            }
            str = strShowSizeStr;
            str3 = strShowHtmlName;
            str2 = strShowGfTagStr;
            str4 = info;
            i12 = zShowGfTag ? 0 : 8;
        } else {
            i10 = 0;
            i11 = 0;
            showScore = null;
            str = null;
            str2 = null;
            i12 = 0;
            ico = null;
            labelStr = null;
            str3 = null;
            str4 = null;
        }
        if ((j10 & 509) != 0) {
            downText = ((j10 & 265) == 0 || downState == null) ? null : downState.getDownText();
            long j13 = j10 & 321;
            if (j13 != 0) {
                boolean z11 = (downState != null ? downState.getDownMode() : 0) == 0;
                if (j13 != 0) {
                    j10 |= z11 ? 16384L : 8192L;
                }
                drawable = z11 ? AppCompatResources.getDrawable(this.f47101f.getContext(), R.drawable.mg_progress) : AppCompatResources.getDrawable(this.f47101f.getContext(), R.drawable.mg_zip_progress);
            } else {
                drawable = null;
            }
            String statusText = ((j10 & 273) == 0 || downState == null) ? null : downState.getStatusText();
            boolean buttonEnable = ((j10 & 385) == 0 || downState == null) ? false : downState.getButtonEnable();
            long j14 = j10 & 261;
            if (j14 != 0) {
                int uiMode = downState != null ? downState.getUiMode() : 0;
                boolean z12 = uiMode == 0;
                boolean z13 = uiMode == 1;
                if (j14 != 0) {
                    j10 |= z12 ? 1024L : 512L;
                }
                if ((j10 & 261) != 0) {
                    j10 |= z13 ? 262144L : 131072L;
                }
                i13 = z12 ? 0 : 8;
                if (!z13) {
                    i14 = 8;
                }
                j11 = 0;
                if ((j10 & 289) != 0 || downState == null) {
                    progress = 0;
                } else {
                    progress = downState.getProgress();
                }
                str5 = statusText;
                z10 = buttonEnable;
            } else {
                i13 = 0;
            }
            i14 = 0;
            j11 = 0;
            if ((j10 & 289) != 0) {
                progress = 0;
            } else {
                progress = 0;
            }
            str5 = statusText;
            z10 = buttonEnable;
        } else {
            j11 = 0;
            i13 = 0;
            progress = 0;
            i14 = 0;
            drawable = null;
            z10 = false;
            str5 = null;
            downText = null;
        }
        if ((j10 & 261) != j11) {
            this.f47097b.setVisibility(i14);
            this.f47098c.setVisibility(i13);
        }
        if ((j10 & 385) != j11) {
            this.f47099d.setEnabled(z10);
        }
        if ((258 & j10) != j11) {
            this.f47586s.setVisibility(i11);
            TextViewBindingAdapter.setText(this.f47587t, str2);
            this.f47587t.setVisibility(i12);
            SimpleDrawableViewKt.loadUrl(this.f47102g, ico, null, 0);
            this.f47105j.setVisibility(i10);
            this.f47106k.setHtml(str3);
            TextViewBindingAdapter.setText(this.f47107l, labelStr);
            TextViewBindingAdapter.setText(this.f47108m, str4);
            TextViewBindingAdapter.setText(this.f47109n, showScore);
            TextViewBindingAdapter.setText(this.f47110o, str);
        }
        if ((j10 & 289) != 0) {
            this.f47101f.setProgress(progress);
        }
        if ((j10 & 321) != 0) {
            this.f47101f.setProgressDrawable(drawable);
        }
        if ((j10 & 265) != 0) {
            TextViewBindingAdapter.setText(this.f47103h, downText);
        }
        if ((j10 & 273) != 0) {
            TextViewBindingAdapter.setText(this.f47104i, str5);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47588u != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47588u = 256L;
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

    @Override // com.join.android.app.mgsim.wufun.databinding.x50
    public void t(@Nullable DownState DownState) {
        updateRegistration(0, DownState);
        this.f47112q = DownState;
        synchronized (this) {
            this.f47588u |= 1;
        }
        notifyPropertyChanged(13);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.x50
    public void u(@Nullable SearchGameBean ItemData) {
        this.f47111p = ItemData;
        synchronized (this) {
            this.f47588u |= 2;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    private y50(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 1, (ConstraintLayout) bindings[11], (ConstraintLayout) bindings[5], (DownloadNormalView) bindings[15], (ImageView) bindings[16], (ProgressBar) bindings[14], (SimpleDraweeView) bindings[1], (TextView) bindings[12], (TextView) bindings[13], (ImageView) bindings[3], (HtmlTextView) bindings[2], (TextView) bindings[7], (TextView) bindings[10], (TextView) bindings[6], (TextView) bindings[8]);
        this.f47588u = -1L;
        this.f47097b.setTag(null);
        this.f47098c.setTag(null);
        this.f47099d.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f47585r = constraintLayout;
        constraintLayout.setTag(null);
        ImageView imageView = (ImageView) bindings[4];
        this.f47586s = imageView;
        imageView.setTag(null);
        TextView textView = (TextView) bindings[9];
        this.f47587t = textView;
        textView.setTag(null);
        this.f47101f.setTag(null);
        this.f47102g.setTag(null);
        this.f47103h.setTag(null);
        this.f47104i.setTag(null);
        this.f47105j.setTag(null);
        this.f47106k.setTag(null);
        this.f47107l.setTag(null);
        this.f47108m.setTag(null);
        this.f47109n.setTag(null);
        this.f47110o.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
