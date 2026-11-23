package com.join.mgps.activity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.collection.SimpleArrayMap;
import com.MApplication;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.broadcast.NetBroadcastReceiver;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.GameSortBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.RecommendGameAdInfo;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SNKGameInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.ApiName;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.receiver.ShortcutReceiver;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_papa_game_local)
public class d8 extends com.join.mgps.fragment.e implements com.join.mgps.adapter.i4.e, AbsListView.OnScrollListener {
    public static final String J = "网游";
    public static final String K = "单机";
    public static final String L = "对战";
    public static final String M = "全部游戏";
    com.join.mgps.customview.a0 A;
    DataGameListBean E;
    private NetBroadcastReceiver I;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XListView2 f57083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    View f57084d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    View f57085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    WrapContentGridView f57086f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    View f57087g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f57088h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Context f57089i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    e f57090j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.join.mgps.adapter.i4 f57091k;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    long f57098r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    com.join.mgps.rpc.e f57099s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @Pref
    PrefDef_ f57100t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private RecommendGameAdInfo f57101u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private DownloadTask f57102v;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private UserInfo f57106z;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    List<String> f57092l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    List<String> f57093m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    HashMap<String, Boolean> f57094n = new HashMap<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    HashMap<String, Boolean> f57095o = new HashMap<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<DownloadTask> f57096p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f57097q = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f57103w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f57104x = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f57105y = 0;
    private List<String> B = new ArrayList();
    private int C = 0;
    private int D = 0;
    private List<CollectionBeanSub> F = new ArrayList();
    private List<CollectionBeanSub> G = new ArrayList();
    long H = 0;

    class a implements Comparator<DownloadTask> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(DownloadTask o10, DownloadTask o11) {
            if (b(o10.getStatus())) {
                return (!b(o11.getStatus()) || o11.getStartTime() <= o10.getStartTime()) ? -1 : 1;
            }
            if (b(o11.getStatus())) {
                return 1;
            }
            if (c(o10.getStatus()) && !d(o10)) {
                return (!c(o11.getStatus()) || d(o11) || o11.getFinishTime() <= o10.getFinishTime()) ? -1 : 1;
            }
            if (c(o11.getStatus()) && !d(o11)) {
                return 1;
            }
            if (c(o10.getStatus())) {
                return (!c(o11.getStatus()) || o11.getOpenTime() < o10.getOpenTime()) ? -1 : 1;
            }
            return c(o11.getStatus()) ? 1 : 0;
        }

        boolean b(int status) {
            return status == 2 || status == 3 || status == 12 || status == 13 || status == 36 || status == 11 || status == 6 || status == 10 || status == 48;
        }

        boolean c(int status) {
            return status == 5 || e(status);
        }

        boolean d(DownloadTask o10) {
            return o10.isOpen();
        }

        boolean e(int status) {
            return status == 9;
        }
    }

    class b implements com.join.mgps.customview.b0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f57108a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f57109b;

        b(final String val$gameId, final DownloadTask val$downloadTask) {
            this.f57108a = val$gameId;
            this.f57109b = val$downloadTask;
        }

        @Override // com.join.mgps.customview.b0.a
        public void onAddShortCut(String id2) {
            d8.this.showAddShortcut(q5.f.M().G(id2));
        }

        @Override // com.join.mgps.customview.b0.a
        public void onDeleteArchieve(String id2) {
        }

        @Override // com.join.mgps.customview.b0.a
        public void onDeleteGame(String id2) {
            DownloadTask downloadTaskG = q5.f.M().G(this.f57108a);
            if (downloadTaskG == null) {
                downloadTaskG = q5.f.M().L(this.f57108a);
            }
            if (downloadTaskG == null) {
                d8.this.i0(this.f57109b);
            } else {
                d8.this.onMoreDeleteGame(id2);
            }
        }

        @Override // com.join.mgps.customview.b0.a
        public void onGameDetail(String id2) {
            DownloadTask downloadTaskG = q5.f.M().G(this.f57108a);
            boolean z10 = false;
            if (downloadTaskG == null) {
                IntentUtil.getInstance().goGameDetialActivity(d8.this.f57089i, this.f57108a, 0);
                return;
            }
            if (com.join.mgps.Util.t2.i(downloadTaskG.getMod_info())) {
                ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTaskG.getMod_info(), ModInfoBean.class);
                DownloadTask downloadTaskG2 = modInfoBean != null ? q5.f.M().G(modInfoBean.getMain_game_id()) : null;
                if (downloadTaskG2 == null) {
                    downloadTaskG.setCrc_link_type_val(modInfoBean.getMain_game_id());
                } else {
                    downloadTaskG = downloadTaskG2;
                }
            }
            downloadTaskG.set_from_type(127);
            if (downloadTaskG.getSp_tag_info() != null && downloadTaskG.getSp_tag_info().getOut_game() != null) {
                z10 = true;
            }
            if ((TextUtils.isEmpty(downloadTaskG.getFileType()) || !downloadTaskG.getFileType().equals(Dtype.chajian.name())) && !z10) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(d8.this.getContext(), downloadTaskG);
            }
        }

        @Override // com.join.mgps.customview.b0.a
        public void onStandMode(String id2) {
            new com.join.mgps.customview.s(d8.this.getContext()).c(d8.this.f57085e, id2);
        }
    }

    class c implements Callback<ResponseModel<DataGameListBean>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f57111b;

        c(final boolean val$isRefreshAllData) {
            this.f57111b = val$isRefreshAllData;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
            if (response != null) {
                try {
                    ResponseModel<DataGameListBean> responseModelBody = response.body();
                    if (responseModelBody != null && responseModelBody.getData() != null && this.f57111b) {
                        d8.this.E = responseModelBody.getData();
                        d8.this.G.clear();
                        List<GamedownRecomendItemBean> recommendList = responseModelBody.getData().getRecommendList();
                        if (recommendList != null) {
                            for (int i10 = 0; i10 < recommendList.size() && i10 < 6; i10++) {
                                GamedownRecomendItemBean gamedownRecomendItemBean = recommendList.get(i10);
                                gamedownRecomendItemBean.setDownloadTask(q5.f.M().G(gamedownRecomendItemBean.getGame_id()));
                                d8.this.G.add(gamedownRecomendItemBean);
                            }
                            if (d8.this.f57096p == null || d8.this.f57096p.size() == 0) {
                                d8.this.notifyDataSetChanged();
                            }
                        }
                        List<GamedownRecomendItemBean> gameList = responseModelBody.getData().getGameList();
                        if (gameList != null && gameList.size() > 0) {
                            d8.this.p0(gameList);
                        }
                    }
                    RecommendGameAdInfo recAd = responseModelBody.getData().getRecAd();
                    if (recAd != null) {
                        d8.this.f57101u = recAd;
                        d8.this.notifyDataSetChanged();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class d implements NetBroadcastReceiver.a {
        d() {
        }

        @Override // com.join.mgps.broadcast.NetBroadcastReceiver.a
        public void a(int netMobile) {
            if (d8.this.F == null || d8.this.F.size() == 0 || !(d8.this.f57096p == null || d8.this.f57097q == d8.this.f57096p.size())) {
                if (d8.this.f57096p != null) {
                    d8 d8Var = d8.this;
                    d8Var.f57097q = d8Var.f57096p.size();
                }
                d8.this.Z(true);
            }
        }
    }

    class e extends BaseAdapter {

        class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public SimpleDraweeView f57115a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public TextView f57116b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public TextView f57117c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public DownloadNormalView f57118d;

            a() {
            }
        }

        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(CollectionBeanSub collectionBeanSub, View view) {
            IntentUtil.getInstance().goGameDetialActivity(view.getContext(), collectionBeanSub.getGame_id(), collectionBeanSub.getGame_info_tpl_type(), collectionBeanSub.getSp_tpl_two_position(), 0);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (d8.this.G == null) {
                return 0;
            }
            return Math.min(9, d8.this.G.size());
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            if (d8.this.G == null) {
                return null;
            }
            return d8.this.G.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            a aVar;
            if (convertView != null) {
                aVar = (a) convertView.getTag();
            } else {
                a aVar2 = new a();
                View viewInflate = LayoutInflater.from(d8.this.getContext()).inflate(R.layout.fragment_my_game_no_game_item, parent, false);
                aVar2.f57115a = (SimpleDraweeView) viewInflate.findViewById(R.id.icon);
                aVar2.f57116b = (TextView) viewInflate.findViewById(R.id.name);
                aVar2.f57117c = (TextView) viewInflate.findViewById(R.id.size);
                aVar2.f57118d = (DownloadNormalView) viewInflate.findViewById(R.id.dv_view);
                viewInflate.setTag(aVar2);
                aVar = aVar2;
                convertView = viewInflate;
            }
            if (getItem(position) == null) {
                return convertView;
            }
            final CollectionBeanSub collectionBeanSub = (CollectionBeanSub) getItem(position);
            com.join.android.app.common.utils.l.h(aVar.f57115a, collectionBeanSub.getIco_remote());
            aVar.f57116b.setText(collectionBeanSub.getGame_name());
            aVar.f57117c.setText(UtilsMy.c(!TextUtils.isEmpty(collectionBeanSub.getSize()) ? (long) (Double.parseDouble(collectionBeanSub.getSize()) * 1024.0d * 1024.0d) : 0L));
            convertView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.e8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d8.e.b(collectionBeanSub, view);
                }
            });
            aVar.f57118d.f(new m6.c(convertView.getContext(), collectionBeanSub));
            return convertView;
        }
    }

    private CollectionBeanSub W(CommonGameInfoBean bean) {
        if (bean == null || bean.getG_info() == null) {
            return null;
        }
        GInfoBean g_info = bean.getG_info();
        CollectionBeanSub collectionBeanSub = new CollectionBeanSub();
        collectionBeanSub.setGame_name(g_info.getName());
        collectionBeanSub.setIco_remote(TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico());
        collectionBeanSub.setSize(g_info.getApp_size());
        collectionBeanSub.setGame_id(g_info.getId());
        collectionBeanSub.setGame_info_tpl_type(g_info.getGame_info_tpl_type());
        collectionBeanSub.setSp_tpl_two_position(g_info.getSp_tpl_two_position());
        collectionBeanSub.set_from(bean.get_from());
        collectionBeanSub.set_from_type(bean.get_from_type());
        return collectionBeanSub;
    }

    private void X(CommonGameInfoBean bean) {
        XListView2 xListView2;
        if (this.f57103w || (xListView2 = this.f57083c) == null || xListView2.getVisibility() != 0) {
            return;
        }
        this.f57103w = true;
        Ext ext = new Ext();
        ext.setPage("tab");
        ext.setFrom("207");
        ext.setGameId(bean.getG_info().getId());
        com.papa.sim.statistic.t.l(getContext()).k0(Event.expGameAdPage, ext, null);
    }

    private void addShortcut(String s10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("s:");
        sb2.append(s10);
        DownloadTask downloadTaskG = q5.f.M().G(s10);
        if (downloadTaskG != null) {
            Bitmap bitmapM = ImageLoader.q().m(downloadTaskG.getPortraitURL());
            if (bitmapM == null) {
                bitmapM = returnBitmap(downloadTaskG.getPortraitURL());
            }
            com.join.mgps.Util.j2.c(getActivity(), downloadTaskG.getShowName(), s10, bitmapM);
        }
    }

    private boolean d0(List<CommonGameInfoBean> adList, CollectionBeanSub bean) {
        if (adList != null && bean != null) {
            for (CommonGameInfoBean commonGameInfoBean : adList) {
                if (commonGameInfoBean != null && commonGameInfoBean.getG_info() != null && TextUtils.equals(commonGameInfoBean.getG_info().getId(), bean.getGame_id())) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean e0(List<com.join.mgps.adapter.i4.f> beans) {
        if (beans != null && this.f57102v != null) {
            for (com.join.mgps.adapter.i4.f fVar : beans) {
                if ((fVar.a() instanceof DownloadTask) && TextUtils.equals(((DownloadTask) fVar.a()).getCrc_link_type_val(), this.f57102v.getCrc_link_type_val())) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean f0() {
        return (!isAdded() || isDetached() || getContext() == null) ? false : true;
    }

    private List<DownloadTask> getCurrentTypeGames() {
        return this.f57096p;
    }

    private void h0(CommonGameInfoBean bean) {
        WrapContentGridView wrapContentGridView = this.f57086f;
        if (wrapContentGridView == null || wrapContentGridView.getVisibility() != 0) {
            return;
        }
        Ext ext = new Ext();
        ext.setPage("tab");
        ext.setFrom("208");
        ext.setGameId(bean.getG_info().getId());
        com.papa.sim.statistic.t.l(getContext()).k0(Event.expGameAdPage, ext, null);
    }

    private void r0() {
    }

    private void receiveDelete(DownloadTask downloadTask) {
        DownloadTask next;
        List<CollectionBeanSub> list;
        loadData();
        Iterator<DownloadTask> it2 = this.f57096p.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            if (!TextUtils.isEmpty(next.getCrc_link_type_val()) && next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                next.setStatus(0);
                it2.remove();
                break;
            }
        }
        if (downloadTask != null && (list = this.G) != null && list.size() > 0) {
            for (CollectionBeanSub collectionBeanSub : this.G) {
                if (collectionBeanSub.getCrc_sign_id().equals(downloadTask.getCrc_link_type_val())) {
                    collectionBeanSub.setDownloadTask(null);
                    break;
                }
            }
        }
        this.f57090j.notifyDataSetChanged();
        s0(next);
        k0();
        notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        DownloadTask next;
        List<DownloadTask> list = this.f57096p;
        if (list == null || downloadTask == null) {
            return;
        }
        try {
            Iterator<DownloadTask> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                if (!TextUtils.isEmpty(next.getCrc_link_type_val()) && next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.U4(next);
                    break;
                }
            }
            s0(next);
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        k0();
        notifyDataSetChanged();
    }

    private void receiveStart(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        loadData();
        k0();
        notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        if (this.f57096p == null || downloadTask == null) {
            return;
        }
        if (!com.join.mgps.Util.d2.g(downloadTask.getPackageName()) || com.join.mgps.Util.d2.w(downloadTask.getCrc_link_type_val())) {
            for (int i10 = 0; i10 < this.f57096p.size(); i10++) {
                DownloadTask downloadTask2 = this.f57096p.get(i10);
                if (!TextUtils.isEmpty(downloadTask2.getCrc_link_type_val()) && downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.f57096p.set(i10, downloadTask);
                    s0(downloadTask);
                    loadData();
                    k0();
                    notifyDataSetChanged();
                    l0();
                }
            }
            downloadTask = null;
            s0(downloadTask);
            loadData();
            k0();
            notifyDataSetChanged();
            l0();
        }
    }

    private Bitmap returnBitmap(String imgUri) {
        if (com.join.mgps.Util.t2.h(imgUri)) {
            return null;
        }
        try {
            return BitmapFactory.decodeFile(((d3.c) Fresco.getImagePipelineFactory().n().c(new com.facebook.cache.common.j(Uri.parse(imgUri).toString()))).d().getPath());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.D < 0 || this.C >= this.f57083c.getCount()) {
            return;
        }
        for (int i10 = this.D; i10 <= this.C; i10++) {
            if (this.f57083c.getAdapter().getItemViewType(i10) == 2 && this.f57083c.getItemAtPosition(i10) != null && (this.f57083c.getItemAtPosition(i10) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.f57083c.getItemAtPosition(i10)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.f57083c.getChildAt(i10 - this.D)) != null && childAt.getTag() != null && (childAt.getTag() instanceof com.join.mgps.adapter.i4.h))) {
                com.join.mgps.adapter.i4.h hVar = (com.join.mgps.adapter.i4.h) childAt.getTag();
                try {
                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                    if (downloadTaskG == null) {
                        return;
                    } else {
                        hVar.f62399h.s(downloadTaskG.getProgress());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void Y() {
        List<GameSortBean> data;
        try {
            ResultMainBean<List<GameSortBean>> resultMainBeanD1 = this.f57099s.d1(RequestBeanUtil.getInstance(this.f57089i).getGameSortRequestBean(com.join.android.app.common.utils.q.n(this.f57089i.getApplicationContext()).A(), ""));
            if (resultMainBeanD1 != null && resultMainBeanD1.getFlag() == 1 && resultMainBeanD1.getMessages() != null && (data = resultMainBeanD1.getMessages().getData()) != null && data.size() > 0) {
                this.f57092l.clear();
                for (GameSortBean gameSortBean : data) {
                    if (gameSortBean.getName().contains("单机")) {
                        this.f57092l.add("单机");
                    } else {
                        this.f57092l.add(gameSortBean.getName());
                    }
                }
            }
            this.f57100t.myGameAllTabSort().g(JsonMapper.getInstance().toJson(this.f57092l));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void Z(boolean isRefreshAllData) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!isRefreshAllData || jCurrentTimeMillis - this.H >= 10000) {
            this.H = jCurrentTimeMillis;
            try {
                if (com.join.android.app.common.utils.m.j(getContext())) {
                    String uid = AccountUtil_.getInstance_(this.f57089i).getUid();
                    String token = AccountUtil_.getInstance_(this.f57089i).getToken();
                    if (TextUtils.isEmpty(uid)) {
                        uid = "";
                    }
                    if (TextUtils.isEmpty(token)) {
                        token = "";
                    }
                    RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
                    requestModel.setDefault(this.f57089i);
                    QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
                    queryDownloadInfoRequestArgs.setGameId("0");
                    queryDownloadInfoRequestArgs.setDataType("1");
                    queryDownloadInfoRequestArgs.setUid(uid);
                    queryDownloadInfoRequestArgs.setToken(token);
                    requestModel.setArgs(queryDownloadInfoRequestArgs);
                    com.join.mgps.rpc.impl.i.P0().N0().K1(requestModel).enqueue(new c(isRefreshAllData));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    String a0(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return "";
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        StringBuilder sb2 = new StringBuilder();
        ConstantIntEnum constantIntEnum = ConstantIntEnum.FBA;
        sb2.append(constantIntEnum.value());
        sb2.append("");
        simpleArrayMap.put(sb2.toString(), constantIntEnum.nickName());
        StringBuilder sb3 = new StringBuilder();
        ConstantIntEnum constantIntEnum2 = ConstantIntEnum.FC;
        sb3.append(constantIntEnum2.value());
        sb3.append("");
        simpleArrayMap.put(sb3.toString(), constantIntEnum2.nickName());
        StringBuilder sb4 = new StringBuilder();
        ConstantIntEnum constantIntEnum3 = ConstantIntEnum.GBA;
        sb4.append(constantIntEnum3.value());
        sb4.append("");
        simpleArrayMap.put(sb4.toString(), constantIntEnum3.nickName());
        StringBuilder sb5 = new StringBuilder();
        ConstantIntEnum constantIntEnum4 = ConstantIntEnum.PSP;
        sb5.append(constantIntEnum4.value());
        sb5.append("");
        simpleArrayMap.put(sb5.toString(), constantIntEnum4.nickName());
        StringBuilder sb6 = new StringBuilder();
        ConstantIntEnum constantIntEnum5 = ConstantIntEnum.NDS;
        sb6.append(constantIntEnum5.value());
        sb6.append("");
        simpleArrayMap.put(sb6.toString(), constantIntEnum5.nickName());
        StringBuilder sb7 = new StringBuilder();
        ConstantIntEnum constantIntEnum6 = ConstantIntEnum.PS2;
        sb7.append(constantIntEnum6.value());
        sb7.append("");
        simpleArrayMap.put(sb7.toString(), constantIntEnum6.nickName());
        StringBuilder sb8 = new StringBuilder();
        ConstantIntEnum constantIntEnum7 = ConstantIntEnum.GBC;
        sb8.append(constantIntEnum7.value());
        sb8.append("");
        simpleArrayMap.put(sb8.toString(), constantIntEnum7.nickName());
        StringBuilder sb9 = new StringBuilder();
        ConstantIntEnum constantIntEnum8 = ConstantIntEnum.MD;
        sb9.append(constantIntEnum8.value());
        sb9.append("");
        simpleArrayMap.put(sb9.toString(), constantIntEnum8.nickName());
        simpleArrayMap.put(constantIntEnum8.value() + "", constantIntEnum8.nickName());
        StringBuilder sb10 = new StringBuilder();
        ConstantIntEnum constantIntEnum9 = ConstantIntEnum.PS;
        sb10.append(constantIntEnum9.value());
        sb10.append("");
        simpleArrayMap.put(sb10.toString(), constantIntEnum9.nickName());
        StringBuilder sb11 = new StringBuilder();
        ConstantIntEnum constantIntEnum10 = ConstantIntEnum.SFC;
        sb11.append(constantIntEnum10.value());
        sb11.append("");
        simpleArrayMap.put(sb11.toString(), constantIntEnum10.nickName());
        StringBuilder sb12 = new StringBuilder();
        ConstantIntEnum constantIntEnum11 = ConstantIntEnum.WSC;
        sb12.append(constantIntEnum11.value());
        sb12.append("");
        simpleArrayMap.put(sb12.toString(), constantIntEnum11.nickName());
        StringBuilder sb13 = new StringBuilder();
        ConstantIntEnum constantIntEnum12 = ConstantIntEnum.N64;
        sb13.append(constantIntEnum12.value());
        sb13.append("");
        simpleArrayMap.put(sb13.toString(), constantIntEnum12.nickName());
        StringBuilder sb14 = new StringBuilder();
        ConstantIntEnum constantIntEnum13 = ConstantIntEnum.ONS;
        sb14.append(constantIntEnum13.value());
        sb14.append("");
        simpleArrayMap.put(sb14.toString(), constantIntEnum13.nickName());
        StringBuilder sb15 = new StringBuilder();
        ConstantIntEnum constantIntEnum14 = ConstantIntEnum.DC;
        sb15.append(constantIntEnum14.value());
        sb15.append("");
        simpleArrayMap.put(sb15.toString(), constantIntEnum14.nickName());
        StringBuilder sb16 = new StringBuilder();
        ConstantIntEnum constantIntEnum15 = ConstantIntEnum.H5;
        sb16.append(constantIntEnum15.value());
        sb16.append("");
        simpleArrayMap.put(sb16.toString(), constantIntEnum15.nickName());
        String romType = downloadTask.getRomType();
        if (TextUtils.isEmpty(romType)) {
            romType = downloadTask.getPlugin_num();
            downloadTask.setRomType(romType);
        }
        return simpleArrayMap.containsKey(romType) ? (String) simpleArrayMap.get(romType) : "";
    }

    void addShortout(Context mContext, String name, String GameId, Bitmap bitmap) {
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.icon);
        }
        if (bitmap == null) {
            com.join.mgps.Util.a3.b(mContext).d("创建失败！");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManagerA = androidx.core.content.pm.e1.a(mContext.getSystemService("shortcut"));
            if (shortcutManagerA.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(mContext, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", GameId);
                intent.addFlags(67108864);
                shortcutManagerA.requestPinShortcut(androidx.core.content.pm.k.a(mContext, name).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(name).setIntent(intent).build(), PendingIntent.getBroadcast(mContext, 0, new Intent(mContext, (Class<?>) ShortcutReceiver.class), 134217728).getIntentSender());
                com.join.mgps.Util.j2.e(mContext, GameId);
            }
        } else {
            Intent intent2 = new Intent(com.join.mgps.Util.j2.f49767a);
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.NAME", name);
            intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.setClass(mContext, MGMainActivity_.class);
            intent3.putExtra("shortcutGameId", GameId);
            intent3.addFlags(67108864);
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
            mContext.sendBroadcast(intent2);
            com.join.mgps.Util.j2.e(mContext, GameId);
        }
        this.f57094n.put(GameId, Boolean.FALSE);
        notifyDataSetChanged();
        showAddShortcutResultDialog(GameId);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @AfterViews
    void afterviews() {
        m0();
        this.f57089i = getContext();
        com.join.mgps.Util.j0.a().d(this);
        if (Build.VERSION.SDK_INT > 28 && this.f57100t.needShowPermissdialog().d().booleanValue() && !UtilsMy.n0(this.f57089i)) {
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(this.f57089i).from(2).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
        this.f57099s = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.adapter.i4 i4Var = new com.join.mgps.adapter.i4(getContext());
        this.f57091k = i4Var;
        i4Var.r0(this);
        this.f57083c.setAdapter((ListAdapter) this.f57091k);
        this.f57083c.setOnScrollListener(this);
        if (this.f57085e == null) {
            this.f57085e = ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.root);
        }
        n0();
        Y();
        loadData();
        e eVar = new e();
        this.f57090j = eVar;
        this.f57086f.setAdapter((ListAdapter) eVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void b0() {
        if (com.join.android.app.common.utils.m.j(getActivity())) {
            try {
                ResultMainBean<SNKGameInfoBean> resultMainBeanJ0 = this.f57099s.J0(RequestBeanUtil.getInstance(getActivity()).getPreloadingADRequestBean());
                if (resultMainBeanJ0 == null || resultMainBeanJ0.getCode() != 600) {
                    return;
                }
                o0(resultMainBeanJ0.getMessages().getData());
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("e:");
                sb2.append(e10.getMessage());
            }
        }
    }

    @Click
    void back() {
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        List<CollectionBeanSub> list;
        WrapContentGridView wrapContentGridView;
        if (this.f57090j != null) {
            RecommendGameAdInfo recommendGameAdInfo = this.f57101u;
            if (recommendGameAdInfo != null && recommendGameAdInfo.getList() != null && this.f57101u.getList().size() > 0 && (list = this.G) != null && list.size() > 0 && (wrapContentGridView = this.f57086f) != null && wrapContentGridView.getVisibility() == 0) {
                List<CommonGameInfoBean> list2 = this.f57101u.getList();
                CommonGameInfoBean commonGameInfoBean = list2.get(this.f57105y % list2.size());
                commonGameInfoBean.set_from(153);
                commonGameInfoBean.set_from_type(153);
                CollectionBeanSub collectionBeanSubW = W(commonGameInfoBean);
                if (!d0(list2, this.G.get(0))) {
                    this.G.add(0, collectionBeanSubW);
                    h0(commonGameInfoBean);
                } else if (!TextUtils.equals(commonGameInfoBean.getG_info().getId(), this.G.get(0).getGame_id())) {
                    this.G.set(0, collectionBeanSubW);
                    h0(commonGameInfoBean);
                }
            }
            this.f57090j.notifyDataSetChanged();
        }
    }

    boolean canShowAddShortcut(Context context, DownloadTask downloadTask) {
        if (downloadTask != null && downloadTask.getStatus() == 5 && (!isSingleGame(downloadTask) || !com.join.mgps.Util.j2.d(context, downloadTask.getCrc_link_type_val()))) {
            boolean z10 = !TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.apk.name());
            if (com.join.mgps.Util.t2.i(downloadTask.getRomType()) && (downloadTask.getUrl().endsWith(".apk") || downloadTask.getRomType().equals("androidobb") || downloadTask.getRomType().equals("46"))) {
                String packageName = downloadTask.getPackageName();
                if (!com.join.mgps.Util.t2.h(packageName) && isNotShowIconApp(context, packageName) && !downloadTask.getTips().contains("网游") && !com.join.mgps.Util.j2.d(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
                if (APKUtils.K(downloadTask) && !com.join.mgps.Util.j2.d(context, downloadTask.getRef_crc_sign_id())) {
                    return true;
                }
                if (APKUtils.P(downloadTask) && !com.join.mgps.Util.j2.d(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
            } else {
                if (z10 && !com.join.mgps.Util.j2.d(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
                if (APKUtils.K(downloadTask) && !com.join.mgps.Util.j2.d(context, downloadTask.getRef_crc_sign_id())) {
                    return true;
                }
                if (APKUtils.P(downloadTask) && !com.join.mgps.Util.j2.d(context, downloadTask.getCrc_link_type_val())) {
                    return true;
                }
            }
        }
        return false;
    }

    void del(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.f57096p.iterator();
        while (it2.hasNext()) {
            DownloadTask next = it2.next();
            if (!TextUtils.isEmpty(next.getCrc_link_type_val()) && next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
            }
        }
    }

    void deleteGame(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        Context context = getContext();
        if (downloadTaskG == null) {
            return;
        }
        String fileType = downloadTaskG.getFileType();
        if (!(!TextUtils.isEmpty(fileType) && fileType.equals(Dtype.android.name()))) {
            UtilsMy.O0(downloadTaskG);
            del(downloadTaskG);
            UtilsMy.U4(downloadTaskG);
            notifyDataSetChanged();
            return;
        }
        if (!com.join.android.app.common.utils.g.t0(context).e(context, downloadTaskG.getPackageName())) {
            UtilsMy.O0(downloadTaskG);
            del(downloadTaskG);
            UtilsMy.U4(downloadTaskG);
            notifyDataSetChanged();
            return;
        }
        if (downloadTaskG.getStatus() == 5 || downloadTaskG.getStatus() == 9) {
            com.join.android.app.common.utils.g.t0(context).o0(context, downloadTaskG.getPackageName());
            return;
        }
        UtilsMy.L0(downloadTaskG);
        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(context).n(context, downloadTaskG.getPackageName());
        if (aVarN != null) {
            downloadTaskG.setVer(aVarN.d() + "");
        }
        UtilsMy.i3(downloadTaskG, 5);
        notifyDataSetChanged();
    }

    void deleteModGame(String modGameId) {
        DownloadTask downloadTaskG = q5.f.M().G(modGameId);
        if (downloadTaskG.getStatus() == 48) {
            com.join.mgps.Util.a3.b(getContext()).d("游戏安装中无法删除");
            return;
        }
        UtilsMy.R0(getContext(), downloadTaskG);
        del(downloadTaskG);
        getCurrentTypeGames();
        notifyDataSetChanged();
    }

    boolean g0(String type, DownloadTask task) {
        if (TextUtils.isEmpty(type)) {
            return false;
        }
        if (task.isFightFun() && "对战".equals(type)) {
            return true;
        }
        String strA0 = a0(task);
        if (!TextUtils.isEmpty(strA0) && strA0.equals(type)) {
            return true;
        }
        for (TipBean tipBean : task.getTipBeans()) {
            if (UtilsMy.w0(task.getPay_game_amount(), task.getCrc_link_type_val()) <= 0) {
                if (tipBean.getName().contains("网游") && type.equals(tipBean.getName())) {
                    return true;
                }
                if (tipBean.getName().contains("单机") && type.equals(tipBean.getName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public void i0(DownloadTask downloadTask) {
        try {
            com.join.mgps.adapter.i4 i4Var = this.f57091k;
            if (i4Var != null) {
                i4Var.x(downloadTask);
                String strD = this.f57100t.myGameTabAdShowIndex().d();
                if (!TextUtils.isEmpty(strD) && strD.split("_").length == 2) {
                    String[] strArrSplit = strD.split("_");
                    int i10 = Integer.parseInt(strArrSplit[1]) + 1;
                    this.f57100t.myGameTabAdShowIndex().g(strArrSplit[0] + "_" + i10);
                }
                this.f57101u = null;
                this.f57102v = null;
                Ext ext = new Ext();
                ext.setGameId(downloadTask.getCrc_link_type_val());
                com.papa.sim.statistic.t.l(getContext()).R1(Event.clickRightClosedAd, ext);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    boolean isNotShowIconApp(Context context, String pkgName) {
        boolean zE = false;
        if (context == null || TextUtils.isEmpty(pkgName)) {
            return false;
        }
        if (this.f57095o.containsKey(pkgName) && this.f57095o.get(pkgName) != null) {
            if (this.f57095o.get(pkgName) != null) {
                return this.f57095o.get(pkgName).booleanValue();
            }
            return false;
        }
        try {
            zE = com.join.mgps.Util.l.e(context, pkgName);
            this.f57095o.put(pkgName, Boolean.valueOf(zE));
            return zE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return zE;
        }
    }

    boolean isSingleGame(DownloadTask task) {
        for (TipBean tipBean : task.getTipBeans()) {
            if (UtilsMy.w0(task.getPay_game_amount(), task.getCrc_link_type_val()) <= 0 && tipBean.getName().contains("单机")) {
                return true;
            }
        }
        return false;
    }

    void j0() {
        int iF0 = q5.f.M().f0();
        if (iF0 <= 0) {
            this.f57087g.setVisibility(8);
            return;
        }
        this.f57087g.setVisibility(0);
        this.f57088h.setText(iF0 + "款游戏需更新");
    }

    void k0() {
        this.f57093m.clear();
        this.f57093m.add("全部游戏");
        List<DownloadTask> list = this.f57096p;
        if (list == null || list.size() == 0) {
            return;
        }
        for (DownloadTask downloadTask : this.f57096p) {
            if (downloadTask.isIs_fight() == 1 && !this.f57093m.contains("对战")) {
                this.f57093m.add("对战");
            }
            String strA0 = a0(downloadTask);
            if (TextUtils.isEmpty(strA0)) {
                for (TipBean tipBean : downloadTask.getTipBeans()) {
                    if (UtilsMy.w0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) <= 0) {
                        if (!tipBean.getName().contains("网游")) {
                            if (tipBean.getName().contains("单机")) {
                                if (!this.f57093m.contains("单机")) {
                                    this.f57093m.add("单机");
                                    break;
                                }
                                break;
                            }
                        } else {
                            if (!this.f57093m.contains("网游")) {
                                this.f57093m.add("网游");
                                break;
                            }
                            break;
                        }
                    }
                }
            } else if (!this.f57093m.contains(strA0)) {
                this.f57093m.add(strA0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = 1000)
    public void l0() {
        Z(true);
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
        List<DownloadTask> list;
        List<CollectionBeanSub> list2 = this.F;
        if (list2 == null || list2.size() == 0 || ((list = this.f57096p) != null && this.f57097q != list.size())) {
            List<DownloadTask> list3 = this.f57096p;
            if (list3 != null) {
                this.f57097q = list3.size();
            }
            Z(true);
        }
        com.join.mgps.adapter.i4 i4Var = this.f57091k;
        if (i4Var != null) {
            i4Var.i0(true);
            notifyDataSetChanged();
        }
    }

    protected void loadData() {
        List list;
        ArrayList arrayList = new ArrayList();
        this.f57092l = arrayList;
        arrayList.addAll(Arrays.asList(getContext().getResources().getStringArray(R.array.my_game_list)));
        ArrayList arrayList2 = new ArrayList();
        String strD = this.f57100t.myGameAllTabSort().d();
        if (TextUtils.isEmpty(strD)) {
            arrayList2.addAll(this.f57092l);
        } else {
            try {
                list = (List) JsonMapper.getInstance().fromJson(strD, List.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                list = null;
            }
            if (list == null || list.size() <= 0) {
                arrayList2.addAll(this.f57092l);
            } else {
                arrayList2.addAll(list);
            }
        }
        try {
            List<DownloadTask> listB0 = q5.f.M().b0();
            List<DownloadTask> list2 = this.f57096p;
            if (list2 != null) {
                list2.clear();
            }
            if (listB0 != null) {
                for (DownloadTask downloadTask : listB0) {
                    if (!com.join.mgps.Util.d2.g(downloadTask.getPackageName()) || com.join.mgps.Util.d2.w(downloadTask.getCrc_link_type_val())) {
                        if (com.join.mgps.Util.t2.i(downloadTask.getMod_info())) {
                            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class);
                            if (modInfoBean != null) {
                                DownloadTask downloadTaskG = q5.f.M().G(modInfoBean.getMod_game_id());
                                DownloadTask downloadTaskG2 = q5.f.M().G(modInfoBean.getMain_game_id());
                                DownloadTask downloadTaskL = q5.f.M().L(modInfoBean.getMod_game_id());
                                boolean z10 = true;
                                boolean z11 = downloadTaskG != null && downloadTaskG.getStatus() == 5;
                                boolean z12 = downloadTaskG2 != null && downloadTaskG2.getStatus() == 5;
                                if (downloadTaskL == null) {
                                    z10 = false;
                                }
                                if (z10) {
                                    if (!this.f57096p.contains(downloadTaskL)) {
                                        this.f57096p.add(downloadTaskL);
                                    }
                                } else if (z11 && z12) {
                                    if (!this.f57096p.contains(downloadTaskG2)) {
                                        this.f57096p.add(downloadTaskG2);
                                    }
                                } else if (z11) {
                                    if (!this.f57096p.contains(downloadTaskG)) {
                                        this.f57096p.add(downloadTaskG);
                                    }
                                } else if (!z12) {
                                    this.f57096p.add(downloadTask);
                                } else if (!this.f57096p.contains(downloadTaskG2)) {
                                    this.f57096p.add(downloadTaskG2);
                                }
                            }
                        } else if (!com.join.mgps.Util.d2.g(downloadTask.getPackageName()) || com.join.mgps.Util.d2.w(downloadTask.getCrc_link_type_val())) {
                            DownloadTask downloadTaskL2 = q5.f.M().L(downloadTask.getCrc_link_type_val());
                            if (downloadTaskL2 == null) {
                                this.f57096p.add(downloadTask);
                            } else if (!this.f57096p.contains(downloadTaskL2)) {
                                this.f57096p.add(downloadTaskL2);
                            }
                        }
                    }
                }
            }
            List<DownloadTask> list3 = this.f57096p;
            if (list3 != null) {
                this.f57097q = list3.size();
            }
            if (this.f57096p.size() <= 0) {
                showNoData();
            } else {
                k0();
                showUi();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            showNoData();
        }
    }

    void m0() {
        NetBroadcastReceiver netBroadcastReceiver = new NetBroadcastReceiver();
        this.I = netBroadcastReceiver;
        netBroadcastReceiver.a(new d());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        getContext().registerReceiver(this.I, intentFilter);
    }

    void n0() {
        if (getActivity() == null || !(getActivity() instanceof MGMainActivity)) {
            return;
        }
        List<String> snkGameList = ((MGMainActivity) getActivity()).getSnkGameList();
        if (snkGameList == null || snkGameList.size() == 0) {
            b0();
        }
    }

    @Click
    void needUpdate() {
        MyGameUpdateManagerActivity_.intent(getContext()).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:58:0x011e  */
    @UiThread
    public void notifyDataSetChanged() {
        com.join.mgps.adapter.i4 i4Var;
        int iIntValue;
        if (!f0() || (i4Var = this.f57091k) == null || i4Var.y() == null) {
            return;
        }
        this.f57091k.y().clear();
        ArrayList arrayList = new ArrayList();
        List<CollectionBeanSub> list = this.F;
        if (list != null && list.size() > 0 && com.join.mgps.pref.h.n(this.f57089i).x()) {
            arrayList.add(new com.join.mgps.adapter.i4.f(1, this.E));
        }
        List<DownloadTask> currentTypeGames = getCurrentTypeGames();
        try {
            Collections.sort(currentTypeGames, new a());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (currentTypeGames != null && currentTypeGames.size() > 0) {
            for (DownloadTask downloadTask : currentTypeGames) {
                if (!com.join.mgps.Util.d2.g(downloadTask.getPackageName()) || com.join.mgps.Util.d2.w(downloadTask.getCrc_link_type_val())) {
                    arrayList.add(new com.join.mgps.adapter.i4.f(2, downloadTask, (!this.f57094n.containsKey(downloadTask.getCrc_link_type_val()) || this.f57094n.get(downloadTask.getCrc_link_type_val()) == null) ? false : this.f57094n.get(downloadTask.getCrc_link_type_val()).booleanValue()));
                }
            }
            arrayList.add(new com.join.mgps.adapter.i4.f(3, Integer.valueOf(currentTypeGames.size())));
        }
        try {
            RecommendGameAdInfo recommendGameAdInfo = this.f57101u;
            if (recommendGameAdInfo != null && recommendGameAdInfo.getList() != null && this.f57101u.getList().size() > 0 && this.f57104x) {
                List<CommonGameInfoBean> list2 = this.f57101u.getList();
                String strD = this.f57100t.myGameTabAdShowIndex().d();
                String batch_id = this.f57101u.getBatch_id();
                if (TextUtils.isEmpty(strD) || strD.split("_").length != 2) {
                    iIntValue = 0;
                } else {
                    String[] strArrSplit = strD.split("_");
                    if (TextUtils.equals(batch_id, strArrSplit[0])) {
                        iIntValue = Integer.valueOf(strArrSplit[1]).intValue();
                    } else {
                        iIntValue = 0;
                    }
                }
                if (iIntValue < list2.size()) {
                    loop1: while (iIntValue < list2.size()) {
                        List<DownloadTask> listB0 = q5.f.M().b0();
                        if (list2.get(iIntValue) != null && list2.get(iIntValue).getG_info() != null) {
                            String id2 = list2.get(iIntValue).getG_info().getId();
                            Iterator<DownloadTask> it2 = listB0.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    CommonGameInfoBean commonGameInfoBean = this.f57101u.getList().get(iIntValue);
                                    GInfoBean g_info = commonGameInfoBean.getG_info();
                                    DownloadTask downloadTask2 = new DownloadTask();
                                    downloadTask2.setPortraitURL(TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico());
                                    downloadTask2.setShowName(g_info.getName());
                                    downloadTask2.setStatus(0);
                                    downloadTask2.setCrc_link_type_val(g_info.getId());
                                    downloadTask2.setTipBeans(new ArrayList(g_info.getTag_info()));
                                    com.join.mgps.adapter.i4 i4Var2 = this.f57091k;
                                    if (i4Var2 != null) {
                                        i4Var2.h0(commonGameInfoBean);
                                        this.f57091k.k0(this.f57101u.getCorner_mark_pic());
                                    }
                                    this.f57102v = downloadTask2;
                                    this.f57104x = false;
                                    X(commonGameInfoBean);
                                    this.f57100t.myGameTabAdShowIndex().g(batch_id + "_" + iIntValue);
                                    break loop1;
                                }
                            } while (!TextUtils.equals(it2.next().getCrc_link_type_val(), id2));
                        }
                        iIntValue++;
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (this.f57102v != null && !e0(arrayList)) {
            if (arrayList.size() <= 0 || arrayList.get(0).b() != 1) {
                arrayList.add(0, new com.join.mgps.adapter.i4.f(5, this.f57102v));
            } else {
                arrayList.add(1, new com.join.mgps.adapter.i4.f(5, this.f57102v));
            }
        }
        this.f57091k.q0(arrayList);
        updateArchiveTime();
        this.f57091k.notifyDataSetChanged();
        if (currentTypeGames == null || currentTypeGames.size() == 0) {
            showNoData();
            c0();
        }
        refreshShortcutState(currentTypeGames);
    }

    public void notifyShortcutAdded(String gameId) {
        this.f57094n.put(gameId, Boolean.FALSE);
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyShortcutChanged(HashMap<String, Boolean> map) {
        DownloadTask downloadTask;
        com.join.mgps.adapter.i4 i4Var = this.f57091k;
        if (i4Var == null || i4Var.y() == null || this.f57091k.y().size() == 0) {
            return;
        }
        for (com.join.mgps.adapter.i4.f fVar : this.f57091k.y()) {
            if (fVar.b() == 2 && fVar.a() != null && (downloadTask = (DownloadTask) fVar.a()) != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && map.containsKey(downloadTask.getCrc_link_type_val())) {
                fVar.d(map.get(downloadTask.getCrc_link_type_val()).booleanValue());
            }
        }
        this.f57091k.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void o0(SNKGameInfoBean resp) {
        List<String> scanning_md5 = resp.getScanning_md5();
        this.B = scanning_md5;
        if (scanning_md5 == null || scanning_md5.size() <= 0 || getActivity() == null || !(getActivity() instanceof MGMainActivity)) {
            return;
        }
        ((MGMainActivity) getActivity()).setSnkGameList(this.B);
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onAddShortcutClick(DownloadTask downloadTask) {
        showAddShortcut(downloadTask);
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.f57094n.put(downloadTask.getCrc_link_type_val(), Boolean.TRUE);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onApiResponseEvent(com.join.mgps.event.g event) {
        if (event.a() == ApiName.ArchivingCfg) {
            updateArchiveTime();
        }
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onClick(String gameId, DownloadTask downloadTask) {
        onMore(gameId, downloadTask);
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().A(this);
        q0();
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a()) || !f0()) {
            return;
        }
        notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        if (f0()) {
            DownloadTask downloadTaskA = downloadTaskEvent.a();
            int iC = downloadTaskEvent.c();
            if (iC == 2) {
                updateUI(downloadTaskA, 1);
                return;
            }
            if (iC == 3) {
                updateUI(downloadTaskA, 2);
                return;
            }
            if (iC != 42) {
                if (iC != 48) {
                    switch (iC) {
                        case 6:
                            updateUI(downloadTaskA, 6);
                            break;
                        case 7:
                            updateUI(downloadTaskA, 3);
                            break;
                        case 8:
                            List<DownloadTask> list = this.f57096p;
                            if (list != null && list.size() > 0) {
                                updateProgressPartly();
                                break;
                            }
                            break;
                        case 10:
                            updateUI(downloadTaskA, 7);
                            break;
                        case 12:
                            updateUI(downloadTaskA, 8);
                            break;
                        case 13:
                            updateUI(downloadTaskA, 9);
                            break;
                    }
                }
                updateUI(downloadTaskA, 5);
                return;
            }
            updateUI(downloadTaskA, 5);
        }
    }

    @Receiver(actions = {p5.a.f96203k})
    void onGameOpened(@Receiver.Extra String gameId) {
        List<DownloadTask> list = this.f57096p;
        if (list == null || list.size() < 1) {
            return;
        }
        for (DownloadTask downloadTask : this.f57096p) {
            try {
                if (!TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && downloadTask.getCrc_link_type_val().equals(gameId)) {
                    DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
                    downloadTask.setOpen(true);
                    downloadTask.setOpenTime(System.currentTimeMillis());
                    if (downloadTaskG != null) {
                        downloadTaskG.setOpenTime(downloadTask.getOpenTime());
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            Z(false);
            this.f57103w = false;
            this.f57105y++;
        }
        this.f57104x = true;
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onLongClick(String gameId) {
        UninstallWufunGameActivity_.intent(this.f57089i).a(gameId).start();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onMore(String gameId, DownloadTask downloadTask) {
        com.join.mgps.customview.b0 b0Var = new com.join.mgps.customview.b0(getContext());
        b0Var.d(new b(gameId, downloadTask));
        b0Var.e(this.f57085e, gameId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 100)
    public void onMoreDeleteGame(String id2) {
        onLongClick(id2);
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (MApplication.Z) {
            MApplication.Z = false;
            String strD = this.f57100t.addedShortcutGames().d();
            if (!com.join.mgps.Util.t2.h(strD)) {
                if (strD.contains(",")) {
                    for (String str : strD.split(",")) {
                        addShortcut(str);
                    }
                } else {
                    addShortcut(strD);
                }
            }
        }
        refreshShortcutState();
        com.join.mgps.adapter.i4 i4Var = this.f57091k;
        if (i4Var != null) {
            i4Var.i0(true);
            notifyDataSetChanged();
        }
        j0();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.C = (visibleItemCount + firstVisibleItem) - 1;
        this.D = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onSpeedUp(String gameId) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void p0(List<GamedownRecomendItemBean> collectionBeanSubs) {
        if (collectionBeanSubs == null) {
            return;
        }
        this.F.clear();
        for (int i10 = 0; i10 < collectionBeanSubs.size() && i10 < 6; i10++) {
            GamedownRecomendItemBean gamedownRecomendItemBean = collectionBeanSubs.get(i10);
            gamedownRecomendItemBean.setDownloadTask(q5.f.M().G(gamedownRecomendItemBean.getGame_id()));
            this.F.add(gamedownRecomendItemBean);
        }
        try {
            com.join.mgps.pref.h.n(getContext()).u0(JsonMapper.toJsonString(this.F));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.join.mgps.adapter.i4 i4Var = this.f57091k;
        if (i4Var != null) {
            i4Var.j0(true);
        }
        com.join.mgps.adapter.i4 i4Var2 = this.f57091k;
        if (i4Var2 != null) {
            i4Var2.i0(true);
        }
        notifyDataSetChanged();
    }

    @Click
    void plugs() {
        MyGamePlugManagerActivity_.intent(getContext()).start();
    }

    void q0() {
        if (this.I != null) {
            getContext().unregisterReceiver(this.I);
        }
    }

    @Receiver(actions = {p5.a.I})
    void refreshGamePurchasedList() {
        loadData();
    }

    public void refreshNotOpenState() {
        com.join.mgps.adapter.i4 i4Var = this.f57091k;
        if (i4Var != null) {
            i4Var.i0(true);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void refreshShortcutState() {
        try {
            HashMap<String, Boolean> mapD = com.join.mgps.Util.l.d(getContext());
            this.f57095o.clear();
            if (mapD != null && mapD.size() != 0) {
                this.f57095o.putAll(mapD);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void s0(DownloadTask downloadTask) {
        List<CollectionBeanSub> list;
        if (downloadTask == null || (list = this.G) == null || list.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < this.G.size(); i10++) {
            if (com.join.mgps.Util.t2.i(this.G.get(i10).getGame_id()) && this.G.get(i10).getGame_id().equals(downloadTask.getCrc_link_type_val())) {
                this.G.get(i10).setDownloadTask(downloadTask);
                break;
            }
        }
        c0();
    }

    @Click
    void search() {
        IntentUtil.getInstance().goSearchHintActivity(getContext());
    }

    void showAddShortcut(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        Bitmap bitmapM = ImageLoader.q().m(downloadTask.getPortraitURL());
        if (bitmapM == null) {
            bitmapM = returnBitmap(downloadTask.getPortraitURL());
        }
        addShortout(getContext(), downloadTask.getShowName(), downloadTask.getCrc_link_type_val(), bitmapM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showAddShortcutResultDialog(String gameId) {
        new com.join.android.app.common.dialog.d(this.f57089i, gameId).show();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNoData() {
        try {
            View view = this.f57084d;
            if (view != null) {
                view.setVisibility(0);
            }
            XListView2 xListView2 = this.f57083c;
            if (xListView2 != null) {
                xListView2.setVisibility(8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showUi() {
        try {
            View view = this.f57084d;
            if (view != null) {
                view.setVisibility(8);
            }
            XListView2 xListView2 = this.f57083c;
            if (xListView2 != null) {
                xListView2.setVisibility(0);
            }
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    public void updateArchiveTime() {
        List<DownloadTask> list = this.f57096p;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (DownloadTask downloadTask : this.f57096p) {
            String strReplace = downloadTask.getCrc_link_type_val().replace("cld_", "");
            DlTaskManager dlTaskManager = DlTaskManager.INSTANCE;
            Long cloudArchiveTime = dlTaskManager.getCloudArchiveTime(strReplace);
            if (cloudArchiveTime == null) {
                cloudArchiveTime = dlTaskManager.getCloudArchiveTime(com.join.mgps.Util.t2.l(downloadTask.getRef_crc_sign_id(), "cld_", ""));
            }
            if (cloudArchiveTime == null || cloudArchiveTime.longValue() <= 0) {
                downloadTask.setCloudArchiveTime("");
            } else {
                downloadTask.setCloudArchiveTime(com.join.mgps.Util.e0.D(cloudArchiveTime.longValue(), "yyyy/MM/dd"));
            }
        }
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask != null) {
            switch (from) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    break;
                case 3:
                    receiveDelete(downloadTask);
                    break;
                case 5:
                    receiveSuccess(downloadTask);
                    break;
                case 6:
                    receiveError(downloadTask);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void refreshShortcutState(List<DownloadTask> downloadTasks) {
        if (downloadTasks != null) {
            try {
                if (downloadTasks.size() == 0) {
                    return;
                }
                HashMap<String, Boolean> map = new HashMap<>();
                for (int i10 = 0; i10 < downloadTasks.size(); i10++) {
                    DownloadTask downloadTask = downloadTasks.get(i10);
                    map.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(canShowAddShortcut(getContext(), downloadTask)));
                    this.f57094n.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(canShowAddShortcut(getContext(), downloadTask)));
                }
                notifyShortcutChanged(map);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }
}
