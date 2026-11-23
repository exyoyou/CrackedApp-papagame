package com.join.mgps.fragment;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.GameDetailActivity_;
import com.join.mgps.activity.SearchListActivity1;
import com.join.mgps.adapter.b7;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SearchGameFavoriteListBean;
import com.join.mgps.dto.SearchIntegratedBean;
import com.join.mgps.dto.SearchIntegratedFavoriteBean;
import com.join.mgps.dto.SearchPostsBean;
import com.papa91.arc.ext.ToastManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_search_list)
public class g5 extends com.join.mgps.fragment.e implements b7.g, com.join.mgps.callbacks.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XListView2 f69682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.rpc.e f69683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b7 f69684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @FragmentArg
    int f69685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @FragmentArg
    String f69686g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f69689j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f69690k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f69691l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f69693n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Context f69694o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @ViewById
    View f69697r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @ViewById
    View f69698s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @ViewById
    View f69699t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @ViewById
    TextView f69700u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @ViewById
    TextView f69701v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @ViewById
    TextView f69702w;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @FragmentArg
    String f69687h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    List<b7.n> f69688i = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f69692m = 10;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f69695p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<CollectionBeanSub> f69696q = new ArrayList();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f69703x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f69704y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f69705z = false;

    class a implements AbsListView.OnScrollListener {
        a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
            g5.this.f69703x = (visibleItemCount + firstVisibleItem) - 1;
            g5.this.f69704y = firstVisibleItem;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView view, int scrollState) {
            g5.this.f69705z = scrollState != 0;
        }
    }

    class b implements com.join.mgps.customview.i {
        b() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() throws Throwable {
            g5.this.X();
        }
    }

    class c implements com.join.mgps.customview.j {
        c() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() throws Throwable {
            g5.this.loading();
        }
    }

    class d implements com.join.mgps.customview.i {
        d() {
        }

        @Override // com.join.mgps.customview.i
        public void onLoadMore() throws Throwable {
            g5.this.X();
        }
    }

    class e implements com.join.mgps.customview.j {
        e() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() throws Throwable {
            g5.this.loading();
        }
    }

    class f implements Function0<Unit> {
        f() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unit invoke() {
            g5 g5Var = g5.this;
            g5Var.updateDownStateList(g5Var.f69696q);
            g5.this.f69684e.notifyDataSetChanged();
            return null;
        }
    }

    private void f0(ForumBean.ForumSearchQueryBean posts) {
        W();
        boolean z10 = true;
        if (posts.getSubject() != null && !com.join.mgps.Util.t2.h(posts.getSubject().trim())) {
            this.f69688i.add(new b7.n(1, posts));
            z10 = false;
        }
        if (!com.join.mgps.Util.t2.h(posts.getMessage()) && !com.join.mgps.Util.t2.h(posts.getMessage().trim())) {
            posts.setShowDivider(z10);
            this.f69688i.add(new b7.n(2, posts));
        }
        this.f69688i.add(new b7.n(3, posts));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDownStateList(List<CollectionBeanSub> SearchDataBeanList) {
        Iterator<CollectionBeanSub> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        CollectionBeanSub collectionBeanSub;
        DownloadTask downloadTask;
        if (this.f69704y < 0 || this.f69703x >= this.f69682c.getCount()) {
            return;
        }
        for (int i10 = this.f69704y; i10 <= this.f69703x; i10++) {
            try {
                Object itemAtPosition = this.f69682c.getItemAtPosition(i10);
                if (CollectionBeanSub.class.isInstance(itemAtPosition)) {
                    collectionBeanSub = (CollectionBeanSub) itemAtPosition;
                    if (collectionBeanSub != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                        View childAt = this.f69682c.getChildAt(i10 - this.f69704y);
                        if (childAt.getTag() instanceof b7.s) {
                            b7.s sVar = (b7.s) childAt.getTag();
                            try {
                                DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                                if (downloadTaskG == null) {
                                    return;
                                }
                                long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask.getSize() == 0) {
                                    sVar.f61343i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                } else {
                                    sVar.f61343i.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                }
                                if (downloadTask.getStatus() == 12) {
                                    sVar.f61346l.setProgress((int) downloadTaskG.getProgress());
                                } else {
                                    sVar.f61345k.setProgress((int) downloadTaskG.getProgress());
                                }
                                if (downloadTask.getStatus() == 2) {
                                    sVar.f61344j.setText(downloadTaskG.getSpeed() + "/S");
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                collectionBeanSub = null;
            }
        }
    }

    void O(Context context, String id2, String uid, String game_id, String company_id) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) GameDetailActivity_.class);
        intent.putExtra("fromid", id2);
        intent.putExtra("_from", 11102);
        intent.putExtra("groupuid", !TextUtils.isEmpty(uid) ? Integer.parseInt(uid) : 0);
        intent.putExtra("gameid", game_id);
        intent.putExtra("company_id", company_id);
        context.startActivity(intent);
    }

    @Override // com.join.mgps.fragment.e
    @UiThread
    void T(String msg) {
        ToastManager.show(msg);
    }

    boolean V(String keyword) {
        Context context = this.f69694o;
        if (context == null || !(context instanceof SearchListActivity1)) {
            return false;
        }
        return ((SearchListActivity1) context).isNeedLoad(keyword);
    }

    String W() {
        Context context = this.f69694o;
        return (context == null || !(context instanceof SearchListActivity1)) ? "" : ((SearchListActivity1) context).keyword();
    }

    void X() throws Throwable {
        Context context = this.f69694o;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f69689j = ((SearchListActivity1) context).getCurrentPluginNum();
            this.f69690k = ((SearchListActivity1) this.f69694o).getCurrentLangId();
        }
        int i10 = this.f69685f;
        if (i10 == 0) {
            Y(this.f69691l + 1);
        } else if (i10 == 2) {
            Z(this.f69691l + 1);
        } else {
            if (i10 != 3) {
                return;
            }
            a0(this.f69691l + 1);
        }
    }

    @Background
    void Y(int pn) {
        List<b7.n> list;
        if (!com.join.android.app.common.utils.m.j(this.f69694o)) {
            if (pn == 1 && ((list = this.f69688i) == null || list.size() == 0)) {
                showLoadFailed();
            }
            Context context = this.f69694o;
            if (context != null) {
                T(context.getResources().getString(R.string.net_connect_failed));
                return;
            }
            return;
        }
        int i10 = this.f69693n;
        if (pn != i10) {
            if (i10 == -1) {
                return;
            }
            this.f69693n = pn;
            showLoadingView();
            try {
                try {
                    try {
                        ResultMainBean<SearchIntegratedBean> resultMainBeanG1 = this.f69683d.G1(RequestBeanUtil.getInstance(this.f69694o).getSearchIntegratedRequestBean(W(), pn, this.f69692m, this.f69689j, this.f69690k, this.f69686g));
                        if (resultMainBeanG1 != null && resultMainBeanG1.getFlag() == 1 && resultMainBeanG1.getMessages() != null && resultMainBeanG1.getMessages().getData() != null) {
                            d0(resultMainBeanG1.getMessages().getData(), pn);
                        }
                        hideLoading();
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        showLoadFailed();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            } finally {
                this.f69693n = -1;
                g0();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00b4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31 */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v33 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.join.mgps.rpc.e] */
    @Background
    void Z(int i10) throws Throwable {
        List<b7.n> list;
        ?? r10;
        ?? r11;
        if (!com.join.android.app.common.utils.m.j(this.f69694o)) {
            if (i10 == 1 && ((list = this.f69688i) == null || list.size() == 0)) {
                showLoadFailed();
            }
            Context context = this.f69694o;
            if (context != null) {
                T(context.getResources().getString(R.string.net_connect_failed));
                return;
            }
            return;
        }
        int i11 = this.f69693n;
        if (i10 == i11 || i11 == -1) {
            return;
        }
        this.f69693n = i10;
        showLoadingView();
        try {
            try {
                try {
                    CommonRequestBean searchIntegratedRequestBean = RequestBeanUtil.getInstance(this.f69694o).getSearchIntegratedRequestBean(W(), i10, this.f69692m, this.f69689j, this.f69690k, this.f69686g);
                    try {
                        r10 = this.f69683d;
                        ResultMainBean<SearchGameFavoriteListBean> resultMainBeanZ0 = r10.z0(searchIntegratedRequestBean);
                        try {
                            if (resultMainBeanZ0 == null || resultMainBeanZ0.getFlag() != 1 || resultMainBeanZ0.getMessages() == null || resultMainBeanZ0.getMessages().getData() == null) {
                                r10 = 0;
                            } else {
                                boolean z10 = resultMainBeanZ0.getMessages().getData().getList() == null || resultMainBeanZ0.getMessages().getData().getList().size() <= 0;
                                if (i10 != 1 && z10) {
                                    r10 = z10;
                                } else {
                                    c0(resultMainBeanZ0.getMessages().getData(), i10);
                                    r10 = z10;
                                }
                            }
                            hideLoading();
                            r11 = r10;
                        } catch (Exception e10) {
                            e = e10;
                            try {
                                e.printStackTrace();
                                showLoadFailed();
                                r11 = r10;
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                                if (r10 != 0) {
                                    this.f69693n = -1;
                                }
                                g0();
                            }
                        }
                    } catch (Exception e12) {
                        e = e12;
                        r10 = 0;
                    }
                    if (r11 != 0) {
                        this.f69693n = -1;
                    } else {
                        this.f69691l = i10;
                        this.f69693n = 0;
                    }
                } catch (Exception e13) {
                    e = e13;
                    r10 = 0;
                }
                g0();
            } catch (Throwable th) {
                th = th;
                r10 = 0;
                if (r10 != 0) {
                    this.f69693n = -1;
                } else {
                    this.f69691l = i10;
                    this.f69693n = 0;
                }
                g0();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00cc  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v37 */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [com.join.mgps.rpc.e] */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Background
    void a0(int i10) throws Throwable {
        List<b7.n> list;
        ?? r10;
        ?? r11;
        if (!com.join.android.app.common.utils.m.j(this.f69694o)) {
            if (i10 == 1 && ((list = this.f69688i) == null || list.size() == 0)) {
                showLoadFailed();
            }
            Context context = this.f69694o;
            if (context != null) {
                T(context.getResources().getString(R.string.net_connect_failed));
                return;
            }
            return;
        }
        int i11 = this.f69693n;
        if (i10 == i11 || i11 == -1) {
            return;
        }
        this.f69693n = i10;
        showLoadingView();
        try {
            try {
                try {
                    CommonRequestBean searchIntegratedRequestBean = RequestBeanUtil.getInstance(this.f69694o).getSearchIntegratedRequestBean(W(), i10, this.f69692m, this.f69689j, this.f69690k, this.f69686g);
                    try {
                        r10 = this.f69683d;
                        ResultMainBean<SearchPostsBean> resultMainBeanX1 = r10.x1(searchIntegratedRequestBean);
                        try {
                            if (resultMainBeanX1 == null || resultMainBeanX1.getFlag() != 1 || resultMainBeanX1.getMessages() == null || resultMainBeanX1.getMessages().getData() == null) {
                                r10 = 0;
                            } else {
                                boolean z10 = resultMainBeanX1.getMessages().getData().getPosts_list() == null || resultMainBeanX1.getMessages().getData().getPosts_list().getList() == null || resultMainBeanX1.getMessages().getData().getPosts_list().getList().size() <= 0;
                                if (i10 != 1 && z10) {
                                    r10 = z10;
                                } else {
                                    e0(resultMainBeanX1.getMessages().getData(), i10);
                                    r10 = z10;
                                }
                            }
                            hideLoading();
                            r11 = r10;
                        } catch (Exception e10) {
                            e = e10;
                            try {
                                e.printStackTrace();
                                showLoadFailed();
                                r11 = r10;
                            } catch (Exception e11) {
                                e = e11;
                                e.printStackTrace();
                                if (r10 != 0) {
                                    this.f69693n = -1;
                                }
                                g0();
                            }
                        }
                    } catch (Exception e12) {
                        e = e12;
                        r10 = 0;
                    }
                    if (r11 != 0) {
                        this.f69693n = -1;
                    } else {
                        this.f69691l = i10;
                        this.f69693n = 0;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        this.f69693n = -1;
                    } else {
                        this.f69691l = i10;
                        this.f69693n = 0;
                    }
                    g0();
                    throw th;
                }
            } catch (Exception e13) {
                e = e13;
                r10 = 0;
            }
            g0();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @AfterViews
    void afterViews() throws Throwable {
        this.f69694o = getActivity();
        this.f69683d = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
        b7 b7Var = new b7(this.f69694o);
        this.f69684e = b7Var;
        b7Var.E(this);
        this.f69684e.K(W());
        this.f69682c.setOnScrollListener(new a());
        this.f69682c.setAdapter((ListAdapter) this.f69684e);
        this.f69682c.setPreLoadCount(5);
        loading();
        this.f69695p = true;
        XListView2 xListView2 = this.f69682c;
        if (xListView2 != null) {
            xListView2.setPullLoadEnable(new b());
            this.f69682c.setPullRefreshEnable(new c());
            if (this.f69688i.size() != 0) {
                this.f69682c.smoothScrollToPosition(0);
            }
        }
    }

    @Override // com.join.mgps.adapter.b7.g
    public void b(String pid) {
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        forumPostsBean.setPid(Integer.parseInt(pid));
        com.join.mgps.Util.r0.v0(this.f69694o, forumPostsBean);
    }

    @Background
    void b0() {
        String strN0 = com.join.mgps.Util.r0.n0(this.f69685f + "");
        if (TextUtils.isEmpty(strN0)) {
            return;
        }
        int i10 = this.f69685f;
        if (i10 == 0) {
            SearchIntegratedBean searchIntegratedBean = (SearchIntegratedBean) JsonMapper.getInstance().fromJson(strN0, SearchIntegratedBean.class);
            if (TextUtils.isEmpty(searchIntegratedBean.getKeyword()) || !searchIntegratedBean.getKeyword().equals(W())) {
                return;
            }
            d0(searchIntegratedBean, 1);
            hideLoading();
            return;
        }
        if (i10 == 2) {
            SearchGameFavoriteListBean searchGameFavoriteListBean = (SearchGameFavoriteListBean) JsonMapper.getInstance().fromJson(strN0, SearchGameFavoriteListBean.class);
            if (TextUtils.isEmpty(searchGameFavoriteListBean.getKeyword()) || !searchGameFavoriteListBean.getKeyword().equals(W())) {
                return;
            }
            c0(searchGameFavoriteListBean, 1);
            hideLoading();
            return;
        }
        if (i10 == 3) {
            SearchPostsBean searchPostsBean = (SearchPostsBean) JsonMapper.getInstance().fromJson(strN0, SearchPostsBean.class);
            if (TextUtils.isEmpty(searchPostsBean.getKeyword()) || !searchPostsBean.getKeyword().equals(W())) {
                return;
            }
            e0(searchPostsBean, 1);
            hideLoading();
        }
    }

    @Override // com.join.mgps.adapter.b7.g
    public void c(String gameId) {
    }

    @UiThread
    void c0(SearchGameFavoriteListBean data, int pn) {
        if (data == null) {
            return;
        }
        if (pn == 1) {
            this.f69688i.clear();
            if (!TextUtils.isEmpty(this.f69686g)) {
                this.f69688i.add(new b7.n(5, W()));
            }
            data.setKeyword(this.f69687h);
            com.join.mgps.Util.r0.t1("2", JsonMapper.toJsonString(data));
        }
        if (data.getList() == null || data.getList().size() == 0) {
            this.f69688i.add(new b7.n(11, 2));
            if (data.getRecommend_list() != null && data.getRecommend_list().size() != 0) {
                Iterator<SearchIntegratedFavoriteBean.FavoriteBean> it2 = data.getRecommend_list().iterator();
                while (it2.hasNext()) {
                    this.f69688i.add(new b7.n(6, it2.next()));
                }
            }
        } else {
            Iterator<SearchIntegratedFavoriteBean.FavoriteBean> it3 = data.getList().iterator();
            while (it3.hasNext()) {
                this.f69688i.add(new b7.n(6, it3.next()));
            }
        }
        this.f69684e.H(this.f69688i);
        if (this.f69684e != null) {
            notifyDataSetChanged();
        }
    }

    @Override // com.join.mgps.adapter.b7.g
    public void d(String crc_link_type_val) {
        com.papa.sim.statistic.t.l(this.f69694o).d0(this.f69685f == 0 ? "searchTotalList" : "searchGameList", crc_link_type_val, AccountUtil_.getInstance_(this.f69694o).getUid());
    }

    @UiThread
    void d0(SearchIntegratedBean data, int pn) {
        if (pn == 1) {
            this.f69688i.clear();
            if (data != null) {
                data.setKeyword(this.f69687h);
            }
            com.join.mgps.Util.r0.t1("0", JsonMapper.toJsonString(data));
        }
        if (data == null) {
            this.f69684e.H(this.f69688i);
            if (this.f69684e != null) {
                notifyDataSetChanged();
                return;
            }
            return;
        }
        this.f69688i.add(new b7.n(10, 1));
        if (data.getGame_list() != null) {
            if (data.getGame_list().getAd_info() != null) {
                this.f69684e.F(data.getGame_list().getAd_info());
                CollectionBeanSub game_info = data.getGame_list().getAd_info().getGame_info();
                int i10 = this.f69685f;
                if (i10 == 0) {
                    game_info.setReMarks("1");
                } else if (i10 == 1) {
                    game_info.setReMarks("2");
                }
                game_info.set_from(147);
                game_info.set_from_type(147);
                this.f69688i.add(new b7.n(9, game_info));
                this.f69688i.add(new b7.n(7, game_info));
                if ((game_info.getPic_info() != null && game_info.getPic_info().size() > 0) || (com.join.mgps.Util.t2.i(game_info.getVedio_cover_pic()) && com.join.mgps.Util.t2.i(game_info.getVedio_url()))) {
                    game_info.setViewType(1);
                    this.f69688i.add(new b7.n(8, game_info));
                }
            }
            if (data.getGame_list().getList() == null || data.getGame_list().getList().size() == 0) {
                this.f69688i.add(new b7.n(11, 1));
                if (data.getGame_list().getRecommend_list() != null && data.getGame_list().getRecommend_list().size() != 0) {
                    for (CollectionBeanSub collectionBeanSub : data.getGame_list().getRecommend_list()) {
                        collectionBeanSub.set_from(103);
                        collectionBeanSub.set_from_type(112);
                        int i11 = this.f69685f;
                        if (i11 == 0) {
                            collectionBeanSub.setReMarks("1");
                        } else if (i11 == 1) {
                            collectionBeanSub.setReMarks("2");
                        }
                        this.f69688i.add(new b7.n(7, collectionBeanSub).a(true));
                        this.f69696q.add(collectionBeanSub);
                    }
                }
            } else {
                if (data.getGame_list().getList() != null && data.getGame_list().getList().size() != 0) {
                    for (CollectionBeanSub collectionBeanSub2 : data.getGame_list().getList()) {
                        collectionBeanSub2.set_from(103);
                        collectionBeanSub2.set_from_type(112);
                        int i12 = this.f69685f;
                        if (i12 == 0) {
                            collectionBeanSub2.setReMarks("1");
                        } else if (i12 == 1) {
                            collectionBeanSub2.setReMarks("2");
                        }
                        this.f69688i.add(new b7.n(7, collectionBeanSub2).a(true));
                        this.f69696q.add(collectionBeanSub2);
                    }
                }
                if (data.getGame_list().getList().size() >= 5) {
                    this.f69688i.add(new b7.n(12, 1));
                }
            }
        }
        this.f69688i.add(new b7.n(10, 2));
        if (data.getGame_favorite_list() != null) {
            if (data.getGame_favorite_list().getList() == null || data.getGame_favorite_list().getList().size() == 0) {
                this.f69688i.add(new b7.n(11, 2));
                if (data.getGame_favorite_list().getRecommend_list() != null && data.getGame_favorite_list().getRecommend_list().size() != 0) {
                    Iterator<SearchIntegratedFavoriteBean.FavoriteBean> it2 = data.getGame_favorite_list().getRecommend_list().iterator();
                    while (it2.hasNext()) {
                        this.f69688i.add(new b7.n(6, it2.next()));
                    }
                }
            } else {
                Iterator<SearchIntegratedFavoriteBean.FavoriteBean> it3 = data.getGame_favorite_list().getList().iterator();
                while (it3.hasNext()) {
                    this.f69688i.add(new b7.n(6, it3.next()));
                }
                if (data.getGame_favorite_list().getList().size() >= 5) {
                    this.f69688i.add(new b7.n(12, 2));
                }
            }
        }
        if ((data.getPosts_list() != null && data.getPosts_list().getList() != null && data.getPosts_list().getList().size() != 0) || data.getPosts_list().getTop_area() != null) {
            this.f69688i.add(new b7.n(10, 3));
            if (data.getPosts_list().getTop_area() != null) {
                this.f69688i.add(new b7.n(4, data.getPosts_list().getTop_area()));
            }
            if (data.getPosts_list().getList() != null) {
                Iterator<ForumBean.ForumSearchQueryBean> it4 = data.getPosts_list().getList().iterator();
                while (it4.hasNext()) {
                    f0(it4.next());
                }
                if (data.getPosts_list().getList().size() >= 5) {
                    this.f69688i.add(new b7.n(12, 3));
                }
            }
        } else if (data.getPosts_list().getRecommend_list() != null && data.getPosts_list().getRecommend_list().size() != 0) {
            this.f69688i.add(new b7.n(10, 3));
            this.f69688i.add(new b7.n(11, 3));
            Iterator<ForumBean.ForumSearchQueryBean> it5 = data.getPosts_list().getRecommend_list().iterator();
            while (it5.hasNext()) {
                f0(it5.next());
            }
        }
        updateDownStateList(this.f69696q);
        this.f69684e.H(this.f69688i);
        if (this.f69684e != null) {
            notifyDataSetChanged();
        }
        XListView2 xListView2 = this.f69682c;
        if (xListView2 != null) {
            xListView2.requestLayout();
        }
    }

    @Override // com.join.mgps.adapter.b7.g
    public void e(String crc_sign_id) {
        com.papa.sim.statistic.t.l(this.f69694o).E(this.f69685f == 0 ? "searchTotalList" : "searchGameList", crc_sign_id, AccountUtil_.getInstance_(this.f69694o).getUid());
    }

    @UiThread
    void e0(SearchPostsBean data, int pn) {
        if (data == null) {
            return;
        }
        if (pn == 1) {
            this.f69688i.clear();
            data.setKeyword(this.f69687h);
            com.join.mgps.Util.r0.t1("3", JsonMapper.toJsonString(data));
        }
        if ((data.getPosts_list() == null || data.getPosts_list().getList() == null || data.getPosts_list().getList().size() == 0) && data.getPosts_list().getTop_area() == null) {
            this.f69688i.add(new b7.n(11, 3));
            if (data.getPosts_list().getRecommend_list() != null) {
                Iterator<ForumBean.ForumSearchQueryBean> it2 = data.getPosts_list().getRecommend_list().iterator();
                while (it2.hasNext()) {
                    f0(it2.next());
                }
            }
        } else {
            if (data.getPosts_list().getTop_area() != null && pn == 1) {
                this.f69688i.add(new b7.n(4, data.getPosts_list().getTop_area()));
            }
            if (data.getPosts_list().getList() != null) {
                Iterator<ForumBean.ForumSearchQueryBean> it3 = data.getPosts_list().getList().iterator();
                while (it3.hasNext()) {
                    f0(it3.next());
                }
            }
        }
        this.f69684e.H(this.f69688i);
        if (this.f69684e != null) {
            notifyDataSetChanged();
        }
        XListView2 xListView2 = this.f69682c;
        if (xListView2 != null) {
            xListView2.requestLayout();
        }
    }

    @Override // com.join.mgps.adapter.b7.g
    public void g(Context context, String s10, String uid, String s11, String s12) {
        String str = !TextUtils.isEmpty(this.f69686g) ? "fromSearchP2" : "fromSearchP3";
        if (this.f69685f == 0) {
            str = "fromSearchP4";
        }
        O(context, s10, uid, s11, s12);
        com.papa.sim.statistic.t.l(context).j0(str, s10, uid);
    }

    @UiThread
    void g0() {
        XListView2 xListView2 = this.f69682c;
        if (xListView2 == null) {
            return;
        }
        if (this.f69693n == -1) {
            xListView2.setNoMore();
        } else {
            xListView2.u();
        }
    }

    @UiThread
    void hideLoading() {
        View view = this.f69697r;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f69698s;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        XListView2 xListView2 = this.f69682c;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() throws Throwable {
        if (this.f69695p && V(this.f69687h)) {
            loading();
        }
    }

    @Override // com.join.mgps.callbacks.n
    public void loading() throws Throwable {
        this.f69691l = 0;
        this.f69693n = 0;
        Context context = this.f69694o;
        if (context != null && (context instanceof SearchListActivity1)) {
            this.f69689j = ((SearchListActivity1) context).getCurrentPluginNum();
            this.f69690k = ((SearchListActivity1) this.f69694o).getCurrentLangId();
            this.f69686g = ((SearchListActivity1) this.f69694o).getGameId();
        }
        this.f69688i.clear();
        this.f69696q.clear();
        showLoadingView();
        this.f69687h = W();
        b0();
        int i10 = this.f69685f;
        if (i10 == 0) {
            Y(1);
        } else if (i10 == 2) {
            Z(1);
        } else {
            if (i10 != 3) {
                return;
            }
            a0(1);
        }
    }

    void notifyDataSetChanged() {
        b7 b7Var = this.f69684e;
        if (b7Var != null) {
            b7Var.K(W());
            this.f69684e.notifyDataSetChanged();
        }
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new f());
        if (downloadTaskEvent.c() != 8 || this.f69705z) {
            return;
        }
        updateProgressPartly();
    }

    @Click
    void relodingimag() throws Throwable {
        loading();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f69694o);
    }

    public void setTab(int position) throws Throwable {
        this.f69685f = position;
        if (position == 0) {
            this.f69682c.e();
        } else {
            this.f69682c.setPullLoadEnable(new d());
            this.f69682c.setPullRefreshEnable(new e());
        }
        loading();
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    @UiThread
    void showLoadingView() {
        if (this.f69688i.size() > 0) {
            XListView2 xListView2 = this.f69682c;
            if (xListView2 != null && xListView2.getVisibility() == 8) {
                this.f69682c.setVisibility(0);
            }
            View view = this.f69697r;
            if (view != null && view.getVisibility() == 0) {
                this.f69697r.setVisibility(8);
            }
        } else {
            XListView2 xListView3 = this.f69682c;
            if (xListView3 != null) {
                xListView3.setVisibility(8);
            }
            View view2 = this.f69697r;
            if (view2 != null) {
                view2.setVisibility(0);
            }
        }
        View view3 = this.f69698s;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    @UiThread
    void showLoadFailed(String msg) {
        XListView2 xListView2 = this.f69682c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
        View view = this.f69697r;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.f69698s;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }
}
