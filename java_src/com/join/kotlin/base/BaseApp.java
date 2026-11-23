package com.join.kotlin.base;

import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import com.join.kotlin.base.BaseApp;
import com.join.kotlin.base.widget.loadCallBack.EmptyAbSdkCallback;
import com.join.kotlin.base.widget.loadCallBack.EmptyCallback;
import com.join.kotlin.base.widget.loadCallBack.ErrorCallback;
import com.join.kotlin.base.widget.loadCallBack.LoadingCallback;
import com.join.kotlin.quark.loadCallBack.EmptyQuarkSourceCallback;
import com.join.mgps.va.overmind.VApp;
import com.kingja.loadsir.callback.SuccessCallback;
import com.kingja.loadsir.core.c;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\bH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/join/kotlin/base/BaseApp;", "Lcom/join/mgps/va/overmind/VApp;", "Landroidx/lifecycle/ViewModelStoreOwner;", "<init>", "()V", "mAppViewModelStore", "Landroidx/lifecycle/ViewModelStore;", "mFactory", "Landroidx/lifecycle/ViewModelProvider$Factory;", "viewModelStore", "getViewModelStore", "()Landroidx/lifecycle/ViewModelStore;", "viewModelStore$delegate", "Lkotlin/Lazy;", "onCreate", "", "getAppViewModelProvider", "Landroidx/lifecycle/ViewModelProvider;", "getAppFactory", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class BaseApp extends VApp implements ViewModelStoreOwner {
    private ViewModelStore mAppViewModelStore;

    @Nullable
    private ViewModelProvider.Factory mFactory;

    /* JADX INFO: renamed from: viewModelStore$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModelStore = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: t5.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BaseApp.viewModelStore_delegate$lambda$0(this.f97053b);
        }
    });

    private final ViewModelProvider.Factory getAppFactory() {
        if (this.mFactory == null) {
            this.mFactory = ViewModelProvider.AndroidViewModelFactory.INSTANCE.getInstance(this);
        }
        ViewModelProvider.Factory factory = this.mFactory;
        Intrinsics.checkNotNull(factory, "null cannot be cast to non-null type androidx.lifecycle.ViewModelProvider.Factory");
        return factory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelStore viewModelStore_delegate$lambda$0(BaseApp baseApp) {
        ViewModelStore viewModelStore = baseApp.mAppViewModelStore;
        if (viewModelStore != null) {
            return viewModelStore;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mAppViewModelStore");
        return null;
    }

    @NotNull
    public final ViewModelProvider getAppViewModelProvider() {
        return new ViewModelProvider(this, getAppFactory());
    }

    @NotNull
    public ViewModelStore getViewModelStore() {
        return (ViewModelStore) this.viewModelStore.getValue();
    }

    @Override // com.join.mgps.va.overmind.VApp, com.papa91.arc.MApplication, com.papa91.arc.BuglyApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        this.mAppViewModelStore = new ViewModelStore();
        c.b().a(new LoadingCallback()).a(new ErrorCallback()).a(new EmptyCallback()).a(new EmptyAbSdkCallback()).a(new EmptyQuarkSourceCallback()).h(SuccessCallback.class).d();
    }
}
