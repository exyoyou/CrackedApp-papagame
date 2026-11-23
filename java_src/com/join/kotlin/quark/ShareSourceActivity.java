package com.join.kotlin.quark;

import android.content.Intent;
import android.os.Bundle;
import com.join.android.app.mgsim.wufun.databinding.n4;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.kotlin.base.ext.BaseViewModelExtKt;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.state.ResultState;
import com.join.kotlin.quark.callback.IDialogShareSourceCallback;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.ShareSourceClickProxy;
import com.join.kotlin.quark.viewmodel.ShareSourceViewModel;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.p2;
import com.papa91.arc.ext.ToastManager;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u000eH\u0014J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\b\u0010\u0014\u001a\u00020\u000eH\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/join/kotlin/quark/ShareSourceActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/quark/viewmodel/ShareSourceViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityShareSourceBinding;", "Lcom/join/kotlin/quark/proxy/ShareSourceClickProxy;", "<init>", "()V", "sourceCallback", "Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;", "getSourceCallback", "()Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;", "setSourceCallback", "(Lcom/join/kotlin/quark/callback/IDialogShareSourceCallback;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "createObserver", "onBackClick", "onShareClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ShareSourceActivity extends BaseVmDbDialogActivity<ShareSourceViewModel, n4> implements ShareSourceClickProxy {

    @Nullable
    private IDialogShareSourceCallback sourceCallback;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit createObserver$lambda$7$lambda$3(ShareSourceActivity shareSourceActivity, String str) {
        if (str != null) {
            ((ShareSourceViewModel) shareSourceActivity.getMViewModel()).getSubmitEnable().setValue(Boolean.valueOf(!(str.length() == 0)));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$7$lambda$6(final ShareSourceActivity shareSourceActivity, ResultState resultState) {
        shareSourceActivity.dismissLoading();
        if (resultState == null) {
            ToastManager.show("共享资源失败");
        } else {
            BaseViewModelExtKt.parseState$default(shareSourceActivity, resultState, new Function1() { // from class: com.join.kotlin.quark.z
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShareSourceActivity.createObserver$lambda$7$lambda$6$lambda$4(this.f48914b, (Boolean) obj);
                }
            }, new Function1() { // from class: com.join.kotlin.quark.a0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ShareSourceActivity.createObserver$lambda$7$lambda$6$lambda$5((AppException) obj);
                }
            }, (Function0) null, 8, (Object) null);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$7$lambda$6$lambda$4(ShareSourceActivity shareSourceActivity, Boolean bool) {
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            ToastManager.show("共享资源成功");
            IDialogShareSourceCallback iDialogShareSourceCallback = shareSourceActivity.sourceCallback;
            if (iDialogShareSourceCallback != null) {
                iDialogShareSourceCallback.onSuccess();
            }
            shareSourceActivity.finish();
        } else {
            ToastManager.show("共享资源失败");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit createObserver$lambda$7$lambda$6$lambda$5(AppException it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        ToastManager.show(it2.getErrorMsg());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
        ShareSourceViewModel shareSourceViewModel = (ShareSourceViewModel) getMViewModel();
        shareSourceViewModel.getDiskUrl().observe(this, new ShareSourceActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShareSourceActivity.createObserver$lambda$7$lambda$3(this.f48855b, (String) obj);
            }
        }));
        shareSourceViewModel.getResultData().observe(this, new ShareSourceActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.quark.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShareSourceActivity.createObserver$lambda$7$lambda$6(this.f48858b, (ResultState) obj);
            }
        }));
    }

    @Nullable
    public final IDialogShareSourceCallback getSourceCallback() {
        return this.sourceCallback;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        Serializable serializableExtra;
        p2.v(this);
        IDialogActivityCallback iDialogActivityCallback = this.callback;
        if (iDialogActivityCallback != null && (iDialogActivityCallback instanceof IDialogShareSourceCallback)) {
            Intrinsics.checkNotNull(iDialogActivityCallback, "null cannot be cast to non-null type com.join.kotlin.quark.callback.IDialogShareSourceCallback");
            this.sourceCallback = (IDialogShareSourceCallback) iDialogActivityCallback;
        }
        Intent intent = getIntent();
        if (intent != null && (serializableExtra = intent.getSerializableExtra("_wishPoolItem")) != null && (serializableExtra instanceof SourceListItemBean)) {
            ((ShareSourceViewModel) getMViewModel()).setWishPoolItem((SourceListItemBean) serializableExtra);
        }
        getMDatabind().u((ShareSourceViewModel) getMViewModel());
        getMDatabind().t(this);
    }

    @Override // com.join.kotlin.quark.proxy.ShareSourceClickProxy
    public void onBackClick() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.ShareSourceClickProxy
    public void onShareClick() {
        showLoading();
        ShareSourceViewModel shareSourceViewModel = (ShareSourceViewModel) getMViewModel();
        String uid = AccountUtil_.getInstance_(this).getUid();
        Intrinsics.checkNotNullExpressionValue(uid, "getUid(...)");
        shareSourceViewModel.sourceAngel(uid);
    }

    public final void setSourceCallback(@Nullable IDialogShareSourceCallback iDialogShareSourceCallback) {
        this.sourceCallback = iDialogShareSourceCallback;
    }
}
