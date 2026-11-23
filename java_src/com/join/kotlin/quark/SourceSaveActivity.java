package com.join.kotlin.quark;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.MutableLiveData;
import com.join.android.app.mgsim.wufun.databinding.t4;
import com.join.kotlin.base.activity.BaseVmDbDialogActivity;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.SourceSaveClickProxy;
import com.join.kotlin.quark.viewmodel.SourceSaveViewModel;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.p2;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000b\u001a\u00020\bH\u0014J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u000e\u001a\u00020\bH\u0016J\b\u0010\u000f\u001a\u00020\bH\u0016¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/quark/SourceSaveActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;", "Lcom/join/kotlin/quark/viewmodel/SourceSaveViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivitySourceSaveBinding;", "Lcom/join/kotlin/quark/proxy/SourceSaveClickProxy;", "<init>", "()V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "getContentView", "Landroid/view/View;", "createObserver", "onSaveClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceSaveActivity extends BaseVmDbDialogActivity<SourceSaveViewModel, t4> implements SourceSaveClickProxy {
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void createObserver() {
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    @Nullable
    public View getContentView() {
        return getMDatabind().f45118b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmDialogActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        p2.v(this);
        Intent intent = getIntent();
        if (intent != null) {
            MutableLiveData<SourceListItemBean> itemBean = ((SourceSaveViewModel) getMViewModel()).getItemBean();
            Serializable serializableExtra = intent.getSerializableExtra("itemBean");
            Intrinsics.checkNotNull(serializableExtra, "null cannot be cast to non-null type com.join.kotlin.quark.model.bean.SourceListItemBean");
            itemBean.setValue((SourceListItemBean) serializableExtra);
        }
        getMDatabind().u((SourceSaveViewModel) getMViewModel());
        getMDatabind().t(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.SourceSaveClickProxy
    public void onSaveClick() {
        SourceListItemBean value = ((SourceSaveViewModel) getMViewModel()).getItemBean().getValue();
        if (value != null) {
            IntentUtil.getInstance().startQuarkBrowser(this, d2.q(), value.getDisk_url(), value.getTitle(), value.getIcon());
        }
    }
}
