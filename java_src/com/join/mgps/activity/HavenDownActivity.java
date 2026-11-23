package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.HavenForumListGameItem;
import com.join.mgps.dto.HavenForumListbean;
import com.join.mgps.dto.HomeViewSwich;
import com.join.mgps.pref.PrefDef_;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_haven_down)
public class HavenDownActivity extends BaseAppCompatActivity {
    a adapter;

    @ViewById
    TextView appName;
    com.join.mgps.rpc.i client;
    Context context;
    com.join.mgps.dialog.f1 dialog;

    @ViewById
    View downFrom;

    @ViewById
    TextView downFromText;

    @Extra
    DownloadTask downloadTask;

    @ViewById
    View forumData;

    @ViewById
    View goVow;

    @ViewById
    View layoutq;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    RecyclerView recycleView;
    com.join.mgps.rpc.e rpcClient;

    @ViewById
    View showView;
    String tag;

    @ViewById
    View topLayout;
    int showType = 1;
    List<HavenForumListbean> datas = new ArrayList();

    class a extends RecyclerView.Adapter<b> {

        /* JADX INFO: renamed from: com.join.mgps.activity.HavenDownActivity$a$a, reason: collision with other inner class name */
        class ViewOnClickListenerC0669a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ HavenForumListbean f53921b;

            ViewOnClickListenerC0669a(final HavenForumListbean val$bean) {
                this.f53921b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MobclickAgentKt.onEvent(HavenDownActivity.this.context, "onSourceH5");
                IntentUtil.getInstance().goShareWebActivity(HavenDownActivity.this.context, this.f53921b.getResourceUrl());
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ HavenForumListbean f53923b;

            b(final HavenForumListbean val$bean) {
                this.f53923b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                IntentUtil.getInstance().goFormDetial(HavenDownActivity.this.context, this.f53923b.getPid() + "");
            }
        }

        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(HavenForumListbean havenForumListbean, View view) {
            IntentUtil.getInstance().goFormDetial(HavenDownActivity.this.context, havenForumListbean.getPid() + "");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull b havenHolder, int i10) {
            final HavenForumListbean havenForumListbean = HavenDownActivity.this.datas.get(i10);
            havenHolder.f53925d.setText(havenForumListbean.getSubject());
            havenHolder.f53926e.setText(HavenDownActivity.this.tag);
            if (havenForumListbean.getGameSimple() != null) {
                HavenForumListGameItem gameSimple = havenForumListbean.getGameSimple();
                if (gameSimple != null) {
                    havenHolder.f53926e.setText(gameSimple.getName());
                    SimpleDraweeView simpleDraweeView = havenHolder.f53928g;
                    if (simpleDraweeView != null) {
                        com.join.android.app.common.utils.l.h(simpleDraweeView, gameSimple.getIcon());
                    }
                }
                View view = havenHolder.f53929h;
                if (view != null) {
                    view.setVisibility(0);
                    havenHolder.f53929h.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.b6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f56869b.b(havenForumListbean, view2);
                        }
                    });
                }
                havenHolder.f53927f.setVisibility(0);
                havenHolder.f53927f.setOnClickListener(new ViewOnClickListenerC0669a(havenForumListbean));
            } else {
                View view2 = havenHolder.f53929h;
                if (view2 != null) {
                    view2.setVisibility(8);
                }
                havenHolder.f53927f.setVisibility(8);
            }
            havenHolder.f53930i.setOnClickListener(new b(havenForumListbean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return HavenDownActivity.this.new b(LayoutInflater.from(HavenDownActivity.this.context).inflate(R.layout.haven_forum_list_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return HavenDownActivity.this.datas.size();
        }
    }

    class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f53925d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f53926e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        View f53927f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        SimpleDraweeView f53928g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f53929h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f53930i;

        public b(View itemView) {
            super(itemView);
            this.f53925d = (TextView) itemView.findViewById(R.id.content);
            this.f53926e = (TextView) itemView.findViewById(R.id.appName);
            this.f53927f = itemView.findViewById(R.id.detail);
            this.f53928g = (SimpleDraweeView) itemView.findViewById(R.id.icon);
            this.f53929h = itemView.findViewById(R.id.gameLayout);
            this.f53930i = itemView.findViewById(R.id.main);
        }
    }

    @AfterViews
    void afterviews() {
        this.goVow.setVisibility(8);
        this.context = this;
        MobclickAgentKt.onEvent(this, "onFindSourceStart");
        this.client = com.join.mgps.rpc.impl.g.A0();
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.recycleView.setLayoutManager(new LinearLayoutManager(this));
        a aVar = new a();
        this.adapter = aVar;
        this.recycleView.setAdapter(aVar);
        HomeViewSwich homeViewSwich = MApplication.U;
        if (homeViewSwich != null) {
            try {
                this.downFromText.setText(homeViewSwich.getCommunity_entrance_title().getCfg_values());
            } catch (Exception unused) {
            }
        } else {
            this.downFromText.setText(this.prefDef.community_entrance_title().d());
        }
        if (com.join.mgps.Util.t2.h(this.tag)) {
            this.tag = this.downloadTask.getShowName();
        }
        this.appName.setText(this.tag);
        getTag();
    }

    @Click
    void downFrom() {
        if (this.showType == 0) {
            IntentUtil.getInstance().goMainLabelActivity(this, 0, this.tag, 1);
            finish();
        } else if (com.join.android.app.common.utils.m.j(this.context)) {
            loadData();
        } else {
            com.join.mgps.Util.a3.b(this.context).d("请检查网络");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getTag() {
        showLoding();
        try {
            try {
                String data = this.rpcClient.l1(RequestBeanUtil.getInstance(this.context).getDetialmoreServer(this.downloadTask.getCrc_link_type_val())).getMessages().getData();
                if (com.join.mgps.Util.t2.i(data)) {
                    this.tag = data;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            hideLoding();
        }
    }

    @Click
    void goVow() {
        if (AccountUtil_.getInstance_(this.context).isTourist()) {
            IntentUtil.getInstance().goLogin(this.context);
        } else {
            HavenWishActivity_.intent(this).a(this.downloadTask).start();
            finish();
        }
    }

    @Click
    void goforumTagList() {
        IntentUtil.getInstance().goMainLabelActivity(this, 0, this.tag, 1);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoding() {
        this.dialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void loadData() {
        showLoding();
        try {
            try {
                List<HavenForumListbean> posts = this.client.i0(com.join.mgps.rpc.h.E + "/posts/tags", this.tag).getData().getPosts();
                if (posts != null && posts.size() > 0) {
                    updateUi(posts);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            hideLoding();
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        Rect rect = new Rect();
        View view = this.showView;
        if (view != null) {
            view.getGlobalVisibleRect(rect);
            if (rect.contains((int) event.getX(), (int) event.getY())) {
                return true;
            }
            finish();
        }
        return super.onTouchEvent(event);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        this.dialog.show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(List<HavenForumListbean> datas) {
        this.datas.clear();
        this.datas.addAll(datas);
        this.adapter.notifyDataSetChanged();
        this.layoutq.setVisibility(8);
        this.forumData.setVisibility(0);
        MobclickAgentKt.onEvent(this.context, "onSourceList");
    }
}
