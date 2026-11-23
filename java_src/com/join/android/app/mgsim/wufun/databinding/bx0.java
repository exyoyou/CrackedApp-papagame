package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingVideoFramlayoutKt;
import com.join.kotlin.ui.modleregin.modle.VideoModle;
import com.join.mgps.Util.IntentDateBean;

/* JADX INFO: loaded from: classes4.dex */
public class bx0 extends ax0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f36636i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f36637j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36638g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f36639h;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f36637j = sparseIntArray;
        sparseIntArray.put(R.id.loading, 3);
    }

    public bx0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 4, f36636i, f36637j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String videoCover;
        int position;
        IntentDateBean intentData;
        synchronized (this) {
            j10 = this.f36639h;
            this.f36639h = 0L;
        }
        VideoModle videoModle = this.f36109f;
        com.join.android.app.component.video.c cVar = this.f36108e;
        long j11 = j10 & 7;
        if (j11 == 0 || videoModle == null) {
            videoCover = null;
            position = 0;
            intentData = null;
        } else {
            position = videoModle.getPosition();
            videoCover = videoModle.getVideoCover();
            intentData = videoModle.getIntentData();
        }
        if (j11 != 0) {
            ViewBindingVideoFramlayoutKt.setvideoTag(this.f36105b, position, cVar, intentData, videoCover);
            ViewBindingVideoFramlayoutKt.loadVideoUrl(this.f36107d, videoModle, cVar, intentData);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f36639h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f36639h = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (11 == variableId) {
            t((VideoModle) variable);
        } else {
            if (49 != variableId) {
                return false;
            }
            u((com.join.android.app.component.video.c) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ax0
    public void t(@Nullable VideoModle Data) {
        this.f36109f = Data;
        synchronized (this) {
            this.f36639h |= 1;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ax0
    public void u(@Nullable com.join.android.app.component.video.c VideoHelper) {
        this.f36108e = VideoHelper;
        synchronized (this) {
            this.f36639h |= 2;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    private bx0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (SimpleDraweeView) bindings[2], (SimpleDraweeView) bindings[3], (FrameLayout) bindings[1]);
        this.f36639h = -1L;
        this.f36105b.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) bindings[0];
        this.f36638g = relativeLayout;
        relativeLayout.setTag(null);
        this.f36107d.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
