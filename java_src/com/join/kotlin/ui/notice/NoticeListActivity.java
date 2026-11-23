package com.join.kotlin.ui.notice;

import android.os.Bundle;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.m;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.i3;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.coupon.NoticeListData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.BTActivityBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014J\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u0019H\u0016J\b\u0010!\u001a\u00020\u0019H\u0016J\b\u0010\"\u001a\u00020\u0019H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/notice/NoticeListActivity;", "Lcom/BaseAppCompatActivity;", "Lcom/join/kotlin/ui/notice/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "<init>", "()V", "viewModle", "Lcom/join/kotlin/ui/notice/NoticeViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/notice/NoticeViewModle;", "setViewModle", "(Lcom/join/kotlin/ui/notice/NoticeViewModle;)V", "viewdataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ActivityNoticelistActivityBinding;", "getViewdataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityNoticelistActivityBinding;", "setViewdataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ActivityNoticelistActivityBinding;)V", "page", "", "getPage", "()I", "setPage", "(I)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "loadData", "onClickItem", "data", "Lcom/join/mgps/dto/BTActivityBean;", "onClickBack", "onClickReload", "onClickSetNetWork", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NoticeListActivity extends BaseAppCompatActivity implements ClickProxy, LoadBindClickProxy {
    private int page = 1;
    public NoticeViewModle viewModle;

    @Nullable
    private i3 viewdataBinding;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$0(NoticeListActivity noticeListActivity, ArrayList arrayList) {
        XRecyclerView xRecyclerView;
        RecyclerView.Adapter adapter;
        i3 i3Var = noticeListActivity.viewdataBinding;
        if (i3Var == null || (xRecyclerView = i3Var.f39626c) == null || (adapter = xRecyclerView.getAdapter()) == null) {
            return;
        }
        adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(NoticeListActivity noticeListActivity, ResponseModel responseModel) {
        XRecyclerView xRecyclerView;
        XRecyclerView xRecyclerView2;
        RecyclerView.Adapter adapter;
        XRecyclerView xRecyclerView3;
        boolean z10 = false;
        if (responseModel != null && responseModel.getCode() == 200) {
            z10 = true;
        }
        if (z10) {
            NoticeListData noticeListData = (NoticeListData) responseModel.getData();
            if (noticeListActivity.page == responseModel.getPage()) {
                noticeListActivity.page++;
            }
            ArrayList<BTActivityBean> value = noticeListActivity.getViewModle().getNoticeDats().getValue();
            if (value != null) {
                value.addAll(noticeListData.getGame_announcement_dto_list());
            }
            i3 i3Var = noticeListActivity.viewdataBinding;
            if (i3Var != null && (xRecyclerView3 = i3Var.f39626c) != null) {
                xRecyclerView3.loadMoreComplete();
            }
        } else {
            i3 i3Var2 = noticeListActivity.viewdataBinding;
            if (i3Var2 != null && (xRecyclerView = i3Var2.f39626c) != null) {
                xRecyclerView.setNoMore();
            }
        }
        i3 i3Var3 = noticeListActivity.viewdataBinding;
        if (i3Var3 != null && (xRecyclerView2 = i3Var3.f39626c) != null && (adapter = xRecyclerView2.getAdapter()) != null) {
            adapter.notifyDataSetChanged();
        }
        noticeListActivity.getViewModle().updateShowLoadUI(true);
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final NoticeViewModle getViewModle() {
        NoticeViewModle noticeViewModle = this.viewModle;
        if (noticeViewModle != null) {
            return noticeViewModle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        return null;
    }

    @Nullable
    public final i3 getViewdataBinding() {
        return this.viewdataBinding;
    }

    public final void loadData(int page) {
        RequestModel<RequestGameIdArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this);
        RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
        requestGameIdArgs.setGameId(getIntent().getStringExtra("gameId"));
        requestGameIdArgs.setPage(page);
        requestGameIdArgs.setUid(AccountUtil_.getInstance_(this).getAccountData().getUid());
        requestModel.setArgs(requestGameIdArgs);
        if (m.j(this)) {
            getViewModle().getRequest().getNoticeData(requestModel);
        } else {
            getViewModle().updateShowLoadUI(false);
        }
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickBack() {
        finish();
    }

    @Override // com.join.kotlin.ui.notice.ClickProxy
    public void onClickItem(@NotNull BTActivityBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        IntentUtil.getInstance().goShareWebActivity(this, data.getJump_url());
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        getViewModle().getLoadDataBinding().setValue(new LoadBindindData(2));
        loadData(this.page);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.N3(this);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        XRecyclerView xRecyclerView;
        XRecyclerView xRecyclerView2;
        super.onCreate(savedInstanceState);
        this.viewdataBinding = (i3) DataBindingUtil.setContentView(this, R.layout.activity_noticelist_activity);
        setViewModle((NoticeViewModle) new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(NoticeViewModle.class));
        i3 i3Var = this.viewdataBinding;
        if (i3Var != null) {
            i3Var.setVariable(54, getViewModle());
        }
        i3 i3Var2 = this.viewdataBinding;
        if (i3Var2 != null) {
            i3Var2.setVariable(8, this);
        }
        i3 i3Var3 = this.viewdataBinding;
        if (i3Var3 != null) {
            i3Var3.setVariable(30, this);
        }
        i3 i3Var4 = this.viewdataBinding;
        if (i3Var4 != null) {
            i3Var4.setLifecycleOwner(this);
        }
        NoticeListAdapter noticeListAdapter = new NoticeListAdapter(this, this);
        getViewModle().getNoticeDats().observe(this, new Observer() { // from class: com.join.kotlin.ui.notice.a
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                NoticeListActivity.onCreate$lambda$0(this.f49332a, (ArrayList) obj);
            }
        });
        ArrayList<BTActivityBean> arrayList = new ArrayList<>();
        i3 i3Var5 = this.viewdataBinding;
        if (i3Var5 != null && (xRecyclerView2 = i3Var5.f39626c) != null) {
            xRecyclerView2.setAdapter(noticeListAdapter);
        }
        i3 i3Var6 = this.viewdataBinding;
        if (i3Var6 != null && (xRecyclerView = i3Var6.f39626c) != null) {
            xRecyclerView.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.notice.NoticeListActivity.onCreate.2
                @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
                public void onLoadMore() {
                    NoticeListActivity noticeListActivity = NoticeListActivity.this;
                    noticeListActivity.loadData(noticeListActivity.getPage());
                }

                @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
                public void onRefresh() {
                }
            });
        }
        getViewModle().getNoticeDats().setValue(arrayList);
        getViewModle().getLoadDataBinding().setValue(new LoadBindindData(2));
        loadData(this.page);
        noticeListAdapter.setOnItemClickListener(new BaseDataBindingAdapter.OnItemClickListener<BTActivityBean>() { // from class: com.join.kotlin.ui.notice.NoticeListActivity.onCreate.3
            @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter.OnItemClickListener
            public void onItemClick(int viewId, BTActivityBean item, int position) {
                Intrinsics.checkNotNullParameter(item, "item");
                IntentUtil.getInstance().goShareWebActivity(NoticeListActivity.this, item.getJump_url());
            }
        });
        getViewModle().getRequest().getResultData().observe(this, new Observer() { // from class: com.join.kotlin.ui.notice.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                NoticeListActivity.onCreate$lambda$1(this.f49333a, (ResponseModel) obj);
            }
        });
    }

    public final void setPage(int i10) {
        this.page = i10;
    }

    public final void setViewModle(@NotNull NoticeViewModle noticeViewModle) {
        Intrinsics.checkNotNullParameter(noticeViewModle, "<set-?>");
        this.viewModle = noticeViewModle;
    }

    public final void setViewdataBinding(@Nullable i3 i3Var) {
        this.viewdataBinding = i3Var;
    }
}
