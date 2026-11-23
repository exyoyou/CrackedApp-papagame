package com.join.mgps.fragment;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.FirstIntentData;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.HomeGameCarefullyBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TodayWufunBroadcast;
import com.join.mgps.dto.TodayWufunEmuClassify;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Where;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.choice_fragment)
public class g extends com.join.mgps.fragment.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    TextView f69618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    TextView f69619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    ForumLoadingView f69620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.join.mgps.rpc.e f69621f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Context f69622g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Pref
    PrefDef_ f69623h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    String f69624i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    XRecyclerView f69630o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.join.mgps.adapter.e f69631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private LinearLayoutManager f69632q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    XRecyclerView.f f69634s;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f69625j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f69626k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f69627l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f69628m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f69629n = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<com.join.mgps.adapter.e.i0> f69633r = new ArrayList();

    class a implements XRecyclerView.f {
        a() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
            if (com.join.android.app.common.utils.m.j(g.this.f69622g)) {
                g gVar = g.this;
                gVar.Y(gVar.f69628m + 1);
            } else {
                g.this.showMessage("当前网络不可用!");
                g.this.f69630o.stopRefresh();
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(g.this.f69622g)) {
                g.this.f69630o.setLoadingMoreEnabled(true);
                g.this.X();
            } else {
                g.this.showMessage("当前网络不可用!");
                g.this.f0();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XRecyclerView xRecyclerView = g.this.f69630o;
            if (xRecyclerView == null) {
                return;
            }
            xRecyclerView.stopRefresh();
            g.this.f69630o.stopLoadMore();
            if (g.this.f69629n == -1) {
                g.this.f69630o.setNoMore();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XRecyclerView xRecyclerView = g.this.f69630o;
            if (xRecyclerView == null) {
                return;
            }
            xRecyclerView.stopRefresh();
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
            g.this.R(1);
            g.this.X();
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
            g.this.R(1);
            g.this.X();
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
            g.this.R(1);
            g.this.X();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.g$g, reason: collision with other inner class name */
    class C0726g extends ForumLoadingView.e {
        C0726g(ForumLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.ForumLoadingView.e
        public void b() {
            g.this.R(1);
            g.this.X();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        this.f69629n = 0;
        this.f69628m = 0;
        com.join.mgps.adapter.e eVar = this.f69631p;
        if (eVar != null) {
            eVar.C(0);
        }
        Y(1);
    }

    @UiThread
    void R(int state) {
        ForumLoadingView forumLoadingView = this.f69620e;
        if (forumLoadingView == null) {
            return;
        }
        if (state == 1) {
            forumLoadingView.m();
            this.f69620e.j(1);
            return;
        }
        if (state == 2) {
            forumLoadingView.m();
            this.f69620e.j(2);
            e0();
            return;
        }
        if (state == 4) {
            forumLoadingView.j(4);
            ForumLoadingView forumLoadingView2 = this.f69620e;
            forumLoadingView2.setListener(new d(forumLoadingView2));
            e0();
            return;
        }
        if (state == 16) {
            forumLoadingView.setFailedMsg("加载失败~");
            ForumLoadingView forumLoadingView3 = this.f69620e;
            forumLoadingView3.setListener(new C0726g(forumLoadingView3));
            this.f69620e.j(16);
            return;
        }
        if (state == 9) {
            forumLoadingView.j(9);
            ForumLoadingView forumLoadingView4 = this.f69620e;
            forumLoadingView4.setListener(new e(forumLoadingView4));
            this.f69620e.j(9);
            return;
        }
        if (state != 10) {
            return;
        }
        forumLoadingView.setFailedMsg("没有更多精选哦~");
        ForumLoadingView forumLoadingView5 = this.f69620e;
        forumLoadingView5.setListener(new f(forumLoadingView5));
        this.f69620e.setReloadingVisibility(0);
        this.f69620e.j(10);
        this.f69620e.setFailedImgVisibility(8);
        this.f69620e.setReloadingVisibility(0);
        this.f69620e.setFailedReloadingRes(R.drawable.papa_loading_null);
    }

    public int S() {
        com.join.mgps.adapter.e eVar = this.f69631p;
        if (eVar == null) {
            return 0;
        }
        return eVar.d();
    }

    HomeGameCarefullyBean U() {
        try {
            String args2 = t6.t.p().o(ForumBean.ForumEvent.HomeGameCarefully).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return (HomeGameCarefullyBean) JsonMapper.getInstance().fromJson(args2, JsonMapper.getInstance().createCollectionType(HomeGameCarefullyBean.class, new Class[0]));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    void V() {
        this.f69631p = new com.join.mgps.adapter.e(this.f69622g, this.f69633r);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f69622g);
        this.f69632q = linearLayoutManager;
        this.f69630o.setLayoutManager(linearLayoutManager);
        this.f69630o.setAdapter(this.f69631p);
        this.f69630o.setPreLoadCount(10);
        this.f69630o.setPullRefreshEnabled(true);
        this.f69630o.setLoadingMoreEnabled(true);
        a aVar = new a();
        this.f69634s = aVar;
        this.f69630o.setLoadingListener(aVar);
    }

    void W() {
        HomeGameCarefullyBean homeGameCarefullyBeanU = U();
        d0(homeGameCarefullyBeanU, 1, 1);
        if (homeGameCarefullyBeanU != null) {
            R(2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00d2 A[DONT_GENERATE] */
    @Background
    void Y(int page) {
        int i10 = this.f69629n;
        if (page == i10) {
            return;
        }
        if (i10 == -1) {
            f0();
            return;
        }
        this.f69629n = page;
        if (!com.join.android.app.common.utils.m.j(this.f69622g)) {
            if (isAdded()) {
                T(getString(R.string.net_connect_failed));
            }
            R(9);
            f0();
            return;
        }
        try {
            ResultMainBean<HomeGameCarefullyBean> resultMainBeanO1 = this.f69621f.o1(RequestBeanUtil.getInstance(this.f69622g).getHomeGameCarefullyRequestBean(page, this.f69626k, this.f69624i));
            if (resultMainBeanO1 == null) {
                if (isAdded()) {
                    showMessage(getString(R.string.loading_failed));
                }
                R(4);
                return;
            }
            if (resultMainBeanO1.getFlag() != 1 || resultMainBeanO1.getMessages() == null || resultMainBeanO1.getMessages().getData() == null) {
                if (isAdded()) {
                    showMessage(getString(R.string.loading_failed));
                }
                R(4);
            } else {
                HomeGameCarefullyBean data = resultMainBeanO1.getMessages().getData();
                if (page == 1) {
                    this.f69628m = page;
                } else {
                    if (data.getBefore_refresh() == null || data.getBefore_refresh().size() <= 0) {
                        this.f69629n = -1;
                        if (page == 1) {
                            R(10);
                        }
                        return;
                    }
                    this.f69628m = page;
                }
                c0(data, page);
                if (page == 1) {
                    Z(data);
                }
                R(2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (isAdded()) {
                showMessage(getString(R.string.loading_failed));
            }
            R(4);
        } finally {
            if (this.f69629n != -1) {
                this.f69629n = 0;
            }
            f0();
        }
    }

    @Background
    void Z(HomeGameCarefullyBean bean) {
        try {
            String json = JsonMapper.nonDefaultMapper().toJson(bean);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.HomeGameCarefully.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(json);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            t6.t.p().u(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void a0() {
        com.papa.sim.statistic.t.l(getContext()).y2(Where.index, AccountUtil_.getInstance_(getActivity()).getUid());
        String string = this.f69619d.getText().toString();
        if (TextUtils.isEmpty(string) || string.equals(getString(R.string.search_content_default))) {
            string = "";
        }
        IntentUtil.getInstance().goSearchHintActivity(getContext(), string);
    }

    @AfterViews
    void afterViews() {
        this.f69622g = getActivity();
        this.f69621f = com.join.mgps.rpc.impl.d.O1();
        FirstIntentData firstIntentDataA = com.join.mgps.Util.p1.a(this.f69622g);
        if (firstIntentDataA != null && this.f69623h.isShowEditorRecoomand().d().booleanValue() && firstIntentDataA.isIntent() && firstIntentDataA.isCustomApk()) {
            IntentDateBean intentDateBean = firstIntentDataA.getIntentDateBean();
            if (firstIntentDataA.isAutoDownload()) {
                intentDateBean.setObject(Boolean.TRUE);
            }
            this.f69624i = intentDateBean.getCrc_link_type_val();
            this.f69625j = true;
        }
        V();
        R(1);
        if (System.currentTimeMillis() - this.f69623h.isFirstRunGameCarefullyLong().e(0L).longValue() > TimeUnit.DAYS.toMillis(1L) || this.f69625j) {
            this.f69626k = 1;
        }
        loading();
    }

    public void b0(int id2) {
        com.join.mgps.adapter.e eVar = this.f69631p;
        if (eVar == null) {
            return;
        }
        eVar.C(id2);
    }

    @UiThread
    void c0(HomeGameCarefullyBean bean, int page) {
        if (page == 1) {
            if (this.f69626k == 1) {
                this.f69626k = 0;
            }
            this.f69623h.isFirstRunGameCarefullyLong().g(Long.valueOf(System.currentTimeMillis()));
        }
        d0(bean, page, 0);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:106:0x03ee A[Catch: Exception -> 0x0524, TryCatch #0 {Exception -> 0x0524, blocks: (B:10:0x0020, B:12:0x0037, B:14:0x003d, B:16:0x004b, B:19:0x0063, B:21:0x006d, B:23:0x008c, B:24:0x00a9, B:26:0x00af, B:28:0x00de, B:29:0x00fb, B:31:0x0102, B:33:0x010c, B:34:0x0116, B:38:0x0124, B:42:0x015c, B:44:0x016c, B:45:0x0174, B:47:0x017a, B:48:0x0189, B:39:0x0141, B:41:0x0151, B:49:0x018d, B:50:0x01b3, B:53:0x01bb, B:55:0x01c5, B:57:0x01cf, B:59:0x01eb, B:61:0x0227, B:63:0x023d, B:65:0x024a, B:68:0x0256, B:70:0x025c, B:72:0x02a1, B:74:0x02b7, B:76:0x02c4, B:78:0x02cf, B:80:0x02d7, B:82:0x02e1, B:83:0x02ee, B:85:0x02f8, B:86:0x0347, B:87:0x0351, B:89:0x0357, B:91:0x0361, B:92:0x0372, B:94:0x037c, B:96:0x03bc, B:98:0x03c5, B:99:0x03d1, B:100:0x03db, B:17:0x005c, B:101:0x03dd, B:104:0x03e4, B:106:0x03ee, B:108:0x0415, B:110:0x0465, B:112:0x047b, B:114:0x0488, B:115:0x0491, B:117:0x0497, B:119:0x04ed, B:121:0x0503, B:123:0x0510), top: B:131:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0415 A[Catch: Exception -> 0x0524, TryCatch #0 {Exception -> 0x0524, blocks: (B:10:0x0020, B:12:0x0037, B:14:0x003d, B:16:0x004b, B:19:0x0063, B:21:0x006d, B:23:0x008c, B:24:0x00a9, B:26:0x00af, B:28:0x00de, B:29:0x00fb, B:31:0x0102, B:33:0x010c, B:34:0x0116, B:38:0x0124, B:42:0x015c, B:44:0x016c, B:45:0x0174, B:47:0x017a, B:48:0x0189, B:39:0x0141, B:41:0x0151, B:49:0x018d, B:50:0x01b3, B:53:0x01bb, B:55:0x01c5, B:57:0x01cf, B:59:0x01eb, B:61:0x0227, B:63:0x023d, B:65:0x024a, B:68:0x0256, B:70:0x025c, B:72:0x02a1, B:74:0x02b7, B:76:0x02c4, B:78:0x02cf, B:80:0x02d7, B:82:0x02e1, B:83:0x02ee, B:85:0x02f8, B:86:0x0347, B:87:0x0351, B:89:0x0357, B:91:0x0361, B:92:0x0372, B:94:0x037c, B:96:0x03bc, B:98:0x03c5, B:99:0x03d1, B:100:0x03db, B:17:0x005c, B:101:0x03dd, B:104:0x03e4, B:106:0x03ee, B:108:0x0415, B:110:0x0465, B:112:0x047b, B:114:0x0488, B:115:0x0491, B:117:0x0497, B:119:0x04ed, B:121:0x0503, B:123:0x0510), top: B:131:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0465 A[Catch: Exception -> 0x0524, TryCatch #0 {Exception -> 0x0524, blocks: (B:10:0x0020, B:12:0x0037, B:14:0x003d, B:16:0x004b, B:19:0x0063, B:21:0x006d, B:23:0x008c, B:24:0x00a9, B:26:0x00af, B:28:0x00de, B:29:0x00fb, B:31:0x0102, B:33:0x010c, B:34:0x0116, B:38:0x0124, B:42:0x015c, B:44:0x016c, B:45:0x0174, B:47:0x017a, B:48:0x0189, B:39:0x0141, B:41:0x0151, B:49:0x018d, B:50:0x01b3, B:53:0x01bb, B:55:0x01c5, B:57:0x01cf, B:59:0x01eb, B:61:0x0227, B:63:0x023d, B:65:0x024a, B:68:0x0256, B:70:0x025c, B:72:0x02a1, B:74:0x02b7, B:76:0x02c4, B:78:0x02cf, B:80:0x02d7, B:82:0x02e1, B:83:0x02ee, B:85:0x02f8, B:86:0x0347, B:87:0x0351, B:89:0x0357, B:91:0x0361, B:92:0x0372, B:94:0x037c, B:96:0x03bc, B:98:0x03c5, B:99:0x03d1, B:100:0x03db, B:17:0x005c, B:101:0x03dd, B:104:0x03e4, B:106:0x03ee, B:108:0x0415, B:110:0x0465, B:112:0x047b, B:114:0x0488, B:115:0x0491, B:117:0x0497, B:119:0x04ed, B:121:0x0503, B:123:0x0510), top: B:131:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x047b A[Catch: Exception -> 0x0524, TryCatch #0 {Exception -> 0x0524, blocks: (B:10:0x0020, B:12:0x0037, B:14:0x003d, B:16:0x004b, B:19:0x0063, B:21:0x006d, B:23:0x008c, B:24:0x00a9, B:26:0x00af, B:28:0x00de, B:29:0x00fb, B:31:0x0102, B:33:0x010c, B:34:0x0116, B:38:0x0124, B:42:0x015c, B:44:0x016c, B:45:0x0174, B:47:0x017a, B:48:0x0189, B:39:0x0141, B:41:0x0151, B:49:0x018d, B:50:0x01b3, B:53:0x01bb, B:55:0x01c5, B:57:0x01cf, B:59:0x01eb, B:61:0x0227, B:63:0x023d, B:65:0x024a, B:68:0x0256, B:70:0x025c, B:72:0x02a1, B:74:0x02b7, B:76:0x02c4, B:78:0x02cf, B:80:0x02d7, B:82:0x02e1, B:83:0x02ee, B:85:0x02f8, B:86:0x0347, B:87:0x0351, B:89:0x0357, B:91:0x0361, B:92:0x0372, B:94:0x037c, B:96:0x03bc, B:98:0x03c5, B:99:0x03d1, B:100:0x03db, B:17:0x005c, B:101:0x03dd, B:104:0x03e4, B:106:0x03ee, B:108:0x0415, B:110:0x0465, B:112:0x047b, B:114:0x0488, B:115:0x0491, B:117:0x0497, B:119:0x04ed, B:121:0x0503, B:123:0x0510), top: B:131:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0486  */
    /* JADX WARN: Code duplicated, block: B:117:0x0497 A[Catch: Exception -> 0x0524, TryCatch #0 {Exception -> 0x0524, blocks: (B:10:0x0020, B:12:0x0037, B:14:0x003d, B:16:0x004b, B:19:0x0063, B:21:0x006d, B:23:0x008c, B:24:0x00a9, B:26:0x00af, B:28:0x00de, B:29:0x00fb, B:31:0x0102, B:33:0x010c, B:34:0x0116, B:38:0x0124, B:42:0x015c, B:44:0x016c, B:45:0x0174, B:47:0x017a, B:48:0x0189, B:39:0x0141, B:41:0x0151, B:49:0x018d, B:50:0x01b3, B:53:0x01bb, B:55:0x01c5, B:57:0x01cf, B:59:0x01eb, B:61:0x0227, B:63:0x023d, B:65:0x024a, B:68:0x0256, B:70:0x025c, B:72:0x02a1, B:74:0x02b7, B:76:0x02c4, B:78:0x02cf, B:80:0x02d7, B:82:0x02e1, B:83:0x02ee, B:85:0x02f8, B:86:0x0347, B:87:0x0351, B:89:0x0357, B:91:0x0361, B:92:0x0372, B:94:0x037c, B:96:0x03bc, B:98:0x03c5, B:99:0x03d1, B:100:0x03db, B:17:0x005c, B:101:0x03dd, B:104:0x03e4, B:106:0x03ee, B:108:0x0415, B:110:0x0465, B:112:0x047b, B:114:0x0488, B:115:0x0491, B:117:0x0497, B:119:0x04ed, B:121:0x0503, B:123:0x0510), top: B:131:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x04ed A[Catch: Exception -> 0x0524, TryCatch #0 {Exception -> 0x0524, blocks: (B:10:0x0020, B:12:0x0037, B:14:0x003d, B:16:0x004b, B:19:0x0063, B:21:0x006d, B:23:0x008c, B:24:0x00a9, B:26:0x00af, B:28:0x00de, B:29:0x00fb, B:31:0x0102, B:33:0x010c, B:34:0x0116, B:38:0x0124, B:42:0x015c, B:44:0x016c, B:45:0x0174, B:47:0x017a, B:48:0x0189, B:39:0x0141, B:41:0x0151, B:49:0x018d, B:50:0x01b3, B:53:0x01bb, B:55:0x01c5, B:57:0x01cf, B:59:0x01eb, B:61:0x0227, B:63:0x023d, B:65:0x024a, B:68:0x0256, B:70:0x025c, B:72:0x02a1, B:74:0x02b7, B:76:0x02c4, B:78:0x02cf, B:80:0x02d7, B:82:0x02e1, B:83:0x02ee, B:85:0x02f8, B:86:0x0347, B:87:0x0351, B:89:0x0357, B:91:0x0361, B:92:0x0372, B:94:0x037c, B:96:0x03bc, B:98:0x03c5, B:99:0x03d1, B:100:0x03db, B:17:0x005c, B:101:0x03dd, B:104:0x03e4, B:106:0x03ee, B:108:0x0415, B:110:0x0465, B:112:0x047b, B:114:0x0488, B:115:0x0491, B:117:0x0497, B:119:0x04ed, B:121:0x0503, B:123:0x0510), top: B:131:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0503 A[Catch: Exception -> 0x0524, TryCatch #0 {Exception -> 0x0524, blocks: (B:10:0x0020, B:12:0x0037, B:14:0x003d, B:16:0x004b, B:19:0x0063, B:21:0x006d, B:23:0x008c, B:24:0x00a9, B:26:0x00af, B:28:0x00de, B:29:0x00fb, B:31:0x0102, B:33:0x010c, B:34:0x0116, B:38:0x0124, B:42:0x015c, B:44:0x016c, B:45:0x0174, B:47:0x017a, B:48:0x0189, B:39:0x0141, B:41:0x0151, B:49:0x018d, B:50:0x01b3, B:53:0x01bb, B:55:0x01c5, B:57:0x01cf, B:59:0x01eb, B:61:0x0227, B:63:0x023d, B:65:0x024a, B:68:0x0256, B:70:0x025c, B:72:0x02a1, B:74:0x02b7, B:76:0x02c4, B:78:0x02cf, B:80:0x02d7, B:82:0x02e1, B:83:0x02ee, B:85:0x02f8, B:86:0x0347, B:87:0x0351, B:89:0x0357, B:91:0x0361, B:92:0x0372, B:94:0x037c, B:96:0x03bc, B:98:0x03c5, B:99:0x03d1, B:100:0x03db, B:17:0x005c, B:101:0x03dd, B:104:0x03e4, B:106:0x03ee, B:108:0x0415, B:110:0x0465, B:112:0x047b, B:114:0x0488, B:115:0x0491, B:117:0x0497, B:119:0x04ed, B:121:0x0503, B:123:0x0510), top: B:131:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x050e  */
    /* JADX WARN: Code duplicated, block: B:125:0x051a  */
    /* JADX WARN: Code duplicated, block: B:135:0x0520 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:108:0x0415, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:117:0x0497, please report this as an issue */
    @UiThread
    void d0(HomeGameCarefullyBean bean, int page, int fromDb) {
        TodayWufunBroadcast editor_recommend_game;
        int i10;
        int i11;
        int i12;
        HomeGameCarefullyBean.DayRecommand dayRecommand;
        String str;
        String game_id;
        String str2;
        String game_id2;
        if (bean == null) {
            return;
        }
        if (this.f69633r == null) {
            this.f69633r = new ArrayList();
        }
        if (page == 1) {
            try {
                this.f69633r.clear();
                if (!this.f69623h.isShowEditorRecoomand().d().booleanValue() || bean.getVisitor_recommend_game() == null || TextUtils.isEmpty(bean.getVisitor_recommend_game().getGame_id())) {
                    editor_recommend_game = bean.getEditor_recommend_game();
                    i10 = 0;
                } else {
                    editor_recommend_game = bean.getVisitor_recommend_game();
                    this.f69623h.isShowEditorRecoomand().g(Boolean.FALSE);
                    i10 = 1;
                }
                if (editor_recommend_game != null && !TextUtils.isEmpty(editor_recommend_game.getGame_id())) {
                    editor_recommend_game.set_from_type(101);
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(1, editor_recommend_game).k(i10));
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(2, editor_recommend_game));
                    if (fromDb != 1) {
                        com.papa.sim.statistic.t.l(this.f69622g).n2(AccountUtil_.getInstance_(this.f69622g).getUid(), editor_recommend_game.getGame_id(), "eidtButton", "", "编辑推荐");
                    }
                }
                if (bean.getBuy_advert_recommend() != null) {
                    TodayWufunBroadcast buy_advert_recommend = bean.getBuy_advert_recommend();
                    buy_advert_recommend.set_from_type(102);
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(1, buy_advert_recommend).k(2));
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(3, buy_advert_recommend));
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(4, buy_advert_recommend));
                    if (fromDb != 1) {
                        com.papa.sim.statistic.t.l(this.f69622g).n2(AccountUtil_.getInstance_(this.f69622g).getUid(), buy_advert_recommend.getGame_id(), "adButton", "", "广告赞助");
                    }
                }
                if (bean.getGame_prefecture() != null && bean.getGame_prefecture().size() > 0) {
                    TodayWufunEmuClassify todayWufunEmuClassify = new TodayWufunEmuClassify();
                    int iS = S();
                    for (int i13 = 0; i13 < bean.getGame_prefecture().size(); i13++) {
                        if (iS == 0 && i13 == 0) {
                            int id2 = bean.getGame_prefecture().get(i13).getId();
                            b0(id2);
                            todayWufunEmuClassify = bean.getGame_prefecture().get(i13);
                            iS = id2;
                        } else if (iS == bean.getGame_prefecture().get(i13).getId()) {
                            todayWufunEmuClassify = bean.getGame_prefecture().get(i13);
                        }
                        TodayWufunEmuClassify todayWufunEmuClassify2 = bean.getGame_prefecture().get(i13);
                        if (todayWufunEmuClassify2.getGame_list() != null) {
                            Iterator<TodayWufunBroadcast> it2 = todayWufunEmuClassify2.getGame_list().iterator();
                            while (it2.hasNext()) {
                                it2.next().set_from_type(103);
                            }
                        }
                    }
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(0, null));
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(16, bean.getGame_prefecture()));
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(17, todayWufunEmuClassify));
                }
                if (bean.getToday_refresh() == null || (bean.getToday_refresh().getGame_discover() == null && bean.getToday_refresh().getGame_information() == null)) {
                    i11 = 0;
                } else {
                    HomeGameCarefullyBean.DayRecommand today_refresh = bean.getToday_refresh();
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(5, Long.valueOf(today_refresh.getAddTimes())));
                    if (today_refresh.getGame_discover() != null) {
                        today_refresh.getGame_discover().set_from_type(104);
                        String str3 = "1-1";
                        this.f69633r.add(new com.join.mgps.adapter.e.i0(6, today_refresh.getGame_discover()).l(str3));
                        this.f69633r.add(new com.join.mgps.adapter.e.i0(7, today_refresh.getGame_discover()).l(str3));
                        if (fromDb != 1) {
                            com.papa.sim.statistic.t.l(this.f69622g).n2(AccountUtil_.getInstance_(this.f69622g).getUid(), today_refresh.getGame_discover() != null ? today_refresh.getGame_discover().getGame_id() : "", "todayButton", str3, "今日悟饭");
                        }
                        i11 = 1;
                    } else {
                        i11 = 0;
                    }
                    if (today_refresh.getGame_information() != null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("1-");
                        i11++;
                        sb2.append(i11);
                        String string = sb2.toString();
                        this.f69633r.add(new com.join.mgps.adapter.e.i0(13, today_refresh.getGame_information()).i(2).l(string));
                        this.f69633r.add(new com.join.mgps.adapter.e.i0(14, today_refresh.getGame_information()).i(2).l(string));
                        if (fromDb != 1) {
                            com.papa.sim.statistic.t.l(this.f69622g).n2(AccountUtil_.getInstance_(this.f69622g).getUid(), today_refresh.getGame_discover() != null ? today_refresh.getGame_discover().getGame_id() : "", "todayButton", string, "今日悟饭");
                        }
                    }
                }
                if (bean.getCarefully_special() != null && bean.getCarefully_special().size() > 0) {
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(8, null));
                    for (int i14 = 0; i14 < bean.getCarefully_special().size(); i14++) {
                        BannerBean bannerBean = bean.getCarefully_special().get(i14);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("1-");
                        i11++;
                        sb3.append(i11);
                        String string2 = sb3.toString();
                        this.f69633r.add(new com.join.mgps.adapter.e.i0(9, bannerBean).j(i14).l(string2));
                        com.papa.sim.statistic.t.l(this.f69622g).n2(AccountUtil_.getInstance_(this.f69622g).getUid(), bannerBean.getCrc_link_type_val(), "todayButton", string2, "精选专题");
                    }
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(12, null));
                }
                if (bean.getGame_bespeak_recommend() != null && bean.getGame_bespeak_recommend().size() > 0) {
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(10, bean.getBespeak_list_url()));
                    for (int i15 = 0; i15 < bean.getGame_bespeak_recommend().size(); i15++) {
                        TodayWufunBroadcast todayWufunBroadcast = bean.getGame_bespeak_recommend().get(i15);
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("1-");
                        i11++;
                        sb4.append(i11);
                        String string3 = sb4.toString();
                        this.f69633r.add(new com.join.mgps.adapter.e.i0(11, todayWufunBroadcast).j(i15).l(string3));
                        com.papa.sim.statistic.t.l(this.f69622g).n2(AccountUtil_.getInstance_(this.f69622g).getUid(), todayWufunBroadcast != null ? todayWufunBroadcast.getGame_id() : "", "todayButton", string3, "新游预约");
                    }
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(12, null));
                }
                this.f69627l = 1;
                if (bean.getBefore_refresh() != null) {
                    for (i12 = 0; i12 < bean.getBefore_refresh().size(); i12++) {
                        this.f69627l++;
                        dayRecommand = bean.getBefore_refresh().get(i12);
                        this.f69633r.add(new com.join.mgps.adapter.e.i0(5, Long.valueOf(dayRecommand.getAddTimes())));
                        if (dayRecommand.getGame_discover() != null) {
                            dayRecommand.getGame_discover().set_from_type(104);
                            str2 = this.f69627l + WMConstants.TIMER_STAGE_NONE;
                            this.f69633r.add(new com.join.mgps.adapter.e.i0(6, dayRecommand.getGame_discover()).l(str2).m(this.f69627l));
                            this.f69633r.add(new com.join.mgps.adapter.e.i0(7, dayRecommand.getGame_discover()).l(str2).m(this.f69627l));
                            if (this.f69627l <= 7) {
                                com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this.f69622g);
                                String uid = AccountUtil_.getInstance_(this.f69622g).getUid();
                                if (dayRecommand.getGame_discover() != null) {
                                    game_id2 = dayRecommand.getGame_discover().getGame_id();
                                } else {
                                    game_id2 = "";
                                }
                                tVarL.n2(uid, game_id2, "todayButton", str2, "今日悟饭");
                            }
                        }
                        if (dayRecommand.getGame_information() != null) {
                            str = this.f69627l + "-2";
                            this.f69633r.add(new com.join.mgps.adapter.e.i0(13, dayRecommand.getGame_information()).i(2).l(str).m(this.f69627l));
                            this.f69633r.add(new com.join.mgps.adapter.e.i0(14, dayRecommand.getGame_information()).i(2).l(str).m(this.f69627l));
                            if (this.f69627l <= 7) {
                                com.papa.sim.statistic.t tVarL2 = com.papa.sim.statistic.t.l(this.f69622g);
                                String uid2 = AccountUtil_.getInstance_(this.f69622g).getUid();
                                if (dayRecommand.getGame_discover() != null) {
                                    game_id = dayRecommand.getGame_discover().getGame_id();
                                } else {
                                    game_id = "";
                                }
                                tVarL2.n2(uid2, game_id, "todayButton", str, "今日悟饭");
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                e10.getMessage();
            }
        } else if (bean.getBefore_refresh() != null) {
            while (i12 < bean.getBefore_refresh().size()) {
                this.f69627l++;
                dayRecommand = bean.getBefore_refresh().get(i12);
                this.f69633r.add(new com.join.mgps.adapter.e.i0(5, Long.valueOf(dayRecommand.getAddTimes())));
                if (dayRecommand.getGame_discover() != null) {
                    dayRecommand.getGame_discover().set_from_type(104);
                    str2 = this.f69627l + WMConstants.TIMER_STAGE_NONE;
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(6, dayRecommand.getGame_discover()).l(str2).m(this.f69627l));
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(7, dayRecommand.getGame_discover()).l(str2).m(this.f69627l));
                    if (this.f69627l <= 7) {
                        com.papa.sim.statistic.t tVarL3 = com.papa.sim.statistic.t.l(this.f69622g);
                        String uid3 = AccountUtil_.getInstance_(this.f69622g).getUid();
                        if (dayRecommand.getGame_discover() != null) {
                            game_id2 = dayRecommand.getGame_discover().getGame_id();
                        } else {
                            game_id2 = "";
                        }
                        tVarL3.n2(uid3, game_id2, "todayButton", str2, "今日悟饭");
                    }
                }
                if (dayRecommand.getGame_information() != null) {
                    str = this.f69627l + "-2";
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(13, dayRecommand.getGame_information()).i(2).l(str).m(this.f69627l));
                    this.f69633r.add(new com.join.mgps.adapter.e.i0(14, dayRecommand.getGame_information()).i(2).l(str).m(this.f69627l));
                    if (this.f69627l <= 7) {
                        com.papa.sim.statistic.t tVarL4 = com.papa.sim.statistic.t.l(this.f69622g);
                        String uid4 = AccountUtil_.getInstance_(this.f69622g).getUid();
                        if (dayRecommand.getGame_discover() != null) {
                            game_id = dayRecommand.getGame_discover().getGame_id();
                        } else {
                            game_id = "";
                        }
                        tVarL4.n2(uid4, game_id, "todayButton", str, "今日悟饭");
                    }
                }
            }
        }
        this.f69631p.D(this.f69633r);
        this.f69631p.notifyDataSetChanged();
    }

    void e0() {
        XRecyclerView xRecyclerView = this.f69630o;
        if (xRecyclerView != null) {
            xRecyclerView.postDelayed(new c(), 800L);
        }
    }

    @UiThread
    void f0() {
        XRecyclerView xRecyclerView = this.f69630o;
        if (xRecyclerView != null) {
            xRecyclerView.postDelayed(new b(), 800L);
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    void loading() {
        W();
        X();
    }

    @UiThread
    void showMessage(String msg) {
        com.join.mgps.Util.a3.b(this.f69622g).d(msg);
    }
}
