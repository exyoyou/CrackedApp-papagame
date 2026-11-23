package com.join.mgps.activity;

import android.app.Activity;
import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.SearchAppBean;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_search_favorite)
public class GameSearchFavoriteActivity extends Activity {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f53265t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f53266u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f53267v = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Extra
    int f53268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    EditText f53269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    RelativeLayout f53270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    RelativeLayout f53271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    ImageView f53272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f53273g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f53274h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f53275i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    XListView2 f53276j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.join.mgps.adapter.u4 f53277k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f53279m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    com.join.mgps.rpc.i f53280n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    com.join.mgps.rpc.e f53281o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    String f53282p;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    List<Object> f53278l = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f53283q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f53284r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f53285s = 20;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameSearchFavoriteActivity.this.finish();
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameSearchFavoriteActivity.this.f53283q) {
                if (com.join.android.app.common.utils.m.j(GameSearchFavoriteActivity.this)) {
                    GameSearchFavoriteActivity.this.e();
                } else {
                    GameSearchFavoriteActivity.this.f53276j.u();
                    GameSearchFavoriteActivity.this.n("网络连接异常，请检查网络连接");
                }
            }
        }
    }

    class c implements TextWatcher {
        c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
            if (TextUtils.isEmpty(s10)) {
                return;
            }
            if (!com.join.android.app.common.utils.m.j(GameSearchFavoriteActivity.this)) {
                GameSearchFavoriteActivity.this.n("当前网络不可用");
                return;
            }
            GameSearchFavoriteActivity.this.f53284r = 1;
            GameSearchFavoriteActivity.this.f53282p = s10.toString();
            GameSearchFavoriteActivity.this.e();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
        }
    }

    class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() {
            if (GameSearchFavoriteActivity.this.f53283q) {
                if (com.join.android.app.common.utils.m.j(GameSearchFavoriteActivity.this)) {
                    GameSearchFavoriteActivity.this.e();
                } else {
                    GameSearchFavoriteActivity.this.f53276j.u();
                    GameSearchFavoriteActivity.this.n("网络连接异常，请检查网络连接");
                }
            }
        }
    }

    class e implements AdapterView.OnItemClickListener {
        e() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            CollectionBeanSub collectionBeanSub = (CollectionBeanSub) GameSearchFavoriteActivity.this.f53278l.get(position);
            Intent intent = new Intent();
            intent.putExtra("gameInfo", collectionBeanSub);
            GameSearchFavoriteActivity.this.setResult(-1, intent);
            GameSearchFavoriteActivity.this.finish();
        }
    }

    private void f() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            l();
        } else {
            m();
            e();
        }
    }

    @AfterViews
    void c() {
        this.f53280n = com.join.mgps.rpc.impl.g.A0();
        this.f53281o = com.join.mgps.rpc.impl.d.O1();
        if (this.f53268b == 2) {
            this.f53273g.setText("我的收藏");
            this.f53270d.setVisibility(0);
            this.f53271e.setVisibility(8);
            this.f53270d.findViewById(R.id.back_image).setOnClickListener(new a());
            this.f53276j.setPullLoadEnable(new b());
        } else {
            this.f53270d.setVisibility(8);
            this.f53271e.setVisibility(0);
            this.f53269c.addTextChangedListener(new c());
            this.f53276j.setPullLoadEnable(new d());
        }
        com.join.mgps.adapter.u4 u4Var = new com.join.mgps.adapter.u4(this.f53278l);
        this.f53277k = u4Var;
        this.f53276j.setAdapter((ListAdapter) u4Var);
        this.f53276j.setOnItemClickListener(new e());
        this.f53276j.setVisibility(8);
        if (this.f53268b == 2) {
            f();
        } else {
            this.f53274h.setVisibility(8);
            this.f53275i.setVisibility(8);
        }
    }

    @Click
    void d() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void e() {
        if (this.f53268b == 1) {
            try {
                SearchAppBean searchAppBeanS0 = this.f53281o.S0(g(this.f53282p, this.f53284r));
                if (i()) {
                    return;
                }
                List<CollectionBeanSub> list = searchAppBeanS0.getMessages().getData().getList();
                if (list != null && list.size() > 0) {
                    this.f53283q = list.size() >= this.f53285s;
                } else if (this.f53284r > 1) {
                    this.f53283q = false;
                }
                o(list);
                return;
            } catch (Exception unused) {
                if (this.f53284r <= 1) {
                    n("网络异常，请重试");
                    return;
                }
                return;
            }
        }
        try {
            ResultResMainBean<List<CollectionBeanSub>> resultResMainBeanS0 = this.f53280n.s0(this.f53279m.getUid(), this.f53284r);
            if (i()) {
                return;
            }
            if (resultResMainBeanS0 != null && resultResMainBeanS0.getData() != null) {
                List<CollectionBeanSub> data = resultResMainBeanS0.getData();
                if (data == null || data.size() <= 0) {
                    this.f53283q = false;
                } else {
                    this.f53283q = data.size() >= 10;
                }
                if (this.f53284r <= 1) {
                    h();
                }
                o(data);
                return;
            }
            if (this.f53284r <= 1) {
                l();
            }
        } catch (Exception unused2) {
            if (this.f53284r <= 1) {
                l();
            }
        }
    }

    CommonRequestBean g(String KEYWORD, int Page) {
        return RequestBeanUtil.getInstance(this).getSearchAutoRequestBean("searchInfo", KEYWORD, Page, this.f53285s, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void h() {
        this.f53274h.setVisibility(8);
        this.f53275i.setVisibility(8);
    }

    boolean i() {
        return isFinishing() || isDestroyed();
    }

    @Click
    void j() {
        f();
    }

    @Click
    void k() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void l() {
        this.f53274h.setVisibility(8);
        this.f53275i.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void m() {
        this.f53274h.setVisibility(0);
        this.f53275i.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void n(String info) {
        if (i()) {
            return;
        }
        com.join.mgps.Util.a3.b(this).d(info);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o(List<CollectionBeanSub> datas) {
        if (this.f53276j.getVisibility() == 8) {
            this.f53276j.setVisibility(0);
        }
        if (this.f53284r <= 1) {
            this.f53278l.clear();
        }
        if (datas != null && datas.size() > 0) {
            this.f53278l.addAll(datas);
        }
        this.f53276j.v();
        if (this.f53283q) {
            this.f53284r++;
            this.f53276j.u();
        } else {
            this.f53276j.setNoMore();
        }
        this.f53277k.notifyDataSetChanged();
    }
}
