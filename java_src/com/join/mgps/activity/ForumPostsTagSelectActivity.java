package com.join.mgps.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.adapter.ForumBaseAdapter;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.PurchasedListTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.RecommendLabelTag;
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
@EActivity(R.layout.activity_forum_posts_tag_select)
public class ForumPostsTagSelectActivity extends BaseAppCompatActivity {

    @Extra
    int action;

    @ViewById
    RelativeLayout actionbarLayout;
    private ForumBaseAdapter adapter;

    @ViewById
    ImageView back_image;
    com.join.android.app.component.video.c helper;

    @ViewById
    TextView layout_title;

    @ViewById
    XListView2 listView;

    @ViewById
    ForumLoadingView loadingView;

    @Extra
    int pid;

    @Extra
    int post_type;

    @ViewById
    Button release;
    com.join.mgps.rpc.i rpcForumClient;
    private boolean setResult;
    List<RecommendLabelTag> selectedItems = new ArrayList();
    List<RecommendLabelTag> tags = new ArrayList();
    List<RecommendLabelTag> postTags = new ArrayList();
    List<Integer> postTagsId = new ArrayList();
    String TAG = "ForumPostsTagSelectActivity";

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            ForumPostsTagSelectActivity.this.loading();
        }
    }

    class b extends ForumBaseAdapter.b1 {
        b() {
        }

        @Override // com.join.mgps.adapter.ForumBaseAdapter.b1, com.join.mgps.adapter.ForumBaseAdapter.t0
        public void i(RecommendLabelTag tag) {
            super.i(tag);
            if (ForumPostsTagSelectActivity.this.selectedItems.contains(tag)) {
                ForumPostsTagSelectActivity.this.selectedItems.remove(tag);
            } else {
                ForumPostsTagSelectActivity.this.selectedItems.add(tag);
            }
            ForumPostsTagSelectActivity.this.notifyDataChanged();
        }
    }

    class c extends ForumLoadingView.e {
        c(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
            super.a(v10);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsTagSelectActivity.this.loading();
        }
    }

    class d extends ForumLoadingView.e {
        d(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void a(View v10) {
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            super.b();
            ForumPostsTagSelectActivity.this.loading();
        }
    }

    class e extends ForumLoadingView.e {
        e(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            ForumPostsTagSelectActivity.this.loading();
        }
    }

    private void initListView() {
        this.listView.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.listView.setPullRefreshEnable(new a());
        ForumBaseAdapter forumBaseAdapter = new ForumBaseAdapter(this, this.helper);
        this.adapter = forumBaseAdapter;
        forumBaseAdapter.C0(this.TAG);
        this.adapter.I0(new b());
        this.listView.setAdapter((ListAdapter) this.adapter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void T(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        TextView textView = this.layout_title;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("选择");
        sb2.append(this.action == 1 ? "收录" : "删除");
        sb2.append("话题");
        textView.setText(sb2.toString());
        this.release.setVisibility(0);
        this.release.setText("完成");
        this.helper = new com.join.android.app.component.video.c(this, this.TAG);
        String stringExtra = getIntent().getStringExtra("selectedTags");
        if (!TextUtils.isEmpty(stringExtra)) {
            this.postTags.addAll((List) JsonMapper.getInstance().fromJson(stringExtra, JsonMapper.getInstance().createCollectionType(ArrayList.class, RecommendLabelTag.class)));
            for (int i10 = 0; i10 < this.postTags.size(); i10++) {
                this.postTagsId.add(Integer.valueOf(this.postTags.get(i10).getTag_id()));
            }
        }
        initListView();
        changeLoadingState(1);
        loading();
    }

    @Click
    void back_image() {
        finish();
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
            forumLoadingView2.setListener(new e(forumLoadingView2));
            this.loadingView.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.setListener(new c(forumLoadingView));
            this.loadingView.j(9);
        } else {
            if (state != 10) {
                return;
            }
            forumLoadingView.setFailedMsg("没有更多话题哦~");
            ForumLoadingView forumLoadingView3 = this.loadingView;
            forumLoadingView3.setListener(new d(forumLoadingView3));
            this.loadingView.setReloadingVisibility(0);
            this.loadingView.j(10);
        }
    }

    String getSelectedIds() {
        String str = "";
        if (this.selectedItems == null) {
            return "";
        }
        for (int i10 = 0; i10 < this.selectedItems.size(); i10++) {
            str = str + this.selectedItems.get(i10).getTag_id();
            if (i10 != this.selectedItems.size() - 1 && i10 > 0) {
                str = str + ",";
            }
        }
        return str;
    }

    void loading() {
        if (this.action == 1) {
            showAddTagList();
        } else {
            showRemoveTagList();
        }
    }

    synchronized void notifyDataChanged() {
        ForumBaseAdapter forumBaseAdapter = this.adapter;
        if (forumBaseAdapter == null) {
            return;
        }
        forumBaseAdapter.x().clear();
        if (this.tags == null) {
            return;
        }
        for (int i10 = 0; i10 < this.tags.size(); i10++) {
            setTagView(this.tags.get(i10));
        }
        this.adapter.notifyDataSetChanged();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.setResult) {
            String json = JsonMapper.getInstance().toJson(this.selectedItems);
            if (!TextUtils.isEmpty(json)) {
                Intent intent = new Intent();
                Bundle bundle = new Bundle();
                bundle.putInt("action", this.action);
                bundle.putString("ids", json);
                intent.putExtras(bundle);
                setResult(-1, intent);
            }
        }
        super.onBackPressed();
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

    @Click
    void release() {
        if (TextUtils.isEmpty(getSelectedIds())) {
            T("未勾选任何标签哟~");
        } else {
            this.setResult = true;
            onBackPressed();
        }
    }

    void setTagView(RecommendLabelTag tag) {
        if (tag == null) {
            return;
        }
        this.adapter.f(new ForumBaseAdapter.r1(ForumBaseAdapter.ViewType.TAG_ITEM, new ForumBaseAdapter.r1.g0(tag, this.selectedItems.contains(tag))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void showAddTagList() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            return;
        }
        try {
            ForumResponse<List<RecommendLabelTag>> forumResponseV = this.rpcForumClient.V(AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken(), this.post_type);
            if (forumResponseV == null || forumResponseV.getError() != 0) {
                changeLoadingState(4);
            } else if (forumResponseV.getData() == null) {
                changeLoadingState(4);
            } else {
                showTagList(forumResponseV.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            changeLoadingState(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void showRemoveTagList() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            T(getString(R.string.net_connect_failed));
            changeLoadingState(9);
            return;
        }
        try {
            ForumResponse<List<RecommendLabelTag>> forumResponseW = this.rpcForumClient.W(this.pid, AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken(), this.post_type);
            if (forumResponseW == null || forumResponseW.getError() != 0) {
                changeLoadingState(4);
            } else if (forumResponseW.getData() == null) {
                changeLoadingState(4);
            } else {
                showTagList(forumResponseW.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            changeLoadingState(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showTagList(List<RecommendLabelTag> data) {
        if (data == null || data.size() == 0) {
            changeLoadingState(10);
            return;
        }
        changeLoadingState(2);
        this.tags.clear();
        this.tags.addAll(data);
        for (int i10 = 0; i10 < this.tags.size(); i10++) {
            RecommendLabelTag recommendLabelTag = this.tags.get(i10);
            if (this.postTagsId.contains(Integer.valueOf(recommendLabelTag.getTag_id()))) {
                this.selectedItems.add(recommendLabelTag);
            }
        }
        notifyDataChanged();
    }
}
