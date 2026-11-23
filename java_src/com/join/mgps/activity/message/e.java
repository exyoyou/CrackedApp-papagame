package com.join.mgps.activity.message;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.join.android.app.common.utils.m;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.customview.j;
import com.join.mgps.dto.NoticeFragmentBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.join.mgps.rpc.i;
import com.join.mgps.rpc.impl.g;
import com.wufan.user.service.protobuf.UserInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes9.dex */
@EFragment(R.layout.fragment_message_notice)
public class e extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f57723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    XListView2 f57724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f57725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f57726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f57727g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    i f57728h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private UserInfo f57729i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Context f57730j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    d f57731k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    Button f57733m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    List<c> f57736p;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f57732l = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f57734n = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f57735o = false;

    class a implements j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            e eVar = e.this;
            eVar.f57732l = 1;
            eVar.M();
            e eVar2 = e.this;
            if (eVar2.f57734n) {
                eVar2.Q();
            }
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            e.this.M();
            e eVar = e.this;
            if (eVar.f57734n) {
                eVar.Q();
            }
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f57739a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57740b;

        public c(Object object, int type) {
            this.f57739a = object;
            this.f57740b = type;
        }
    }

    class d extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ NoticeFragmentBean.DataBean.NotificationListBean f57743b;

            a(final NoticeFragmentBean.DataBean.NotificationListBean val$bean) {
                this.f57743b = val$bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                e.this.R(this.f57743b.getJump_info().get(0).getSub().get(0), Integer.valueOf(this.f57743b.getJump_info().get(0).getSub().get(0).getLink_type()).intValue());
            }
        }

        class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57745a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            TextView f57746b;

            b() {
            }
        }

        class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            TextView f57748a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            TextView f57749b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            TextView f57750c;

            c() {
            }
        }

        d() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return e.this.f57736p.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return e.this.f57736p.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return e.this.f57736p.get(position).f57740b;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            c cVar;
            b bVar;
            int itemViewType = getItemViewType(position);
            if (itemViewType == 1) {
                if (convertView == null) {
                    convertView = LayoutInflater.from(e.this.f57730j).inflate(R.layout.notice_fragment_item, (ViewGroup) null);
                    cVar = new c();
                    cVar.f57748a = (TextView) convertView.findViewById(R.id.tv_title);
                    cVar.f57749b = (TextView) convertView.findViewById(R.id.tv_time);
                    cVar.f57750c = (TextView) convertView.findViewById(R.id.showDetail);
                    convertView.setTag(cVar);
                } else {
                    cVar = (c) convertView.getTag();
                }
                NoticeFragmentBean.DataBean.NotificationListBean notificationListBean = (NoticeFragmentBean.DataBean.NotificationListBean) e.this.f57736p.get(position).f57739a;
                cVar.f57749b.setText(notificationListBean.getAdd_time());
                cVar.f57750c.setOnClickListener(new a(notificationListBean));
                cVar.f57748a.setText(notificationListBean.getTitle());
            } else if (itemViewType == 2) {
                if (convertView == null) {
                    convertView = LayoutInflater.from(e.this.f57730j).inflate(R.layout.notice_fragment_item_no, (ViewGroup) null);
                    bVar = new b();
                    bVar.f57746b = (TextView) convertView.findViewById(R.id.tv_time);
                    bVar.f57745a = (TextView) convertView.findViewById(R.id.tv_title);
                    convertView.setTag(bVar);
                } else {
                    bVar = (b) convertView.getTag();
                }
                NoticeFragmentBean.DataBean.NotificationListBean notificationListBean2 = (NoticeFragmentBean.DataBean.NotificationListBean) e.this.f57736p.get(position).f57739a;
                bVar.f57746b.setText(notificationListBean2.getAdd_time());
                bVar.f57745a.setText(notificationListBean2.getTitle());
            }
            return convertView;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }
    }

    @UiThread
    void M() {
        try {
            XListView2 xListView2 = this.f57724d;
            if (xListView2 != null) {
                xListView2.l();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void N(List<c> datas2) {
        try {
            this.f57736p.addAll(datas2);
            d dVar = this.f57731k;
            if (dVar != null) {
                dVar.notifyDataSetChanged();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void O(List<c> datas) {
        datas.clear();
        this.f57731k.notifyDataSetChanged();
    }

    String P(long time) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        Date date2 = new Date(time);
        String str = simpleDateFormat.format(date);
        String str2 = simpleDateFormat.format(date2);
        String strSubstring = str2.substring(0, str2.indexOf("年"));
        String strSubstring2 = str2.substring(str2.indexOf("年") + 1, str2.indexOf("月"));
        String strSubstring3 = str2.substring(str2.indexOf("月") + 1, str2.indexOf("日"));
        String strSubstring4 = str.substring(0, str.indexOf("年"));
        String strSubstring5 = str.substring(str.indexOf("年") + 1, str.indexOf("月"));
        String strSubstring6 = str.substring(str.indexOf("月") + 1, str.indexOf("日"));
        if (!strSubstring.equals(strSubstring4)) {
            return strSubstring + "年" + strSubstring2 + "月" + strSubstring3 + "日";
        }
        if (!strSubstring2.equals(strSubstring5)) {
            return strSubstring2 + "月" + strSubstring3 + "日";
        }
        if (strSubstring3.equals(strSubstring6)) {
            return str2.contains(":") ? str2.substring(str2.indexOf(" ") + 1, str2.lastIndexOf(":")) : str2.substring(str2.indexOf(" ") + 1, str2.indexOf("分"));
        }
        return strSubstring2 + "月" + strSubstring3 + "日";
    }

    @Background
    void Q() {
        if (!m.j(this.f57730j)) {
            V(2);
            S();
            showLodingFailed();
            return;
        }
        try {
            this.f57734n = false;
            ArrayList arrayList = new ArrayList();
            String str = q.n(this.f57730j).z() + "_" + q.n(this.f57730j).A();
            i iVar = this.f57728h;
            int uid = this.f57729i.getUid();
            String token = this.f57729i.getToken();
            int i10 = this.f57732l;
            this.f57732l = i10 + 1;
            NoticeFragmentBean noticeFragmentBeanU = iVar.u(uid, token, i10, 10, str, "wufun");
            if (noticeFragmentBeanU != null) {
                W();
                if (noticeFragmentBeanU.getData() == null) {
                    this.f57734n = true;
                    return;
                }
                if (noticeFragmentBeanU.getData().getNotification_list() == null || noticeFragmentBeanU.getData().getNotification_list().size() <= 0) {
                    this.f57734n = true;
                    if (this.f57732l != 2) {
                        U();
                        return;
                    }
                    S();
                    V(1);
                    U();
                    return;
                }
                if (this.f57732l == 2) {
                    O(this.f57736p);
                }
                for (NoticeFragmentBean.DataBean.NotificationListBean notificationListBean : noticeFragmentBeanU.getData().getNotification_list()) {
                    if (notificationListBean.getJump_info() == null || notificationListBean.getJump_info().equals("")) {
                        arrayList.add(new c(notificationListBean, 2));
                    } else {
                        arrayList.add(new c(notificationListBean, 1));
                    }
                }
                if (noticeFragmentBeanU.getData().getNotification_list().size() < 10) {
                    U();
                }
                this.f57734n = true;
                N(arrayList);
                S();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f57734n = true;
            S();
            showLodingFailed();
        }
    }

    void R(NoticeFragmentBean.DataBean.NotificationListBean.JumpInfoBean.SubBean jumpInfoBean, int linkType) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setTpl_type(jumpInfoBean.getTpl_type());
        intentDateBean.setLink_type(linkType);
        intentDateBean.setJump_type(Integer.valueOf(jumpInfoBean.getJump_type()).intValue());
        intentDateBean.setCrc_link_type_val(jumpInfoBean.getCrc_link_type_val());
        intentDateBean.setLink_type_val(jumpInfoBean.getLink_type_val());
        IntentUtil.getInstance().intentActivity(this.f57730j, intentDateBean);
    }

    @UiThread
    void S() {
        LinearLayout linearLayout = this.f57725e;
        if (linearLayout == null || this.f57726f == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f57726f.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void T() {
        XListView2 xListView2;
        if (this.f57723c == null || (xListView2 = this.f57724d) == null || this.f57727g == null) {
            return;
        }
        xListView2.setVisibility(0);
        this.f57723c.setVisibility(0);
        this.f57727g.setVisibility(8);
    }

    @UiThread
    void U() {
        XListView2 xListView2 = this.f57724d;
        if (xListView2 != null) {
            xListView2.setNoMore();
            this.f57724d.v();
            this.f57724d.u();
        }
    }

    @UiThread
    void V(int i10) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.f57723c;
        if (ptrClassicFrameLayout == null || this.f57724d == null || this.f57727g == null) {
            return;
        }
        if (i10 != 1) {
            ptrClassicFrameLayout.setVisibility(8);
            this.f57724d.setVisibility(8);
        } else {
            ptrClassicFrameLayout.setVisibility(8);
            this.f57724d.setVisibility(8);
            this.f57727g.setVisibility(0);
        }
    }

    @UiThread
    void W() {
        XListView2 xListView2 = this.f57724d;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f57724d.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @AfterViews
    void afterViews() {
        this.f57730j = getActivity();
        this.f57728h = g.A0();
        this.f57729i = AccountUtil_.getInstance_(getActivity()).getAccountData();
        this.f57736p = new ArrayList();
        d dVar = new d();
        this.f57731k = dVar;
        this.f57724d.setAdapter((ListAdapter) dVar);
        this.f57724d.setPullRefreshEnable(new a());
        this.f57724d.setPullLoadEnable(new b());
        this.f57724d.l();
        showLoding();
        if (this.f57734n) {
            Q();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f57734n = true;
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f57730j);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if (isVisibleToUser && this.f57735o) {
            this.f57735o = false;
            this.f57732l = 1;
            Q();
        }
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f57725e;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f57726f;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f57726f;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f57725e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
    }
}
