package com.join.kotlin.autocode.dailyfind.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.j0;
import com.join.kotlin.autocode.dailyfind.fragment.DailyFindContentFragment;
import com.join.kotlin.autocode.dailyfind.viewmodel.DailyFindViewModel;
import com.join.kotlin.base.activity.BaseVmVbActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\u0007H\u0002¨\u0006\f"}, d2 = {"Lcom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity;", "Lcom/join/kotlin/base/activity/BaseVmVbActivity;", "Lcom/join/kotlin/autocode/dailyfind/viewmodel/DailyFindViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDailyFindBinding;", "<init>", "()V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "createObserver", "onBackClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDailyFindActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyFindActivity.kt\ncom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity\n+ 2 FragmentManager.kt\nandroidx/fragment/app/FragmentManagerKt\n*L\n1#1,40:1\n28#2,12:41\n*S KotlinDebug\n*F\n+ 1 DailyFindActivity.kt\ncom/join/kotlin/autocode/dailyfind/activity/DailyFindActivity\n*L\n20#1:41,12\n*E\n"})
public final class DailyFindActivity extends BaseVmVbActivity<DailyFindViewModel, j0> {
    /* JADX INFO: Access modifiers changed from: private */
    public final void onBackClick() {
        finish();
    }

    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
    }

    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        Bundle extras;
        getMViewBind().f40014c.setOnClickListener(new View.OnClickListener() { // from class: r5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f96755b.onBackClick();
            }
        });
        if (savedInstanceState == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
            Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction()");
            DailyFindContentFragment dailyFindContentFragment = new DailyFindContentFragment();
            Bundle bundle = new Bundle();
            Intent intent = getIntent();
            if (intent != null && (extras = intent.getExtras()) != null) {
                bundle.putAll(extras);
            }
            dailyFindContentFragment.setArguments(bundle);
            Unit unit = Unit.INSTANCE;
            fragmentTransactionBeginTransaction.replace(R.id.flContent, dailyFindContentFragment);
            fragmentTransactionBeginTransaction.commit();
        }
    }
}
