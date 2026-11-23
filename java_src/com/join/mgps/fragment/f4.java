package com.join.mgps.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.drawable.Animatable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.device.input.manager.TcMouseManager;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.ArenaGameListActivity_;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.customview.AutoScrollViewPager;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.ArenaAdData;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.RoomCategory;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_new_arenamain)
public class f4 extends Fragment {

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final String f69525i1 = "NewArenaMainFragment";

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final int f69526l1 = 4112;
    TextView A;
    TextView B;
    private com.join.mgps.dialog.f1 C;
    private com.join.mgps.socket.fight.arena.a E;
    private GameRoom F;
    private com.join.mgps.dialog.d1 G;
    FragmentManager H;
    com.join.mgps.activity.arena.b I;
    com.join.mgps.fragment.c J;
    com.join.mgps.fragment.c K;
    View L;
    View M;
    View N;
    View O;
    TextView P;
    TextView Q;
    TextView R;
    TextView S;
    private FragmentManager U;
    private ResultResMainBean<GameListBannerBean> V;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.rpc.l f69529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.join.mgps.rpc.l f69530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    LinearLayout f69531f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    LinearLayout f69533g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    LinearLayout f69534h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    LinearLayout f69535i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    XRecyclerView f69536j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    View f69537k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @ViewById
    LinearLayout f69538l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @ViewById
    FrameLayout f69539m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    AutoScrollViewPager<BannerBean> f69540n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @ViewById
    View f69541o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @ViewById
    View f69542p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private com.join.mgps.adapter.f2 f69543p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f69544q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private com.join.mgps.socket.fight.arena.b f69545r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Activity f69546s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f69547t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    TextView f69548u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    TextView f69549v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    TextView f69550w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    RelativeLayout f69551x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    TextView f69552y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    TextView f69553z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f69528c = false;
    private final SocketListener.NotifyObserver D = new i();
    int T = 0;
    int W = 20;
    private List<BannerBean> X = new ArrayList();
    private List<Dialog> Y = new ArrayList();
    private List<GameInfoBean> Z = new ArrayList();

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    boolean f69527b1 = false;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    boolean f69532f1 = false;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            FragmentTransaction fragmentTransactionBeginTransaction = f4.this.H.beginTransaction();
            f4.this.t0(3, fragmentTransactionBeginTransaction);
            f4 f4Var = f4.this;
            com.join.mgps.fragment.c cVar = f4Var.J;
            if (cVar == null) {
                f4Var.J = new com.join.mgps.fragment.c();
                Bundle bundle = new Bundle();
                bundle.putInt("room_type", 31);
                bundle.putInt("game_type", 1);
                bundle.putInt("pn", 1);
                f4.this.J.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.fragmentLayout, f4.this.J);
            } else {
                fragmentTransactionBeginTransaction.show(cVar);
            }
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            f4.this.T = 3;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            FragmentTransaction fragmentTransactionBeginTransaction = f4.this.H.beginTransaction();
            f4.this.t0(4, fragmentTransactionBeginTransaction);
            f4 f4Var = f4.this;
            com.join.mgps.fragment.c cVar = f4Var.K;
            if (cVar == null) {
                f4Var.K = new com.join.mgps.fragment.c();
                Bundle bundle = new Bundle();
                bundle.putInt("room_type", 35);
                bundle.putInt("game_type", 1);
                bundle.putInt("pn", 1);
                f4.this.K.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.fragmentLayout, f4.this.K);
            } else {
                fragmentTransactionBeginTransaction.show(cVar);
            }
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            f4.this.T = 4;
        }
    }

    class c implements XRecyclerView.f {
        c() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            f4.this.w0();
        }
    }

    class d implements com.join.mgps.adapter.f2.e {
        d() {
        }

        @Override // com.join.mgps.adapter.f2.e
        public void a(int position) {
            if (f4.this.C != null && f4.this.C.isShowing()) {
                f4.this.C.dismiss();
            }
            if (position == 0) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setLink_type(4);
                intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72357l + "/static/match_v2/index.html");
                intentDateBean.setFrom("11");
                IntentUtil.getInstance().intentActivity(f4.this.getActivity(), intentDateBean);
                return;
            }
            f4.this.d0();
            if (position < f4.this.Z.size()) {
                GameInfoBean gameInfoBean = (GameInfoBean) f4.this.Z.get(position);
                GameRoomListActivity_.intent(f4.this.f69546s).c(gameInfoBean).b(true).start();
                com.papa.sim.statistic.t.l(f4.this.getContext()).y(AccountUtil_.getInstance_(f4.this.getContext()).getUid(), gameInfoBean.getCollection_id(), "hall");
                com.papa.sim.statistic.t.l(f4.this.getContext()).A(AccountUtil_.getInstance_(f4.this.getContext()).getUid(), gameInfoBean.getCollection_id(), position + "");
            }
        }
    }

    class e implements Callback<ResultMainBean<ArenaAdData>> {
        e() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaAdData>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaAdData>> call, Response<ResultMainBean<ArenaAdData>> response) {
            View view;
            if (response == null || response.body() == null) {
                return;
            }
            ResultMainBean<ArenaAdData> resultMainBeanBody = response.body();
            if (resultMainBeanBody.getCode() == 600 && resultMainBeanBody.getMessages().getData().isL_has_not_read() && (view = f4.this.f69542p) != null) {
                view.setVisibility(0);
            }
        }
    }

    class f extends com.facebook.drawee.controller.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f69559c;

        f(final int val$num) {
            this.f69559c = val$num;
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void onFailure(String id2, Throwable throwable) {
            super.onFailure(id2, throwable);
            f4.this.j0(this.f69559c - 1);
        }

        @Override // com.facebook.drawee.controller.b, com.facebook.drawee.controller.c
        public void onFinalImageSet(String id2, Object imageInfo, Animatable animatable) {
            super.onFinalImageSet(id2, imageInfo, animatable);
            f4.this.C0(this.f69559c);
            f4.this.j0(this.f69559c - 1);
        }
    }

    class g implements com.join.mgps.dialog.p0.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f69561a;

        g(final int val$position) {
            this.f69561a = val$position;
        }

        @Override // com.join.mgps.dialog.p0.c
        public void a(com.join.mgps.dialog.p0 dialog) {
            dialog.dismiss();
            if (f4.this.Y.size() > 0) {
                f4.this.Y.remove(0);
            }
        }

        @Override // com.join.mgps.dialog.p0.c
        public void b(com.join.mgps.dialog.p0 dialog) {
            dialog.dismiss();
            new IntentDateBean();
            if (f4.this.X != null && f4.this.X.size() > 0) {
                IntentUtil.getInstance().intentActivity(f4.this.f69546s, ((BannerBean) f4.this.X.get(this.f69561a)).getIntentDataBean());
                com.papa.sim.statistic.t.l(f4.this.getActivity()).q2(AccountUtil_.getInstance_(f4.this.getActivity()).getUid(), "vsButton");
            }
            if (f4.this.Y.size() > 0) {
                f4.this.Y.remove(0);
                f4.this.X.remove(0);
            }
            if (this.f69561a < f4.this.X.size() - 1 || f4.this.Y == null) {
                return;
            }
            f4.this.Y.clear();
            LinearLayout linearLayout = f4.this.f69535i;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
        }
    }

    class h implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f69563a;

        h(final com.join.mgps.customview.input.a val$mInputGameRoomNumDialog) {
            this.f69563a = val$mInputGameRoomNumDialog;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f69563a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f69563a.c();
            if (f4.this.f69545r == null) {
                return;
            }
            f4.this.f69545r.d().z(f4.this.D);
            if (TextUtils.isEmpty(num)) {
                return;
            }
            f4.this.f69547t = num;
            if (!com.join.android.app.common.utils.m.j(f4.this.f69546s)) {
                f4.this.showToast("当前网络不可用，请检查网络!");
                return;
            }
            f4.this.G0("正在获取房间...");
            if (f4.this.f69545r.d().s()) {
                f4.this.i0(num);
            } else {
                f4.this.f69545r.f(ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_ARENAMAIN));
            }
        }
    }

    class i implements SocketListener.NotifyObserver {
        i() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError error) {
            if (f4.this.f69546s == null) {
                return;
            }
            f4.this.g0();
            int i10 = error.errorType;
            if (i10 != 6 && i10 != 3 && i10 != 4) {
                f4.this.showToast("网络异常，请稍后重试!");
            } else {
                f4.this.showToast(error.errorInfo);
                f4.this.H0();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            ArenaRequest arenaRequest;
            int i10;
            if (f4.this.f69546s == null || (arenaRequest = response.request) == null) {
                return;
            }
            String str = arenaRequest.register_type;
            if (str == ArenaConstants.REGISTER_TYPE_ARENAMAIN || str == ArenaConstants.REGISTER_TYPE_PUBLIC) {
                if (response.responseCode == 0) {
                    f4.this.q0(response);
                    return;
                }
                if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                    if (TextUtils.isEmpty(f4.this.f69547t)) {
                        return;
                    }
                    f4 f4Var = f4.this;
                    f4Var.i0(f4Var.f69547t);
                    return;
                }
                if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_SEARCH_ROOM_BY_ID)) {
                    f4.this.r0((GameRoom) response.data);
                    return;
                }
                if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                    f4.this.d0();
                    GameRoom gameRoom = (GameRoom) response.data;
                    if (f4.this.f69545r == null) {
                        return;
                    }
                    f4.this.f69545r.d().E(null);
                    DownloadTask downloadTaskG = q5.f.M().G("" + gameRoom.getGameId());
                    if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                        i10 = 2;
                    } else {
                        i10 = gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT ? 1 : 0;
                    }
                    GameRoomActivity_.intent(f4.this.f69546s).l(i10).h(response.joinSpectatorReason).d(downloadTaskG.getShowName()).i(gameRoom).b(f4.this.W).start();
                    f4.this.g0();
                }
            }
        }
    }

    class j implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f69566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameRoom f69567b;

        j(final com.join.mgps.customview.input.a val$mInputGameRoomPwdDialog, final GameRoom val$gameRoom) {
            this.f69566a = val$mInputGameRoomPwdDialog;
            this.f69567b = val$gameRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f69566a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f69566a.c();
            if (TextUtils.isEmpty(num)) {
                return;
            }
            f4.this.G0("正在获取房间...");
            f4.this.h0(this.f69567b, num);
        }
    }

    class k extends com.join.mgps.socket.fight.arena.b.c {
        k() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
        }
    }

    class l extends com.join.mgps.socket.fight.arena.a.b0 {
        l() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onDisable() {
            super.onDisable();
            f4.this.f69546s.finish();
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onErrorHint(int operation, int errorType, Object value) {
            super.onErrorHint(operation, errorType, value);
            if (operation == 101) {
                if (errorType == 7) {
                    f4 f4Var = f4.this;
                    f4Var.F0(f4Var.F);
                } else {
                    if (errorType != 8) {
                        return;
                    }
                    f4.this.E0();
                }
            }
        }
    }

    class m implements View.OnApplyWindowInsetsListener {
        m() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            if (com.join.mgps.Util.t1.b(f4.this.getActivity())) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) f4.this.f69541o.getLayoutParams();
                layoutParams.leftMargin = (int) f4.this.n0();
                f4.this.f69541o.setLayoutParams(layoutParams);
            }
            return view.onApplyWindowInsets(windowInsets);
        }
    }

    class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type(4);
            intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72357l + "/static/match/index.html");
            intentDateBean.setFrom("11");
            IntentUtil.getInstance().intentActivity(f4.this.getActivity(), intentDateBean);
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            f4.this.t0(1, null);
            f4.this.f69541o.setVisibility(0);
            f4.this.T = 1;
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (!f4.this.J0()) {
                f4.this.H0();
                return;
            }
            FragmentTransaction fragmentTransactionBeginTransaction = f4.this.H.beginTransaction();
            f4.this.t0(2, fragmentTransactionBeginTransaction);
            f4 f4Var = f4.this;
            com.join.mgps.activity.arena.b bVar = f4Var.I;
            if (bVar == null) {
                f4Var.I = new com.join.mgps.activity.arena.b();
                Bundle bundle = new Bundle();
                bundle.putInt(ArenaGameListActivity_.M_TYPE_EXTRA, 1);
                f4.this.I.setArguments(bundle);
                fragmentTransactionBeginTransaction.add(R.id.fragmentLayout, f4.this.I);
            } else {
                fragmentTransactionBeginTransaction.show(bVar);
            }
            fragmentTransactionBeginTransaction.commitAllowingStateLoss();
            f4.this.T = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0(final int position) {
        com.join.mgps.Util.h0.h0(getActivity()).R(getActivity(), this.X.get(position).getTitle(), this.X.get(position).getPic_remote(), new g(position));
    }

    private void D0(GameRoom gameRoom) {
        com.join.mgps.dialog.d1 d1Var = this.G;
        if (d1Var != null) {
            d1Var.a();
        }
        com.join.mgps.dialog.d1 d1Var2 = new com.join.mgps.dialog.d1(this.f69546s);
        this.G = d1Var2;
        d1Var2.d("加入失败，您与" + gameRoom.getRoomId() + "房间不在同一战区\n请进入该游戏房间列表，并切换至【" + com.join.mgps.socket.fight.arena.c.d(gameRoom.getBattleArea()) + "】后再查找房间号进入");
        this.G.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f69546s, "请输入房间号", 5, false);
        aVar.g(new h(aVar));
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed()) {
            return;
        }
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(String title) {
        com.join.mgps.dialog.f1 f1Var = this.C;
        if (f1Var != null && f1Var.isShowing()) {
            this.C.dismiss();
        }
        com.join.mgps.dialog.f1 f1VarZ = com.join.mgps.Util.h0.h0(this.f69546s).z(this.f69546s, title, false);
        this.C = f1VarZ;
        f1VarZ.b();
    }

    private void I0(int requestCode) {
        Intent intent = new Intent(this.f69546s, (Class<?>) NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", "" + this.F.getGameId());
        intent.putExtra(NewArenaDownloadActivity_.P, this.f69532f1);
        intent.putExtra(NewArenaDownloadActivity_.Q, this.f69527b1);
        startActivityForResult(intent, requestCode);
    }

    private UserInfo b0(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private boolean e0(String gameId) {
        this.f69527b1 = false;
        this.f69532f1 = false;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.f69527b1 = false;
        } else {
            this.f69527b1 = true;
            EMUApkTable eMUApkTableN = t6.p.o().n(downloadTaskG.getPlugin_num());
            if (eMUApkTableN == null) {
                this.f69532f1 = true;
            } else if (!com.join.android.app.common.utils.o.t(this.f69546s, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this.f69546s, eMUApkTableN)) {
                this.f69532f1 = false;
            } else {
                this.f69532f1 = true;
            }
        }
        return this.f69532f1 && this.f69527b1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(final int num) {
        if (num < 0) {
            return;
        }
        SimpleDraweeView simpleDraweeViewL0 = l0();
        simpleDraweeViewL0.setController(Fresco.newDraweeControllerBuilder().I(new f(num)).setUri(this.X.get(num).getPic_remote()).build());
        this.f69535i.addView(simpleDraweeViewL0);
    }

    private SimpleDraweeView l0() {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f69546s);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        return simpleDraweeView;
    }

    private SimpleDraweeView m0(final List<BannerBean> datas, final int position) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(this.f69546s);
        simpleDraweeView.setScaleType(ImageView.ScaleType.FIT_XY);
        RoundingParams roundingParams = new RoundingParams();
        roundingParams.t(12.0f);
        com.join.android.app.common.utils.l.f(simpleDraweeView, R.drawable.iv_default_newarena_banner, datas.get(position).getPic_remote(), roundingParams);
        return simpleDraweeView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0(int position, FragmentTransaction transaction) {
        this.P.setTextColor(Color.parseColor("#7B95A4"));
        this.Q.setTextColor(Color.parseColor("#7B95A4"));
        this.R.setTextColor(Color.parseColor("#7B95A4"));
        this.S.setTextColor(Color.parseColor("#7B95A4"));
        this.P.getPaint().setFakeBoldText(false);
        this.Q.getPaint().setFakeBoldText(false);
        this.R.getPaint().setFakeBoldText(false);
        this.S.getPaint().setFakeBoldText(false);
        if (position == 1) {
            this.f69539m.setVisibility(8);
            this.L.setVisibility(0);
            this.M.setVisibility(4);
            this.N.setVisibility(4);
            this.O.setVisibility(4);
            this.P.setTextColor(Color.parseColor("#FFC438"));
            this.P.getPaint().setFakeBoldText(true);
            return;
        }
        if (position == 2) {
            this.L.setVisibility(4);
            this.M.setVisibility(0);
            this.N.setVisibility(4);
            this.O.setVisibility(4);
            this.f69539m.setVisibility(0);
            this.f69541o.setVisibility(4);
            com.join.mgps.fragment.c cVar = this.J;
            if (cVar != null) {
                transaction.hide(cVar);
            }
            com.join.mgps.fragment.c cVar2 = this.K;
            if (cVar2 != null) {
                transaction.hide(cVar2);
            }
            this.Q.setTextColor(Color.parseColor("#FFC438"));
            this.Q.getPaint().setFakeBoldText(true);
            return;
        }
        if (position == 3) {
            this.L.setVisibility(4);
            this.M.setVisibility(4);
            this.N.setVisibility(0);
            this.O.setVisibility(4);
            this.f69541o.setVisibility(8);
            this.f69539m.setVisibility(0);
            com.join.mgps.activity.arena.b bVar = this.I;
            if (bVar != null) {
                transaction.hide(bVar);
            }
            com.join.mgps.fragment.c cVar3 = this.K;
            if (cVar3 != null) {
                transaction.hide(cVar3);
            }
            this.R.setTextColor(Color.parseColor("#FFC438"));
            this.R.getPaint().setFakeBoldText(true);
            return;
        }
        if (position != 4) {
            return;
        }
        this.L.setVisibility(4);
        this.M.setVisibility(4);
        this.N.setVisibility(4);
        this.O.setVisibility(0);
        this.f69541o.setVisibility(8);
        this.f69539m.setVisibility(0);
        com.join.mgps.fragment.c cVar4 = this.J;
        if (cVar4 != null) {
            transaction.hide(cVar4);
        }
        com.join.mgps.activity.arena.b bVar2 = this.I;
        if (bVar2 != null) {
            transaction.hide(bVar2);
        }
        this.S.setTextColor(Color.parseColor("#FFC438"));
        this.S.getPaint().setFakeBoldText(true);
    }

    private boolean u0(String uri) {
        try {
            this.f69546s.getPackageManager().getPackageInfo(uri, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    @UiThread
    void A0(List<GameInfoBean> datas) {
        List<GameInfoBean> list;
        if (datas != null) {
            try {
                if (datas.size() > 0 && (list = this.Z) != null) {
                    list.clear();
                    this.Z.addAll(datas);
                    GameInfoBean gameInfoBean = new GameInfoBean();
                    gameInfoBean.setTitle("悟饭全明星");
                    gameInfoBean.setRoom_count(-1);
                    gameInfoBean.setPic_remote_vertical("res://" + getContext().getPackageName() + net.lingala.zip4j.util.e.F0 + R.drawable.event_entrance_bg);
                    this.Z.add(0, gameInfoBean);
                    this.f69543p0.e(this.Z);
                    this.f69536j.setRefreshing(false);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @UiThread
    void B0(GameListBannerBean data) {
        this.f69548u.setText("" + data.getLately_battle());
        this.f69549v.setText("" + data.getArcade_battle());
        this.f69550w.setText("" + data.getFc_battle());
        if (this.f69551x == null) {
            return;
        }
        if (data.getGame_match() == null || data.getGame_match().getMatch_title() == null) {
            this.f69551x.setVisibility(8);
        } else {
            this.f69551x.setVisibility(0);
            this.f69552y.setText(data.getGame_match().getMatch_title());
            this.f69553z.setText(data.getGame_match().getNick_name());
            if (data.getGame_match().getJoin_number() < 1) {
                this.B.setVisibility(8);
                this.A.setVisibility(8);
            } else {
                this.A.setText(data.getGame_match().getJoin_number() + "");
                this.B.setVisibility(0);
                this.A.setVisibility(0);
            }
        }
        this.f69551x.setVisibility(8);
    }

    @UiThread
    void F0(final GameRoom gameRoom) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f69546s, "请输入房间密码", 4, false);
        aVar.g(new j(aVar, gameRoom));
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed()) {
            return;
        }
        aVar.h();
    }

    @UiThread
    void H0() {
        IntentUtil.getInstance().goLoginBattle(this.f69546s);
    }

    boolean J0() {
        return (b0(getActivity()) == null || AccountUtil_.getInstance_(getActivity()).isTourist()) ? false : true;
    }

    @AfterViews
    void afterViews() {
        this.f69529d = com.join.mgps.rpc.impl.l.n0();
        this.f69530e = com.join.mgps.rpc.impl.k.n0();
        this.H = getChildFragmentManager();
        this.U = getChildFragmentManager();
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                getActivity().getWindow().getDecorView().setOnApplyWindowInsetsListener(new m());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            this.U.beginTransaction().commit();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        View viewInflate = LayoutInflater.from(this.f69546s).inflate(R.layout.new_arena_list_header, (ViewGroup) null);
        this.f69548u = (TextView) viewInflate.findViewById(R.id.latest_num_tv);
        this.f69549v = (TextView) viewInflate.findViewById(R.id.jieji_num_tv);
        this.f69550w = (TextView) viewInflate.findViewById(R.id.fc_num_tv);
        this.f69552y = (TextView) viewInflate.findViewById(R.id.event_gamename_tv);
        this.f69553z = (TextView) viewInflate.findViewById(R.id.event_nike_tv);
        this.A = (TextView) viewInflate.findViewById(R.id.event_num_tv);
        this.B = (TextView) viewInflate.findViewById(R.id.event_num_after_tv);
        this.f69551x = (RelativeLayout) viewInflate.findViewById(R.id.event_root_rl);
        this.L = viewInflate.findViewById(R.id.jingxuanLine);
        this.M = viewInflate.findViewById(R.id.newLine);
        this.N = viewInflate.findViewById(R.id.gbaLine);
        this.O = viewInflate.findViewById(R.id.fcLine);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvJingxuan);
        this.P = textView;
        textView.getPaint().setFakeBoldText(true);
        this.Q = (TextView) viewInflate.findViewById(R.id.tvNew);
        this.R = (TextView) viewInflate.findViewById(R.id.tvGBA);
        this.S = (TextView) viewInflate.findViewById(R.id.tvFC);
        int width = getActivity().getWindowManager().getDefaultDisplay().getWidth();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(width - com.join.mgps.Util.i0.a(getActivity(), 10.0f), (width * 112) / TcMouseManager.MOUSE_STARY);
        layoutParams.leftMargin = com.join.mgps.Util.i0.a(getActivity(), 5.0f);
        layoutParams.rightMargin = com.join.mgps.Util.i0.a(getActivity(), 5.0f);
        layoutParams.bottomMargin = com.join.mgps.Util.i0.a(getActivity(), 5.0f);
        this.f69551x.setLayoutParams(layoutParams);
        this.f69551x.setOnClickListener(new n());
        viewInflate.findViewById(R.id.jingxuan).setOnClickListener(new o());
        viewInflate.findViewById(R.id.ll_latest).setOnClickListener(new p());
        viewInflate.findViewById(R.id.ll_jieji).setOnClickListener(new a());
        viewInflate.findViewById(R.id.ll_fc).setOnClickListener(new b());
        this.f69540n = (AutoScrollViewPager) viewInflate.findViewById(R.id.ad_viewpager);
        this.f69538l.removeAllViews();
        this.f69538l.addView(viewInflate);
        this.f69536j.setLayoutManager(new GridLayoutManager(getContext(), ((double) com.join.android.app.common.utils.q.n(getActivity()).j(getActivity())) >= 1.9d ? 5 : 4));
        this.f69536j.setPullRefreshEnabled(true);
        this.f69536j.setLoadingMoreEnabled(false);
        this.f69536j.setLoadingListener(new c());
        com.join.mgps.adapter.f2 f2Var = new com.join.mgps.adapter.f2(getActivity(), true);
        this.f69543p0 = f2Var;
        this.f69536j.setAdapter(f2Var);
        this.f69543p0.f(new d());
        o0();
    }

    public void c0() {
        List<Dialog> list = this.Y;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < this.Y.size(); i10++) {
            if (this.Y.get(i10) != null) {
                this.Y.get(i10).dismiss();
            }
        }
    }

    void d0() {
        if (this.f69545r.d() != null) {
            com.join.mgps.Util.g1.b(f69525i1, "--- removeObserver---");
            this.f69545r.d().A(this.D);
        }
    }

    @Background
    void f0() {
        if (!com.join.android.app.common.utils.m.j(this.f69546s) || !com.join.android.app.common.utils.m.l()) {
            showLodingFailed();
        } else {
            showLoding();
            x0();
        }
    }

    @UiThread
    void g0() {
        com.join.mgps.dialog.f1 f1Var = this.C;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.C.dismiss();
    }

    @UiThread
    void h0(GameRoom gameRoom, String pwd) {
        com.join.mgps.socket.fight.arena.b bVar = this.f69545r;
        if (bVar != null) {
            bVar.f(ArenaRequestFactory.joinRoom(ArenaConstants.REGISTER_TYPE_ARENAMAIN, gameRoom.getRoomId(), pwd, gameRoom.getElite()));
        }
    }

    @UiThread
    void i0(String roomNum) {
        com.join.mgps.socket.fight.arena.b bVar = this.f69545r;
        if (bVar != null) {
            bVar.f(ArenaRequestFactory.searchRoomById(ArenaConstants.REGISTER_TYPE_ARENAMAIN, Integer.parseInt(roomNum)));
        }
    }

    void k0() {
        ResultResMainBean<GameListBannerBean> resultResMainBean = this.V;
        if (resultResMainBean == null || resultResMainBean.getData() == null) {
            f0();
        } else {
            x0();
        }
    }

    public float n0() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelOffset(identifier);
        }
        return 0.0f;
    }

    @UiThread(delay = 500)
    void o0() {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        CollectionCommentRequest collectionCommentRequest = new CollectionCommentRequest();
        collectionCommentRequest.setCollection_id("");
        collectionCommentRequest.setUid(accountData.getUid());
        com.join.mgps.rpc.impl.d.O1().N1().K1(RequestBeanUtil.getInstance(getContext()).getDefalutRequestBean(collectionCommentRequest)).enqueue(new e());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == f69526l1 && resultCode == -1) {
            if (this.F.getHasJoinPassword()) {
                F0(this.F);
            } else if (this.F.getHasJoinPassword()) {
                F0(this.F);
            } else {
                G0("正在获取房间...");
                h0(this.F, "");
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Activity activity = (Activity) context;
        this.f69546s = activity;
        com.join.mgps.socket.fight.arena.b bVar = new com.join.mgps.socket.fight.arena.b(activity, new k());
        this.f69545r = bVar;
        bVar.bindService();
        this.E = new com.join.mgps.socket.fight.arena.a(this.f69546s, new l());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        this.f69528c = false;
        return super.onCreateView(inflater, container, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.g1.b(f69525i1, "--onDestroy--");
        List<BannerBean> list = this.X;
        if (list != null) {
            list.clear();
            this.X = null;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.f69545r;
        if (bVar == null) {
            return;
        }
        if (bVar.d() != null) {
            this.f69545r.g();
        }
        this.f69545r.stopService();
        this.f69545r = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        com.join.mgps.Util.g1.b(f69525i1, "--onDestroyView--");
        this.f69528c = true;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("tbl:");
        sb2.append(hidden);
        if (hidden) {
            c0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        com.join.mgps.Util.g1.b(f69525i1, "--onPause--");
        g0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.join.mgps.Util.g1.b(f69525i1, "--onResume--");
        int i10 = this.T;
        if (i10 == 1 || i10 == 0) {
            k0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        AutoScrollViewPager<BannerBean> autoScrollViewPager = this.f69540n;
        if (autoScrollViewPager != null) {
            autoScrollViewPager.n();
        }
    }

    @UiThread
    void p0() {
        if (this.f69528c) {
            return;
        }
        if (this.V == null) {
            showLodingFailed();
        }
        s0();
        this.f69536j.stopRefresh();
    }

    @UiThread
    void q0(ArenaResponse response) {
        com.join.mgps.dialog.f1 f1Var = this.C;
        if (f1Var != null && f1Var.isShowing()) {
            this.C.dismiss();
        }
        int i10 = response.errorType;
        if (i10 == 7) {
            this.E.D(com.join.mgps.socket.fight.arena.a.f73077j, 256, Integer.valueOf(response.errorType), "密码输入错误，请重试", "取消", "重试", null);
            return;
        }
        if (i10 == 8) {
            this.E.D(com.join.mgps.socket.fight.arena.a.f73077j, 256, Integer.valueOf(response.errorType), "房间号输入错误，请重试", "取消", "重试", null);
            return;
        }
        if (i10 == 9) {
            this.E.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间已满，无法加入!", "确定");
            return;
        }
        if (i10 == 13) {
            this.E.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法加入房间", "确定");
            return;
        }
        if (i10 == 1001) {
            this.E.D(com.join.mgps.socket.fight.arena.a.f73077j, 258, Integer.valueOf(response.errorType), response.errorInfo, "确定");
            return;
        }
        if (i10 == 16) {
            this.E.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "无法加入，你被禁止加入该房间", "确定");
        } else if (i10 != 17) {
            com.join.mgps.Util.a3.b(this.f69546s).d(com.join.mgps.socket.fight.arena.c.g(response));
        } else {
            this.E.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
        }
    }

    @UiThread
    void r0(GameRoom gameRoom) {
        com.join.mgps.dialog.f1 f1Var = this.C;
        if (f1Var != null && f1Var.isShowing()) {
            this.C.dismiss();
        }
        this.F = gameRoom;
        if (!gameRoom.getAllowPeripheralJoin() && com.join.mgps.socket.fight.arena.c.o(this.f69546s)) {
            com.join.mgps.Util.a3.b(this.f69546s).d("禁止外设用户加入!");
            return;
        }
        if (this.f69545r != null && this.F.getBattleArea().getNumber() != BattleArea.ALL.getNumber() && this.F.getBattleArea().getNumber() != this.f69545r.d().n().getNumber()) {
            D0(gameRoom);
            return;
        }
        if (!e0("" + gameRoom.getGameId())) {
            I0(f69526l1);
        } else if (gameRoom.getHasJoinPassword()) {
            F0(gameRoom);
        } else {
            h0(gameRoom, "");
        }
    }

    @Click
    void relodingimag() {
        com.join.mgps.Util.g1.b("NewArenaMain", "relodingimag");
        k0();
    }

    @UiThread
    void s0() {
        LinearLayout linearLayout = this.f69533g;
        if (linearLayout == null) {
            return;
        }
        linearLayout.setVisibility(8);
        this.f69534h.setVisibility(8);
        int i10 = this.T;
        if (i10 == 1 || i10 == 0) {
            this.f69541o.setVisibility(0);
        }
        this.f69536j.stopRefresh();
    }

    @Click
    void setNetwork() {
        Activity activity = this.f69546s;
        if (activity != null) {
            UtilsMy.N3(activity);
        }
    }

    @UiThread
    void showLoding() {
        LinearLayout linearLayout = this.f69533g;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69534h;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        View view = this.f69541o;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f69534h;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69533g;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        View view = this.f69541o;
        if (view != null) {
            view.setVisibility(8);
        }
        XRecyclerView xRecyclerView = this.f69536j;
        if (xRecyclerView != null) {
            xRecyclerView.setRefreshing(false);
            this.f69536j.stopRefresh();
        }
    }

    @UiThread
    void showToast(String info) {
        Activity activity = this.f69546s;
        if (activity != null) {
            com.join.mgps.Util.a3.b(activity).d(info);
        }
    }

    @Click
    void v0() {
        this.f69542p.setVisibility(8);
        IntentUtil.getInstance().goShareWebActivity(getActivity(), com.join.mgps.rpc.h.f72397x + "/lobby_active/index/");
    }

    public void w0() {
        ResultResMainBean<GameListBannerBean> resultResMainBean = this.V;
        if (resultResMainBean != null && resultResMainBean.getData() != null) {
            z0(this.V.getData().getBanner_list());
        }
        if (this.f69546s == null) {
            return;
        }
        k0();
    }

    @Background
    void x0() {
        ResultResMainBean<GameListBannerBean> resultResMainBeanL;
        try {
            String token = this.f69544q.getAccountData().getToken();
            ResultArenaBean<ArenaLobbyServer> resultArenaBeanA0 = this.f69530e.a0(this.f69544q.getAccountData().getUid(), token);
            if (resultArenaBeanA0 != null && resultArenaBeanA0.getError() == 0 && resultArenaBeanA0.getData() != null) {
                if (resultArenaBeanA0.getData().getDisabled() != 0) {
                    ArenaResponse arenaResponse = new ArenaResponse();
                    arenaResponse.errorType = 1001;
                    arenaResponse.errorInfo = resultArenaBeanA0.getData().getDisabledMessage();
                    q0(arenaResponse);
                    showLodingFailed();
                    return;
                }
                int startGameCopper = resultArenaBeanA0.getData().getStartGameCopper();
                this.W = startGameCopper;
                if (startGameCopper == 0) {
                    this.W = 20;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            resultResMainBeanL = this.f69529d.L(AccountUtil_.getInstance_(getActivity()).getUid());
        } catch (Exception e11) {
            p0();
            e11.printStackTrace();
            resultResMainBeanL = null;
        }
        if (this.f69528c || resultResMainBeanL == null || resultResMainBeanL.getData() == null || resultResMainBeanL.getError() > 0) {
            return;
        }
        this.V = resultResMainBeanL;
        z0(resultResMainBeanL.getData().getBanner_list());
        B0(this.V.getData());
        A0(this.V.getData().getGame_list());
        s0();
    }

    @Click
    void y0() {
        if (!com.join.android.app.common.utils.m.j(this.f69546s)) {
            showToast("当前网络不可用，请检查网络");
            return;
        }
        if (!J0()) {
            H0();
            return;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.f69545r;
        if (bVar == null || bVar.d() != null) {
            E0();
        } else {
            showToast("正在连接服务器，请稍后...");
        }
    }

    @UiThread
    void z0(final List<BannerBean> datas) {
        AutoScrollViewPager<BannerBean> autoScrollViewPager;
        if (datas == null || datas.size() <= 0) {
            if (this.X.size() >= 0 || (autoScrollViewPager = this.f69540n) == null) {
                return;
            }
            autoScrollViewPager.setVisibility(8);
            return;
        }
        if (this.X == null) {
            this.X = new ArrayList();
        }
        this.X.clear();
        this.X.addAll(datas);
        AutoScrollViewPager<BannerBean> autoScrollViewPager2 = this.f69540n;
        if (autoScrollViewPager2 == null) {
            return;
        }
        autoScrollViewPager2.setVisibility(8);
        List<Dialog> list = this.Y;
        if (list == null) {
            return;
        }
        list.clear();
        LinearLayout linearLayout = this.f69535i;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
    }
}
