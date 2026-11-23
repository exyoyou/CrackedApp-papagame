package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.bykv.vk.component.ttvideo.player.C;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.mygame.dialog.WufunGameDownFirstNotPermissDialog_;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.FavoriteGameListArgs;
import com.join.mgps.dto.FavoriteGameListBean;
import com.join.mgps.dto.GInfoBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_my_game_papa_fav)
public class x7 extends com.join.mgps.fragment.e implements com.join.mgps.adapter.i4.e, AbsListView.OnScrollListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XListView2 f58208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f58209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f58210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f58211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    View f58212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @FragmentArg
    String f58213h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @FragmentArg
    String f58214i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Context f58216k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private UserInfo f58217l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.join.mgps.rpc.k f58218m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    com.join.mgps.adapter.i4 f58219n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    com.join.mgps.rpc.e f58225t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Pref
    PrefDef_ f58226u;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f58215j = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    HashMap<String, Boolean> f58220o = new HashMap<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<DownloadTask> f58221p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<CommonGameInfoBean> f58222q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private List<GamedetialModleFourBean> f58223r = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f58224s = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList<String> f58227v = new ArrayList<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ArrayList<DownloadTask> f58228w = new ArrayList<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f58229x = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f58230y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f58231z = 0;
    private int A = 0;
    private int B = 0;

    class a implements com.join.mgps.customview.j {
        a() {
        }

        @Override // com.join.mgps.customview.j
        public void onRefresh() {
            x7 x7Var = x7.this;
            x7Var.a0(x7Var.f58214i, x7Var.f58213h);
        }
    }

    class b implements Comparator<DownloadTask> {
        b() {
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

    class c implements com.join.mgps.customview.b0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f58234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f58235b;

        c(final String val$gameId, final DownloadTask val$downloadTask) {
            this.f58234a = val$gameId;
            this.f58235b = val$downloadTask;
        }

        @Override // com.join.mgps.customview.b0.a
        public void onAddShortCut(String id2) {
        }

        @Override // com.join.mgps.customview.b0.a
        public void onDeleteArchieve(String id2) {
            File externalFilesDir = x7.this.f58216k.getExternalFilesDir("backup");
            if (!externalFilesDir.exists() || externalFilesDir.listFiles() == null) {
                return;
            }
            for (File file : externalFilesDir.listFiles()) {
                if (TextUtils.equals(id2, file.getName())) {
                    UtilsMy.delete(file);
                    file.delete();
                    break;
                }
            }
            z7 z7VarW = x7.this.W();
            if (z7VarW != null) {
                z7VarW.V(id2);
            }
        }

        @Override // com.join.mgps.customview.b0.a
        public void onDeleteGame(String id2) {
            if (q5.f.M().G(this.f58234a) == null) {
                x7.this.Z(this.f58235b);
            } else {
                x7.this.onMoreDeleteGame(id2);
            }
        }

        @Override // com.join.mgps.customview.b0.a
        public void onGameDetail(String id2) {
            q5.f.M().G(this.f58234a);
            DownloadTask downloadTask = null;
            for (DownloadTask downloadTask2 : x7.this.f58221p) {
                if (TextUtils.equals(id2, downloadTask2.getCrc_link_type_val()) || (downloadTask2.getModInfoBean() != null && (TextUtils.equals(id2, downloadTask2.getModInfoBean().getMod_game_id()) || TextUtils.equals(id2, downloadTask2.getModInfoBean().getMain_game_id())))) {
                    downloadTask = downloadTask2;
                }
            }
            if (downloadTask != null) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTaskForFav(x7.this.getContext(), downloadTask);
            } else {
                IntentUtil.getInstance().goGameDetialActivity(x7.this.f58216k, this.f58234a, 0);
            }
        }

        @Override // com.join.mgps.customview.b0.a
        public void onStandMode(String id2) {
            new com.join.mgps.customview.s(x7.this.getContext()).c(x7.this.f58212g, id2);
        }
    }

    private DownloadTask V(CommonGameInfoBean bean) {
        if (bean == null || bean.getG_info() == null) {
            return null;
        }
        GInfoBean g_info = bean.getG_info();
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setPortraitURL(TextUtils.isEmpty(g_info.getGif_ico()) ? g_info.getIco() : g_info.getGif_ico());
        downloadTask.setShowName(g_info.getName());
        downloadTask.setStatus(0);
        downloadTask.setCrc_link_type_val(g_info.getId());
        downloadTask.setRef_crc_sign_id(g_info.getMod_id());
        downloadTask.setPlugin_num(g_info.getPlugin_num());
        downloadTask.setTipBeans(new ArrayList(g_info.getTag_info()));
        downloadTask.setAd_info(bean);
        return downloadTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public z7 W() {
        for (Fragment fragment : getParentFragmentManager().getFragments()) {
            if (fragment instanceof z7) {
                return (z7) fragment;
            }
        }
        return null;
    }

    private boolean X(DownloadTask downloadTask, DownloadTask task) {
        ModInfoBean modInfoBean;
        boolean z10 = true;
        if (!com.join.mgps.Util.t2.i(downloadTask.getMod_info()) ? TextUtils.isEmpty(task.getCrc_link_type_val()) || !task.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val()) : (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)) == null || TextUtils.isEmpty(task.getCrc_link_type_val()) || (!task.getCrc_link_type_val().equals(modInfoBean.getMod_game_id()) && !task.getCrc_link_type_val().equals(modInfoBean.getMain_game_id()))) {
            z10 = false;
        }
        if (z10) {
            if (task.getStatus() == 5 && downloadTask.getStatus() != 7) {
                return false;
            }
            task.setStatus(downloadTask.getStatus());
        }
        return z10;
    }

    private List<DownloadTask> getCurrentTypeGames() {
        return this.f58221p;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        for (int i10 = 0; i10 < this.f58221p.size(); i10++) {
            DownloadTask downloadTask2 = this.f58221p.get(i10);
            if (X(downloadTask, downloadTask2)) {
                for (DownloadTask downloadTask3 : q5.f.M().d()) {
                    if (TextUtils.equals(downloadTask.getCrc_link_type_val(), downloadTask3.getCrc_link_type_val()) || (downloadTask3.getModInfoBean() != null && (TextUtils.equals(downloadTask3.getModInfoBean().getMod_game_id(), downloadTask.getCrc_link_type_val()) || TextUtils.equals(downloadTask3.getModInfoBean().getMain_game_id(), downloadTask.getCrc_link_type_val())))) {
                        this.f58221p.set(i10, downloadTask3);
                        notifyDataSetChanged();
                        return;
                    }
                }
                downloadTask2.setStatus(0);
                for (CommonGameInfoBean commonGameInfoBean : this.f58222q) {
                    if (commonGameInfoBean.getG_info() != null) {
                        String id2 = commonGameInfoBean.getG_info().getId();
                        String mod_id = commonGameInfoBean.getG_info().getMod_id();
                        if (TextUtils.equals(id2, downloadTask.getCrc_link_type_val()) || TextUtils.equals(mod_id, downloadTask.getCrc_link_type_val())) {
                            this.f58221p.set(i10, V(commonGameInfoBean));
                        }
                    }
                }
                for (GamedetialModleFourBean gamedetialModleFourBean : this.f58223r) {
                    String game_id = gamedetialModleFourBean.getGame_id();
                    ModInfoBean modInfoBean = downloadTask.getModInfoBean();
                    if (TextUtils.equals(game_id, downloadTask.getCrc_link_type_val()) || (modInfoBean != null && (TextUtils.equals(game_id, modInfoBean.getMain_game_id()) || TextUtils.equals(game_id, modInfoBean.getMod_game_id())))) {
                        this.f58221p.set(i10, gamedetialModleFourBean.getDownloadtaskDown());
                    }
                }
                notifyDataSetChanged();
                return;
            }
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        if (this.f58221p == null || downloadTask == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f58221p.size(); i10++) {
            if (X(downloadTask, this.f58221p.get(i10))) {
                notifyDataSetChanged();
                return;
            }
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if (!TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.chajian.name())) {
            notifyDataSetChanged();
            return;
        }
        UtilsMy.X4(this.f58221p);
        for (int i10 = 0; i10 < this.f58221p.size(); i10++) {
            if (X(downloadTask, this.f58221p.get(i10))) {
                this.f58221p.set(i10, downloadTask);
                notifyDataSetChanged();
                return;
            }
        }
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        List<DownloadTask> list = this.f58221p;
        if (list == null || downloadTask == null) {
            return;
        }
        UtilsMy.X4(list);
        notifyDataSetChanged();
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.B < 0 || this.A >= this.f58208c.getCount()) {
            return;
        }
        for (int i10 = this.B; i10 <= this.A; i10++) {
            if (this.f58208c.getAdapter().getItemViewType(i10) == 2 && this.f58208c.getItemAtPosition(i10) != null && (this.f58208c.getItemAtPosition(i10) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.f58208c.getItemAtPosition(i10)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.f58208c.getChildAt(i10 - this.B)) != null && childAt.getTag() != null && (childAt.getTag() instanceof com.join.mgps.adapter.i4.h))) {
                com.join.mgps.adapter.i4.h hVar = (com.join.mgps.adapter.i4.h) childAt.getTag();
                try {
                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                    if (downloadTaskG == null) {
                        downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getRef_crc_sign_id());
                    }
                    if (downloadTaskG == null) {
                        return;
                    }
                    if (!TextUtils.isEmpty(downloadTaskG.getShowSize())) {
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            UtilsMy.c(downloadTaskG.getCurrentSize());
                            UtilsMy.c(j10);
                        } else {
                            UtilsMy.c(downloadTaskG.getCurrentSize());
                            UtilsMy.c(j10);
                        }
                    }
                    if (downloadTask.getStatus() == 12) {
                        hVar.f62399h.s((int) downloadTaskG.getProgress());
                    } else {
                        hVar.f62399h.s((int) downloadTaskG.getProgress());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void R(int index) {
        if (!com.join.android.app.common.utils.m.j(this.f58216k)) {
            showLodingFailed();
            return;
        }
        try {
            if (index > this.f58227v.size() - 1) {
                showMain();
                if (TextUtils.equals("存档", this.f58214i)) {
                    c0();
                }
                notifyDataSetChanged();
                return;
            }
            String str = this.f58227v.get(index);
            UserInfo accountData = AccountUtil_.getInstance_(this.f58216k).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.newBuilder().build();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f58216k);
            RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(str, 1, accountData.getUid());
            requestGameIdArgs.setDownloadedGameIdList(q5.f.M().B());
            requestModel.setArgs(requestGameIdArgs);
            ResponseModel<GamedetialModleFourBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().e0(requestModel.makeSign()).execute().body();
            if (responseModelBody != null && responseModelBody.getCode() == 200) {
                GamedetialModleFourBean data = responseModelBody.getData();
                this.f58223r.add(data);
                if (data != null) {
                    DownloadTask downloadTaskG = q5.f.M().G(str);
                    if (downloadTaskG == null) {
                        downloadTaskG = data.getDownloadtaskDown();
                    }
                    ExtBean extBean = new ExtBean();
                    extBean.setWhere("存档");
                    extBean.setFrom("169");
                    extBean.set_from_type(169);
                    downloadTaskG.set_from(169);
                    downloadTaskG.set_from_type(169);
                    downloadTaskG.setExt(JsonMapper.getInstance().toJson(extBean));
                    data.set_from(169);
                    data.set_from_type(169);
                    this.f58228w.add(downloadTaskG);
                }
            }
            R(index + 1);
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void S() {
        ArrayList arrayList = new ArrayList(this.f58227v);
        this.f58227v = new ArrayList<>();
        File externalFilesDir = this.f58216k.getExternalFilesDir("backup");
        if (!externalFilesDir.exists() || !externalFilesDir.isDirectory() || externalFilesDir.listFiles().length <= 0) {
            if (TextUtils.equals("存档", this.f58214i)) {
                showNoData();
                return;
            }
            return;
        }
        for (File file : externalFilesDir.listFiles()) {
            if (file.exists() && file.isDirectory()) {
                this.f58227v.add(file.getName());
            }
        }
        if ((this.f58227v.size() <= 0 || this.f58227v.equals(arrayList)) && this.f58210e.getVisibility() != 0) {
            notifyDataSetChanged();
        } else {
            this.f58228w = new ArrayList<>();
            R(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:31:0x00ca  */
    @Background
    public void U() {
        if (!com.join.android.app.common.utils.m.j(this.f58216k)) {
            if (this.f58215j == 1) {
                showLodingFailed();
            }
            showMessage(getString(R.string.net_connect_failed));
            return;
        }
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.f58216k);
            FavoriteGameListArgs favoriteGameListArgs = new FavoriteGameListArgs();
            favoriteGameListArgs.setPage(this.f58215j);
            UserInfo userInfo = this.f58217l;
            favoriteGameListArgs.setUid(userInfo == null ? "0" : String.valueOf(userInfo.getUid()));
            favoriteGameListArgs.setGroupId(this.f58213h);
            requestModel.setArgs(favoriteGameListArgs);
            requestModel.setDefault(this.f58216k);
            ResponseModel<FavoriteGameListBean> responseModelV = this.f58218m.v(requestModel.makeSign());
            if (responseModelV == null || responseModelV.getCode() != 200 || responseModelV.getData() == null || responseModelV.getData().getFavorites_game_list() == null || responseModelV.getData().getFavorites_game_list().size() <= 0) {
                if (this.f58215j == 1) {
                    showNoData();
                    if (responseModelV != null && responseModelV.getCode() == 200 && responseModelV.getData() != null && responseModelV.getData().getFavorites_game_list() != null && responseModelV.getData().getFavorites_game_list().size() == 0) {
                        z7 z7VarW = W();
                        String str = this.f58213h;
                        if (str != null && z7VarW != null) {
                            z7VarW.W(str);
                        }
                    }
                }
                c0();
            } else {
                for (CommonGameInfoBean commonGameInfoBean : responseModelV.getData().getFavorites_game_list()) {
                    this.f58222q.add(commonGameInfoBean);
                    DownloadTask downloadTaskG = q5.f.M().G(commonGameInfoBean.getG_info().getId());
                    DownloadTask downloadTaskG2 = q5.f.M().G(commonGameInfoBean.getG_info().getMod_id());
                    if (downloadTaskG == null) {
                        if (downloadTaskG2 == null) {
                            downloadTaskG = V(commonGameInfoBean);
                        } else {
                            downloadTaskG = downloadTaskG2;
                        }
                    } else if (downloadTaskG2 != null && downloadTaskG2.getStatus() == 5 && downloadTaskG.getStatus() != 5) {
                        downloadTaskG = downloadTaskG2;
                    }
                    ExtBean extBean = new ExtBean();
                    extBean.setWhere("游戏");
                    extBean.setFrom("169");
                    extBean.set_from_type(169);
                    downloadTaskG.set_from(169);
                    downloadTaskG.set_from_type(169);
                    downloadTaskG.setExt(JsonMapper.getInstance().toJson(extBean));
                    commonGameInfoBean.set_from(169);
                    commonGameInfoBean.set_from_type(169);
                    commonGameInfoBean.setExt(JsonMapper.getInstance().toJson(extBean));
                    boolean z10 = false;
                    for (DownloadTask downloadTask : this.f58221p) {
                        if (TextUtils.equals(downloadTask.getCrc_link_type_val(), downloadTaskG.getCrc_link_type_val()) || TextUtils.equals(downloadTask.getCrc_link_type_val(), downloadTaskG.getRef_crc_sign_id())) {
                            z10 = true;
                        }
                    }
                    if (!z10) {
                        this.f58221p.add(downloadTaskG);
                    }
                }
                if (this.f58215j == 1) {
                    this.f58230y = responseModelV.getData().getFavorites_game_total();
                }
                showMain();
                Y();
                notifyDataSetChanged();
            }
            int i10 = this.f58215j;
            if (i10 == 1) {
                this.f58215j = i10 + 1;
                U();
                if (this.f58213h == null && TextUtils.equals(LocalGameActivity.ALL, this.f58214i)) {
                    S();
                }
            }
        } catch (Exception e10) {
            if (this.f58215j == 1) {
                showLodingFailed();
            }
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void Y() {
        XListView2 xListView2 = this.f58208c;
        if (xListView2 == null) {
            return;
        }
        xListView2.v();
        this.f58208c.u();
    }

    public void Z(DownloadTask downloadTask) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void a0(String title, String groupId) {
        this.f58215j = 1;
        this.f58229x = true;
        this.f58214i = title;
        this.f58213h = groupId;
        this.f58217l = AccountUtil_.getInstance_(this.f58216k).getAccountData();
        this.f58221p.clear();
        this.f58222q.clear();
        this.f58223r.clear();
        this.f58227v.clear();
        this.f58228w.clear();
        if (groupId == null && TextUtils.equals("存档", title)) {
            S();
        } else {
            U();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @AfterViews
    void afterviews() {
        this.f58216k = getContext();
        com.join.mgps.Util.j0.a().d(this);
        if (Build.VERSION.SDK_INT > 28 && this.f58226u.needShowPermissdialog().d().booleanValue() && !UtilsMy.n0(this.f58216k)) {
            ((WufunGameDownFirstNotPermissDialog_.IntentBuilder_) WufunGameDownFirstNotPermissDialog_.intent(this.f58216k).from(2).flags(C.ENCODING_PCM_MU_LAW)).start();
        }
        this.f58217l = AccountUtil_.getInstance_(this.f58216k).getAccountData();
        this.f58218m = com.join.mgps.rpc.impl.i.P0();
        this.f58225t = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.adapter.i4 i4Var = new com.join.mgps.adapter.i4(getContext());
        this.f58219n = i4Var;
        i4Var.r0(this);
        this.f58208c.setAdapter((ListAdapter) this.f58219n);
        this.f58208c.setOnScrollListener(this);
        this.f58208c.setPullRefreshEnable(new a());
        if (this.f58212g == null) {
            this.f58212g = ((Activity) getContext()).getWindow().getDecorView().findViewById(R.id.root);
        }
        if (this.f58213h == null && TextUtils.equals("存档", this.f58214i)) {
            S();
        } else {
            U();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void b0(String gameId) {
        if (TextUtils.isEmpty(this.f58213h)) {
            Iterator<DownloadTask> it2 = this.f58228w.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (TextUtils.equals(next.getCrc_link_type_val(), gameId) || (next.getModInfoBean() != null && (TextUtils.equals(gameId, next.getModInfoBean().getMain_game_id()) || TextUtils.equals(gameId, next.getModInfoBean().getMod_game_id())))) {
                    it2.remove();
                }
            }
            Iterator<DownloadTask> it3 = this.f58221p.iterator();
            while (it3.hasNext()) {
                DownloadTask next2 = it3.next();
                if (TextUtils.equals(next2.getCrc_link_type_val(), gameId) || (next2.getModInfoBean() != null && (TextUtils.equals(gameId, next2.getModInfoBean().getMain_game_id()) || TextUtils.equals(gameId, next2.getModInfoBean().getMod_game_id())))) {
                    it3.remove();
                }
            }
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void c0() {
        XListView2 xListView2 = this.f58208c;
        if (xListView2 == null) {
            return;
        }
        this.f58229x = false;
        xListView2.u();
        this.f58208c.v();
        this.f58208c.setNoMore(6);
        notifyDataSetChanged();
    }

    void del(DownloadTask downloadTask) {
        for (DownloadTask downloadTask2 : this.f58221p) {
            if (!TextUtils.isEmpty(downloadTask2.getCrc_link_type_val()) && downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                downloadTask2.setStatus(0);
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

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyDataSetChanged() {
        com.join.mgps.adapter.i4 i4Var = this.f58219n;
        if (i4Var == null || i4Var.y() == null) {
            return;
        }
        this.f58219n.y().clear();
        ArrayList arrayList = new ArrayList();
        List<DownloadTask> currentTypeGames = getCurrentTypeGames();
        for (DownloadTask downloadTask : this.f58228w) {
            Iterator<DownloadTask> it2 = this.f58221p.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                ModInfoBean modInfoBean = downloadTask.getModInfoBean();
                if (TextUtils.equals(next.getCrc_link_type_val(), downloadTask.getCrc_link_type_val())) {
                    it2.remove();
                } else if (modInfoBean != null && (TextUtils.equals(next.getCrc_link_type_val(), modInfoBean.getMod_game_id()) || TextUtils.equals(next.getCrc_link_type_val(), modInfoBean.getMain_game_id()))) {
                    it2.remove();
                }
            }
            this.f58221p.add(0, downloadTask);
        }
        try {
            Collections.sort(currentTypeGames, new b());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (currentTypeGames != null && currentTypeGames.size() > 0) {
            for (DownloadTask downloadTask2 : currentTypeGames) {
                if (downloadTask2 != null) {
                    arrayList.add(new com.join.mgps.adapter.i4.f(2, downloadTask2, false));
                }
            }
            if (!this.f58229x) {
                arrayList.add(new com.join.mgps.adapter.i4.f(3, Integer.valueOf(this.f58221p.size())));
            }
        }
        this.f58219n.q0(arrayList);
        this.f58219n.notifyDataSetChanged();
        if (arrayList.size() <= 0) {
            showNoData();
        } else {
            showMain();
        }
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onAddShortcutClick(DownloadTask downloadTask) {
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onClick(String gameId, DownloadTask downloadTask) {
        onMore(gameId, downloadTask);
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onDestroy() {
        org.greenrobot.eventbus.c.f().A(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a())) {
            return;
        }
        notifyDataSetChanged();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
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
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                List<DownloadTask> list = this.f58221p;
                if (list == null || list.size() <= 0) {
                    return;
                }
                updateProgressPartly();
                return;
            }
            if (iC != 48) {
                switch (iC) {
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
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Receiver(actions = {p5.a.f96203k})
    void onGameOpened(@Receiver.Extra String gameId) {
        List<DownloadTask> list = this.f58221p;
        if (list == null || list.size() < 1) {
            return;
        }
        for (DownloadTask downloadTask : this.f58221p) {
            DownloadTask downloadTaskG = q5.f.M().G(downloadTask.getCrc_link_type_val());
            if (downloadTaskG != null) {
                downloadTask.setOpen(downloadTaskG.isOpen());
            }
        }
        notifyDataSetChanged();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onLongClick(String gameId) {
        UninstallWufunGameActivity_.intent(this.f58216k).a(gameId).start();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onMore(String gameId, DownloadTask downloadTask) {
        ExtBean extBean;
        com.join.mgps.customview.b0 b0Var = new com.join.mgps.customview.b0(getContext());
        b0Var.d(new c(gameId, downloadTask));
        b0Var.f(this.f58212g, gameId, (downloadTask.getExt() == null || (extBean = (ExtBean) JsonMapper.getInstance().fromJson(downloadTask.getExt(), ExtBean.class)) == null || !TextUtils.equals("存档", extBean.getWhere())) ? false : true, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 100)
    public void onMoreDeleteGame(String id2) {
        onLongClick(id2);
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.mgps.adapter.i4 i4Var = this.f58219n;
        if (i4Var != null) {
            i4Var.i0(true);
            notifyDataSetChanged();
        }
        if (this.f58213h == null) {
            S();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.A = (visibleItemCount + firstVisibleItem) - 1;
        this.B = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        int lastVisiblePosition = this.f58208c.getLastVisiblePosition();
        if (System.currentTimeMillis() - ((long) lastVisiblePosition) <= 500 || lastVisiblePosition < this.f58221p.size() - 5 || !this.f58229x) {
            return;
        }
        this.f58231z = System.currentTimeMillis();
        this.f58215j++;
        U();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onSpeedUp(String gameId) {
    }

    public void refreshNotOpenState() {
        com.join.mgps.adapter.i4 i4Var = this.f58219n;
        if (i4Var != null) {
            i4Var.i0(true);
            notifyDataSetChanged();
        }
    }

    @Click
    void relodingimag() {
        showLoding();
        a0(this.f58214i, this.f58213h);
        z7 z7VarW = W();
        if (z7VarW != null) {
            z7VarW.Q(true);
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.f58216k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.f58209d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f58210e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f58208c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f58211f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.f58210e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f58209d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f58208c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f58211f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.f58210e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f58209d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f58208c;
        if (xListView2 != null) {
            xListView2.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.f58211f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.f58216k).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showNoData() {
        LinearLayout linearLayout = this.f58210e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f58209d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        XListView2 xListView2 = this.f58208c;
        if (xListView2 != null) {
            xListView2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.f58211f;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
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
}
