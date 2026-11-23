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
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;

/* JADX INFO: loaded from: classes4.dex */
public class vl0 extends ul0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f46334g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f46335h = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final TextView f46336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final TextView f46337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f46338f;

    public vl0(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 3, f46334g, f46335h));
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String str2;
        String playTime;
        int checkStatus;
        Context context;
        int i10;
        synchronized (this) {
            j10 = this.f46338f;
            this.f46338f = 0L;
        }
        ArchiveData archiveData = this.f45760c;
        long j11 = j10 & 3;
        Drawable drawable = null;
        String archiveDesc = null;
        if (j11 != 0) {
            if (archiveData != null) {
                checkStatus = archiveData.getCheckStatus();
                archiveDesc = archiveData.getArchiveDesc();
                playTime = archiveData.getPlayTime();
            } else {
                playTime = null;
                checkStatus = 0;
            }
            boolean z10 = checkStatus == 1;
            if (j11 != 0) {
                j10 |= z10 ? 8L : 4L;
            }
            if (z10) {
                context = this.f45759b.getContext();
                i10 = R.drawable.app_blue_pressed;
            } else {
                context = this.f45759b.getContext();
                i10 = R.drawable.stroke_blue_radio10_butn;
            }
            Drawable drawable2 = AppCompatResources.getDrawable(context, i10);
            str2 = playTime;
            str = archiveDesc;
            drawable = drawable2;
        } else {
            str = null;
            str2 = null;
        }
        if ((j10 & 3) != 0) {
            ViewBindingAdapter.setBackground(this.f45759b, drawable);
            TextViewBindingAdapter.setText(this.f46336d, str);
            TextViewBindingAdapter.setText(this.f46337e, str2);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f46338f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f46338f = 2L;
        }
        requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ul0
    public void n(@Nullable ArchiveData Archive) {
        this.f45760c = Archive;
        synchronized (this) {
            this.f46338f |= 1;
        }
        notifyPropertyChanged(4);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (4 != variableId) {
            return false;
        }
        n((ArchiveData) variable);
        return true;
    }

    private vl0(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0, (LinearLayout) bindings[0]);
        this.f46338f = -1L;
        this.f45759b.setTag(null);
        TextView textView = (TextView) bindings[1];
        this.f46336d = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[2];
        this.f46337e = textView2;
        textView2.setTag(null);
        setRootTag(root);
        invalidateAll();
    }
}
