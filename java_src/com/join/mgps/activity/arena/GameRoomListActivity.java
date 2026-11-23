package com.join.mgps.activity.arena;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import app.mgsim.arena.ArenaConstants;
import app.mgsim.arena.ArenaLobbyServer;
import app.mgsim.arena.ArenaRequest;
import app.mgsim.arena.ArenaRequestFactory;
import app.mgsim.arena.ArenaResponse;
import app.mgsim.arena.SocketError;
import app.mgsim.arena.SocketListener;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.i0;
import com.join.mgps.Util.n3;
import com.join.mgps.Util.t1;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.FriendActivity;
import com.join.mgps.activity.NewArenaMainActivty_;
import com.join.mgps.adapter.f2;
import com.join.mgps.customview.AlwaysMarqueeTextView;
import com.join.mgps.customview.h0;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dialog.f1;
import com.join.mgps.dialog.p0;
import com.join.mgps.dto.ArenaAdData;
import com.join.mgps.dto.ArenaGameRoomListConfig;
import com.join.mgps.dto.ArenaPopupInfoBean;
import com.join.mgps.dto.ArenaPopupInfoShareBean;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.CollectionCommentRequest;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.fragment.v2;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.socket.fight.arena.ArenaService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.battle.protocol.AreaOnlinePeopleCount;
import com.papa91.battle.protocol.BattleArea;
import com.papa91.battle.protocol.GameRoom;
import com.papa91.battle.protocol.Notification;
import com.papa91.battle.protocol.RoomCategory;
import com.papa91.battle.protocol.RoomCounter;
import com.papa91.battle.protocol.RoomState;
import com.papa91.battle.protocol.SimpleRoom;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_game_room_list)
public class GameRoomListActivity extends FriendActivity {
    private static boolean DEBUG = false;
    private static final int HANDLER_COUNT_DOWN = 1;
    private static final int INTERVAL_BTN_CLICK = 1000;
    private static final int REFRESH_TYPE_CHANGED_AREA = 1;
    private static final int REFRESH_TYPE_ERROR = 3;
    private static final int REFRESH_TYPE_SERVICE_UNBIND = 2;
    private static final String TAG = "GameRoomListActivity";

    @Bean
    com.join.mgps.Util.b accountUtil;
    x adapter;
    private Animation animation;

    @ViewById
    ImageView btnCreateRoom;

    @ViewById
    ImageView btnFastGame;
    Context context;
    Dialog dialog;
    private String fastJoinErrorInfo;

    @Extra
    boolean filterGame;

    @ViewById
    LinearLayout footer;
    private FragmentManager fragmentManager;
    f2 gameAdapter;
    List<GameInfoBean> gameInfoBeanList;

    @ViewById
    ImageView imgIconList;
    FriendBean inviteFriend;

    @Extra
    boolean isFormHall;

    @ViewById
    ImageView iv_battle_area_arrow;

    @ViewById
    LinearLayout iv_list;
    private String joinSpectatorReason;

    @ViewById
    LinearLayout ll_battle_area;

    @ViewById
    LinearLayout ll_broadcast;

    @ViewById
    LinearLayout ll_elite_room;

    @ViewById
    LinearLayout ll_error;

    @ViewById
    LinearLayout ll_loading;

    @ViewById
    LinearLayout ll_race_room;

    @ViewById
    LinearLayout ll_standard_room;

    @ViewById
    LinearLayout ll_tab;
    private com.join.mgps.socket.fight.arena.a mArenaDialogBuilder;
    private BattleArea mBattleArea;
    private BattleChallengeConfig mBattleChallengeConfig;
    private int mDySinceDirectionChange;
    private GameRoom mFastJoinGameRoom;
    private Dialog mFastJoinRoomDialog;
    private ArenaGameRoomListConfig mGameConfig;

    @Extra
    GameInfoBean mGameInfo;
    com.join.mgps.rpc.l mNetClient;
    private h0 mPopBattleArea;
    com.join.mgps.rpc.e mRpcClient;
    GameConfig mSelGameConfig;
    private BattleArea mServerRecBattleArea;
    private com.join.mgps.socket.fight.arena.b mServiceDelegate;
    private f1 mShowLoadingDialog;

    @ViewById
    ViewPager mViewPager;

    @ViewById
    View myDragImageView;

    @Pref
    PrefDef_ pref;

    @ViewById
    ProgressBar progressLoding;
    n3.a quickReturnFooter;
    int recomendNumber;

    @ViewById
    RecyclerView recyclerView;

    @ViewById
    RecyclerView recyclerViewGamelist;

    @ViewById
    View redPoint;

    @ViewById
    RelativeLayout rl_top;
    z roomSelecteradapter;

    @ViewById
    View selecterLayout;

    @ViewById
    TextView tv_area;

    @ViewById
    AlwaysMarqueeTextView tv_broadcast;
    private TextView tv_countDown;

    @ViewById
    TextView tv_elite_room_count;

    @ViewById
    TextView tv_elite_room_name;

    @ViewById
    TextView tv_loading_info;

    @ViewById
    TextView tv_race_room_info;

    @ViewById
    TextView tv_race_room_name;

    @ViewById
    TextView tv_standard__room_count;

    @ViewById
    TextView tv_standard_room_name;

    @ViewById
    TextView tv_title;
    private static final int COLOR_YELLOW = Color.parseColor("#ffffff");
    private static final int COLOR_WHITE = Color.parseColor("#ffffff");
    private com.join.mgps.fragment.roomlist.d mStandardRoomFragment = null;
    private com.join.mgps.fragment.roomlist.d mEliteRoomFragment = null;
    private com.join.mgps.fragment.roomlist.b mRaceRoomFragment = null;
    private final com.join.mgps.socket.fight.arena.b.InterfaceC0749b mCallback = new k();
    private volatile boolean isNormalRoomPushFinished = false;
    private volatile boolean isEliteRoomPushFinished = false;
    private final SocketListener.NotifyObserver mObserver = new o();
    private volatile boolean isNeedNormalRoomRefreshView = false;
    private volatile boolean isNeedEliteRoomRefreshView = false;
    private final Object mLocker = new Object();
    int roomSizeOfCurrAreaGame = 0;
    HashMap<String, Integer> roomCountMap = new HashMap<>();
    LinkedHashMap<String, SimpleRoom> roomBak = new LinkedHashMap<>();
    private boolean isSubscribeNormalRoomList = false;
    private boolean isSubscribeEliteRoomList = false;
    boolean isOutSideClose = false;
    private final h0.e mArenaSelectedCallback = new v();
    boolean isOnlyStandardRoom = true;
    boolean hasdistory = false;
    private int mCount = 3;
    private Handler mCountDownerHandler = new d();
    private final com.join.mgps.fragment.roomlist.c.n mInitialCallback = new e();
    long mLastBtnFastGameTime = 0;
    private CountDownTimer mCreateGameCountDowner = new f(10000, 1000);
    List<GameInfoBean> gameInfoListData = new ArrayList();
    private int selectedPosition = -1024;
    Handler handler = new Handler(new m());

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GameRoomListActivity.this.finish();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.showPopBattleArea(gameRoomListActivity.rl_top);
        }
    }

    class c implements ViewPager.OnPageChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArenaGameRoomListConfig f56554b;

        c(final ArenaGameRoomListConfig val$config) {
            this.f56554b = val$config;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            GameRoomListActivity.this.printLog("addOnPageChangeListener onPageSelected position:" + position);
            if (position == 0) {
                GameRoomListActivity.this.ll_standard_room.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                GameRoomListActivity.this.ll_elite_room.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.ll_race_room.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.showFasterJoinBtn(true);
                GameRoomListActivity.this.btnFastGame.setVisibility(0);
                GameRoomListActivity.this.iv_list.setVisibility(0);
                GameRoomListActivity.this.tv_standard_room_name.setTextColor(GameRoomListActivity.COLOR_WHITE);
                GameRoomListActivity.this.tv_standard__room_count.setTextColor(GameRoomListActivity.COLOR_WHITE);
                GameRoomListActivity.this.tv_elite_room_count.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_elite_room_name.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_race_room_name.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_race_room_info.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                if (!GameRoomListActivity.this.isSubscribeNormalRoomList) {
                    if (com.join.android.app.common.utils.m.j(GameRoomListActivity.this)) {
                        if (GameRoomListActivity.this.mServiceDelegate.e()) {
                            GameRoomListActivity.this.handleServiceConnected();
                        } else {
                            GameRoomListActivity.this.mServiceDelegate.bindService();
                        }
                        GameRoomListActivity.this.showLoadingView();
                    } else {
                        GameRoomListActivity.this.showToast("当前网络不可用，请检查网络!");
                        GameRoomListActivity.this.showFailedView();
                    }
                }
            } else if (position == 1) {
                ((com.join.mgps.fragment.roomlist.c) GameRoomListActivity.this.adapter.getItem(0)).R0();
                GameRoomListActivity.this.showFasterJoinBtn(true);
                GameRoomListActivity.this.btnFastGame.setVisibility(8);
                GameRoomListActivity.this.ll_standard_room.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.tv_standard_room_name.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_standard__room_count.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                if (this.f56554b.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                    GameRoomListActivity.this.iv_list.setVisibility(0);
                    GameRoomListActivity.this.ll_race_room.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                    GameRoomListActivity.this.ll_elite_room.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                    GameRoomListActivity.this.tv_elite_room_count.setTextColor(GameRoomListActivity.COLOR_WHITE);
                    GameRoomListActivity.this.tv_elite_room_name.setTextColor(GameRoomListActivity.COLOR_WHITE);
                    GameRoomListActivity.this.tv_race_room_info.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                    GameRoomListActivity.this.tv_race_room_name.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                    if (!GameRoomListActivity.this.isSubscribeEliteRoomList) {
                        if (com.join.android.app.common.utils.m.j(GameRoomListActivity.this)) {
                            if (GameRoomListActivity.this.mServiceDelegate.e()) {
                                GameRoomListActivity.this.handleServiceConnected();
                            } else {
                                GameRoomListActivity.this.mServiceDelegate.bindService();
                            }
                            GameRoomListActivity.this.showLoadingView();
                        } else {
                            GameRoomListActivity.this.showToast("当前网络不可用，请检查网络!");
                            GameRoomListActivity.this.showFailedView();
                        }
                    }
                } else {
                    GameRoomListActivity.this.iv_list.setVisibility(8);
                    GameRoomListActivity.this.ll_race_room.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                    GameRoomListActivity.this.ll_elite_room.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                    GameRoomListActivity.this.tv_elite_room_count.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                    GameRoomListActivity.this.tv_elite_room_name.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                    GameRoomListActivity.this.tv_race_room_info.setTextColor(GameRoomListActivity.COLOR_WHITE);
                    GameRoomListActivity.this.tv_race_room_name.setTextColor(GameRoomListActivity.COLOR_WHITE);
                }
            } else if (position == 2) {
                GameRoomListActivity.this.ll_standard_room.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.ll_elite_room.setBackgroundResource(R.drawable.bg_gamelist_tab_normal);
                GameRoomListActivity.this.ll_race_room.setBackgroundResource(R.drawable.bg_gamelist_tab_pressed);
                GameRoomListActivity.this.showFasterJoinBtn(false);
                GameRoomListActivity.this.iv_list.setVisibility(0);
                GameRoomListActivity.this.tv_standard_room_name.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_standard__room_count.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_elite_room_count.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_elite_room_name.setTextColor(GameRoomListActivity.COLOR_YELLOW);
                GameRoomListActivity.this.tv_race_room_info.setTextColor(GameRoomListActivity.COLOR_WHITE);
                GameRoomListActivity.this.tv_race_room_name.setTextColor(GameRoomListActivity.COLOR_WHITE);
            }
            Fragment item = GameRoomListActivity.this.adapter.getItem(position);
            if (item != null) {
                item.setUserVisibleHint(true);
            }
        }
    }

    class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            GameRoomListActivity.access$2310(GameRoomListActivity.this);
            if (GameRoomListActivity.this.mCount >= 1) {
                GameRoomListActivity.this.tv_countDown.setText("" + GameRoomListActivity.this.mCount);
                GameRoomListActivity.this.mCountDownerHandler.sendEmptyMessageDelayed(1, 1000L);
                GameRoomListActivity.this.startCountDownAnimation();
                return;
            }
            GameRoomListActivity.this.dismissFastJoinRoomDialog();
            if (GameRoomListActivity.this.mStandardRoomFragment == null) {
                return;
            }
            if (GameRoomListActivity.this.mFastJoinGameRoom == null) {
                if (TextUtils.isEmpty(GameRoomListActivity.this.fastJoinErrorInfo)) {
                    GameRoomListActivity.this.showToast("快速加入房间失败，请重试！");
                    return;
                } else {
                    GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                    gameRoomListActivity.showToast(gameRoomListActivity.fastJoinErrorInfo);
                    return;
                }
            }
            if (GameRoomListActivity.this.mStandardRoomFragment.r0("" + GameRoomListActivity.this.mFastJoinGameRoom.getGameId())) {
                DownloadTask downloadTaskG = q5.f.M().G("" + GameRoomListActivity.this.mFastJoinGameRoom.getGameId());
                PlugInstallDialog_.intent(GameRoomListActivity.this).c(t6.o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
                return;
            }
            if (!GameRoomListActivity.this.mStandardRoomFragment.e0("" + GameRoomListActivity.this.mFastJoinGameRoom.getGameId())) {
                GameRoomListActivity.this.mStandardRoomFragment.M0("" + GameRoomListActivity.this.mFastJoinGameRoom.getGameId(), 1015);
                return;
            }
            com.papa.sim.statistic.t.l(GameRoomListActivity.this.context).R1(Event.JoinLobbyroom, new Ext().setUid(AccountUtil_.getInstance_(GameRoomListActivity.this.context).getAccountData().getUid()).setGameId(GameRoomListActivity.this.mFastJoinGameRoom.getGameId() + "").setPosition("1"));
            GameRoomActivity_.intent(GameRoomListActivity.this).g(true).h(GameRoomListActivity.this.joinSpectatorReason).d(GameRoomListActivity.this.mFastJoinGameRoom.getGameName()).i(GameRoomListActivity.this.mFastJoinGameRoom).start();
        }
    }

    class e implements com.join.mgps.fragment.roomlist.c.n {
        e() {
        }

        @Override // com.join.mgps.fragment.roomlist.c.n
        public void a(int newSize, boolean isElite) {
            GameRoomListActivity.this.updateRoomCountsChanged(newSize, isElite);
            GameRoomListActivity.this.updateRoomCount();
        }

        @Override // com.join.mgps.fragment.roomlist.c.n
        public void b(boolean isElite) {
            GameRoomListActivity.this.hideLoadingView();
        }
    }

    class f extends CountDownTimer {
        f(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            GameRoomListActivity.this.printLog("mCreateGameCountDowner onFinish---");
            if (GameRoomListActivity.this.mShowLoadingDialog == null || !GameRoomListActivity.this.mShowLoadingDialog.isShowing()) {
                return;
            }
            GameRoomListActivity.this.mShowLoadingDialog.dismiss();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long millisUntilFinished) {
            GameRoomListActivity.this.printLog("mCreateGameCountDowner millisUntilFinished:" + millisUntilFinished);
        }
    }

    class g implements w {
        g() {
        }

        @Override // com.join.mgps.activity.arena.GameRoomListActivity.w
        public void onItemClick(int position) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.mGameInfo = gameRoomListActivity.gameInfoListData.get(position);
            GameRoomListActivity.this.getGameConfigv2();
        }
    }

    class h implements f2.e {
        h() {
        }

        @Override // com.join.mgps.adapter.f2.e
        public void a(int positon) {
            GameInfoBean gameInfoBean = GameRoomListActivity.this.gameInfoBeanList.get(positon);
            if (gameInfoBean.getGame_id().equals(GameRoomListActivity.this.mGameInfo.getGame_id())) {
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.mGameInfo = gameInfoBean;
                try {
                    if (gameRoomListActivity.mStandardRoomFragment != null) {
                        GameRoomListActivity.this.mStandardRoomFragment.t0(GameRoomListActivity.this.mGameInfo.getGame_id());
                    }
                    if (GameRoomListActivity.this.mEliteRoomFragment != null) {
                        GameRoomListActivity.this.mEliteRoomFragment.t0(GameRoomListActivity.this.mGameInfo.getGame_id());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } else {
                GameRoomListActivity gameRoomListActivity2 = GameRoomListActivity.this;
                gameRoomListActivity2.mGameInfo = gameInfoBean;
                try {
                    if (gameRoomListActivity2.mStandardRoomFragment != null) {
                        GameRoomListActivity.this.mStandardRoomFragment.t0(GameRoomListActivity.this.mGameInfo.getGame_id());
                        GameRoomListActivity.this.mStandardRoomFragment.v0(GameRoomListActivity.this.mGameInfo.getCollection_id());
                    }
                    if (GameRoomListActivity.this.mEliteRoomFragment != null) {
                        GameRoomListActivity.this.mEliteRoomFragment.t0(GameRoomListActivity.this.mGameInfo.getGame_id());
                        GameRoomListActivity.this.mEliteRoomFragment.v0(GameRoomListActivity.this.mGameInfo.getCollection_id());
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                GameRoomListActivity.this.getGameConfig();
            }
            GameRoomListActivity.this.hideSeleter();
            GameRoomListActivity.this.onGameSeriesSelected();
        }
    }

    class i implements Callback<ResultMainBean<ArenaGameRoomListConfig>> {
        i() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaGameRoomListConfig>> call, Response<ResultMainBean<ArenaGameRoomListConfig>> response) {
            if (GameRoomListActivity.this.hasdistory) {
                return;
            }
            ResultMainBean<ArenaGameRoomListConfig> resultMainBeanBody = response.body();
            if (resultMainBeanBody == null || resultMainBeanBody.getMessages().getData() == null) {
                GameRoomListActivity.this.showToast("获取游戏配置信息失败！");
                return;
            }
            if (resultMainBeanBody.getMessages().getData().getCurrent_collection_cfg() == null) {
                GameRoomListActivity.this.finishActivityForGetConfigFailure();
                return;
            }
            String collection_id = resultMainBeanBody.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
            if (TextUtils.isEmpty(collection_id) || Integer.parseInt(collection_id) <= 0) {
                GameRoomListActivity.this.finishActivityForGetConfigFailure();
                return;
            }
            if (resultMainBeanBody.getMessages().getData().getGame_list() == null || resultMainBeanBody.getMessages().getData().getGame_list().size() <= 0) {
                GameRoomListActivity.this.finishActivityForGetConfigFailure();
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
            GameRoomListActivity.this.gameInfoBeanList.clear();
            GameRoomListActivity.this.gameInfoBeanList.addAll(arrayList);
            f2 f2Var = GameRoomListActivity.this.gameAdapter;
            if (f2Var != null) {
                f2Var.notifyDataSetChanged();
            }
        }
    }

    class j implements Callback<ResultResMainBean<GameListBannerBean>> {
        j() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultResMainBean<GameListBannerBean>> call, Throwable t10) {
            GameRoomListActivity.this.hideSeleter();
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultResMainBean<GameListBannerBean>> call, Response<ResultResMainBean<GameListBannerBean>> response) {
            ResultResMainBean<GameListBannerBean> resultResMainBeanBody = response.body();
            if (resultResMainBeanBody != null) {
                try {
                    List<GameInfoBean> game_list = resultResMainBeanBody.getData().getGame_list();
                    if (game_list == null || game_list.size() <= 0) {
                        GameRoomListActivity.this.hideSeleter();
                        return;
                    }
                    GameRoomListActivity.this.gameInfoListData.addAll(game_list);
                    x xVar = GameRoomListActivity.this.adapter;
                    if (xVar != null) {
                        xVar.notifyDataSetChanged();
                    }
                    GameRoomListActivity.this.onGameSeriesSelected();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    GameRoomListActivity.this.hideSeleter();
                }
            }
        }
    }

    class k extends com.join.mgps.socket.fight.arena.b.c {
        k() {
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void b() {
            super.b();
            GameRoomListActivity.this.refreshGameRoomList(2);
        }

        @Override // com.join.mgps.socket.fight.arena.b.c, com.join.mgps.socket.fight.arena.b.InterfaceC0749b
        public void c() {
            super.c();
            GameRoomListActivity.this.mServiceDelegate.d().z(GameRoomListActivity.this.mObserver);
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            gameRoomListActivity.mServerRecBattleArea = gameRoomListActivity.mServiceDelegate.d().n();
            GameRoomListActivity gameRoomListActivity2 = GameRoomListActivity.this;
            gameRoomListActivity2.showBattleArea(gameRoomListActivity2.mServerRecBattleArea);
            GameRoomListActivity.this.handleServiceConnected();
        }
    }

    class l implements Callback<ResultMainBean<ArenaAdData>> {
        l() {
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ResultMainBean<ArenaAdData>> call, Throwable t10) {
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ResultMainBean<ArenaAdData>> call, Response<ResultMainBean<ArenaAdData>> response) {
            List<ArenaPopupInfoShareBean> list;
            View view;
            if (response != null) {
                try {
                    if (response.body() != null) {
                        ResultMainBean<ArenaAdData> resultMainBeanBody = response.body();
                        if (resultMainBeanBody.getCode() == 600) {
                            ArenaAdData data = resultMainBeanBody.getMessages().getData();
                            if (data.isC_has_not_read() && (view = GameRoomListActivity.this.redPoint) != null) {
                                view.setVisibility(0);
                            }
                            String strD = GameRoomListActivity.this.pref.arenaDialogAdData().d();
                            if (t2.i(strD)) {
                                list = (List) JsonMapper.getInstance().fromJson(strD, JsonMapper.getInstance().createCollectionType(List.class, ArenaPopupInfoShareBean.class));
                                ArrayList arrayList = new ArrayList();
                                for (ArenaPopupInfoShareBean arenaPopupInfoShareBean : list) {
                                    if (!e0.z(arenaPopupInfoShareBean.getLastShowTime())) {
                                        arrayList.add(arenaPopupInfoShareBean);
                                    }
                                }
                                Iterator it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    list.remove((ArenaPopupInfoShareBean) it2.next());
                                }
                            } else {
                                list = null;
                            }
                            Iterator<ArenaPopupInfoBean> it3 = data.getPopup_info().iterator();
                            while (it3.hasNext() && !GameRoomListActivity.this.checkShowAD(it3.next(), list)) {
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class m implements Handler.Callback {
        m() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message msg) {
            GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
            Dialog dialog = gameRoomListActivity.dialog;
            if (dialog == null || gameRoomListActivity.hasdistory) {
                return false;
            }
            dialog.dismiss();
            return false;
        }
    }

    class n implements p0.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ArenaPopupInfoBean f56566a;

        n(final ArenaPopupInfoBean val$arenaPopupInfoBean) {
            this.f56566a = val$arenaPopupInfoBean;
        }

        @Override // com.join.mgps.dialog.p0.c
        public void a(p0 dialog) {
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.p0.c
        public void b(p0 dialog) {
            dialog.dismiss();
            IntentUtil.getInstance().intentActivity(GameRoomListActivity.this.context, this.f56566a.getJump_info().getIntentDataBean());
            com.papa.sim.statistic.t.l(GameRoomListActivity.this.context).q2(AccountUtil_.getInstance_(GameRoomListActivity.this.context).getUid(), "vsButton");
        }
    }

    class o implements SocketListener.NotifyObserver {
        o() {
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onError(SocketError socketError) {
            if (GameRoomListActivity.this.isActivityFinished()) {
                return;
            }
            GameRoomListActivity.this.refreshGameRoomList(3);
            int i10 = socketError.errorType;
            if (i10 == 6 || i10 == 2) {
                GameRoomListActivity.this.showToast(socketError.errorInfo);
                GameRoomListActivity.this.finishActivity();
            } else if (i10 == 5) {
                GameRoomListActivity.this.retryLogin();
            } else if (i10 == 3 || i10 == 4) {
                GameRoomListActivity.this.showToast(socketError.errorInfo);
                GameRoomListActivity.this.showLoginDialog();
            }
        }

        @Override // app.mgsim.arena.SocketListener.NotifyObserver
        public void onServerResponse(ArenaResponse response) {
            int i10;
            if (GameRoomListActivity.this.isActivityFinished()) {
                return;
            }
            if (response.responseCode == 0) {
                GameRoomListActivity.this.handleFailure(response);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_LOGIN)) {
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.mServerRecBattleArea = gameRoomListActivity.mServiceDelegate.d().n();
                GameRoomListActivity gameRoomListActivity2 = GameRoomListActivity.this;
                gameRoomListActivity2.showBattleArea(gameRoomListActivity2.mServerRecBattleArea);
                GameRoomListActivity gameRoomListActivity3 = GameRoomListActivity.this;
                ArenaRequest arenaRequest = response.request;
                gameRoomListActivity3.delaySubscribeGameList(arenaRequest.isElite, arenaRequest.isRefreshing);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_UPDATE_AREA_ONLINE_PEOPLE_BROADCAST)) {
                GameRoomListActivity.this.updateOnlineCounts((AreaOnlinePeopleCount) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_BATTLE_AREA)) {
                GameRoomListActivity.this.mServiceDelegate.d().D(GameRoomListActivity.this.mBattleArea);
                GameRoomListActivity.this.refreshGameRoomList(1);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM)) {
                GameRoomListActivity.this.mServiceDelegate.d().E(null);
                GameRoomListActivity.this.joinSpectatorReason = response.joinSpectatorReason;
                GameRoomListActivity.this.mFastJoinGameRoom = (GameRoom) response.data;
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_GLOBAL_BROADCAST_ALL)) {
                GameRoomListActivity.this.handleMsgBroadcast((Notification) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_UPDATE)) {
                GameRoomListActivity.this.printLog(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_UPDATE);
                GameRoomListActivity.this.handleRoomListUpdate((List) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_DISSOLVE)) {
                GameRoomListActivity.this.printLog(ArenaConstants.ArenaCommand.PUSH_REFRESH_ROOM_LIST_DISSOLVE);
                GameRoomListActivity.this.handleRoomListDelete((List) response.data);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_ING)) {
                GameRoomListActivity.this.printLog(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_ING);
                GameRoomListActivity.this.handlePushRoomListData(response, false);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_FINISH)) {
                GameRoomListActivity.this.printLog(ArenaConstants.ArenaCommand.PUSH_FULL_PUSH_ROOM_LIST_FINISH);
                if (response.request.roomType == 1) {
                    GameRoomListActivity.this.isNormalRoomPushFinished = true;
                    GameRoomListActivity.this.updateRoomCount(response, false);
                } else {
                    GameRoomListActivity.this.updateRoomCount(response, true);
                    GameRoomListActivity.this.isEliteRoomPushFinished = true;
                }
                GameRoomListActivity.this.handlePushRoomListData(response, true);
                return;
            }
            if (response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM) || response.responseType.equals(ArenaConstants.ArenaCommand.CMD_JOIN_ROOM)) {
                GameRoomListActivity.this.hideLoadingDialog();
                GameRoom gameRoom = (GameRoom) response.data;
                GameRoomListActivity.this.mServiceDelegate.d().E(null);
                if (gameRoom.getRoomCategory() == RoomCategory.LIVE) {
                    i10 = 2;
                } else {
                    i10 = gameRoom.getRoomCategory() == RoomCategory.TOURNAMENT ? 1 : 0;
                }
                if (!response.responseType.equals(ArenaConstants.ArenaCommand.CMD_CREATE_GAME_ROOM)) {
                    UserInfo accountData = AccountUtil_.getInstance_(GameRoomListActivity.this).getAccountData();
                    if (t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
                        IntentUtil.getInstance().goChangeNickname(GameRoomListActivity.this);
                        return;
                    }
                    com.papa.sim.statistic.t.l(GameRoomListActivity.this.context).R1(Event.JoinLobbyroom, new Ext().setUid(AccountUtil_.getInstance_(GameRoomListActivity.this.context).getAccountData().getUid()).setGameId(gameRoom.getGameId() + "").setPosition("1"));
                    GameRoomActivity_.intent(GameRoomListActivity.this).l(i10).h(response.joinSpectatorReason).d(gameRoom.getGameName()).i(gameRoom).start();
                    return;
                }
                com.papa.sim.statistic.t.l(GameRoomListActivity.this.context).R1(Event.JoinLobbyroom, new Ext().setGameId(gameRoom.getGameId() + "").setUid(AccountUtil_.getInstance_(GameRoomListActivity.this.context).getAccountData().getUid()).setPosition("0"));
                GameRoomListActivity.this.cancelCreateGameCountDown();
                int i11 = -1;
                if (gameRoom.getElite()) {
                    if (GameRoomListActivity.this.mEliteRoomFragment != null) {
                        i11 = GameRoomListActivity.this.mEliteRoomFragment.l0() != 2 ? 1 : 0;
                    }
                    GameRoomActivity_.intent(GameRoomListActivity.this).l(i10).a(GameRoomListActivity.this.mBattleChallengeConfig).e(i11).d(gameRoom.getGameName()).f(true).i(gameRoom).start();
                } else {
                    if (GameRoomListActivity.this.mStandardRoomFragment != null) {
                        i11 = GameRoomListActivity.this.mStandardRoomFragment.l0() == 2 ? 0 : 1;
                    }
                    GameRoomActivity_.intent(GameRoomListActivity.this).l(i10).d(gameRoom.getGameName()).e(i11).i(gameRoom).start();
                }
            }
        }
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Notification f56569b;

        p(final Notification val$notification) {
            this.f56569b = val$notification;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            try {
                String jumpJSON = this.f56569b.getJumpJSON();
                GameRoomListActivity.this.printLog("handleMsgBroadcast jsonValue:" + jumpJSON);
                IntentUtil.getInstance().intentActivity(GameRoomListActivity.this, (IntentDateBean) JsonMapper.getInstance().fromJson(jumpJSON, IntentDateBean.class));
            } catch (Exception e10) {
                GameRoomListActivity.this.printLog("fromJson exception:" + e10.getMessage());
            }
        }
    }

    class q extends com.join.mgps.socket.fight.arena.a.b0 {
        q() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onDisable() {
            super.onDisable();
            GameRoomListActivity.this.finish();
        }

        @Override // com.join.mgps.socket.fight.arena.a.b0, com.join.mgps.socket.fight.arena.a.y
        public void onErrorHint(int operation, int errorType, Object value) {
            super.onErrorHint(operation, errorType, value);
            if (operation == 101 && errorType == 7) {
                GameRoomListActivity.this.showInputPwdForGameRoom((ArenaResponse) value);
            }
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomListActivity.this.mViewPager.getCurrentItem() == 1) {
                GameRoomListActivity.this.mViewPager.setCurrentItem(0);
            } else {
                GameRoomListActivity.this.mViewPager.setCurrentItem(1);
            }
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomListActivity.this.mViewPager.getCurrentItem() == 1) {
                GameRoomListActivity.this.mViewPager.setCurrentItem(0);
            } else {
                GameRoomListActivity.this.mViewPager.setCurrentItem(1);
            }
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (GameRoomListActivity.this.mGameConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                GameRoomListActivity.this.mViewPager.setCurrentItem(2);
            } else {
                GameRoomListActivity.this.mViewPager.setCurrentItem(1);
            }
        }
    }

    class u implements View.OnClickListener {
        u() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            GameRoomListActivity.this.showLoadingView();
            if (GameRoomListActivity.this.mGameConfig == null) {
                GameRoomListActivity.this.getGameConfig();
            } else if (GameRoomListActivity.this.mServiceDelegate.e()) {
                GameRoomListActivity.this.handleServiceConnected();
            } else {
                GameRoomListActivity.this.mServiceDelegate.bindService();
                GameRoomListActivity.this.hideLoadingView();
            }
        }
    }

    class v implements h0.e {
        v() {
        }

        @Override // com.join.mgps.customview.h0.e
        public void a(BattleArea battleArea) {
            GameRoomListActivity.this.mBattleArea = battleArea;
            int number = GameRoomListActivity.this.mBattleArea.getNumber();
            BattleArea battleArea2 = BattleArea.BJ;
            if (number == battleArea2.getNumber()) {
                GameRoomListActivity.this.selectBattleArea(battleArea2);
                return;
            }
            int number2 = GameRoomListActivity.this.mBattleArea.getNumber();
            BattleArea battleArea3 = BattleArea.SH;
            if (number2 == battleArea3.getNumber()) {
                GameRoomListActivity.this.selectBattleArea(battleArea3);
            } else {
                GameRoomListActivity.this.selectBattleArea(BattleArea.GZ);
            }
        }

        @Override // com.join.mgps.customview.h0.e
        public void b(GameConfig gameConfig) {
            try {
                GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                gameRoomListActivity.mSelGameConfig = gameConfig;
                if (gameRoomListActivity.mStandardRoomFragment != null) {
                    GameRoomListActivity.this.mStandardRoomFragment.t0(gameConfig.getGame_id());
                }
                if (GameRoomListActivity.this.mEliteRoomFragment != null) {
                    GameRoomListActivity.this.mEliteRoomFragment.t0(gameConfig.getGame_id());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public interface w {
        void onItemClick(int position);
    }

    private class x extends FragmentPagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ArenaGameRoomListConfig f56577a;

        public x(ArenaGameRoomListConfig config, FragmentManager fm2) {
            super(fm2);
            this.f56577a = config;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return GameRoomListActivity.this.getPageSize(this.f56577a);
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return GameRoomListActivity.this.selectFragment(position, this.f56577a);
        }
    }

    class y extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f56579d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f56580e;

        public y(View itemView) {
            super(itemView);
            this.f56579d = itemView.findViewById(R.id.main);
            this.f56580e = (TextView) itemView.findViewById(R.id.name);
        }
    }

    class z extends RecyclerView.Adapter<y> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private w f56582e;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f56584b;

            a(final int val$i) {
                this.f56584b = val$i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                z zVar = z.this;
                zVar.notifyItemChanged(GameRoomListActivity.this.selectedPosition);
                GameRoomListActivity.this.selectedPosition = this.f56584b;
                z zVar2 = z.this;
                zVar2.notifyItemChanged(GameRoomListActivity.this.selectedPosition);
                z.this.f56582e.onItemClick(this.f56584b);
            }
        }

        z() {
        }

        public GameInfoBean b() {
            List<GameInfoBean> list = GameRoomListActivity.this.gameInfoListData;
            if (list != null && list.size() != 0) {
                if (GameRoomListActivity.this.selectedPosition < 0) {
                    return GameRoomListActivity.this.gameInfoListData.get(0);
                }
                if (GameRoomListActivity.this.selectedPosition < getItemCount()) {
                    GameRoomListActivity gameRoomListActivity = GameRoomListActivity.this;
                    return gameRoomListActivity.gameInfoListData.get(gameRoomListActivity.selectedPosition);
                }
            }
            return null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull y roomSelcterVH, int i10) {
            GameInfoBean gameInfoBean = GameRoomListActivity.this.gameInfoListData.get(i10);
            if (GameRoomListActivity.this.selectedPosition == -1024 && gameInfoBean.getCollection_id().equals(GameRoomListActivity.this.mGameInfo.getCollection_id())) {
                GameRoomListActivity.this.selectedPosition = i10;
                roomSelcterVH.f56579d.setSelected(true);
                roomSelcterVH.f56580e.setTextColor(-16777216);
            } else {
                if (GameRoomListActivity.this.selectedPosition == i10) {
                    roomSelcterVH.f56580e.setTextColor(-16777216);
                } else {
                    roomSelcterVH.f56580e.setTextColor(Color.parseColor("#C3C3C3"));
                }
                roomSelcterVH.f56579d.setSelected(GameRoomListActivity.this.selectedPosition == i10);
            }
            roomSelcterVH.f56580e.setText(gameInfoBean.getTitle());
            roomSelcterVH.f56579d.setOnClickListener(new a(i10));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public y onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            return GameRoomListActivity.this.new y(LayoutInflater.from(GameRoomListActivity.this.context).inflate(R.layout.newarena_roomselecter_item, viewGroup, false));
        }

        public void f(w itemClickListener) {
            this.f56582e = itemClickListener;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GameRoomListActivity.this.gameInfoListData.size();
        }
    }

    static /* synthetic */ int access$2310(GameRoomListActivity gameRoomListActivity) {
        int i10 = gameRoomListActivity.mCount;
        gameRoomListActivity.mCount = i10 - 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelCreateGameCountDown() {
        CountDownTimer countDownTimer = this.mCreateGameCountDowner;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private boolean checkOutSideTouch(PopupWindow w10, MotionEvent ev) {
        View contentView;
        if (w10 == null || ev == null || (contentView = w10.getContentView()) == null) {
            return false;
        }
        return !checkViewTouch(contentView, ev);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkShowAD(ArenaPopupInfoBean arenaPopupInfoBean, List<ArenaPopupInfoShareBean> shareBeans) {
        if (arenaPopupInfoBean != null && arenaPopupInfoBean.getJump_info() != null) {
            if (shareBeans == null) {
                ArenaPopupInfoShareBean arenaPopupInfoShareBean = new ArenaPopupInfoShareBean();
                arenaPopupInfoShareBean.setId(arenaPopupInfoBean.getId());
                arenaPopupInfoShareBean.setDaily_count(arenaPopupInfoBean.getDaily_count());
                arenaPopupInfoShareBean.setLastShowTime(System.currentTimeMillis());
                arenaPopupInfoShareBean.setHasShowCount(1);
                ArrayList arrayList = new ArrayList();
                arrayList.add(arenaPopupInfoShareBean);
                this.pref.arenaDialogAdData().g(JsonMapper.getInstance().toJson(arrayList));
                showAdDialog(arenaPopupInfoBean);
                g1.d("arenadialog", "4444444444");
                return true;
            }
            boolean z10 = false;
            for (ArenaPopupInfoShareBean arenaPopupInfoShareBean2 : shareBeans) {
                if (arenaPopupInfoShareBean2.getId() == arenaPopupInfoBean.getId()) {
                    arenaPopupInfoShareBean2.setDaily_count(arenaPopupInfoBean.getDaily_count());
                    if (!e0.z(arenaPopupInfoShareBean2.getLastShowTime())) {
                        arenaPopupInfoShareBean2.setHasShowCount(1);
                        arenaPopupInfoShareBean2.setLastShowTime(System.currentTimeMillis());
                        showAdDialog(arenaPopupInfoBean);
                        this.pref.arenaDialogAdData().g(JsonMapper.getInstance().toJson(shareBeans));
                        g1.d("arenadialog", "22222222222222");
                        return true;
                    }
                    if (arenaPopupInfoShareBean2.getHasShowCount() < arenaPopupInfoShareBean2.getDaily_count()) {
                        showAdDialog(arenaPopupInfoBean);
                        arenaPopupInfoShareBean2.setHasShowCount(arenaPopupInfoShareBean2.getHasShowCount() + 1);
                        arenaPopupInfoShareBean2.setLastShowTime(System.currentTimeMillis());
                        this.pref.arenaDialogAdData().g(JsonMapper.getInstance().toJson(shareBeans));
                        return true;
                    }
                    z10 = true;
                }
            }
            if (!z10) {
                ArenaPopupInfoShareBean arenaPopupInfoShareBean3 = new ArenaPopupInfoShareBean();
                arenaPopupInfoShareBean3.setId(arenaPopupInfoBean.getId());
                arenaPopupInfoShareBean3.setDaily_count(arenaPopupInfoBean.getDaily_count());
                arenaPopupInfoShareBean3.setLastShowTime(System.currentTimeMillis());
                arenaPopupInfoShareBean3.setHasShowCount(1);
                shareBeans.add(arenaPopupInfoShareBean3);
                this.pref.arenaDialogAdData().g(JsonMapper.getInstance().toJson(shareBeans));
                showAdDialog(arenaPopupInfoBean);
                g1.d("arenadialog", "3333333333");
                return true;
            }
        }
        return false;
    }

    private boolean checkViewTouch(View v10, MotionEvent ev) {
        if (v10 == null) {
            return false;
        }
        int[] iArr = new int[2];
        v10.getLocationOnScreen(iArr);
        int rawX = (int) ev.getRawX();
        int rawY = (int) ev.getRawY();
        int i10 = iArr[0];
        return i10 < rawX && iArr[1] < rawY && rawX < i10 + v10.getWidth() && rawY < iArr[1] + v10.getHeight();
    }

    private void getGameTypeList() {
        com.join.mgps.rpc.impl.l.n0().m0().L(AccountUtil_.getInstance_(this.context).getUid()).enqueue(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getPageSize(ArenaGameRoomListConfig config) {
        int i10 = config.getCurrent_collection_cfg().getElite_match_switch() == 1 ? 2 : 1;
        return config.getCurrent_collection_cfg().getGeneral_match_switch() == 1 ? i10 + 1 : i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideSeleter() {
        this.selecterLayout.setVisibility(8);
    }

    private void initRoomSelecterlayout() {
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        z zVar = new z();
        this.roomSelecteradapter = zVar;
        zVar.f(new g());
        this.recyclerView.setAdapter(this.roomSelecteradapter);
        this.context = this;
        this.recyclerViewGamelist.setLayoutManager(new GridLayoutManager(this.context, ((double) com.join.android.app.common.utils.q.n(this).j(this)) >= 1.9d ? 3 : 2));
        f2 f2Var = new f2(this.context, false);
        this.gameAdapter = f2Var;
        f2Var.f(new h());
        this.gameInfoBeanList = this.gameAdapter.b();
        this.recyclerViewGamelist.setAdapter(this.gameAdapter);
        getGameTypeList();
        onGameSeriesSelected();
    }

    private void initTabView(ArenaGameRoomListConfig config) {
        if (config == null) {
            return;
        }
        if (config.getCurrent_collection_cfg().getElite_match_switch() == 1) {
            this.isOnlyStandardRoom = false;
            this.ll_elite_room.setVisibility(0);
        } else {
            this.ll_elite_room.setVisibility(8);
        }
        if (config.getCurrent_collection_cfg().getGeneral_match_switch() == 1) {
            this.isOnlyStandardRoom = false;
            this.ll_race_room.setVisibility(0);
        } else {
            this.ll_race_room.setVisibility(8);
        }
        if (this.isOnlyStandardRoom) {
            this.ll_tab.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isActivityFinished() {
        return isFinishing() || isDestroyed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets lambda$afterViews$0(View view, WindowInsets windowInsets) {
        if (t1.b(this)) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mViewPager.getLayoutParams();
            layoutParams.leftMargin = (int) getStatusBarHeight();
            this.mViewPager.setLayoutParams(layoutParams);
        }
        return view.onApplyWindowInsets(windowInsets);
    }

    private void removeGameRoomForDissolved(ArenaResponse response) {
        synchronized (this.mLocker) {
            if (response.request.roomType == 2) {
                if (this.isSubscribeEliteRoomList && this.mEliteRoomFragment != null && this.isEliteRoomPushFinished) {
                    this.mEliteRoomFragment.z0(response.request.roomId);
                }
            } else if (this.isSubscribeNormalRoomList && this.mStandardRoomFragment != null && this.isNormalRoomPushFinished) {
                this.mStandardRoomFragment.z0(response.request.roomId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryLogin() {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        printLog("---retryLogin---");
        showLoadingView();
        ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMELIST);
        if (this.mViewPager.getCurrentItem() == 1 && (arenaGameRoomListConfig = this.mGameConfig) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
            arenaRequestLogin.isElite = true;
            arenaRequestLogin.isRefreshing = false;
            arenaRequestLogin.roomType = 2;
        } else {
            arenaRequestLogin.isElite = false;
            arenaRequestLogin.isRefreshing = false;
            arenaRequestLogin.roomType = 1;
        }
        this.mServiceDelegate.f(arenaRequestLogin);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectBattleArea(BattleArea battleArea) {
        if (battleArea == null) {
            return;
        }
        this.mServiceDelegate.f(ArenaRequestFactory.changeBattleArea(ArenaConstants.REGISTER_TYPE_GAMELIST, battleArea));
    }

    private void showAdDialog(ArenaPopupInfoBean arenaPopupInfoBean) {
        try {
            Dialog dialog = this.dialog;
            if (dialog != null) {
                dialog.dismiss();
                this.dialog = null;
            }
            Dialog dialogR = com.join.mgps.Util.h0.h0(this).R(this, arenaPopupInfoBean.getJump_info().getTitle(), arenaPopupInfoBean.getJump_info().getPic_remote(), new n(arenaPopupInfoBean));
            this.dialog = dialogR;
            dialogR.show();
            this.dialog.setCancelable(false);
            this.handler.sendEmptyMessageDelayed(1, arenaPopupInfoBean.getShow_time());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void showFastJoinRoomDialog() {
        if (checkNetwork()) {
            this.mFastJoinGameRoom = null;
            this.fastJoinErrorInfo = null;
            this.joinSpectatorReason = "";
            this.mCount = 3;
            this.animation = AnimationUtils.loadAnimation(this, R.anim.count_downer);
            this.mFastJoinRoomDialog = new Dialog(this, R.style.newtrans_no_floating_dialog);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_fast_join_room, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_countDown);
            this.tv_countDown = textView;
            textView.setText("" + this.mCount);
            this.mFastJoinRoomDialog.setContentView(viewInflate);
            Window window = this.mFastJoinRoomDialog.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.height = i0.a(this, 130.0f);
            attributes.width = i0.a(this, 273.0f);
            window.setGravity(17);
            this.mFastJoinRoomDialog.show();
            this.tv_countDown.startAnimation(this.animation);
            this.mCountDownerHandler.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInputPwdForGameRoom(ArenaResponse response) {
        if (response == null) {
            return;
        }
        synchronized (this.mLocker) {
            if (response.request.roomType == 2) {
                if (this.isSubscribeEliteRoomList && this.mEliteRoomFragment != null && this.isEliteRoomPushFinished) {
                    this.mEliteRoomFragment.G0(response.request.roomId);
                }
            } else if (this.isSubscribeNormalRoomList && this.mStandardRoomFragment != null && this.isNormalRoomPushFinished) {
                this.mStandardRoomFragment.G0(response.request.roomId);
            }
        }
    }

    private void showLoadingDialog(String title) {
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var != null && f1Var.isShowing()) {
            this.mShowLoadingDialog.dismiss();
        }
        f1 f1VarZ = com.join.mgps.Util.h0.h0(this).z(this, title, false);
        this.mShowLoadingDialog = f1VarZ;
        f1VarZ.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCountDownAnimation() {
        this.animation.reset();
        this.tv_countDown.startAnimation(this.animation);
    }

    @AfterViews
    void afterViews() {
        if (this.mGameInfo == null) {
            finish();
            return;
        }
        this.mRpcClient = com.join.mgps.rpc.impl.d.O1();
        this.mNetClient = com.join.mgps.rpc.impl.l.n0();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        bindQuickReturnView(this.footer);
        if (i10 >= 28) {
            try {
                getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.join.mgps.activity.arena.d
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        return this.f56747a.lambda$afterViews$0(view, windowInsets);
                    }
                });
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.mArenaDialogBuilder = new com.join.mgps.socket.fight.arena.a(this, new q());
        this.ll_standard_room.setOnClickListener(new r());
        this.ll_elite_room.setOnClickListener(new s());
        this.ll_race_room.setOnClickListener(new t());
        this.mServiceDelegate = new com.join.mgps.socket.fight.arena.b(this, this.mCallback);
        this.ll_error.setOnClickListener(new u());
        this.tv_standard__room_count.setVisibility(8);
        this.tv_elite_room_count.setVisibility(8);
        this.tv_race_room_info.setVisibility(8);
        if (com.join.android.app.common.utils.m.j(this)) {
            showLoadingView();
            requestServer();
        } else {
            showFailedView();
        }
        if (this.pref.firstArenaFilterVisit().e(Boolean.TRUE).booleanValue()) {
            this.imgIconList.setImageDrawable(getResources().getDrawable(R.drawable.icon_list));
        }
        initRoomSelecterlayout();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        this.fragmentManager = supportFragmentManager;
        try {
            supportFragmentManager.beginTransaction().commit();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        getUiData();
    }

    void bindQuickReturnView(View view) {
        this.quickReturnFooter = new n3.a(view);
    }

    @Click
    void btnCreateRoom() {
        ViewPager viewPager;
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
            IntentUtil.getInstance().goChangeNickname(this);
            return;
        }
        x xVar = this.adapter;
        if (xVar == null || (viewPager = this.mViewPager) == null) {
            return;
        }
        Fragment item = xVar.getItem(viewPager.getCurrentItem());
        if (item instanceof com.join.mgps.fragment.roomlist.c) {
            ((com.join.mgps.fragment.roomlist.c) item).g0();
        }
    }

    @Click
    void btnFastGameM() {
        if (this.mGameConfig == null || !com.join.android.app.common.utils.m.j(this) || this.mStandardRoomFragment == null) {
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
            IntentUtil.getInstance().goChangeNickname(this);
        } else if (this.mLastBtnFastGameTime > 0 && System.currentTimeMillis() - this.mLastBtnFastGameTime <= 1000) {
            printLog("btnFastGame so fast ,waiting a moment!");
        } else {
            this.mLastBtnFastGameTime = System.currentTimeMillis();
            this.mStandardRoomFragment.N0();
        }
    }

    @Click
    void btnRefresh() {
        x xVar = this.adapter;
        if (xVar == null) {
            return;
        }
        ((com.join.mgps.fragment.roomlist.c) xVar.getItem(this.mViewPager.getCurrentItem())).refresh();
    }

    boolean canShowPopupWindow(h0 mPopWindow, View v10) {
        boolean zBooleanValue;
        h1.e("v.setOnClickListener");
        if (mPopWindow == null) {
            return true;
        }
        View view = mPopWindow.f66460u;
        if (view != null && view != v10) {
            view.setTag(Boolean.FALSE);
        }
        if (v10.getTag() == null) {
            v10.setTag(Boolean.TRUE);
            zBooleanValue = false;
        } else {
            zBooleanValue = ((Boolean) v10.getTag()).booleanValue();
        }
        if (zBooleanValue && !this.isOutSideClose) {
            v10.setTag(Boolean.FALSE);
            return false;
        }
        v10.setTag(Boolean.TRUE);
        this.isOutSideClose = false;
        return true;
    }

    void cancelSubscribeGameRoom() {
        Intent intent = new Intent(this, (Class<?>) ArenaService_.class);
        intent.setAction(ArenaConstants.ACTION_CANCEL_SUBSCRIBE);
        startService(intent);
    }

    boolean checkNetwork() {
        if (com.join.android.app.common.utils.m.j(this)) {
            return true;
        }
        showToast("当前网络不可用，请检查网络!");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void checkUserInfoFailed() {
        IntentUtil.getInstance().goLoginBattle(this);
    }

    void clearRoomCoumt() {
        this.roomCountMap.clear();
        this.roomBak.clear();
    }

    @Click
    void close() {
        hideSeleter();
    }

    public void createRoom(String gameId, boolean isElite) {
        if (checkNetwork()) {
            if (isElite) {
                if (!this.isEliteRoomPushFinished) {
                    return;
                }
            } else if (!this.isNormalRoomPushFinished) {
                return;
            }
            showLoadingDialog("正在创建房间...");
            cancelCreateGameCountDown();
            this.mCreateGameCountDowner.start();
            if (isElite) {
                getChallengeConfig(gameId);
            } else {
                startCreateRoom(gameId, 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void delaySubscribeGameList(boolean isElite, final boolean isRefreshing) {
        if (isElite) {
            ArenaGameRoomListConfig arenaGameRoomListConfig = this.mGameConfig;
            if (arenaGameRoomListConfig != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                if (isRefreshing) {
                    this.isNeedEliteRoomRefreshView = true;
                }
                subscribeRoomList(2, isRefreshing);
            }
        } else {
            if (isRefreshing) {
                this.isNeedNormalRoomRefreshView = true;
            }
            subscribeRoomList(1, isRefreshing);
        }
        if (isRefreshing) {
            return;
        }
        showLoadingView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissFastJoinRoomDialog() {
        this.mCountDownerHandler.removeMessages(1);
        Dialog dialog = this.mFastJoinRoomDialog;
        if (dialog == null || !dialog.isShowing() || this.hasdistory) {
            return;
        }
        this.mFastJoinRoomDialog.dismiss();
    }

    public void fastJoinRoom(long gameId) {
        if (checkNetwork() && this.mGameConfig != null && this.isNormalRoomPushFinished) {
            Dialog dialog = this.mFastJoinRoomDialog;
            if (dialog != null && dialog.isShowing()) {
                this.mFastJoinRoomDialog.dismiss();
            }
            showFastJoinRoomDialog();
            this.mServiceDelegate.f(ArenaRequestFactory.fastJoinRoom(ArenaConstants.REGISTER_TYPE_GAMELIST, gameId, Integer.parseInt(this.mGameConfig.getCurrent_collection_cfg().getCollection_id())));
        }
    }

    public void fastJoinRoomSelected() {
        com.papa.sim.statistic.t.l(this.context).R1(Event.JoinLobbyroom, new Ext().setUid(AccountUtil_.getInstance_(this.context).getAccountData().getUid()).setGameId(this.mFastJoinGameRoom.getGameId() + "").setPosition("1"));
        GameRoomActivity_.intent(this).g(true).h(this.joinSpectatorReason).d(this.mFastJoinGameRoom.getGameName()).i(this.mFastJoinGameRoom).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void finishActivity() {
        cancelCreateGameCountDown();
        hideLoadingDialog();
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        dismissFastJoinRoomDialog();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void finishActivityForGetConfigFailure() {
        showToast("获取游戏配置信息失败！");
        new Handler().postDelayed(new a(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getChallengeConfig(String gameId) {
        try {
            ResultArenaBean<BattleChallengeConfig> resultArenaBeanR = this.mNetClient.R(this.accountUtil.getAccountData().getUid(), this.accountUtil.getAccountData().getToken(), Long.parseLong(gameId));
            if (resultArenaBeanR == null || resultArenaBeanR.getData() == null) {
                hideLoadingDialog();
                cancelCreateGameCountDown();
                if (resultArenaBeanR == null || resultArenaBeanR.getError() != 701) {
                    showToast("系统错误!");
                    return;
                } else {
                    checkUserInfoFailed();
                    return;
                }
            }
            this.mBattleChallengeConfig = resultArenaBeanR.getData();
            if (resultArenaBeanR.getError() == 701) {
                checkUserInfoFailed();
            } else if (this.mBattleChallengeConfig.getIsBattle()) {
                startCreateRoom(gameId, 50);
            } else {
                startCreateRoom(gameId, 500);
            }
        } catch (Exception unused) {
            cancelCreateGameCountDown();
            hideLoadingDialog();
            if (com.join.android.app.common.utils.m.j(this)) {
                showToast("创建房间失败，请重试！");
            } else {
                showToast("当前网络不可用，请检查网络!");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGameConfig() {
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
            ResultMainBean<ArenaGameRoomListConfig> resultMainBeanH = this.mRpcClient.h(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i10));
            if (resultMainBeanH == null || resultMainBeanH.getMessages().getData() == null) {
                showToast("获取游戏配置信息失败！");
                showFailedView();
                return;
            }
            if (resultMainBeanH.getMessages().getData().getCurrent_collection_cfg() == null) {
                finishActivityForGetConfigFailure();
                return;
            }
            String collection_id2 = resultMainBeanH.getMessages().getData().getCurrent_collection_cfg().getCollection_id();
            if (!TextUtils.isEmpty(collection_id2) && Integer.parseInt(collection_id2) > 0) {
                if (resultMainBeanH.getMessages().getData().getGame_list() != null && resultMainBeanH.getMessages().getData().getGame_list().size() > 0) {
                    this.mGameInfo.setCollection_id(collection_id2);
                    ArenaGameRoomListConfig data = resultMainBeanH.getMessages().getData();
                    this.mGameConfig = data;
                    initViewPagerByConfig(data);
                    return;
                }
                finishActivityForGetConfigFailure();
                return;
            }
            finishActivityForGetConfigFailure();
        } catch (Exception e10) {
            printLog("get game config exception:" + e10.getMessage());
            finishActivityForGetConfigFailure();
        }
    }

    public ArenaGameRoomListConfig getGameConfigData() {
        return this.mGameConfig;
    }

    void getGameConfigv2() {
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
            com.join.mgps.rpc.impl.d.O1().N1().h(RequestBeanUtil.getInstance(this).getRequestArenaRoomListArgs(collection_id, i10)).enqueue(new i());
        } catch (Exception unused) {
            finishActivityForGetConfigFailure();
        }
    }

    public String getGameSeries() {
        z zVar = this.roomSelecteradapter;
        GameInfoBean gameInfoBeanB = zVar != null ? zVar.b() : null;
        return gameInfoBeanB != null ? gameInfoBeanB.getCollection_id() : "";
    }

    public List<GameInfoBean> getGameSeriesGames() {
        return this.gameInfoBeanList;
    }

    public FriendBean getInviteFriend() {
        return this.inviteFriend;
    }

    public float getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimension(identifier);
        }
        return 0.0f;
    }

    public String getSubtitle() {
        com.join.mgps.socket.fight.arena.b bVar;
        ArenaGameRoomListConfig arenaGameRoomListConfig = this.mGameConfig;
        String str = "";
        if (arenaGameRoomListConfig == null) {
            finish();
            return "";
        }
        boolean z10 = arenaGameRoomListConfig.getCurrent_collection_cfg().getBattle_area() == 0;
        if (this.mBattleArea != null && this.mGameConfig != null && !z10 && (bVar = this.mServiceDelegate) != null && bVar.d() != null && this.mServiceDelegate.d().s() && this.mBattleArea != BattleArea.ALL) {
            str = "" + com.join.mgps.socket.fight.arena.c.d(this.mBattleArea);
        }
        if (getGameConfigData() != null && getGameConfigData().getGame_list() != null && getGameConfigData().getGame_list().size() > 0) {
            if (this.mGameConfig != null && !z10) {
                str = str + ",";
            }
            str = str + getGameConfigData().getGame_list().size() + "款游戏";
        }
        if (this.roomSizeOfCurrAreaGame <= 0) {
            return str;
        }
        return str + "," + this.roomSizeOfCurrAreaGame + "个房间";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void getUiData() {
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        CollectionCommentRequest collectionCommentRequest = new CollectionCommentRequest();
        collectionCommentRequest.setCollection_id(this.mGameInfo.getCollection_id());
        collectionCommentRequest.setUid(accountData.getUid());
        com.join.mgps.rpc.impl.d.O1().N1().K1(RequestBeanUtil.getInstance(this).getDefalutRequestBean(collectionCommentRequest)).enqueue(new l());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleFailure(ArenaResponse response) {
        hideLoadingDialog();
        int i10 = response.errorType;
        if (i10 == 16) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "无法加入，你被禁止加入该房间", "确定");
            return;
        }
        if (i10 == 17) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "该房间为比赛专用房间,非参赛选手无法加入", "我知道了");
            return;
        }
        if (i10 == 9) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间人数已满你无法加入房间!", "确定");
            return;
        }
        if (i10 == 7) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 256, Integer.valueOf(response.errorType), "密码输入错误，请重试!", "取消", "确定", response);
            return;
        }
        if (i10 == 8) {
            removeGameRoomForDissolved(response);
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "房间已经被解散!", "确定");
            return;
        }
        if (i10 == 11) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法创建房间!", "确定");
            return;
        }
        if (i10 == 13) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 257, Integer.valueOf(response.errorType), "铜板不足，无法加入房间", "确定");
            return;
        }
        if (i10 == 10) {
            showInputPwdForGameRoom(response);
            return;
        }
        if (i10 == 1001) {
            this.mArenaDialogBuilder.D(com.join.mgps.socket.fight.arena.a.f73077j, 258, Integer.valueOf(response.errorType), response.errorInfo, "确定");
            return;
        }
        String strG = com.join.mgps.socket.fight.arena.c.g(response);
        if (response.responseType == ArenaConstants.ArenaCommand.CMD_QUICK_JOIN_ROOM) {
            this.fastJoinErrorInfo = "快速加入房间失败 " + strG + " , 请重试!";
            return;
        }
        showToast(strG);
        if (response.responseType == ArenaConstants.ArenaCommand.CMD_SUBSCRIBE_GAME_ROOMLIST) {
            finishActivity();
            return;
        }
        ArenaRequest arenaRequest = response.request;
        if (arenaRequest == null || !arenaRequest.isRefreshing) {
            return;
        }
        stopRefreshing(arenaRequest.isElite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleMsgBroadcast(final Notification notification) {
        if (notification != null) {
            this.ll_broadcast.setVisibility(0);
            this.tv_broadcast.setText(notification.getMessage());
            this.ll_broadcast.setOnClickListener(new p(notification));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handlePushRoomListData(final ArenaResponse response, boolean isFinished) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        if (response == null) {
            return;
        }
        synchronized (this.mLocker) {
            if (DEBUG) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < 20; i10++) {
                    int i11 = i10 + 100;
                    arrayList.add(SimpleRoom.newBuilder().setAllowPeripheralJoin(true).setAllowSpectatorJoin(true).setCopper(i11).setPlaySeconds((i10 * 5) + 10).setState(RoomState.START).setHasPeripheralPlayer(true).setChallengeCoins(i11).setNickname("hulaoda" + i10).build());
                }
                com.join.mgps.fragment.roomlist.d dVar = this.mStandardRoomFragment;
                if (dVar != null) {
                    dVar.d0(arrayList, true);
                }
                return;
            }
            List<SimpleRoom> list = isFinished ? (List) ((Object[]) response.data)[1] : (List) response.data;
            printLog("---handlePushRoomListData--data print  begin ");
            clearRoomCoumt();
            for (SimpleRoom simpleRoom : list) {
                com.join.mgps.socket.fight.arena.c.r(TAG, simpleRoom);
                this.roomBak.put(simpleRoom.getRoomId() + "", simpleRoom);
                setRoomCount(simpleRoom.getGameId() + "", 1);
            }
            printLog("---handlePushRoomListData--data print  end ");
            printLog("handlePushRoomListData ---response.request: " + response.request.toString());
            if (response.request.roomType == 1) {
                if (this.mStandardRoomFragment != null && this.isSubscribeNormalRoomList) {
                    if (this.isNeedNormalRoomRefreshView) {
                        this.isNeedNormalRoomRefreshView = false;
                        this.mStandardRoomFragment.x0(list, this.isNormalRoomPushFinished);
                    } else {
                        this.mStandardRoomFragment.d0(list, this.isNormalRoomPushFinished);
                    }
                }
            } else if (this.mEliteRoomFragment != null && this.isSubscribeEliteRoomList && (arenaGameRoomListConfig = this.mGameConfig) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                if (this.isNeedEliteRoomRefreshView) {
                    this.isNeedEliteRoomRefreshView = false;
                    this.mEliteRoomFragment.x0(list, this.isEliteRoomPushFinished);
                } else {
                    this.mEliteRoomFragment.d0(list, this.isEliteRoomPushFinished);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleRoomListDelete(final List<SimpleRoom> datas) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        com.join.mgps.fragment.roomlist.d dVar;
        com.join.mgps.fragment.roomlist.d dVar2;
        synchronized (this.mLocker) {
            if (DEBUG) {
                return;
            }
            printLog("---handleRoomListDelete--data print  begin ");
            Iterator<SimpleRoom> it2 = datas.iterator();
            while (it2.hasNext()) {
                com.join.mgps.socket.fight.arena.c.r(TAG, it2.next());
            }
            printLog("---handleRoomListDelete--data print  end ");
            ArrayList<SimpleRoom> arrayList = new ArrayList<>();
            ArrayList<SimpleRoom> arrayList2 = new ArrayList<>();
            for (SimpleRoom simpleRoom : datas) {
                if (simpleRoom.getElite()) {
                    arrayList2.add(simpleRoom);
                } else {
                    arrayList.add(simpleRoom);
                }
                synchronized (this.roomBak) {
                    this.roomBak.remove(simpleRoom.getRoomId() + "");
                    setRoomCount(simpleRoom.getGameId() + "", -1);
                }
            }
            updatePopBattleAreaRoomCount();
            if (this.isSubscribeNormalRoomList && this.isNormalRoomPushFinished && (dVar2 = this.mStandardRoomFragment) != null) {
                dVar2.S0(arrayList);
            }
            if (this.isSubscribeEliteRoomList && this.isEliteRoomPushFinished && (arenaGameRoomListConfig = this.mGameConfig) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1 && (dVar = this.mEliteRoomFragment) != null) {
                dVar.S0(arrayList2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void handleRoomListUpdate(final List<SimpleRoom> datas) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        com.join.mgps.fragment.roomlist.d dVar;
        com.join.mgps.fragment.roomlist.d dVar2;
        synchronized (this.mLocker) {
            if (DEBUG) {
                return;
            }
            printLog("---handleRoomListUpdate--data print  begin ");
            Iterator<SimpleRoom> it2 = datas.iterator();
            while (it2.hasNext()) {
                com.join.mgps.socket.fight.arena.c.r(TAG, it2.next());
            }
            printLog("---handleRoomListUpdate--data print  end ");
            ArrayList<SimpleRoom> arrayList = new ArrayList<>();
            ArrayList<SimpleRoom> arrayList2 = new ArrayList<>();
            for (SimpleRoom simpleRoom : datas) {
                if (simpleRoom.getElite()) {
                    arrayList2.add(simpleRoom);
                } else {
                    arrayList.add(simpleRoom);
                }
            }
            synchronized (this.roomBak) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                int size = datas.size();
                for (int i10 = 0; i10 < size; i10++) {
                    SimpleRoom simpleRoom2 = datas.get(i10);
                    if (this.roomBak.containsKey(simpleRoom2.getRoomId() + "")) {
                        linkedHashMap2.put(simpleRoom2.getRoomId() + "", simpleRoom2);
                    } else {
                        linkedHashMap.put(simpleRoom2.getRoomId() + "", simpleRoom2);
                        setRoomCount(simpleRoom2.getGameId() + "", 1);
                    }
                }
                for (int i11 = 0; i11 < linkedHashMap2.size(); i11++) {
                    SimpleRoom simpleRoom3 = (SimpleRoom) linkedHashMap2.get(Integer.valueOf(i11));
                    if (simpleRoom3 != null) {
                        if (this.roomBak.containsKey(simpleRoom3.getRoomId() + "")) {
                            this.roomBak.put(simpleRoom3.getRoomId() + "", simpleRoom3);
                        }
                    }
                }
                if (linkedHashMap.size() > 0) {
                    this.roomBak.putAll(linkedHashMap);
                }
            }
            if (this.isSubscribeNormalRoomList && this.isNormalRoomPushFinished && (dVar2 = this.mStandardRoomFragment) != null) {
                dVar2.T0(arrayList);
            }
            if (this.isSubscribeEliteRoomList && this.isEliteRoomPushFinished && (arenaGameRoomListConfig = this.mGameConfig) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1 && (dVar = this.mEliteRoomFragment) != null) {
                dVar.T0(arrayList2);
            }
        }
    }

    void handleServiceConnected() {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        ArenaGameRoomListConfig arenaGameRoomListConfig2;
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar != null && bVar.d() != null && this.mServiceDelegate.d().s()) {
            if (this.mViewPager.getCurrentItem() == 1 && (arenaGameRoomListConfig2 = this.mGameConfig) != null && arenaGameRoomListConfig2.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                delaySubscribeGameList(true, false);
                return;
            } else {
                delaySubscribeGameList(false, false);
                return;
            }
        }
        ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMELIST);
        arenaRequestLogin.isRefreshing = false;
        if (this.mViewPager.getCurrentItem() == 1 && (arenaGameRoomListConfig = this.mGameConfig) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
            arenaRequestLogin.isElite = true;
            arenaRequestLogin.roomType = 2;
        } else {
            arenaRequestLogin.isElite = false;
            arenaRequestLogin.roomType = 1;
        }
        this.mServiceDelegate.f(arenaRequestLogin);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoadingDialog() {
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.mShowLoadingDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoadingView() {
        this.ll_broadcast.setVisibility(8);
        this.ll_loading.setVisibility(8);
        this.ll_error.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initViewPagerByConfig(final ArenaGameRoomListConfig config) {
        this.tv_title.setText(config.getCurrent_collection_cfg().getTitle());
        setBattleAreaView(1);
        this.ll_tab.setVisibility(0);
        initTabView(config);
        int pageSize = getPageSize(config);
        x xVar = this.adapter;
        if (xVar == null) {
            this.adapter = new x(config, getSupportFragmentManager());
            this.mViewPager.setOffscreenPageLimit(pageSize);
            this.mViewPager.setAdapter(this.adapter);
            this.mViewPager.setOnPageChangeListener(new c(config));
        } else if (xVar != null) {
            xVar.f56577a = config;
            this.adapter.notifyDataSetChanged();
        }
        this.mViewPager.setCurrentItem(0);
        if (this.mServiceDelegate.e()) {
            handleServiceConnected();
        } else {
            this.mServiceDelegate.bindService();
        }
        ArenaGameRoomListConfig arenaGameRoomListConfig = this.mGameConfig;
        if (arenaGameRoomListConfig == null || arenaGameRoomListConfig.getCurrent_collection_cfg() == null) {
            return;
        }
        com.join.mgps.fragment.roomlist.d dVar = this.mStandardRoomFragment;
        if (dVar != null) {
            dVar.C = this.mGameConfig.getCurrent_collection_cfg().getOnly_show_mobile_gamers_room() == 1 ? 2 : 1;
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.mEliteRoomFragment;
        if (dVar2 != null) {
            dVar2.C = this.mGameConfig.getCurrent_collection_cfg().getOnly_show_mobile_gamers_room() == 1 ? 2 : 1;
        }
    }

    @Click
    void iv_back() {
        if (this.isFormHall) {
            finish();
        } else {
            NewArenaMainActivty_.intent(this).start();
            finish();
        }
    }

    @Click
    void iv_list() {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        com.join.mgps.fragment.roomlist.d dVar;
        com.join.mgps.fragment.roomlist.d dVar2;
        if (checkNetwork()) {
            if (this.mViewPager.getCurrentItem() == 0) {
                if (!this.isNormalRoomPushFinished || (dVar2 = this.mStandardRoomFragment) == null) {
                    showToast("正在加载数据，请稍等...");
                } else {
                    dVar2.J0(this.mArenaSelectedCallback, this.mServiceDelegate.d().m(), com.join.mgps.socket.fight.arena.c.b(this.mServerRecBattleArea), this.recomendNumber);
                }
            } else if (this.mViewPager.getCurrentItem() == 1 && (arenaGameRoomListConfig = this.mGameConfig) != null && arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() == 1) {
                if (!this.isEliteRoomPushFinished || (dVar = this.mEliteRoomFragment) == null) {
                    showToast("正在加载数据，请稍等...");
                } else {
                    dVar.J0(this.mArenaSelectedCallback, this.mServiceDelegate.d().m(), com.join.mgps.socket.fight.arena.c.b(this.mServerRecBattleArea), this.recomendNumber);
                }
            }
            if (this.pref.firstArenaFilterVisit().e(Boolean.TRUE).booleanValue()) {
                this.pref.firstArenaFilterVisit().g(Boolean.FALSE);
                this.imgIconList.setImageDrawable(getResources().getDrawable(R.drawable.icon_list));
            }
        }
    }

    public void joinRoom(int roomId, String password, boolean isElite) {
        if (checkNetwork()) {
            showLoadingDialog("正在加入房间...");
            this.mServiceDelegate.f(ArenaRequestFactory.joinRoom(ArenaConstants.REGISTER_TYPE_GAMELIST, roomId, password, isElite));
        }
    }

    @Click
    void myDragImageView() {
        this.redPoint.setVisibility(8);
        IntentUtil.getInstance().goShareWebActivity(this, com.join.mgps.rpc.h.f72397x + "/lobby_active/index/");
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        try {
            if (resultCode == -1) {
                if (requestCode == 1015) {
                    com.papa.sim.statistic.t.l(this.context).R1(Event.JoinLobbyroom, new Ext().setUid(AccountUtil_.getInstance_(this.context).getAccountData().getUid()).setGameId(this.mFastJoinGameRoom.getGameId() + "").setPosition("1"));
                    GameRoomActivity_.intent(this).g(true).h(this.joinSpectatorReason).d(this.mFastJoinGameRoom.getGameName()).i(this.mFastJoinGameRoom).start();
                } else {
                    if (requestCode != 1014 || data == null) {
                        return;
                    }
                    String stringExtra = data.getStringExtra("gameId");
                    if (t2.i(stringExtra)) {
                        fastJoinRoom(Long.parseLong(stringExtra));
                    }
                }
            } else {
                if (requestCode != 10001 || data == null) {
                    return;
                }
                GameInfoBean gameInfoBean = (GameInfoBean) data.getSerializableExtra("mGameInfo");
                if (gameInfoBean != null) {
                    this.mGameInfo = gameInfoBean;
                    getGameConfig();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        this.type = "BATTLE_ROOM_LIST";
        GameInfoBean gameInfoBean = this.mGameInfo;
        if (gameInfoBean != null) {
            this.gameId = gameInfoBean.getGame_id();
        }
        super.onCreate(savedInstanceState);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        cancelCreateGameCountDown();
        hideLoadingDialog();
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        dismissFastJoinRoomDialog();
        cancelSubscribeGameRoom();
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar != null && bVar.d() != null) {
            this.mServiceDelegate.d().A(this.mObserver);
        }
        com.join.mgps.socket.fight.arena.b bVar2 = this.mServiceDelegate;
        if (bVar2 != null) {
            bVar2.g();
        }
        super.onDestroy();
        this.hasdistory = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void onGameSeriesSelected() {
        v2 v2Var;
        GameInfoBean gameInfoBean = this.mGameInfo;
        if (gameInfoBean == null || (v2Var = this.friendFragment) == null) {
            return;
        }
        v2Var.G0(gameInfoBean.getCollection_id(), this.gameInfoBeanList);
    }

    @Override // com.join.mgps.activity.FriendActivity, com.join.mgps.adapter.v0.e
    public void onInvite(FriendBean bean) {
        super.onInvite(bean);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (event.getKeyCode() != 4) {
            return super.onKeyDown(keyCode, event);
        }
        iv_back();
        return true;
    }

    public void onScroll(int dy) {
        if ((dy > 0 && this.mDySinceDirectionChange < 0) || (dy < 0 && this.mDySinceDirectionChange > 0)) {
            this.quickReturnFooter.g();
            this.mDySinceDirectionChange = 0;
        }
        int i10 = this.mDySinceDirectionChange + dy;
        this.mDySinceDirectionChange = i10;
        if (i10 > this.quickReturnFooter.h()) {
            this.quickReturnFooter.l(false);
        } else if (this.mDySinceDirectionChange < 0) {
            this.quickReturnFooter.l(true);
        }
    }

    public void onScrolled(int dy) {
    }

    void printLog(String msg) {
    }

    @Click
    void quanmingxing() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(com.join.mgps.rpc.h.f72357l + "/static/match_v2/index.html");
        intentDateBean.setFrom("11");
        IntentUtil.getInstance().intentActivity(this, intentDateBean);
    }

    public boolean refreshData(boolean isElite) {
        if (isElite) {
            this.isNeedEliteRoomRefreshView = true;
        } else {
            this.isNeedNormalRoomRefreshView = true;
        }
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar == null || bVar.d() == null || !this.mServiceDelegate.d().s()) {
            ArenaRequest arenaRequestLogin = ArenaRequestFactory.login(ArenaConstants.REGISTER_TYPE_GAMELIST);
            arenaRequestLogin.isRefreshing = true;
            arenaRequestLogin.isElite = isElite;
            this.mServiceDelegate.f(arenaRequestLogin);
        } else if (isElite) {
            subscribeRoomList(2, true);
        } else {
            subscribeRoomList(1, true);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshGameRoomList(int refreshType) {
        this.isNeedNormalRoomRefreshView = true;
        this.isNeedEliteRoomRefreshView = true;
        this.isSubscribeNormalRoomList = false;
        this.isSubscribeEliteRoomList = false;
        this.isNormalRoomPushFinished = false;
        this.isEliteRoomPushFinished = false;
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var != null && f1Var.isShowing()) {
            this.mShowLoadingDialog.dismiss();
        }
        com.join.mgps.fragment.roomlist.d dVar = this.mEliteRoomFragment;
        if (dVar != null) {
            dVar.Q0();
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.mStandardRoomFragment;
        if (dVar2 != null) {
            dVar2.Q0();
        }
        cancelCreateGameCountDown();
        this.mCountDownerHandler.removeMessages(1);
        Dialog dialog = this.mFastJoinRoomDialog;
        if (dialog != null && dialog.isShowing()) {
            this.mFastJoinRoomDialog.dismiss();
        }
        com.join.mgps.socket.fight.arena.a aVar = this.mArenaDialogBuilder;
        if (aVar != null) {
            aVar.w();
        }
        if (refreshType != 1) {
            if (refreshType == 2) {
                this.mGameConfig = null;
                this.ll_broadcast.setVisibility(8);
                this.ll_loading.setVisibility(8);
                this.ll_error.setVisibility(0);
                return;
            }
            if (refreshType == 3) {
                this.ll_broadcast.setVisibility(8);
                this.ll_loading.setVisibility(8);
                this.ll_error.setVisibility(0);
                return;
            }
            return;
        }
        com.join.mgps.fragment.roomlist.d dVar3 = this.mEliteRoomFragment;
        if (dVar3 != null) {
            dVar3.x0(new ArrayList(), true);
        }
        com.join.mgps.fragment.roomlist.d dVar4 = this.mStandardRoomFragment;
        if (dVar4 != null) {
            dVar4.x0(new ArrayList(), true);
        }
        BattleArea battleArea = this.mBattleArea;
        if (battleArea != null) {
            this.mServerRecBattleArea = battleArea;
        }
        handleServiceConnected();
        this.ll_broadcast.setVisibility(8);
        this.ll_loading.setVisibility(0);
        this.ll_error.setVisibility(8);
    }

    public void refreshListData() {
        if (this.mViewPager.getCurrentItem() == 0) {
            refreshData(false);
        } else {
            if (this.mViewPager.getCurrentItem() != 1 || this.mEliteRoomFragment == null) {
                return;
            }
            refreshData(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void requestServer() {
        try {
            String token = this.accountUtil.getAccountData().getToken();
            ResultArenaBean<ArenaLobbyServer> resultArenaBeanA0 = this.mNetClient.a0(this.accountUtil.getAccountData().getUid(), token);
            if (resultArenaBeanA0 != null && resultArenaBeanA0.getError() == 0 && resultArenaBeanA0.getData() != null && resultArenaBeanA0.getData().getDisabled() != 0) {
                ArenaResponse arenaResponse = new ArenaResponse();
                arenaResponse.errorType = 1001;
                arenaResponse.errorInfo = resultArenaBeanA0.getData().getDisabledMessage();
                handleFailure(arenaResponse);
                return;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        hideLoadingView();
        getGameConfig();
    }

    Fragment selectFragment(int position, ArenaGameRoomListConfig config) {
        if (position == 0) {
            if (this.mStandardRoomFragment == null) {
                com.join.mgps.fragment.roomlist.d dVar = new com.join.mgps.fragment.roomlist.d();
                this.mStandardRoomFragment = dVar;
                dVar.D0(this.mInitialCallback);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isElite", false);
                if (this.filterGame) {
                    bundle.putString("filterGameId", this.mGameInfo.getGame_id());
                }
                this.mStandardRoomFragment.setArguments(bundle);
            }
            return this.mStandardRoomFragment;
        }
        if (position != 1) {
            if (position != 2) {
                return null;
            }
            if (this.mRaceRoomFragment == null) {
                this.mRaceRoomFragment = new com.join.mgps.fragment.roomlist.b();
            }
            return this.mRaceRoomFragment;
        }
        if (config.getCurrent_collection_cfg().getElite_match_switch() != 1) {
            if (this.mRaceRoomFragment == null) {
                this.mRaceRoomFragment = new com.join.mgps.fragment.roomlist.b();
            }
            return this.mRaceRoomFragment;
        }
        if (this.mEliteRoomFragment == null) {
            com.join.mgps.fragment.roomlist.d dVar2 = new com.join.mgps.fragment.roomlist.d();
            this.mEliteRoomFragment = dVar2;
            dVar2.D0(this.mInitialCallback);
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("isElite", true);
            this.mEliteRoomFragment.setArguments(bundle2);
        }
        return this.mEliteRoomFragment;
    }

    @Click
    void selecterLayout() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setBattleAreaView(int battle_area) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.rl_top.getLayoutParams();
        if (battle_area == 1) {
            this.ll_battle_area.setVisibility(8);
            findViewById(R.id.ll_title_content).setOnClickListener(new b());
        } else {
            this.ll_battle_area.setVisibility(8);
        }
        this.rl_top.setLayoutParams(layoutParams);
    }

    public void setInviteFriend(FriendBean inviteFriend) {
        this.inviteFriend = inviteFriend;
    }

    void setRoomCount(String gameId, int diff) {
        int iIntValue = (this.roomCountMap.containsKey(gameId) ? this.roomCountMap.get(gameId).intValue() : 0) + diff;
        this.roomCountMap.put(gameId, Integer.valueOf(iIntValue >= 0 ? iIntValue : 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showBattleArea(BattleArea battleArea) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        if (battleArea == null) {
            return;
        }
        this.mBattleArea = battleArea;
        if (this.recomendNumber == 0) {
            this.recomendNumber = battleArea.getNumber();
        }
        com.join.mgps.socket.fight.arena.b bVar = this.mServiceDelegate;
        if (bVar == null || bVar.d() == null || !this.mServiceDelegate.d().s() || (arenaGameRoomListConfig = this.mGameConfig) == null || arenaGameRoomListConfig.getCurrent_collection_cfg().getBattle_area() != 1) {
            return;
        }
        this.tv_area.setText(getSubtitle());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFailedView() {
        this.ll_broadcast.setVisibility(8);
        this.ll_loading.setVisibility(8);
        this.ll_error.setVisibility(0);
    }

    public void showFasterJoinBtn(boolean f10) {
        n3.a aVar = this.quickReturnFooter;
        if (aVar != null) {
            aVar.l(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoadingView() {
        this.ll_broadcast.setVisibility(8);
        this.ll_loading.setVisibility(0);
        this.ll_error.setVisibility(8);
        this.tv_loading_info.setText("数据加载中...");
        this.progressLoding.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoginDialog() {
        IntentUtil.getInstance().goLoginBattle(this);
    }

    @UiThread
    public void showNodataView() {
        this.ll_broadcast.setVisibility(8);
        this.ll_loading.setVisibility(0);
        this.ll_error.setVisibility(8);
        this.tv_loading_info.setText("暂无游戏房间");
        this.progressLoding.setVisibility(8);
    }

    void showPopBattleArea(final View view) {
        if (this.mServerRecBattleArea == null) {
            return;
        }
        List<GameInfoBean> list = this.gameInfoListData;
        if (list == null || list.size() <= 0) {
            getGameTypeList();
            return;
        }
        this.selecterLayout.setVisibility(0);
        try {
            if (this.gameInfoListData != null) {
                int i10 = this.selectedPosition;
                if (i10 != -1024) {
                    this.recyclerView.scrollToPosition(i10);
                } else {
                    for (int i11 = 0; i11 < this.gameInfoListData.size(); i11++) {
                        if (this.gameInfoListData.get(i11).getCollection_id().equals(this.mGameInfo.getCollection_id())) {
                            this.recyclerView.scrollToPosition(i11);
                        }
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        getGameConfigv2();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        if (isActivityFinished()) {
            return;
        }
        a3.b(this).d(info);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startCreateRoom(String gameId, int challengeCoins) {
        printLog("startCreateRoom gameId:" + gameId);
        this.mServiceDelegate.f(ArenaRequestFactory.createRoom(ArenaConstants.REGISTER_TYPE_GAMELIST, gameId, challengeCoins, this.accountUtil.getAccountData().getUid()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopRefreshing(boolean isElite) {
        if (isElite) {
            com.join.mgps.fragment.roomlist.d dVar = this.mEliteRoomFragment;
            if (dVar != null) {
                dVar.Q0();
                return;
            }
            return;
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.mStandardRoomFragment;
        if (dVar2 != null) {
            dVar2.Q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void subscribeRoomList(int roomType, boolean isRefreshing) {
        ArenaRequest arenaRequestSubscribeRoomList = ArenaRequestFactory.subscribeRoomList(ArenaConstants.REGISTER_TYPE_GAMELIST, Integer.parseInt(this.mGameConfig.getCurrent_collection_cfg().getCollection_id()), roomType);
        arenaRequestSubscribeRoomList.isRefreshing = isRefreshing;
        if (roomType == 1) {
            this.isSubscribeNormalRoomList = true;
            arenaRequestSubscribeRoomList.roomType = 1;
            arenaRequestSubscribeRoomList.isElite = false;
        } else {
            this.isSubscribeEliteRoomList = true;
            arenaRequestSubscribeRoomList.roomType = 2;
            arenaRequestSubscribeRoomList.isElite = true;
        }
        this.mServiceDelegate.f(arenaRequestSubscribeRoomList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateOnlineCounts(AreaOnlinePeopleCount count) {
        try {
            if (TextUtils.isEmpty(getSubtitle()) || TextUtils.isEmpty(this.tv_area.getText()) || getSubtitle().equals(this.tv_area.getText())) {
                return;
            }
            this.tv_area.setText(getSubtitle());
        } catch (Exception e10) {
            e10.printStackTrace();
            this.tv_area.setText(getSubtitle());
        }
    }

    void updatePopBattleAreaRoomCount() {
        this.tv_area.setText(getSubtitle());
        if (getGameConfigData() == null || getGameConfigData().getGame_list() == null || getGameConfigData().getGame_list().size() <= 0) {
            h0 h0Var = this.mPopBattleArea;
            if (h0Var != null) {
                h0Var.c(new ArrayList());
                return;
            }
            return;
        }
        for (GameConfig gameConfig : getGameConfigData().getGame_list()) {
            if (this.roomCountMap.containsKey(gameConfig.getGame_id())) {
                gameConfig.setRoom_count(this.roomCountMap.get(gameConfig.getGame_id()).intValue());
            }
        }
        h0 h0Var2 = this.mPopBattleArea;
        if (h0Var2 != null) {
            h0Var2.c(getGameConfigData().getGame_list());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateRoomCount(final ArenaResponse response, boolean isElite) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        RoomCounter roomCounter = (RoomCounter) ((Object[]) response.data)[0];
        if (isElite || this.isSubscribeEliteRoomList || (arenaGameRoomListConfig = this.mGameConfig) == null || arenaGameRoomListConfig.getCurrent_collection_cfg().getElite_match_switch() != 1) {
            return;
        }
        if (roomCounter.getElite() <= 0) {
            this.tv_elite_room_count.setVisibility(8);
            return;
        }
        this.tv_elite_room_count.setText("（" + roomCounter.getElite() + "房）");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateRoomCountsChanged(int newSize, boolean isElite) {
        ArenaGameRoomListConfig arenaGameRoomListConfig;
        try {
            if (isElite) {
                if (newSize > 0) {
                } else {
                    this.tv_elite_room_count.setVisibility(8);
                }
            } else if (newSize <= 0) {
                this.tv_standard__room_count.setVisibility(8);
            } else if (this.isOnlyStandardRoom && (arenaGameRoomListConfig = this.mGameConfig) != null) {
                this.tv_title.setText(arenaGameRoomListConfig.getCurrent_collection_cfg().getTitle());
            }
        } catch (Exception unused) {
        }
    }

    void updateRoomCount() {
        ArrayList arrayList = new ArrayList();
        com.join.mgps.fragment.roomlist.d dVar = this.mStandardRoomFragment;
        if (dVar != null) {
            arrayList.addAll(dVar.k0());
        }
        com.join.mgps.fragment.roomlist.d dVar2 = this.mEliteRoomFragment;
        if (dVar2 != null) {
            arrayList.addAll(dVar2.k0());
        }
        this.roomSizeOfCurrAreaGame = arrayList.size();
        updatePopBattleAreaRoomCount();
    }
}
