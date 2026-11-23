package com.join.mgps.activity;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaResponse;
import com.BaseActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.FriendAccountInfo;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.FriendReqBean;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.fragment.CloudListFragment_;
import com.join.mgps.fragment.FriendFragment_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.wufan.friend.chat.protocol.LocalBattleGameInfo;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
public class FriendActivity extends BaseActivity implements com.join.mgps.adapter.v0.e, View.OnSystemUiVisibilityChangeListener {
    TextView accountId;
    com.join.mgps.dialog.m arenaNoRecordDialog;
    SimpleDraweeView avatar;
    View button;
    View close;
    private com.join.mgps.fragment.m cloudListFragment;
    FragmentManager fragmentManager;
    private com.join.mgps.fragment.x1 friendAddFragment;
    private com.join.mgps.fragment.j2 friendCardFragment;
    protected com.join.mgps.fragment.v2 friendFragment;
    private com.join.mgps.fragment.z2 friendMessageFragment;
    protected String gameId;
    View gameSelector;
    View gameSelector1;
    com.join.mgps.dialog.i mArenaCreateDialog;
    Dialog mDialog;
    GameInfoBean mGameInfo;
    TextView name;
    BroadcastReceiver receiver;
    RecyclerView recyclerView;
    RecyclerView recyclerViewGamelist;
    RecyclerView recyclerViewGamelist1;
    protected String ruid;
    protected String type;
    Handler handler = new Handler();
    LinkedList<Integer> fragmentStack = new LinkedList<>();
    protected boolean showFriendUI = true;
    FriendBean inviteBean = null;
    boolean hasRom = false;
    boolean hasPlug = false;
    i roomSelecteradapter = null;
    f gameAdapter = null;
    private int selectedPosition = -1024;
    List<GameInfoBean> gameInfoListData = new ArrayList();
    List<GameInfoBean> gameInfoBeanList = new ArrayList();
    boolean isActive = false;
    f gameAdapter1 = null;
    List<GameInfoBean> gameInfoBeanList1 = new ArrayList();

    class a implements Callback<ResponseModel> {
        a() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResponseModel> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResponseModel> call, Response<ResponseModel> response) {
            if (response == null || response.body() == null) {
                FriendActivity.this.toast("添加失败");
                return;
            }
            ResponseModel responseModelBody = response.body();
            if (responseModelBody.getError() == 0) {
                FriendActivity.this.addSuccess(Boolean.TRUE);
            } else {
                FriendActivity.this.toast(responseModelBody.getMsg());
            }
        }
    }

    class b extends AsyncTask<Integer, Void, FriendAccountInfo> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FriendAccountInfo doInBackground(Integer... integers) {
            int iIntValue = integers[0].intValue();
            try {
                UserInfo accountData = AccountUtil_.getInstance_(FriendActivity.this).getAccountData();
                FriendReqBean friendReqBean = new FriendReqBean();
                friendReqBean.setUid(accountData.getUid());
                friendReqBean.setToken(accountData.getToken());
                friendReqBean.setRuid(iIntValue);
                ResponseModel<FriendAccountInfo> responseModelD = com.join.mgps.rpc.impl.h.p().d(accountData.getUid() + "", accountData.getToken() + "", iIntValue + "");
                if (responseModelD == null) {
                    return null;
                }
                if (responseModelD.getError() == 0) {
                    return responseModelD.getData();
                }
                FriendActivity.this.toast(responseModelD.getMsg());
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(FriendAccountInfo friendAccountInfo) {
            super.onPostExecute(friendAccountInfo);
            if (friendAccountInfo == null) {
                return;
            }
            com.join.android.app.common.utils.l.y(FriendActivity.this.avatar, friendAccountInfo.getAvatar());
            FriendActivity.this.name.setText(friendAccountInfo.getNickName());
            FriendActivity.this.accountId.setText(friendAccountInfo.getAccount() + "");
        }
    }

    class c implements Callback<ResultResMainBean<GameListBannerBean>> {
        c() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultResMainBean<GameListBannerBean>> call, Throwable t10) {
            FriendActivity.this.hideGameSelector();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultResMainBean<GameListBannerBean>> call, Response<ResultResMainBean<GameListBannerBean>> response) {
            ResultResMainBean<GameListBannerBean> resultResMainBeanBody = response.body();
            if (resultResMainBeanBody != null) {
                try {
                    List<GameInfoBean> game_list = resultResMainBeanBody.getData().getGame_list();
                    if (game_list == null || game_list.size() <= 0) {
                        FriendActivity.this.hideGameSelector();
                        return;
                    }
                    FriendActivity.this.gameInfoListData.addAll(game_list);
                    FriendActivity friendActivity = FriendActivity.this;
                    friendActivity.selectedPosition = friendActivity.selectedPosition == -1024 ? 0 : FriendActivity.this.selectedPosition;
                    FriendActivity friendActivity2 = FriendActivity.this;
                    friendActivity2.mGameInfo = friendActivity2.gameInfoListData.get(friendActivity2.selectedPosition);
                    FriendActivity.this.getGameConfigv2();
                    FriendActivity.this.roomSelecteradapter.notifyDataSetChanged();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    FriendActivity.this.hideGameSelector();
                }
            }
        }
    }

    class d implements Callback<ResultMainBean<ArenaGameRoomListConfig>> {
        d() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Response<ResultMainBean<ArenaGameRoomListConfig>> response) {
            ResultMainBean<ArenaGameRoomListConfig> resultMainBeanBody = response.body();
            if (resultMainBeanBody == null || resultMainBeanBody.getMessages().getData() == null) {
                FriendActivity.this.toast("获取游戏配置信息失败！");
                return;
            }
            if (resultMainBeanBody.getMessages().getData().getCurrent_collection_cfg() == null) {
                return;
            }
            String collection_id = resultMainBeanBody.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
            if (TextUtils.isEmpty(collection_id) || Integer.parseInt(collection_id) <= 0 || resultMainBeanBody.getMessages().getData().getGame_list() == null || resultMainBeanBody.getMessages().getData().getGame_list().size() <= 0) {
                return;
            }
            List<GameConfig> game_list = resultMainBeanBody.getMessages().getData().getGame_list();
            ArrayList arrayList = new ArrayList();
            for (GameConfig gameConfig : game_list) {
                GameInfoBean gameInfoBean = new GameInfoBean();
                gameInfoBean.setCollection_id(gameConfig.getCollection_id());
                gameInfoBean.setPic_remote(gameConfig.getGame_ico());
                gameInfoBean.setGame_ico(gameConfig.getGame_ico());
                gameInfoBean.setGame_id(gameConfig.getGame_id());
                gameInfoBean.setGame_name(gameConfig.getGame_name());
                gameInfoBean.setRoom_count(gameConfig.getRoom_count());
                gameInfoBean.setTitle(gameConfig.getTitle());
                gameInfoBean.setPic_cover(gameConfig.getPic_cover());
                arrayList.add(gameInfoBean);
            }
            FriendActivity.this.gameInfoBeanList.clear();
            FriendActivity.this.gameInfoBeanList.addAll(arrayList);
            FriendActivity.this.gameAdapter.notifyDataSetChanged();
        }
    }

    class e implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f52107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaRequest f52108b;

        e(final com.join.mgps.customview.input.a val$mInputGameRoomPwdDialog, final ArenaRequest val$request) {
            this.f52107a = val$mInputGameRoomPwdDialog;
            this.f52108b = val$request;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f52107a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f52107a.c();
            if (this.f52108b == null) {
                return;
            }
            FriendBean friendBean = new FriendBean();
            friendBean.setGameId(this.f52108b.gameId + "");
            friendBean.setRoomId(this.f52108b.roomId);
            friendBean.setElite(this.f52108b.isElite);
            friendBean.setRoomPwd(num);
            com.wufan.friend.chat.c.u().p(friendBean);
        }
    }

    class f extends RecyclerView.Adapter {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f52111f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Context f52113h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private g f52114i;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<GameInfoBean> f52110e = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f52112g = false;

        class a extends RecyclerView.ViewHolder {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private SimpleDraweeView f52116d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private TextView f52117e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private TextView f52118f;

            public a(View itemView) {
                super(itemView);
                this.f52116d = (SimpleDraweeView) itemView.findViewById(R.id.cover);
                this.f52117e = (TextView) itemView.findViewById(R.id.state);
                this.f52118f = (TextView) itemView.findViewById(R.id.name);
            }
        }

        public f(Context context, boolean all) {
            this.f52113h = context;
            this.f52111f = all;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(int i10, View view) {
            this.f52114i.onItemClick(i10);
        }

        public List<GameInfoBean> b() {
            return this.f52110e;
        }

        public void c(final int position, a holder) {
            GameInfoBean gameInfoBean = this.f52110e.get(position);
            holder.f52118f.setText(gameInfoBean.getGame_name());
            com.join.android.app.common.utils.l.e(holder.f52116d, R.drawable.bg_gameinfo, gameInfoBean.getPic_cover(), com.facebook.drawee.drawable.s.c.f27284a);
            if (this.f52112g && FriendActivity.this.isPlaying(gameInfoBean.getGame_id())) {
                holder.f52117e.setVisibility(0);
            } else {
                holder.f52117e.setVisibility(8);
            }
            if (this.f52112g) {
                View view = holder.itemView;
                view.setPadding(view.getPaddingLeft(), holder.itemView.getPaddingTop(), holder.itemView.getPaddingRight(), holder.itemView.getPaddingBottom() + FriendActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp6));
            }
            holder.f52116d.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.p1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f57830b.d(position, view2);
                }
            });
        }

        public void e(List<GameInfoBean> datas) {
            this.f52110e = datas;
            notifyDataSetChanged();
        }

        public void f(boolean friend) {
            this.f52111f = friend;
        }

        public void g(g listener) {
            this.f52114i = listener;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<GameInfoBean> list = this.f52110e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            return position;
        }

        public void h(boolean recommend) {
            this.f52112g = recommend;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder gameInfoHolder, int position) {
            c(position, (a) gameInfoHolder);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return new a(LayoutInflater.from(this.f52113h).inflate(R.layout.item_gameinfo_2, viewGroup, false));
        }
    }

    interface g {
        void onItemClick(int position);
    }

    class h extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f52120d;

        public h(View itemView) {
            super(itemView);
            this.f52120d = (TextView) itemView.findViewById(R.id.name);
        }
    }

    class i extends RecyclerView.Adapter<h> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Context f52122e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private g f52123f;

        public i(Context context) {
            this.f52122e = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(int i10, View view) {
            notifyItemChanged(FriendActivity.this.selectedPosition);
            FriendActivity.this.selectedPosition = i10;
            notifyItemChanged(FriendActivity.this.selectedPosition);
            this.f52123f.onItemClick(i10);
        }

        public GameInfoBean b() {
            List<GameInfoBean> list = FriendActivity.this.gameInfoListData;
            if (list != null && list.size() != 0) {
                if (FriendActivity.this.selectedPosition < 0) {
                    return FriendActivity.this.gameInfoListData.get(0);
                }
                if (FriendActivity.this.selectedPosition < getItemCount()) {
                    FriendActivity friendActivity = FriendActivity.this;
                    return friendActivity.gameInfoListData.get(friendActivity.selectedPosition);
                }
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull h roomSelcterVH, final int pos) {
            GameInfoBean gameInfoBean = FriendActivity.this.gameInfoListData.get(pos);
            if (FriendActivity.this.selectedPosition == -1024 && FriendActivity.this.mGameInfo != null && gameInfoBean.getCollection_id().equals(FriendActivity.this.mGameInfo.getCollection_id())) {
                FriendActivity.this.selectedPosition = pos;
                roomSelcterVH.itemView.setSelected(true);
                roomSelcterVH.f52120d.setTextColor(-1);
            } else if (FriendActivity.this.selectedPosition == pos) {
                roomSelcterVH.f52120d.setTextColor(-16777216);
            } else {
                roomSelcterVH.f52120d.setTextColor(Color.parseColor("#C3C3C3"));
            }
            roomSelcterVH.f52120d.setTypeface(FriendActivity.this.selectedPosition == pos ? Typeface.DEFAULT_BOLD : Typeface.DEFAULT);
            roomSelcterVH.itemView.setSelected(FriendActivity.this.selectedPosition == pos);
            roomSelcterVH.f52120d.setText(gameInfoBean.getTitle());
            roomSelcterVH.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.q1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57902b.c(pos, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public h onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            View viewInflate = LayoutInflater.from(this.f52122e).inflate(R.layout.newarena_roomselecter_item, viewGroup, false);
            viewInflate.setBackgroundResource(R.drawable.new_arena_roomselecter_listselecter1);
            viewInflate.getLayoutParams().height = FriendActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp100);
            return FriendActivity.this.new h(viewInflate);
        }

        public void f(g itemClickListener) {
            this.f52123f = itemClickListener;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return FriendActivity.this.gameInfoListData.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getGameConfigv2() {
        String collection_id;
        int i10;
        try {
            if (TextUtils.isEmpty(this.mGameInfo.getCollection_id())) {
                collection_id = this.mGameInfo.getGame_id();
                i10 = 1;
            } else {
                collection_id = this.mGameInfo.getCollection_id();
                i10 = 2;
            }
            com.join.mgps.rpc.impl.d.O1().N1().h(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i10)).enqueue(new d());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void getGameTypeList() {
        com.join.mgps.rpc.impl.l.n0().m0().L(AccountUtil_.getInstance_(this).getUid()).enqueue(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddFriend$3(View view) {
        this.mDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAddFriend$4(int i10, View view) {
        if (!IntentUtil.getInstance().isLogined(view.getContext()) || IntentUtil.getInstance().isTourist(view.getContext())) {
            IntentUtil.getInstance().goMyAccountLoginActivity(view.getContext());
            return;
        }
        add(i10);
        Ext ext = new Ext();
        ext.setFrom("3");
        com.papa.sim.statistic.t.l(view.getContext()).R1(Event.addFriends, ext);
        this.mDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showCreateRoomDialog$0(Context context, DownloadTask downloadTask) {
        String crc_link_type_val = downloadTask.getCrc_link_type_val();
        this.inviteBean.setGameId(crc_link_type_val);
        this.inviteBean.setElite(false);
        if (isPreDownloadPrepared(crc_link_type_val)) {
            DownloadTask downloadTaskG = q5.f.M().G(crc_link_type_val);
            PlugInstallDialog_.intent(context).c(t6.o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
        } else if (!checkGameIsInstall(crc_link_type_val)) {
            startDownloadActivity(crc_link_type_val, 10000);
        } else {
            if (needUpdate(crc_link_type_val)) {
                return;
            }
            com.wufan.friend.chat.c.u().o(this.inviteBean);
            this.inviteBean = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameSelector$5(View view) {
        View view2 = this.gameSelector;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameSelector$6(int i10) {
        this.mGameInfo = this.gameInfoListData.get(i10);
        getGameConfigv2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameSelector$7(int i10) {
        GameInfoBean gameInfoBean = this.gameInfoBeanList.get(i10);
        this.mGameInfo = gameInfoBean;
        onGameSelected(gameInfoBean.getGame_id());
        hideGameSelector();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameSelector1$8(View view) {
        View view2 = this.gameSelector1;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGameSelector1$9(int i10) {
        onGameSelected(this.gameInfoBeanList1.get(i10).getGame_id());
        hideGameSelector1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showInputRoomPwdDialog$10(ArenaRequest arenaRequest) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this, "请输入房间密码", 4, false);
        aVar.g(new e(aVar, arenaRequest));
        aVar.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toast$2(String str) {
        com.join.mgps.Util.a3.b(this).d(str);
    }

    private boolean needUpdate(String gameId) {
        try {
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            return UtilsMy.b2(this, gameId, downloadTaskG, t6.o.o().n(downloadTaskG.getPlugin_num()), true);
        } catch (Exception unused) {
            return false;
        }
    }

    private void showCloudUI() {
        if (this.cloudListFragment == null) {
            this.cloudListFragment = new CloudListFragment_();
            Bundle bundle = new Bundle();
            bundle.putInt("type", 1);
            bundle.putString("gameid", this.gameId);
            bundle.putInt("typeIndex", 3);
            this.cloudListFragment.setArguments(bundle);
            this.fragmentManager.beginTransaction().replace(R.id.frameLayout, this.cloudListFragment).commitAllowingStateLoss();
        }
    }

    void add(int ruid) {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            FriendReqBean friendReqBean = new FriendReqBean();
            friendReqBean.setUid(accountData.getUid());
            friendReqBean.setToken(accountData.getToken());
            friendReqBean.setRuid(ruid);
            friendReqBean.setRequestInfo("嘿，交个朋友，少年~(*^▽^*)");
            com.join.mgps.rpc.impl.h.p().o().i(friendReqBean).enqueue(new a());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void addSuccess(Boolean f10) {
        if (f10.booleanValue()) {
            toast("已发送加好友申请");
        }
    }

    void attachSwitchStyle(FragmentTransaction transaction) {
        transaction.setCustomAnimations(R.anim.from_right, R.anim.out_right);
    }

    void autoSendAdd() {
        Dialog dialog;
        try {
            if (this.button == null || (dialog = this.mDialog) == null || !dialog.isShowing()) {
                return;
            }
            this.button.performClick();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: checkClipboard, reason: merged with bridge method [inline-methods] */
    public void lambda$onResume$1() {
        int iL;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
            if (clipboardManager.hasPrimaryClip()) {
                ClipData.Item itemAt = clipboardManager.getPrimaryClip().getItemAt(0);
                if (itemAt.getText() == null || (iL = com.wufan.friend.chat.c.u().l(itemAt.getText().toString())) == 0) {
                    return;
                }
                showAddFriend(iL);
                clipboardManager.setText("");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    protected boolean checkGameIsInstall(String gameId) {
        this.hasRom = false;
        this.hasPlug = false;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.hasRom = false;
        } else {
            this.hasRom = true;
            EMUApkTable eMUApkTableN = t6.o.o().n(downloadTaskG.getPlugin_num());
            if (eMUApkTableN == null) {
                this.hasPlug = true;
            } else if (!com.join.android.app.common.utils.o.t(this, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this, eMUApkTableN)) {
                this.hasPlug = false;
            } else {
                this.hasPlug = true;
            }
        }
        return this.hasPlug && this.hasRom;
    }

    protected int getFrameLayoutId() {
        return this instanceof GameMainActivity4_ ? R.id.friendContainer : R.id.frameLayout;
    }

    void getFriendInfo(int ruid) {
        new b().execute(Integer.valueOf(ruid));
    }

    public String getGameId() {
        return this.gameId;
    }

    public void go(int i10) {
        if (this.fragmentStack.contains(3)) {
            this.fragmentStack.remove((Object) 3);
        }
        this.fragmentStack.push(Integer.valueOf(i10));
        if (this.fragmentStack.size() > 0) {
            navigateTo(this.fragmentStack.getFirst().intValue());
        }
    }

    public void hide() {
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        if (this.friendFragment != null) {
            if (this instanceof GameMainActivity4_) {
                attachSwitchStyle(fragmentTransactionBeginTransaction);
            }
            fragmentTransactionBeginTransaction.hide(this.friendFragment);
        }
        if (this.friendAddFragment != null) {
            attachSwitchStyle(fragmentTransactionBeginTransaction);
            fragmentTransactionBeginTransaction.hide(this.friendAddFragment);
        }
        if (this.friendMessageFragment != null) {
            attachSwitchStyle(fragmentTransactionBeginTransaction);
            fragmentTransactionBeginTransaction.hide(this.friendMessageFragment);
        }
        if (this.friendCardFragment != null) {
            attachSwitchStyle(fragmentTransactionBeginTransaction);
            fragmentTransactionBeginTransaction.hide(this.friendCardFragment);
        }
        try {
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void hideGameSelector() {
        View view = this.gameSelector;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void hideGameSelector1() {
        View view = this.gameSelector1;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    void hideNavigationBar() {
        setSystemUiVisibility();
    }

    boolean isPlaying(String gameId) {
        FriendBean friendBean = this.inviteBean;
        return (friendBean == null || TextUtils.isEmpty(friendBean.getGameId()) || !this.inviteBean.getGameId().equals(gameId)) ? false : true;
    }

    public boolean isPreDownloadPrepared(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG != null && downloadTaskG.getDown_type() != 2) {
            return false;
        }
        EMUApkTable eMUApkTableN = downloadTaskG != null ? t6.o.o().n(downloadTaskG.getPlugin_num()) : null;
        if (downloadTaskG == null || downloadTaskG.getStatus() != 11) {
            return eMUApkTableN != null && com.join.android.app.common.utils.o.i(eMUApkTableN);
        }
        return true;
    }

    protected boolean isShowFriendUI() {
        return true;
    }

    void navigateTo(int i10) {
        FragmentTransaction fragmentTransactionBeginTransaction = this.fragmentManager.beginTransaction();
        if (this.friendFragment != null) {
            if (this instanceof GameMainActivity4_) {
                attachSwitchStyle(fragmentTransactionBeginTransaction);
            }
            fragmentTransactionBeginTransaction.hide(this.friendFragment);
        }
        if (this.friendAddFragment != null) {
            attachSwitchStyle(fragmentTransactionBeginTransaction);
            fragmentTransactionBeginTransaction.hide(this.friendAddFragment);
        }
        if (this.friendMessageFragment != null) {
            attachSwitchStyle(fragmentTransactionBeginTransaction);
            fragmentTransactionBeginTransaction.hide(this.friendMessageFragment);
        }
        if (this.friendCardFragment != null) {
            attachSwitchStyle(fragmentTransactionBeginTransaction);
            fragmentTransactionBeginTransaction.hide(this.friendCardFragment);
        }
        try {
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        FragmentTransaction fragmentTransactionBeginTransaction2 = this.fragmentManager.beginTransaction();
        if (i10 == 0) {
            if (this instanceof GameMainActivity4_) {
                attachSwitchStyle(fragmentTransactionBeginTransaction2);
            }
            com.join.mgps.fragment.v2 v2Var = this.friendFragment;
            if (v2Var == null) {
                this.friendFragment = new FriendFragment_();
                Bundle bundle = new Bundle();
                bundle.putString("gameId", this.gameId);
                bundle.putString("type", this.type);
                this.friendFragment.setArguments(bundle);
                fragmentTransactionBeginTransaction2.add(getFrameLayoutId(), this.friendFragment);
            } else {
                fragmentTransactionBeginTransaction2.show(v2Var);
            }
        } else if (i10 == 1) {
            attachSwitchStyle(fragmentTransactionBeginTransaction2);
            com.join.mgps.fragment.x1 x1Var = this.friendAddFragment;
            if (x1Var == null) {
                this.friendAddFragment = new com.join.mgps.fragment.y1();
                fragmentTransactionBeginTransaction2.add(getFrameLayoutId(), this.friendAddFragment);
            } else {
                fragmentTransactionBeginTransaction2.show(x1Var);
            }
        } else if (i10 == 2) {
            attachSwitchStyle(fragmentTransactionBeginTransaction2);
            com.join.mgps.fragment.z2 z2Var = this.friendMessageFragment;
            if (z2Var == null) {
                this.friendMessageFragment = new com.join.mgps.fragment.a3();
                fragmentTransactionBeginTransaction2.add(getFrameLayoutId(), this.friendMessageFragment);
            } else {
                fragmentTransactionBeginTransaction2.show(z2Var);
            }
        } else if (i10 == 3) {
            attachSwitchStyle(fragmentTransactionBeginTransaction2);
            com.join.mgps.fragment.j2 j2Var = this.friendCardFragment;
            if (j2Var == null) {
                this.friendCardFragment = new com.join.mgps.fragment.k2();
                Bundle bundle2 = new Bundle();
                bundle2.putString("ruid", this.ruid);
                this.friendCardFragment.setArguments(bundle2);
                fragmentTransactionBeginTransaction2.add(getFrameLayoutId(), this.friendCardFragment);
            } else {
                j2Var.r0(this.ruid);
                fragmentTransactionBeginTransaction2.show(this.friendCardFragment);
            }
        }
        try {
            fragmentTransactionBeginTransaction2.commit();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            if (requestCode == 10000) {
                com.wufan.friend.chat.c.u().o(this.inviteBean);
                this.inviteBean = null;
            } else if (requestCode == 10001) {
                com.wufan.friend.chat.c.u().p(this.inviteBean);
                this.inviteBean = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.mgps.adapter.v0.e
    public void onAddFriend() {
        if (!IntentUtil.getInstance().isLogined(this) || IntentUtil.getInstance().isTourist(this)) {
            ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this).flags(C.ENCODING_PCM_MU_LAW)).start();
        } else {
            go(1);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onArenaResponse(ArenaResponse response) {
        if (response != null && response.errorType == 10) {
            showInputRoomPwdDialog(response.request);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.fragmentStack.size() <= 1 || !this.showFriendUI) {
            super.onBackPressed();
        } else {
            pop();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!org.greenrobot.eventbus.c.f().o(this)) {
            org.greenrobot.eventbus.c.f().v(this);
        }
        registerReceiver();
        this.fragmentManager = getSupportFragmentManager();
        if (this instanceof FriendInviteActivity) {
            return;
        }
        boolean zIsShowFriendUI = isShowFriendUI();
        this.showFriendUI = zIsShowFriendUI;
        if (zIsShowFriendUI) {
            go(0);
        } else {
            showCloudUI();
        }
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(this);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (org.greenrobot.eventbus.c.f().o(this)) {
            org.greenrobot.eventbus.c.f().A(this);
        }
        if (this.showFriendUI) {
            unregisterReceiver();
            this.isActive = false;
        }
    }

    @Override // com.join.mgps.adapter.v0.e
    public void onFriendClick(String ruid) {
        if (!TextUtils.isEmpty(this.ruid) && this.ruid.equals(ruid) && this.fragmentStack.getFirst().intValue() == 3) {
            return;
        }
        this.ruid = ruid;
        go(3);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFriendEvent(com.wufan.friend.chat.protocol.Response response) {
        List<LocalBattleGameInfo> localBattleGameInfoList;
        if (response == null || response.getServiceValue() != 4 || response.getPathValue() != 13 || response.getData() == null || response.getData().getLocalBattleGameData() == null || response.getData().getLocalBattleGameData().getLocalBattleGameInfoList() == null || !this.isActive || (localBattleGameInfoList = response.getData().getLocalBattleGameData().getLocalBattleGameInfoList()) == null || localBattleGameInfoList.size() == 0) {
            return;
        }
        showGameSelector1(localBattleGameInfoList);
    }

    void onGameSelected(String gameId) {
        try {
            this.inviteBean.setGameId(gameId);
            this.inviteBean.setElite(false);
            if (isPreDownloadPrepared(gameId)) {
                DownloadTask downloadTaskG = q5.f.M().G(gameId);
                PlugInstallDialog_.intent(this).c(t6.o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
            } else if (!checkGameIsInstall(gameId)) {
                startDownloadActivity(gameId, 10000);
            } else {
                if (needUpdate(gameId)) {
                    return;
                }
                com.wufan.friend.chat.c.u().o(this.inviteBean);
                this.inviteBean = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.adapter.v0.e
    public void onInvite(FriendBean bean) {
        if (IntentUtil.getInstance().goLogin(this) || bean == null) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            toast(getString(R.string.net_connect_failed));
            return;
        }
        this.inviteBean = bean;
        if (!bean.isRecommend()) {
            showGameSelector();
            return;
        }
        try {
            com.wufan.friend.chat.c.u().v(this.inviteBean.getUid(), Long.parseLong(this.inviteBean.getGameId()));
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.adapter.v0.e
    public void onJoin(FriendBean bean) {
        if (IntentUtil.getInstance().goLogin(this) || bean == null) {
            return;
        }
        this.inviteBean = bean;
        String gameId = bean.getGameId();
        if (isPreDownloadPrepared(gameId)) {
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            PlugInstallDialog_.intent(this).c(t6.o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
        } else if (!checkGameIsInstall(gameId)) {
            startDownloadActivity(gameId, 10001);
        } else {
            if (needUpdate(gameId)) {
                return;
            }
            com.wufan.friend.chat.c.u().p(bean);
            this.inviteBean = null;
        }
    }

    @Override // com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.fragmentStack.clear();
        this.friendFragment = null;
        this.friendAddFragment = null;
        this.friendMessageFragment = null;
        this.friendCardFragment = null;
        this.cloudListFragment = null;
        this.fragmentManager = getSupportFragmentManager();
        if (this instanceof FriendInviteActivity) {
            return;
        }
        boolean zIsShowFriendUI = isShowFriendUI();
        this.showFriendUI = zIsShowFriendUI;
        if (zIsShowFriendUI) {
            go(0);
        } else {
            showCloudUI();
        }
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.isActive = false;
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.showFriendUI) {
            this.isActive = true;
            com.join.mgps.fragment.v2 v2Var = this.friendFragment;
            if (v2Var != null) {
                v2Var.P0();
            }
            this.handler.postDelayed(new Runnable() { // from class: com.join.mgps.activity.h1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57257b.lambda$onResume$1();
                }
            }, 500L);
        }
    }

    @Override // android.view.View.OnSystemUiVisibilityChangeListener
    public void onSystemUiVisibilityChange(int visibility) {
        if (visibility == 0) {
            hideNavigationBar();
        }
    }

    @Override // com.BaseActivity, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
    }

    public void pop() {
        if (this.fragmentStack.size() < 2) {
            return;
        }
        this.fragmentStack.pop();
        navigateTo(this.fragmentStack.getFirst().intValue());
    }

    void registerReceiver() {
        this.receiver = new BroadcastReceiver() { // from class: com.join.mgps.activity.FriendActivity.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                FriendActivity.this.autoSendAdd();
            }
        };
        registerReceiver(this.receiver, new IntentFilter("com.join.android.app.mgsim.wufun.broadcast.action_login_success"));
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
    }

    void setSystemUiVisibility() {
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    void showAddFriend(final int ruid) {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (accountData == null || accountData.getUid() == ruid || accountData.getUid() == 0) {
            return;
        }
        if (this.mDialog == null) {
            Dialog dialog = new Dialog(this, R.style.newtrans_floating_dialog);
            this.mDialog = dialog;
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                this.mDialog.getWindow().setAttributes(attributes);
            }
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_friend_add, (ViewGroup) null);
            this.close = viewInflate.findViewById(R.id.close);
            this.button = viewInflate.findViewById(R.id.button);
            this.name = (TextView) viewInflate.findViewById(R.id.name);
            this.accountId = (TextView) viewInflate.findViewById(R.id.accountId);
            this.avatar = (SimpleDraweeView) viewInflate.findViewById(R.id.avatar);
            this.mDialog.setContentView(viewInflate);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp526);
            int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp509);
            Window window = this.mDialog.getWindow();
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (dimensionPixelOffset == 0) {
                dimensionPixelOffset = -1;
            }
            attributes2.width = dimensionPixelOffset;
            if (dimensionPixelOffset2 == 0) {
                dimensionPixelOffset2 = -1;
            }
            attributes2.height = dimensionPixelOffset2;
            window.setGravity(17);
            this.close.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57478b.lambda$showAddFriend$3(view);
                }
            });
        }
        this.button.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.n1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57772b.lambda$showAddFriend$4(ruid, view);
            }
        });
        getFriendInfo(ruid);
        if (!this.mDialog.isShowing()) {
            this.mDialog.show();
        }
        com.papa.sim.statistic.t.l(this).R1(Event.showInviteCode, new Ext());
    }

    void showArenaNoRecordDialog() {
        if (this.arenaNoRecordDialog == null) {
            this.arenaNoRecordDialog = new com.join.mgps.dialog.m(this);
        }
        this.arenaNoRecordDialog.g();
    }

    void showCreateRoomDialog() {
        com.join.mgps.dialog.i iVar = this.mArenaCreateDialog;
        if (iVar != null) {
            iVar.c();
        }
        List<DownloadTask> listS = q5.f.M().s();
        com.join.mgps.dialog.i iVar2 = new com.join.mgps.dialog.i(this, new com.join.mgps.dialog.i.c() { // from class: com.join.mgps.activity.o1
            @Override // com.join.mgps.dialog.i.c
            public final void a(DownloadTask downloadTask) {
                this.f57803a.lambda$showCreateRoomDialog$0(this, downloadTask);
            }
        });
        this.mArenaCreateDialog = iVar2;
        iVar2.h(listS, false);
        if (listS == null || listS.size() == 0) {
            showArenaNoRecordDialog();
        } else {
            this.mArenaCreateDialog.j();
        }
        hideNavigationBar();
    }

    public void showGameSelector() {
        if (this.gameSelector == null) {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.newarena_gameroom_selecter_activity1, viewGroup, false);
            this.gameSelector = viewInflate;
            this.recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recyclerView);
            this.recyclerViewGamelist = (RecyclerView) this.gameSelector.findViewById(R.id.recyclerViewGamelist);
            View viewFindViewById = this.gameSelector.findViewById(R.id.close);
            this.close = viewFindViewById;
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.j1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57345b.lambda$showGameSelector$5(view);
                }
            });
            this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
            i iVar = new i(this);
            this.roomSelecteradapter = iVar;
            this.recyclerView.setAdapter(iVar);
            this.recyclerViewGamelist.setLayoutManager(new GridLayoutManager(this, 3));
            f fVar = new f(this, false);
            this.gameAdapter = fVar;
            this.gameInfoBeanList = fVar.b();
            this.recyclerViewGamelist.setAdapter(this.gameAdapter);
            this.roomSelecteradapter.f(new g() { // from class: com.join.mgps.activity.k1
                @Override // com.join.mgps.activity.FriendActivity.g
                public final void onItemClick(int i10) {
                    this.f57379a.lambda$showGameSelector$6(i10);
                }
            });
            this.gameAdapter.g(new g() { // from class: com.join.mgps.activity.l1
                @Override // com.join.mgps.activity.FriendActivity.g
                public final void onItemClick(int i10) {
                    this.f57392a.lambda$showGameSelector$7(i10);
                }
            });
            viewGroup.addView(this.gameSelector);
        }
        FriendBean friendBean = this.inviteBean;
        if (friendBean == null || friendBean.getSource() != 1) {
            this.gameAdapter.f(false);
        } else {
            this.gameAdapter.f(true);
        }
        this.gameAdapter.h(false);
        this.gameSelector.setVisibility(0);
        getGameTypeList();
    }

    public void showGameSelector1(List<LocalBattleGameInfo> gameInfos) {
        if (this.gameSelector1 == null) {
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.newarena_gameroom_selecter_activity2, viewGroup, false);
            this.gameSelector1 = viewInflate;
            this.recyclerViewGamelist1 = (RecyclerView) viewInflate.findViewById(R.id.recyclerViewGamelist);
            this.gameSelector1.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.e1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f57127b.lambda$showGameSelector1$8(view);
                }
            });
            this.recyclerViewGamelist1.setLayoutManager(new GridLayoutManager(this, 3));
            f fVar = new f(this, false);
            this.gameAdapter1 = fVar;
            this.gameInfoBeanList1 = fVar.b();
            this.recyclerViewGamelist1.setAdapter(this.gameAdapter1);
            this.gameAdapter1.g(new g() { // from class: com.join.mgps.activity.g1
                @Override // com.join.mgps.activity.FriendActivity.g
                public final void onItemClick(int i10) {
                    this.f57220a.lambda$showGameSelector1$9(i10);
                }
            });
            viewGroup.addView(this.gameSelector1);
        }
        this.gameAdapter1.h(true);
        this.gameSelector1.setVisibility(0);
        this.gameInfoBeanList1.clear();
        for (LocalBattleGameInfo localBattleGameInfo : gameInfos) {
            GameInfoBean gameInfoBean = new GameInfoBean();
            gameInfoBean.setPic_cover(localBattleGameInfo.getGameSrc());
            gameInfoBean.setTitle(localBattleGameInfo.getGameName());
            gameInfoBean.setGame_id(localBattleGameInfo.getGameId() + "");
            gameInfoBean.setGame_name(localBattleGameInfo.getGameName() + "");
            this.gameInfoBeanList1.add(gameInfoBean);
        }
        this.gameAdapter1.notifyDataSetChanged();
    }

    void showInputRoomPwdDialog(final ArenaRequest request) {
        if (this.isActive) {
            this.handler.post(new Runnable() { // from class: com.join.mgps.activity.f1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f57148b.lambda$showInputRoomPwdDialog$10(request);
                }
            });
        }
    }

    public void startDownloadActivity(String gameId, int requestCode) {
        Intent intent = new Intent(this, (Class<?>) NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", gameId);
        intent.putExtra(NewArenaDownloadActivity_.P, this.hasPlug);
        intent.putExtra(NewArenaDownloadActivity_.Q, this.hasRom);
        startActivityForResult(intent, requestCode);
    }

    void toast(final String msg) {
        this.handler.post(new Runnable() { // from class: com.join.mgps.activity.i1
            @Override // java.lang.Runnable
            public final void run() {
                this.f57330b.lambda$toast$2(msg);
            }
        });
    }

    void unregisterReceiver() {
        BroadcastReceiver broadcastReceiver = this.receiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
    }
}
