package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.game_build)
public class u3 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    LinearLayout f71074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f71075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    XListView2 f71076e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f71077f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f71078g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    Button f71079h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    ImageView f71080i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Context f71081j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    c f71082k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f71084m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f71085n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    UserInfo f71086o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.join.mgps.rpc.b f71087p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    List<GameFromPopoWinBean.DataBean> f71088q;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f71083l = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f71089r = 0;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            u3 u3Var = u3.this;
            u3Var.f71083l = 1;
            u3Var.O();
            u3.this.R();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            u3.this.O();
            u3.this.R();
        }
    }

    class c extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f71093b;

            a(final int val$i) {
                this.f71093b = val$i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(u3.this.getActivity(), (Class<?>) GameDetailActivity_.class);
                intent.putExtra("fromid", u3.this.f71088q.get(this.f71093b).getId());
                intent.putExtra("groupuid", u3.this.f71088q.get(this.f71093b).getUid());
                intent.putExtra("_from", 11104);
                intent.putExtra("gameid", "0");
                intent.putExtra("company_id", "0");
                u3.this.startActivity(intent);
            }
        }

        c() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return u3.this.f71088q.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return u3.this.f71088q.get(i10);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            d dVar;
            if (view == null) {
                view = LayoutInflater.from(u3.this.f71081j).inflate(R.layout.game_build_item, (ViewGroup) null);
                dVar = u3.this.new d();
                dVar.f71095a = (SimpleDraweeView) view.findViewById(R.id.smv_icon);
                dVar.f71097c = (TextView) view.findViewById(R.id.tv_size);
                dVar.f71096b = (TextView) view.findViewById(R.id.tv_title);
                dVar.f71098d = (RelativeLayout) view.findViewById(R.id.rl_content);
                view.setTag(dVar);
            } else {
                dVar = (d) view.getTag();
            }
            if (u3.this.f71088q.get(i10).getGame_list().size() != 0) {
                dVar.f71095a.setImageURI(u3.this.f71088q.get(i10).getGame_list().get(0).getGame_ico());
            } else {
                dVar.f71095a.setImageResource(R.drawable.main_normal_icon);
            }
            dVar.f71096b.setText(u3.this.f71088q.get(i10).getTitle());
            dVar.f71097c.setText(u3.this.f71088q.get(i10).getGame_count() + "款");
            dVar.f71098d.setOnClickListener(new a(i10));
            return view;
        }
    }

    class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f71095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f71096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f71097c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RelativeLayout f71098d;

        d() {
        }
    }

    @AfterViews
    void M() {
        this.f71081j = getActivity();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f71089r = arguments.getInt("uid", 0);
        }
        this.f71087p = com.join.mgps.rpc.impl.a.c0();
        this.f71088q = new ArrayList();
        this.f71086o = AccountUtil_.getInstance_(this.f71081j).getAccountData();
        this.f71084m = "";
        RequestBeanUtil.getInstance(this.f71081j);
        this.f71085n = RequestBeanUtil.getVersionAndVersionName();
        this.f71076e.setPreLoadCount(1);
        R();
        this.f71076e.setPullRefreshEnable(new a());
        this.f71076e.setPullLoadEnable(new b());
    }

    @UiThread
    void N(List<GameFromPopoWinBean.DataBean> data) {
        this.f71088q.addAll(data);
        if (data.size() < 10) {
            T();
        }
        c cVar = this.f71082k;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        } else if (this.f71076e != null) {
            c cVar2 = new c();
            this.f71082k = cVar2;
            this.f71076e.setAdapter((ListAdapter) cVar2);
        }
    }

    @UiThread
    void O() {
        try {
            if (this.f71076e != null) {
                this.f71074c.setVisibility(8);
            }
            this.f71076e.l();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void P() {
        c cVar = this.f71082k;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
    }

    @UiThread
    void Q() {
        if (this.f71088q.size() > 0) {
            this.f71088q.clear();
            c cVar = this.f71082k;
            if (cVar != null) {
                cVar.notifyDataSetChanged();
            }
        }
    }

    @Background
    void R() {
        try {
            if (!com.join.android.app.common.utils.m.j(this.f71081j)) {
                if (this.f71083l == 1) {
                    showLodingFailed();
                    return;
                } else {
                    T();
                    return;
                }
            }
            if (this.f71083l == 1) {
                showLoding();
            }
            LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
            int uid = this.f71089r;
            if (uid == 0) {
                uid = this.f71086o.getUid();
            }
            linkedMultiValueMap.add("uid", Integer.valueOf(uid));
            int i10 = this.f71083l;
            this.f71083l = i10 + 1;
            linkedMultiValueMap.add("page", Integer.valueOf(i10));
            linkedMultiValueMap.add("type", 2);
            linkedMultiValueMap.add("device_id", this.f71084m);
            linkedMultiValueMap.add("version", this.f71085n);
            GameFromPopoWinBean gameFromPopoWinBeanQ = this.f71087p.q(linkedMultiValueMap);
            if (gameFromPopoWinBeanQ.getError() != 0 || gameFromPopoWinBeanQ.getData() == null || gameFromPopoWinBeanQ.getData().size() == 0) {
                S();
                if (this.f71083l == 2) {
                    showNoData();
                    return;
                } else {
                    T();
                    return;
                }
            }
            U();
            S();
            if (this.f71083l == 2) {
                Q();
            }
            N(gameFromPopoWinBeanQ.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void S() {
        LinearLayout linearLayout = this.f71077f;
        if (linearLayout == null || this.f71078g == null) {
            return;
        }
        try {
            linearLayout.setVisibility(8);
            this.f71078g.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void T() {
        XListView2 xListView2 = this.f71076e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f71076e.v();
                this.f71076e.setNoMore();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void U() {
        XListView2 xListView2 = this.f71076e;
        if (xListView2 != null) {
            try {
                xListView2.u();
                this.f71076e.v();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Click
    void relodingimag() {
        this.f71083l = 1;
        XListView2 xListView2 = this.f71076e;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
        O();
        R();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f71081j);
    }

    @UiThread
    void showLoding() {
        try {
            LinearLayout linearLayout = this.f71077f;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
            LinearLayout linearLayout2 = this.f71078g;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f71078g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f71077f;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f71076e;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }

    @UiThread
    void showNoData() {
        LinearLayout linearLayout = this.f71074c;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        XListView2 xListView2 = this.f71076e;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
    }
}
