package com.join.kotlin.base.ext;

import android.app.Application;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import com.join.kotlin.base.BaseApp;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\u0005\u001a\u0002H\u0002\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0006*\u00020\u0007H\u0086\b¢\u0006\u0002\u0010\b\u001a\u001e\u0010\u0005\u001a\u0002H\u0002\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0006*\u00020\tH\u0086\b¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"getVmClazz", "Ljava/lang/Class;", "VM", "obj", "", "getAppViewModel", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "Landroidx/appcompat/app/AppCompatActivity;", "(Landroidx/appcompat/app/AppCompatActivity;)Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/Fragment;)Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class GetViewModelExtKt {
    public static final /* synthetic */ <VM extends BaseViewModel> VM getAppViewModel(AppCompatActivity appCompatActivity) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<this>");
        Application application = appCompatActivity.getApplication();
        BaseApp baseApp = application instanceof BaseApp ? (BaseApp) application : null;
        if (baseApp == null) {
            throw new NullPointerException("你的Application没有继承框架自带的BaseApp类，暂时无法使用getAppViewModel该方法");
        }
        ViewModelProvider appViewModelProvider = baseApp.getAppViewModelProvider();
        Intrinsics.reifiedOperationMarker(4, "VM");
        return (VM) appViewModelProvider.get(BaseViewModel.class);
    }

    @NotNull
    public static final <VM> Class<VM> getVmClazz(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        Intrinsics.checkNotNull(genericSuperclass, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType");
        Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
        Intrinsics.checkNotNull(type, "null cannot be cast to non-null type java.lang.Class<VM of com.join.kotlin.base.ext.GetViewModelExtKt.getVmClazz>");
        return (Class) type;
    }

    public static final /* synthetic */ <VM extends BaseViewModel> VM getAppViewModel(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Application application = fragment.requireActivity().getApplication();
        BaseApp baseApp = application instanceof BaseApp ? (BaseApp) application : null;
        if (baseApp != null) {
            ViewModelProvider appViewModelProvider = baseApp.getAppViewModelProvider();
            Intrinsics.reifiedOperationMarker(4, "VM");
            return (VM) appViewModelProvider.get(BaseViewModel.class);
        }
        throw new NullPointerException("你的Application没有继承框架自带的BaseApp类，暂时无法使用getAppViewModel该方法");
    }
}
