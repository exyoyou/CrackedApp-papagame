package com.join.kotlin.ui.cloudarchive;

import android.os.Bundle;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.o5;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.mgps.Util.UtilsMy;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\b\u0010\u0014\u001a\u00020\u0011H\u0016J\b\u0010\u0015\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\n\u001a\u0004\b\r\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;", "Lcom/BaseAppCompatActivity;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityVasingleGameIndexBinding;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityVasingleGameIndexBinding;", "dataBinding$delegate", "Lkotlin/Lazy;", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;", "viewModle$delegate", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onClickReload", "onClickSetNetWork", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VASingleGameIndexActivity extends BaseAppCompatActivity implements LoadBindClickProxy {

    /* JADX INFO: renamed from: dataBinding$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy dataBinding = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.z1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return VASingleGameIndexActivity.dataBinding_delegate$lambda$0(this.f49065b);
        }
    });

    /* JADX INFO: renamed from: viewModle$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy viewModle = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.join.kotlin.ui.cloudarchive.a2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return VASingleGameIndexActivity.viewModle_delegate$lambda$1(this.f48920b);
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final o5 dataBinding_delegate$lambda$0(VASingleGameIndexActivity vASingleGameIndexActivity) {
        return (o5) DataBindingUtil.setContentView(vASingleGameIndexActivity, R.layout.activity_vasingle_game_index);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$3(Integer num) {
        if (num != null && num.intValue() == 1) {
            return;
        }
        if ((num != null && num.intValue() == 2) || num == null) {
            return;
        }
        num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VASingleGameViewModle viewModle_delegate$lambda$1(VASingleGameIndexActivity vASingleGameIndexActivity) {
        return (VASingleGameViewModle) new ViewModelProvider(vASingleGameIndexActivity, new ViewModelProvider.NewInstanceFactory()).get(VASingleGameViewModle.class);
    }

    @NotNull
    public final o5 getDataBinding() {
        Object value = this.dataBinding.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (o5) value;
    }

    @NotNull
    public final VASingleGameViewModle getViewModle() {
        return (VASingleGameViewModle) this.viewModle.getValue();
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        getViewModle().loadDatas(this);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.N3(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getViewModle().setListener(new VASingleGameViewModle.Listener() { // from class: com.join.kotlin.ui.cloudarchive.VASingleGameIndexActivity.onCreate.1
            @Override // com.join.kotlin.ui.cloudarchive.VASingleGameViewModle.Listener
            public void onCLickBack() {
                VASingleGameIndexActivity.this.finish();
            }
        });
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(50, getViewModle());
        getDataBinding().setVariable(30, this);
        String stringExtra = getIntent().getStringExtra("gameId");
        if (stringExtra != null) {
            getViewModle().initDatas(stringExtra);
        }
        getViewModle().loadDatas(this);
        getViewModle().getShowStatus().observe(this, new Observer() { // from class: com.join.kotlin.ui.cloudarchive.b2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VASingleGameIndexActivity.onCreate$lambda$3((Integer) obj);
            }
        });
    }
}
