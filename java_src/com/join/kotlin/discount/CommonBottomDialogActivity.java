package com.join.kotlin.discount;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.core.view.GravityCompat;
import com.join.android.app.mgsim.wufun.databinding.l0;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.discount.proxy.CommonBottomDialogClickProxy;
import com.join.kotlin.discount.viewmodel.CommonBottomDialogViewModel;
import com.join.mgps.Util.p2;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\n\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\r\u001a\u00020\bH\u0016J\b\u0010\u000e\u001a\u00020\bH\u0016J\b\u0010\u000f\u001a\u00020\bH\u0016¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/discount/CommonBottomDialogActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/discount/viewmodel/CommonBottomDialogViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountCommonBottomDialogBinding;", "Lcom/join/kotlin/discount/proxy/CommonBottomDialogClickProxy;", "<init>", "()V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "getContentView", "Landroid/view/View;", "createObserver", "onConfirmClick", "onCancelClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CommonBottomDialogActivity extends BaseVmDbDialogActivity<CommonBottomDialogViewModel, l0> implements CommonBottomDialogClickProxy {
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    @Nullable
    public View getContentView() {
        return getMDatabind().f41090c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        getMDatabind().u((CommonBottomDialogViewModel) getMViewModel());
        getMDatabind().t(this);
        p2.v(this);
        Intent intent = getIntent();
        if (intent != null) {
            ((CommonBottomDialogViewModel) getMViewModel()).getTitle().setValue(intent.getStringExtra("title"));
            ((CommonBottomDialogViewModel) getMViewModel()).getContent().setValue(intent.getStringExtra("content"));
            ((CommonBottomDialogViewModel) getMViewModel()).getBtnConfirmText().setValue(intent.getStringExtra("btnText"));
            ((CommonBottomDialogViewModel) getMViewModel()).getBtnCancelText().setValue(intent.getStringExtra("btnCancelText"));
            getMDatabind().f41092e.setGravity(intent.getIntExtra("content_gravity", 0) == 0 ? 17 : GravityCompat.START);
        }
    }

    @Override // com.join.kotlin.discount.proxy.CommonBottomDialogClickProxy
    public void onCancelClick() {
        finish();
    }

    @Override // com.join.kotlin.discount.proxy.CommonBottomDialogClickProxy
    public void onConfirmClick() {
        setResult(-1, getIntent());
        finish();
    }
}
