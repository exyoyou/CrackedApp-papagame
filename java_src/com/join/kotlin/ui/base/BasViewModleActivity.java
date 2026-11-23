package com.join.kotlin.ui.base;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.BaseAppCompatActivity;
import com.MApplication;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0004J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0015H&J\b\u0010\u0019\u001a\u00020\u001aH&J%\u0010\u001b\u001a\u0002H\u001c\"\b\b\u0000\u0010\u001c*\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001c0\u001fH\u0014¢\u0006\u0002\u0010 J%\u0010!\u001a\u0002H\u001c\"\b\b\u0000\u0010\u001c*\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u001c0\u001fH\u0014¢\u0006\u0002\u0010 R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\u000b\u0010\u0007R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\""}, d2 = {"Lcom/join/kotlin/ui/base/BasViewModleActivity;", "Lcom/BaseAppCompatActivity;", "<init>", "()V", "mActivityProvider", "Landroidx/lifecycle/ViewModelProvider;", "getMActivityProvider", "()Landroidx/lifecycle/ViewModelProvider;", "mActivityProvider$delegate", "Lkotlin/Lazy;", "mApplicationProvider", "getMApplicationProvider", "mApplicationProvider$delegate", "dataBindingx", "Landroidx/databinding/ViewDataBinding;", "getDataBindingx", "()Landroidx/databinding/ViewDataBinding;", "setDataBindingx", "(Landroidx/databinding/ViewDataBinding;)V", "getViewBinding", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "initViewModel", "getDataBindingConfig", "Lcom/join/kotlin/ui/base/DataBindingConfig;", "getActivityScopeViewModel", "T", "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getApplicationScopeViewModel", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BasViewModleActivity extends BaseAppCompatActivity {

    @Nullable
    private ViewDataBinding dataBindingx;

    /* JADX INFO: renamed from: mActivityProvider$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mActivityProvider = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.base.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BasViewModleActivity.mActivityProvider_delegate$lambda$0(this.f48917b);
        }
    });

    /* JADX INFO: renamed from: mApplicationProvider$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy mApplicationProvider = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.base.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BasViewModleActivity.mApplicationProvider_delegate$lambda$1(this.f48918b);
        }
    });

    private final ViewModelProvider getMActivityProvider() {
        return (ViewModelProvider) this.mActivityProvider.getValue();
    }

    private final ViewModelProvider getMApplicationProvider() {
        return (ViewModelProvider) this.mApplicationProvider.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider mActivityProvider_delegate$lambda$0(BasViewModleActivity basViewModleActivity) {
        return new ViewModelProvider(basViewModleActivity, new ViewModelProvider.NewInstanceFactory());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider mApplicationProvider_delegate$lambda$1(BasViewModleActivity basViewModleActivity) {
        Context applicationContext = basViewModleActivity.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type com.MApplication");
        ViewModelProvider.AndroidViewModelFactory.Companion companion = ViewModelProvider.AndroidViewModelFactory.INSTANCE;
        Application application = basViewModleActivity.getApplication();
        Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
        return new ViewModelProvider((MApplication) applicationContext, companion.getInstance(application));
    }

    @NotNull
    protected <T extends ViewModel> T getActivityScopeViewModel(@NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) getMActivityProvider().get(modelClass);
    }

    @NotNull
    protected <T extends ViewModel> T getApplicationScopeViewModel(@NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        return (T) getMApplicationProvider().get(modelClass);
    }

    @NotNull
    public abstract DataBindingConfig getDataBindingConfig();

    @Nullable
    public final ViewDataBinding getDataBindingx() {
        return this.dataBindingx;
    }

    @Nullable
    protected final ViewDataBinding getViewBinding() {
        return this.dataBindingx;
    }

    public abstract void initViewModel();

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initViewModel();
        DataBindingConfig dataBindingConfig = getDataBindingConfig();
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, dataBindingConfig.getLayout());
        this.dataBindingx = contentView;
        contentView.setLifecycleOwner(this);
        contentView.setVariable(dataBindingConfig.getVmVariableId(), dataBindingConfig.getStateViewModle());
        SparseArray<Object> bindingParms = dataBindingConfig.getBindingParms();
        if (bindingParms == null || bindingParms.size() <= 0) {
            return;
        }
        int size = bindingParms.size();
        for (int i10 = 0; i10 < size; i10++) {
            contentView.setVariable(bindingParms.keyAt(i10), bindingParms.valueAt(i10));
        }
    }

    public final void setDataBindingx(@Nullable ViewDataBinding viewDataBinding) {
        this.dataBindingx = viewDataBinding;
    }
}
