package com.join.kotlin.base.activity;

import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import com.join.kotlin.base.ext.GetViewModelExtKt;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import com.join.mgps.base.dialog.BaseDialogActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\f\u001a\u00020\rH&J\u0012\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&J\u0010\u0010\u0012\u001a\u00020\u000f2\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0015\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0012\u0010\u0016\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\r\u0010\u0017\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\bJ\b\u0010\u0018\u001a\u00020\u000fH&J\n\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R\u001c\u0010\u0006\u001a\u00028\u0000X\u0086.¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/base/activity/BaseVmDialogActivity;", "VM", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "Lcom/join/mgps/base/dialog/BaseDialogActivity;", "<init>", "()V", "mViewModel", "getMViewModel", "()Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "setMViewModel", "(Lcom/join/kotlin/base/viewmodel/BaseViewModel;)V", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "layoutId", "", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "showLoading", "message", "", "onCreate", "init", "createViewModel", "createObserver", "initDataBind", "Landroid/view/View;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBaseVmDialogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseVmDialogActivity.kt\ncom/join/kotlin/base/activity/BaseVmDialogActivity\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n*L\n1#1,61:1\n29#2,6:62\n*S KotlinDebug\n*F\n+ 1 BaseVmDialogActivity.kt\ncom/join/kotlin/base/activity/BaseVmDialogActivity\n*L\n29#1:62,6\n*E\n"})
public abstract class BaseVmDialogActivity<VM extends BaseViewModel> extends BaseDialogActivity {
    public VM mViewModel;

    private final VM createViewModel() {
        return (VM) new ViewModelProvider(this).get(GetViewModelExtKt.getVmClazz(this));
    }

    private final void init(Bundle savedInstanceState) {
        setMViewModel(createViewModel());
        initView(savedInstanceState);
        createObserver();
    }

    public static /* synthetic */ void showLoading$default(BaseVmDialogActivity baseVmDialogActivity, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoading");
        }
        if ((i10 & 1) != 0) {
            str = "请求网络中...";
        }
        baseVmDialogActivity.showLoading(str);
    }

    public abstract void createObserver();

    @NotNull
    public final VM getMViewModel() {
        VM vm = this.mViewModel;
        if (vm != null) {
            return vm;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mViewModel");
        return null;
    }

    @Nullable
    public View initDataBind() {
        return null;
    }

    public abstract void initView(@Nullable Bundle savedInstanceState);

    public abstract int layoutId();

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View viewInitDataBind = initDataBind();
        if (viewInitDataBind != null) {
            setContentView(viewInitDataBind);
        } else {
            setContentView(layoutId());
        }
        init(savedInstanceState);
    }

    public final void setMViewModel(@NotNull VM vm) {
        Intrinsics.checkNotNullParameter(vm, "<set-?>");
        this.mViewModel = vm;
    }

    public final void showLoading(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
