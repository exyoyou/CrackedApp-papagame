package com.join.kotlin.discount;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.databinding.t1;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.discount.adapter.CommentDataViewpagerAdapter;
import com.join.kotlin.discount.model.bean.CommentStatisticDataBean;
import com.join.kotlin.discount.proxy.GameDetailCommentDataClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailCommentDataViewModel;
import com.join.mgps.Util.p2;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\tJ\b\u0010\u001d\u001a\u00020\u0018H\u0016J\b\u0010\u001e\u001a\u00020\u0018H\u0016R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/discount/GameDetailCommentDataActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/discount/viewmodel/GameDetailCommentDataViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityGameDetailCommentDataBinding;", "Lcom/join/kotlin/discount/proxy/GameDetailCommentDataClickProxy;", "<init>", "()V", "tabTitles", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "defaultIndex", "", "getDefaultIndex", "()I", "setDefaultIndex", "(I)V", "dataBean", "Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;", "getDataBean", "()Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;", "setDataBean", "(Lcom/join/kotlin/discount/model/bean/CommentStatisticDataBean;)V", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "initTabAndViewpager", "data", "createObserver", "onBackClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailCommentDataActivity extends BaseVmDbActivity<GameDetailCommentDataViewModel, t1> implements GameDetailCommentDataClickProxy {

    @Nullable
    private CommentStatisticDataBean dataBean;
    private int defaultIndex;

    @NotNull
    private ArrayList<String> tabTitles = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initTabAndViewpager$lambda$0(GameDetailCommentDataActivity gameDetailCommentDataActivity, TabLayout.g tab, int i10) {
        Intrinsics.checkNotNullParameter(tab, "tab");
        tab.D(gameDetailCommentDataActivity.tabTitles.get(i10));
    }

    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
    }

    @Nullable
    public final CommentStatisticDataBean getDataBean() {
        return this.dataBean;
    }

    public final int getDefaultIndex() {
        return this.defaultIndex;
    }

    public final void initTabAndViewpager(@Nullable String data) {
        CommentStatisticDataBean commentStatisticDataBean = this.dataBean;
        String avg_duration = commentStatisticDataBean != null ? commentStatisticDataBean.getAvg_duration() : null;
        if (!(avg_duration == null || avg_duration.length() == 0)) {
            this.tabTitles.add("时长数据");
        } else if (this.defaultIndex == 1) {
            this.defaultIndex = 0;
        }
        if (this.tabTitles.isEmpty()) {
            finish();
            return;
        }
        getMDatabind().f45072f.setAdapter(new CommentDataViewpagerAdapter(this.tabTitles, data, this));
        new com.google.android.material.tabs.d(getMDatabind().f45071e, getMDatabind().f45072f, new com.google.android.material.tabs.d.b() { // from class: com.join.kotlin.discount.b
            @Override // com.google.android.material.tabs.d.b
            public final void a(TabLayout.g gVar, int i10) {
                GameDetailCommentDataActivity.initTabAndViewpager$lambda$0(this.f48558a, gVar, i10);
            }
        }).a();
        getMDatabind().f45072f.setCurrentItem(this.defaultIndex);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        p2.v(this);
        getMDatabind().u((GameDetailCommentDataViewModel) getMViewModel());
        getMDatabind().t(this);
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("commentData") : null;
        Intent intent2 = getIntent();
        this.defaultIndex = intent2 != null ? intent2.getIntExtra("defaultIndex", 0) : 0;
        this.dataBean = (CommentStatisticDataBean) JsonMapper.getInstance().fromJson(stringExtra, CommentStatisticDataBean.class);
        initTabAndViewpager(stringExtra);
    }

    @Override // com.join.kotlin.discount.proxy.GameDetailCommentDataClickProxy
    public void onBackClick() {
        finish();
    }

    public final void setDataBean(@Nullable CommentStatisticDataBean commentStatisticDataBean) {
        this.dataBean = commentStatisticDataBean;
    }

    public final void setDefaultIndex(int i10) {
        this.defaultIndex = i10;
    }
}
