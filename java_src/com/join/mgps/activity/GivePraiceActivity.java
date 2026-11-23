package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumProfileMessageBean;
import com.join.mgps.dto.ForumProfileMessageData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GivePriaceBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_give_price)
public class GivePraiceActivity extends BaseFragmentActivity {
    private UserInfo accountBean;
    d adapter;
    ForumResponse<ForumProfileMessageData> datas;
    String indexComment;

    @ViewById
    LinearLayout iv_nome;
    List<ForumProfileMessageBean> listData;
    List<GivePriaceBean.MessagesBean.DataBean> listData2;

    @ViewById
    XListView2 listview;

    @ViewById
    LinearLayout ll_finsh;

    @ViewById
    LinearLayout ll_title;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    Context mContext;

    @ViewById
    PtrClassicFrameLayout myswip;
    int pn = 1;
    com.join.mgps.rpc.i rpcClient;

    @ViewById
    Button setNetwork;
    int type;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            GivePraiceActivity.this.Refresh();
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            int i10 = givePraiceActivity.type;
            if (i10 == 1) {
                givePraiceActivity.pn = 1;
                givePraiceActivity.getCommunityValue();
            } else if (i10 == 2) {
                givePraiceActivity.pn = 1;
                givePraiceActivity.getValueComment();
            }
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            GivePraiceActivity.this.Refresh();
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            int i10 = givePraiceActivity.type;
            if (i10 == 1) {
                givePraiceActivity.getCommunityValue();
            } else if (i10 == 2) {
                givePraiceActivity.getValueComment();
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GivePraiceActivity.this.finish();
        }
    }

    class d extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ForumProfileMessageBean f53562b;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f53564b;

            a(final int val$position) {
                this.f53564b = val$position;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
                if (givePraiceActivity.type == 1) {
                    ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                    forumPostsBean.setPid(GivePraiceActivity.this.listData.get(this.f53564b).getPid());
                    com.join.mgps.Util.r0.w0(GivePraiceActivity.this.mContext, forumPostsBean, null);
                } else {
                    if (givePraiceActivity.listData2 == null) {
                        givePraiceActivity.showToast();
                        return;
                    }
                    CommentDetailActivity_.intent(givePraiceActivity.mContext).d(GivePraiceActivity.this.listData2.get(this.f53564b).getGame_id()).b(GivePraiceActivity.this.listData2.get(this.f53564b).getOriginal_text_id() + "").f("").a(1).e(0).h(1).g("").c(GivePraiceActivity.this.listData2.get(this.f53564b).getComment_score_switch()).start();
                }
            }
        }

        class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f53566a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            TextView f53567b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            TextView f53568c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            LinearLayout f53569d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            SimpleDraweeView f53570e;

            b() {
            }
        }

        d() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            return givePraiceActivity.type == 1 ? givePraiceActivity.listData.size() : givePraiceActivity.listData2.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            return givePraiceActivity.type == 1 ? givePraiceActivity.listData.get(position) : givePraiceActivity.listData2.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            b bVar;
            String strSubstring;
            String strSubstring2;
            String strSubstring3;
            String strSubstring4;
            String strSubstring5;
            if (convertView == null) {
                convertView = LayoutInflater.from(GivePraiceActivity.this.mContext).inflate(R.layout.givepraice_item, (ViewGroup) null);
                bVar = new b();
                bVar.f53570e = (SimpleDraweeView) convertView.findViewById(R.id.simv);
                bVar.f53569d = (LinearLayout) convertView.findViewById(R.id.ll_post);
                bVar.f53567b = (TextView) convertView.findViewById(R.id.tv_name);
                bVar.f53568c = (TextView) convertView.findViewById(R.id.tv_time);
                bVar.f53566a = (TextView) convertView.findViewById(R.id.tv_post);
                convertView.setTag(bVar);
            } else {
                bVar = (b) convertView.getTag();
            }
            GivePraiceActivity givePraiceActivity = GivePraiceActivity.this;
            if (givePraiceActivity.type == 1) {
                if (givePraiceActivity.listData.get(position).getPosts() != null) {
                    this.f53562b = GivePraiceActivity.this.listData.get(position);
                }
                bVar.f53566a.setText(GivePraiceActivity.this.indexComment + this.f53562b.getPosts().getMessage());
                bVar.f53570e.setImageURI(GivePraiceActivity.this.listData.get(position).getFrom_avatar_src());
                bVar.f53567b.setText(GivePraiceActivity.this.listData.get(position).getFrom_nickname());
            } else {
                bVar.f53566a.setText(GivePraiceActivity.this.indexComment + GivePraiceActivity.this.listData2.get(position).getOriginal_text());
                bVar.f53570e.setImageURI(GivePraiceActivity.this.listData2.get(position).getPraise_user_ico());
                bVar.f53567b.setText(GivePraiceActivity.this.listData2.get(position).getPraise_title());
            }
            bVar.f53569d.setOnClickListener(new a(position));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
            Date date = new Date(System.currentTimeMillis());
            GivePraiceActivity givePraiceActivity2 = GivePraiceActivity.this;
            Date date2 = new Date((givePraiceActivity2.type == 1 ? this.f53562b.getAdd_time() : givePraiceActivity2.listData2.get(position).getPraise_time()) * 1000);
            String str = simpleDateFormat.format(date);
            String str2 = simpleDateFormat.format(date2);
            String strSubstring6 = "";
            if (str2 == null || str2.equals("")) {
                strSubstring = "";
                strSubstring2 = strSubstring;
                strSubstring3 = strSubstring2;
                strSubstring4 = strSubstring3;
                strSubstring5 = strSubstring4;
            } else {
                strSubstring6 = str2.substring(0, str2.indexOf("年"));
                strSubstring3 = str2.substring(str2.indexOf("年") + 1, str2.indexOf("月"));
                strSubstring4 = str2.substring(str2.indexOf("月") + 1, str2.indexOf("日"));
                strSubstring2 = str.substring(0, str.indexOf("年"));
                strSubstring5 = str.substring(str.indexOf("年") + 1, str.indexOf("月"));
                strSubstring = str.substring(str.indexOf("月") + 1, str.indexOf("日"));
            }
            if (!strSubstring6.equals(strSubstring2)) {
                bVar.f53568c.setText(strSubstring6 + "年" + strSubstring3 + "月" + strSubstring4 + "日");
            } else if (!strSubstring3.equals(strSubstring5)) {
                bVar.f53568c.setText(strSubstring3 + "月" + strSubstring4 + "日");
            } else if (strSubstring4.equals(strSubstring)) {
                bVar.f53568c.setText(str2.substring(str2.indexOf(" ") + 1, str2.lastIndexOf(":")));
            } else {
                bVar.f53568c.setText(strSubstring3 + "月" + strSubstring4 + "日");
            }
            return convertView;
        }
    }

    @AfterViews
    void AfterViews() {
        this.mContext = this;
        this.rpcClient = com.join.mgps.rpc.impl.g.A0();
        this.accountBean = AccountUtil_.getInstance_(this).getAccountData();
        this.adapter = new d();
        this.listData = new ArrayList();
        this.listData2 = new ArrayList();
        this.listview.setAdapter((ListAdapter) this.adapter);
        this.type = getIntent().getIntExtra("praice", 1);
        showLoding();
        if (this.type == 1) {
            this.indexComment = "帖子:";
            getCommunityValue();
        } else {
            this.indexComment = "点评:";
            getValueComment();
        }
        this.listview.setPullRefreshEnable(new a());
        this.listview.setPullLoadEnable(new b());
        this.listview.l();
        this.ll_finsh.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Refresh() {
        try {
            XListView2 xListView2 = this.listview;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void ShowTitle() {
        this.ll_title.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void adapterNotifyData(List<ForumProfileMessageBean> list) {
        this.listData.addAll(list);
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void adapterNotifyData2(List<GivePriaceBean.MessagesBean.DataBean> list) {
        this.listData2.addAll(list);
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void cleanNotifyData(List<ForumProfileMessageBean> listData) {
        listData.clear();
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void cleanNotifyData2(List<GivePriaceBean.MessagesBean.DataBean> listData2) {
        listData2.clear();
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getCommunityValue() {
        if (!com.join.android.app.common.utils.m.j(this.mContext)) {
            showNoData(2);
            hideLoadingView();
            showLodingFailed();
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            com.join.mgps.rpc.i iVar = this.rpcClient;
            int uid = this.accountBean.getUid();
            String token = this.accountBean.getToken();
            int i10 = this.pn;
            this.pn = i10 + 1;
            ForumResponse<ForumProfileMessageData> forumResponseR0 = iVar.r0(uid, token, i10, 10);
            updateListHeadAndFoot();
            if (forumResponseR0 == null) {
                hideLoadingView();
                showNoData(1);
                return;
            }
            if (forumResponseR0.getData() != null) {
                if (forumResponseR0.getData().getMessage_list() == null || forumResponseR0.getData().getMessage_list().size() <= 0) {
                    if (this.pn != 2) {
                        setNoMore();
                        return;
                    }
                    hideLoadingView();
                    setNoMore();
                    showNoData(1);
                    return;
                }
                if (this.pn == 2) {
                    cleanNotifyData(this.listData);
                }
                if (forumResponseR0.getData().getMessage_list().size() < 10) {
                    setNoMore();
                }
                Iterator<ForumProfileMessageBean> it2 = forumResponseR0.getData().getMessage_list().iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
                adapterNotifyData(arrayList);
                hideLoadingView();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            hideLoadingView();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getValueComment() {
        if (!com.join.android.app.common.utils.m.j(this.mContext)) {
            showNoData(2);
            hideLoadingView();
            showLodingFailed();
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            String str = com.join.mgps.rpc.h.f72345i + "/android/v2/message/praisenoticemessagelist";
            RequestBeanUtil requestBeanUtil = RequestBeanUtil.getInstance(this.mContext);
            int i10 = this.pn;
            this.pn = i10 + 1;
            GivePriaceBean givePriaceBeanI = this.rpcClient.i(str, requestBeanUtil.getPraiceMessPra(i10, this.accountBean.getUid(), this.accountBean.getToken()));
            updateListHeadAndFoot();
            if (givePriaceBeanI == null) {
                if (this.pn != 2) {
                    setNoMore();
                    return;
                }
                hideLoadingView();
                setNoMore();
                showNoData(1);
                return;
            }
            if (givePriaceBeanI.getMessages() == null) {
                if (this.pn != 2) {
                    setNoMore();
                    return;
                }
                hideLoadingView();
                setNoMore();
                showNoData(1);
                return;
            }
            if (givePriaceBeanI.getMessages().getData() == null || givePriaceBeanI.getMessages().getData().size() <= 0) {
                if (this.pn != 2) {
                    setNoMore();
                    return;
                }
                hideLoadingView();
                setNoMore();
                showNoData(1);
                return;
            }
            if (this.pn == 2) {
                cleanNotifyData2(this.listData2);
            }
            for (int i11 = 0; i11 < givePriaceBeanI.getMessages().getData().size(); i11++) {
                arrayList.add(givePriaceBeanI.getMessages().getData().get(i11));
            }
            if (arrayList.size() < 10) {
                setNoMore();
            }
            adapterNotifyData2(arrayList);
            hideLoadingView();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoadingView() {
        try {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setNoMore() {
        XListView2 xListView2 = this.listview;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.listview.u();
            this.listview.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            LinearLayout linearLayout = this.loding_layout;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.loding_faile;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNoData(int i10) {
        if (i10 != 1) {
            this.myswip.setVisibility(8);
            this.listview.setVisibility(8);
        } else {
            this.myswip.setVisibility(8);
            this.listview.setVisibility(8);
            this.iv_nome.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast() {
        com.join.mgps.Util.a3.b(this.mContext).d("帖子已删除");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateListHeadAndFoot() {
        try {
            this.listview.u();
            this.listview.v();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
