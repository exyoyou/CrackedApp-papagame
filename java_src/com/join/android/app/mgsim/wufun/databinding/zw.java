package com.join.android.app.mgsim.wufun.databinding;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewBindingTextviewKt;
import com.wufan.user.service.protobuf.MessageCloudGamingPlaytimeResponse;
import com.wufan.user.service.protobuf.enumeration.PlaytimeType;

/* JADX INFO: loaded from: classes4.dex */
public class zw extends yw {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f48463i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f48464j = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48465g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f48466h;

    public zw(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 5, f48463i, f48464j));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String changeTime;
        String str;
        String str2;
        String str3;
        Context context;
        int i10;
        synchronized (this) {
            j10 = this.f48466h;
            this.f48466h = 0L;
        }
        MessageCloudGamingPlaytimeResponse.PlaytimeLog playtimeLog = this.f47979f;
        long j11 = j10 & 3;
        Drawable drawable = null;
        PlaytimeType playtimeType = null;
        if (j11 != 0) {
            if (playtimeLog != null) {
                String addTime = playtimeLog.getAddTime();
                String title = playtimeLog.getTitle();
                PlaytimeType playtimeType2 = playtimeLog.getPlaytimeType();
                changeTime = playtimeLog.getChangeTime();
                str2 = title;
                str = addTime;
                playtimeType = playtimeType2;
            } else {
                changeTime = null;
                str = null;
                str2 = null;
            }
            boolean z10 = playtimeType == PlaytimeType.FREE;
            if (j11 != 0) {
                j10 |= z10 ? 8L : 4L;
            }
            boolean zContains = changeTime != null ? changeTime.contains("+") : false;
            if ((j10 & 3) != 0) {
                j10 |= zContains ? 32L : 16L;
            }
            if (z10) {
                context = this.f47975b.getContext();
                i10 = R.drawable.ic_cloud_asset_record_1;
            } else {
                context = this.f47975b.getContext();
                i10 = R.drawable.ic_cloud_asset_record_2;
            }
            drawable = AppCompatResources.getDrawable(context, i10);
            str3 = zContains ? "#FF7017" : "#ff40AD55";
        } else {
            changeTime = null;
            str = null;
            str2 = null;
            str3 = null;
        }
        if ((j10 & 3) != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.f47975b, drawable);
            TextViewBindingAdapter.setText(this.f47976c, str2);
            TextViewBindingAdapter.setText(this.f47977d, str);
            ViewBindingTextviewKt.textViewColorBinding(this.f47978e, str3);
            TextViewBindingAdapter.setText(this.f47978e, changeTime);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f48466h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f48466h = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.yw
    public void n(@Nullable MessageCloudGamingPlaytimeResponse.PlaytimeLog ItemData) {
        this.f47979f = ItemData;
        synchronized (this) {
            this.f48466h |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (27 != variableId) {
            return false;
        }
        n((MessageCloudGamingPlaytimeResponse.PlaytimeLog) variable);
        return true;
    }

    private zw(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (ImageView) bindings[1], (TextView) bindings[2], (TextView) bindings[3], (TextView) bindings[4]);
        this.f48466h = -1L;
        this.f47975b.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.f48465g = constraintLayout;
        constraintLayout.setTag(null);
        this.f47976c.setTag(null);
        this.f47977d.setTag(null);
        this.f47978e.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
