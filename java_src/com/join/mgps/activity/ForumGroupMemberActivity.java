package com.join.mgps.activity;

import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumResponse;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mg_forum_group_member_activity)
public class ForumGroupMemberActivity extends BaseAppCompatActivity {
    private ForumBaseAdapter adapter;

    @ViewById
    TextView forum_title_center;

    @Extra
    int gid;
    com.join.android.app.component.video.c helper;
    private List<ForumData.GroupMemberBean> list;

    @ViewById
    XListView2 listView;
    private com.join.mgps.customview.j listViewRefreshListener;

    @ViewById
    ForumLoadingView loadingView;
    private List<ForumData.GroupMemberBean> managers;

    /* JADX INFO: renamed from: me, reason: collision with root package name */
    private ForumData.GroupMemberBean f51451me;
    public int pageCount;
    public int pageLoading;
    com.join.mgps.rpc.i rpcForumClient;
    private Handler mHandler = new Handler();
    String TAG = "ForumGroupMemberActivity";

    class a implements com.join.mgps.customview.i {
        a() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (!ForumGroupMemberActivity.this.isNetWorkConnected()) {
                ForumGroupMemberActivity.this.stopXlistRefreshAndLoadMore();
            } else {
                ForumGroupMemberActivity forumGroupMemberActivity = ForumGroupMemberActivity.this;
                forumGroupMemberActivity.getGroupFans(forumGroupMemberActivity.pageCount + 1);
            }
        }
    }

    class b implements com.join.mgps.customview.j {
        b() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            if (ForumGroupMemberActivity.this.isNetWorkConnected()) {
                ForumGroupMemberActivity forumGroupMemberActivity = ForumGroupMemberActivity.this;
                forumGroupMemberActivity.pageCount = 0;
                forumGroupMemberActivity.pageLoading = 0;
                forumGroupMemberActivity.getGroupFans(1);
            }
        }
    }

    class c extends ForumBaseAdapter.b1 {
        c() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void n(int gid) {
            ForumGroupMemberActivity.this.exitGroup(gid);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XListView2 xListView2 = ForumGroupMemberActivity.this.listView;
            if (xListView2 == null) {
                return;
            }
            xListView2.v();
            ForumGroupMemberActivity.this.listView.u();
            ForumGroupMemberActivity forumGroupMemberActivity = ForumGroupMemberActivity.this;
            if (forumGroupMemberActivity.pageLoading == -1) {
                forumGroupMemberActivity.listView.setNoMore();
            }
        }
    }

    class e extends ForumLoadingView.e {
        e(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumGroupMemberActivity.this.loading();
        }
    }

    class f extends ForumLoadingView.e {
        f(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            ForumGroupMemberActivity.this.loading();
        }
    }

    class g extends ForumLoadingView.e {
        g(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumGroupMemberActivity.this.loading();
        }
    }

    private void initListView() {
        this.listView.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.listView.setPullLoadEnable(new a());
        b bVar = new b();
        this.listViewRefreshListener = bVar;
        this.listView.setPullRefreshEnable(bVar);
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this, this.helper);
        this.adapter = forumBaseAdapter;
        forumBaseAdapter.C0(this.TAG);
        this.adapter.I0(new c());
        this.listView.setAdapter((ListAdapter) this.adapter);
    }

    private void initViews() {
        initListView();
    }

    private void setListUi() {
        List<ForumData.GroupMemberBean> list = this.list;
        if (list == null || list.size() == 0) {
            return;
        }
        this.adapter.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.GROUP_MEMBER_SECTION_TITLE, new ForumBaseAdapter.r1.d("组员们")));
        String uid = AccountUtil_.getInstance_(this).getUid();
        int i10 = 0;
        while (i10 < this.list.size()) {
            ForumData.GroupMemberBean groupMemberBean = this.list.get(i10);
            this.adapter.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.GROUP_MEMBER_ITEM, new ForumBaseAdapter.r1.c(groupMemberBean.getAvatar_src(), groupMemberBean.getNickname(), false, groupMemberBean.getGrade(), groupMemberBean.getJoin_time(), (TextUtils.isEmpty(uid) || TextUtils.isEmpty(groupMemberBean.getUid()) || !uid.equals(groupMemberBean.getUid())) ? false : true, false, this.gid, Integer.parseInt(groupMemberBean.getUid()))));
            i10++;
            uid = uid;
        }
    }

    private void setManagersUi() {
        List<ForumData.GroupMemberBean> list = this.managers;
        if (list == null || list.size() == 0) {
            return;
        }
        this.adapter.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.GROUP_MEMBER_SECTION_TITLE, new ForumBaseAdapter.r1.d("管理们")));
        String uid = AccountUtil_.getInstance_(this).getUid();
        int i10 = 0;
        while (i10 < this.managers.size()) {
            ForumData.GroupMemberBean groupMemberBean = this.managers.get(i10);
            this.adapter.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.GROUP_MEMBER_ITEM, new ForumBaseAdapter.r1.c(groupMemberBean.getAvatar_src(), groupMemberBean.getNickname(), true, groupMemberBean.getGrade(), groupMemberBean.getJoin_time(), (TextUtils.isEmpty(uid) || TextUtils.isEmpty(groupMemberBean.getUid()) || !uid.equals(groupMemberBean.getUid())) ? false : true, false, this.gid, Integer.parseInt(groupMemberBean.getUid()))));
            i10++;
            uid = uid;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.forum_title_center.setVisibility(0);
        this.forum_title_center.setText("小组成员");
        this.helper = new com.join.android.app.component.video.c(this, this.TAG);
        initViews();
        changeLoadingState(1);
        loading();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeJoinState(boolean isJoined) {
        ForumData.GroupMemberBean groupMemberBean = this.f51451me;
        if (groupMemberBean != null) {
            groupMemberBean.setIs_joined(isJoined);
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeLoadingState(int state) {
        ForumLoadingView forumLoadingView = this.loadingView;
        if (forumLoadingView == null) {
            return;
        }
        if (state == 1) {
            forumLoadingView.j(1);
            return;
        }
        if (state == 2) {
            forumLoadingView.j(2);
            return;
        }
        if (state == 4) {
            forumLoadingView.j(4);
            return;
        }
        if (state == 16) {
            forumLoadingView.setFailedMsg("加载失败，再试试吧~");
            ForumLoadingView forumLoadingView2 = this.loadingView;
            forumLoadingView2.setListener(new g(forumLoadingView2));
            this.loadingView.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.setListener(new e(forumLoadingView));
            this.loadingView.j(9);
        } else {
            if (state != 10) {
                return;
            }
            forumLoadingView.setFailedMsg("没有更多内容哦~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new f(forumLoadingView3));
            this.loadingView.setReloadingVisibility(0);
            this.loadingView.j(10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void exitGroup(int fid) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            return;
        }
        try {
            ForumResponse<ForumData.HomepageRecommendLabel> forumResponseO = this.rpcForumClient.O(fid, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
            if (forumResponseO == null || forumResponseO.getData() == null) {
                T(getString(R.string.exit_group_failed));
                return;
            }
            if (forumResponseO.getError() == 0) {
                changeJoinState(false);
            }
            T(forumResponseO.getData().getMsg());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:54:0x00af  */
    @Background
    public void getGroupFans(int page) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            return;
        }
        try {
            try {
                int i10 = this.pageLoading;
                if (i10 != -1 && i10 != page) {
                    this.pageLoading = page;
                    ForumResponse<ForumData.GroupFans> forumResponseZ = this.rpcForumClient.z(this.gid, page, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
                    if (forumResponseZ != null && forumResponseZ.getError() == 0) {
                        if (forumResponseZ.getData() == null) {
                            changeLoadingState(4);
                            if (this.pageLoading != -1) {
                                this.pageLoading = 0;
                            }
                            stopXlistRefreshAndLoadMore();
                            return;
                        }
                        ForumData.GroupFans data = forumResponseZ.getData();
                        if ((data.getList() == null || data.getList().size() == 0) && ((page == 1 && (data.getManagers() == null || data.getList().size() == 0)) || page > 1)) {
                            this.pageLoading = -1;
                            changeLoadingState(10);
                            if (this.pageLoading != -1) {
                                this.pageLoading = 0;
                            }
                            stopXlistRefreshAndLoadMore();
                            return;
                        }
                        showGroupFans(page, data);
                        this.pageCount = page;
                        changeLoadingState(2);
                    }
                    if (this.pageLoading != -1) {
                        this.pageLoading = 0;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                if (i10 != -1) {
                    this.pageLoading = 0;
                }
                stopXlistRefreshAndLoadMore();
            } catch (Exception e10) {
                e10.printStackTrace();
                stopXlistRefreshAndLoadMore();
                if (page == 1) {
                    this.loadingView.m();
                }
                changeLoadingState(4);
                if (this.pageLoading != -1) {
                    this.pageLoading = 0;
                }
            }
        } catch (Throwable th) {
            if (this.pageLoading != -1) {
                this.pageLoading = 0;
            }
            stopXlistRefreshAndLoadMore();
            throw th;
        }
    }

    boolean isNetWorkConnected() {
        if (com.join.android.app.common.utils.m.j(getBaseContext())) {
            return true;
        }
        T(getString(R.string.net_connect_failed));
        changeLoadingState(9);
        stopXlistRefreshAndLoadMore();
        return false;
    }

    void loading() {
        getGroupFans(1);
    }

    synchronized void notifyDataSetChanged() {
        ForumBaseAdapter forumBaseAdapter = this.adapter;
        if (forumBaseAdapter != null && forumBaseAdapter.x() != null) {
            this.adapter.x().clear();
        }
        setManagersUi();
        setListUi();
        ForumBaseAdapter forumBaseAdapter2 = this.adapter;
        if (forumBaseAdapter2 != null) {
            forumBaseAdapter2.notifyDataSetChanged();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.F();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.G();
        }
        super.onPause();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void onPayGameSuccess(@Receiver.Extra("gameData") CollectionBeanSub sub) {
        if (sub != null) {
            PurchasedListTable purchasedListTableN = t6.e0.o().n(sub.getGame_id());
            if (purchasedListTableN == null) {
                purchasedListTableN = new PurchasedListTable();
            }
            purchasedListTableN.setGame_id(sub.getGame_id());
            t6.e0.o().m(purchasedListTableN);
        }
        ForumBaseAdapter forumBaseAdapter = this.adapter;
        if (forumBaseAdapter != null) {
            forumBaseAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.join.android.app.component.video.c cVar = this.helper;
        if (cVar != null) {
            cVar.H();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showGroupFans(int page, ForumData.GroupFans data) {
        if (data == null) {
            return;
        }
        if (this.list == null) {
            this.list = new ArrayList();
        }
        if (this.managers == null) {
            this.managers = new ArrayList();
        }
        if (page == 1) {
            this.f51451me = data.getMe();
            this.list.clear();
            this.managers.clear();
            if (data.getManagers() != null) {
                this.managers.addAll(data.getManagers());
            }
        }
        if (data.getList() != null) {
            this.list.addAll(data.getList());
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopXlistRefreshAndLoadMore() {
        this.mHandler.postDelayed(new d(), 1500L);
    }
}
