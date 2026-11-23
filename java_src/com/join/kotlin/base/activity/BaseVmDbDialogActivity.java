package com.join.kotlin.base.activity;

import android.view.LayoutInflater;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.join.kotlin.base.ext.ViewBindUtilKt;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u001c\u0010\n\u001a\u00028\u0001X\u0086.¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "VM", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "DB", "Landroidx/databinding/ViewDataBinding;", "Lcom/join/kotlin/base/activity/BaseVmDialogActivity;", "<init>", "()V", "layoutId", "", "mDatabind", "getMDatabind", "()Landroidx/databinding/ViewDataBinding;", "setMDatabind", "(Landroidx/databinding/ViewDataBinding;)V", "Landroidx/databinding/ViewDataBinding;", "initDataBind", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseVmDbDialogActivity<VM extends BaseViewModel, DB extends ViewDataBinding> extends BaseVmDialogActivity<VM> {
    public DB mDatabind;

    @NotNull
    public final DB getMDatabind() {
        DB db2 = this.mDatabind;
        if (db2 != null) {
            return db2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mDatabind");
        return null;
    }

    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    @Nullable
    public View initDataBind() {
        LayoutInflater layoutInflater = getLayoutInflater();
        Intrinsics.checkNotNullExpressionValue(layoutInflater, "getLayoutInflater(...)");
        setMDatabind((ViewDataBinding) ViewBindUtilKt.inflateWithGeneric(this, layoutInflater));
        return getMDatabind().getRoot();
    }

    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public int layoutId() {
        return 0;
    }

    public final void setMDatabind(@NotNull DB db2) {
        Intrinsics.checkNotNullParameter(db2, "<set-?>");
        this.mDatabind = db2;
    }
}
