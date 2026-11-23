package com.join.kotlin.ui.account;

import android.os.Bundle;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.nw0;
import com.join.kotlin.ui.account.viewmodle.UnbindViewModle;
import com.join.kotlin.ui.base.BasViewModleActivity;
import com.join.kotlin.ui.base.DataBindingConfig;
import com.join.kotlin.ui.notice.ClickProxy;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.BTActivityBean;
import com.wufan.user.service.protobuf.UserInfo;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\fH\u0014J\b\u0010\u0016\u001a\u00020\fH\u0016J\b\u0010\u0017\u001a\u00020\fH\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/ui/account/UnbindThirdPartyActivity;", "Lcom/join/kotlin/ui/base/BasViewModleActivity;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;", "setViewModle", "(Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;)V", "initViewModel", "", "getDataBindingConfig", "Lcom/join/kotlin/ui/base/DataBindingConfig;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onClickItem", "data", "Lcom/join/mgps/dto/BTActivityBean;", "onPause", "onClickBack", "onDestroy", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnbindThirdPartyActivity extends BasViewModleActivity implements ClickProxy {
    public UnbindViewModle viewModle;

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$0(UnbindThirdPartyActivity unbindThirdPartyActivity, Integer num) {
        if (num != null && num.intValue() == 1) {
            unbindThirdPartyActivity.finish();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreate$lambda$2(UnbindThirdPartyActivity unbindThirdPartyActivity, Boolean bool) {
        ViewDataBinding viewBinding;
        if (Intrinsics.areEqual(bool, Boolean.TRUE) && (viewBinding = unbindThirdPartyActivity.getViewBinding()) != null) {
            r7.a.b(((nw0) viewBinding).f42538c);
        }
        return Unit.INSTANCE;
    }

    @Override // com.join.kotlin.ui.base.BasViewModleActivity
    @NotNull
    public DataBindingConfig getDataBindingConfig() {
        return new DataBindingConfig(R.layout.unbind_thridpart_activity, 50, getViewModle()).addBindingParam(8, this);
    }

    @NotNull
    public final UnbindViewModle getViewModle() {
        UnbindViewModle unbindViewModle = this.viewModle;
        if (unbindViewModle != null) {
            return unbindViewModle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        return null;
    }

    @Override // com.join.kotlin.ui.base.BasViewModleActivity
    public void initViewModel() {
        setViewModle((UnbindViewModle) getActivityScopeViewModel(UnbindViewModle.class));
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickBack() {
        getViewModle().setBreakCodeCountDown(true);
        finish();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickItem(@NotNull BTActivityBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.join.kotlin.ui.base.BasViewModleActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String stringExtra = getIntent().getStringExtra("type");
        getViewModle().setPlatform(String.valueOf(stringExtra));
        if (stringExtra != null) {
            int iHashCode = stringExtra.hashCode();
            if (iHashCode != -1429950110) {
                if (iHashCode != -189985820) {
                    if (iHashCode == 1477838041 && stringExtra.equals("WB_OPENID")) {
                        getViewModle().getTitle().setValue("解绑微博");
                    }
                } else if (stringExtra.equals("QQ_OPENID")) {
                    getViewModle().getTitle().setValue("解绑QQ");
                }
            } else if (stringExtra.equals("WEIXIN_OPENID")) {
                getViewModle().getTitle().setValue("解绑微信");
            }
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        getViewModle().getAccount().setValue("你的帐号为： " + accountData.getAccount());
        getViewModle().getMoble().setValue(accountData.getMobile());
        getViewModle().setMobleNumber(accountData.getMobile());
        getViewModle().sendsmsCode(this);
        getViewModle().getCallStatus().observe(this, new UnbindThirdPartyActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.account.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UnbindThirdPartyActivity.onCreate$lambda$0(this.f48915b, (Integer) obj);
            }
        }));
        getViewModle().getHidesoftWard().observe(this, new UnbindThirdPartyActivity$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.ui.account.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UnbindThirdPartyActivity.onCreate$lambda$2(this.f48916b, (Boolean) obj);
            }
        }));
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        getViewModle().setBreakCodeCountDown(true);
    }

    public final void setViewModle(@NotNull UnbindViewModle unbindViewModle) {
        Intrinsics.checkNotNullParameter(unbindViewModle, "<set-?>");
        this.viewModle = unbindViewModle;
    }
}
