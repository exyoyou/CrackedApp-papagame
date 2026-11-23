package com.join.mgps.activity;

import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.endgame.EndGameSlotListActivity;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.customview.popwindow.view.PopWindowView;
import com.join.mgps.customview.wheel.picker.util.DateUtils;
import com.join.mgps.dto.ArchiveListBean;
import com.join.mgps.dto.BossBean;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.dto.RequestBossListArgs;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.UserGameListBean;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_create_end_game)
public class CreateEndGameActivity extends BaseAppCompatActivity {
    public static final String FINISH_EVENT_TAG = "CreateEndGameActivity";
    public static final int REQUEST_CODE_PICK_SLOT = 1002;
    ArchiveListBean archiveListBean;
    List<BossBean> bossLists;

    @Extra
    GameMainV4DataBean.EndGameConfigBean configBean;
    f gameAdapter;
    String gameId;

    @ViewById
    ImageView iv_archive_image;

    @ViewById
    ImageView iv_arrow;

    @ViewById
    ImageView iv_arrow_game;

    @ViewById
    ImageView iv_question;

    @ViewById
    LinearLayout ll_boss_info;

    @ViewById
    LinearLayout ll_choose_slot;
    PopWindowView popupWindow;
    PopWindowView popupWindowGame;

    @ViewById
    RelativeLayout rl_slot;
    com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    SimpleDraweeView sdv_image_game;
    g tipAdapter;

    @ViewById
    TextView tv_boss_sub_title;

    @ViewById
    TextView tv_boss_title;

    @ViewById
    TextView tv_choose_boos;

    @ViewById
    TextView tv_choose_game;

    @ViewById
    TextView tv_time;

    @ViewById
    TextView tv_time_label;
    com.join.mgps.dialog.o2 uploadSlotTipDialog;
    List<UserGameListBean> userGameLists;
    long duration = 0;
    boolean showPopGame = false;
    UserGameListBean gameBean = null;
    boolean showPop = false;
    BossBean bossBean = null;

    class a extends com.join.mgps.base.decoration.b {
        a() {
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = Color.parseColor("#E6E6E6");
            aVar.f64119c = (int) CreateEndGameActivity.this.getResources().getDimension(R.dimen.wdp1);
            return aVar;
        }
    }

    class b implements BaseQuickAdapter.j {
        b() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            UserGameListBean item = CreateEndGameActivity.this.gameAdapter.getItem(position);
            if (item != null && !item.equals(CreateEndGameActivity.this.gameBean)) {
                CreateEndGameActivity createEndGameActivity = CreateEndGameActivity.this;
                createEndGameActivity.gameBean = item;
                createEndGameActivity.bossLists = null;
                createEndGameActivity.bossBean = null;
                createEndGameActivity.tv_choose_game.setText(item.getGameName());
                CreateEndGameActivity createEndGameActivity2 = CreateEndGameActivity.this;
                com.join.android.app.common.utils.l.h(createEndGameActivity2.sdv_image_game, createEndGameActivity2.gameBean.getGameIcon());
                CreateEndGameActivity createEndGameActivity3 = CreateEndGameActivity.this;
                createEndGameActivity3.gameId = createEndGameActivity3.gameBean.getGameId();
                CreateEndGameActivity.this.resetBoss();
                CreateEndGameActivity.this.loadBossData(false);
            }
            CreateEndGameActivity.this.popupWindowGame.p();
        }
    }

    class c extends com.join.mgps.base.decoration.b {
        c() {
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = Color.parseColor("#F2F2F2");
            aVar.f64119c = (int) CreateEndGameActivity.this.getResources().getDimension(R.dimen.wdp1);
            return aVar;
        }
    }

    class d implements BaseQuickAdapter.j {
        d() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            LinearLayout linearLayout = CreateEndGameActivity.this.ll_boss_info;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
                CreateEndGameActivity.this.tv_choose_boos.setVisibility(8);
                CreateEndGameActivity createEndGameActivity = CreateEndGameActivity.this;
                createEndGameActivity.bossBean = createEndGameActivity.tipAdapter.getItem(position);
                CreateEndGameActivity createEndGameActivity2 = CreateEndGameActivity.this;
                BossBean bossBean = createEndGameActivity2.bossBean;
                if (bossBean != null) {
                    createEndGameActivity2.tv_boss_title.setText(bossBean.getBoos());
                    CreateEndGameActivity createEndGameActivity3 = CreateEndGameActivity.this;
                    createEndGameActivity3.tv_boss_sub_title.setText(createEndGameActivity3.bossBean.getLevel());
                    CreateEndGameActivity.this.tv_boss_title.setTextColor(Color.parseColor("#6194FF"));
                    CreateEndGameActivity.this.tv_boss_sub_title.setTextColor(Color.parseColor("#6194FF"));
                }
            }
            CreateEndGameActivity.this.popupWindow.p();
        }
    }

    class e implements com.join.mgps.customview.wheel.picker.a.d {
        e() {
        }

        @Override // com.join.mgps.customview.wheel.picker.a.d
        public void c(String minute, String second) {
            String str;
            StringBuilder sb2 = new StringBuilder();
            String str2 = "";
            if (DateUtils.u(minute) > 0) {
                str = DateUtils.u(minute) + "分钟";
            } else {
                str = "";
            }
            sb2.append(str);
            if (DateUtils.u(second) > 0) {
                str2 = DateUtils.u(second) + "秒";
            }
            sb2.append(str2);
            String string = sb2.toString();
            CreateEndGameActivity.this.duration = ((DateUtils.u(minute) * 60) + DateUtils.u(second)) * 1000;
            CreateEndGameActivity.this.tv_time.setText(string);
            CreateEndGameActivity.this.tv_time_label.setText("玩家需要在" + string + "时间内完成挑战");
        }
    }

    class f extends BaseQuickAdapter<UserGameListBean, com.join.mgps.base.b> {
        public f() {
            super(R.layout.item_create_end_game);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, UserGameListBean item) {
            helper.setText(R.id.tv_sub_title, item.getGameName());
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.sdv_image_game), item.getGameIcon());
        }
    }

    class g extends BaseQuickAdapter<BossBean, com.join.mgps.base.b> {
        public g() {
            super(R.layout.item_create_end_game_boss);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, BossBean item) {
            helper.setText(R.id.tv_title, item.getBoos());
            helper.setText(R.id.tv_sub_title, item.getLevel());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showBossPopWindow$1(View view) {
        this.showPop = false;
        view.setBackgroundResource(R.drawable.shape_fafafa_r_8);
        this.iv_arrow.setImageResource(R.drawable.ic_angle_down_black);
        this.tv_boss_title.setTextColor(Color.parseColor("#000000"));
        this.tv_boss_sub_title.setTextColor(Color.parseColor("#777777"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showGamePopWindow$0(View view) {
        this.showPopGame = false;
        view.setBackgroundResource(R.drawable.shape_fafafa_r_8);
        this.iv_arrow_game.setImageResource(R.drawable.ic_angle_down_black);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetBoss() {
        this.ll_boss_info.setVisibility(8);
        this.tv_choose_boos.setVisibility(0);
    }

    private void showBossPopWindow(final View archerView, List<BossBean> list) {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.pop_end_game_boss, (ViewGroup) null);
        archerView.setBackgroundResource(R.drawable.shape_fafafa_t_r8);
        this.iv_arrow.setImageResource(R.drawable.ic_angle_up_blue);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_list);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.addItemDecoration(new c());
        if (this.tipAdapter == null) {
            this.tipAdapter = new g();
        }
        if (this.bossBean != null) {
            this.tv_boss_title.setTextColor(Color.parseColor("#6194FF"));
            this.tv_boss_sub_title.setTextColor(Color.parseColor("#6194FF"));
        }
        recyclerView.setAdapter(this.tipAdapter);
        this.tipAdapter.setNewData(list);
        this.tipAdapter.setOnItemClickListener(new d());
        this.popupWindow = new PopWindowView.b(this).j(0).k((int) getResources().getDimension(R.dimen.wdp12)).e((int) getResources().getDimension(R.dimen.wdp450)).f(viewInflate).c(true).i(archerView).b(true).h(new PopWindowView.c() { // from class: com.join.mgps.activity.t0
            @Override // com.join.mgps.customview.popwindow.view.PopWindowView.c
            public final void onDismiss() {
                this.f58105a.lambda$showBossPopWindow$1(archerView);
            }
        }).l();
    }

    private void showGamePopWindow(final View archerView, List<UserGameListBean> list) {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.pop_end_game, (ViewGroup) null);
        archerView.setBackgroundResource(R.drawable.shape_fafafa_t_r8);
        this.iv_arrow_game.setImageResource(R.drawable.ic_angle_up_blue);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_list);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.addItemDecoration(new a());
        if (this.gameAdapter == null) {
            this.gameAdapter = new f();
        }
        recyclerView.setAdapter(this.gameAdapter);
        this.gameAdapter.setNewData(list);
        this.gameAdapter.setOnItemClickListener(new b());
        this.popupWindowGame = new PopWindowView.b(this).j(0).k((int) getResources().getDimension(R.dimen.wdp12)).e((int) getResources().getDimension(R.dimen.wdp564)).f(viewInflate).c(true).i(archerView).b(true).h(new PopWindowView.c() { // from class: com.join.mgps.activity.u0
            @Override // com.join.mgps.customview.popwindow.view.PopWindowView.c
            public final void onDismiss() {
                this.f58149a.lambda$showGamePopWindow$0(archerView);
            }
        }).l();
    }

    @AfterViews
    void afterViews() {
        org.greenrobot.eventbus.c.f().v(this);
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        loadUserGamesData(false);
    }

    @Click({R.id.iv_back})
    void back() {
        finish();
    }

    @Click({R.id.cv_boss})
    void chooseBoss() {
        if (!com.join.mgps.Util.t2.i(this.gameId)) {
            showToast("请选择游戏");
            return;
        }
        List<BossBean> list = this.bossLists;
        if (list == null || list.size() <= 0) {
            loadBossData(true);
            return;
        }
        PopWindowView popWindowView = this.popupWindow;
        if (popWindowView == null || !this.showPop) {
            this.showPop = true;
            showBossPopWindow(findViewById(R.id.cv_boss), this.bossLists);
        } else {
            this.showPop = false;
            if (popWindowView != null) {
                popWindowView.p();
            }
        }
    }

    @Click({R.id.cv_game})
    void chooseGame() {
        List<UserGameListBean> list = this.userGameLists;
        if (list == null || list.size() <= 0) {
            loadUserGamesData(true);
            return;
        }
        PopWindowView popWindowView = this.popupWindowGame;
        if (popWindowView == null || !this.showPopGame) {
            this.showPopGame = true;
            showGamePopWindow(findViewById(R.id.cv_game), this.userGameLists);
        } else {
            this.showPopGame = false;
            if (popWindowView != null) {
                popWindowView.p();
            }
        }
    }

    @Click({R.id.ll_choose_slot})
    void chooseSlot() {
        if (!com.join.mgps.Util.t2.i(this.gameId)) {
            showToast("请选择游戏");
            return;
        }
        Intent intent = new Intent(this, (Class<?>) EndGameSlotListActivity.class);
        intent.putExtra("gameId", this.gameId);
        startActivityForResult(intent, 1002);
    }

    @Background
    void loadBossData(boolean update) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestBossListArgs requestBossListArgs = new RequestBossListArgs(this.gameId);
                RequestModel requestModel = new RequestModel(this);
                requestModel.setArgs(requestBossListArgs);
                ResponseModel<List<BossBean>> responseModelM0 = this.rpcGameClient.m0(requestModel.makeSign());
                if (responseModelM0 != null) {
                    try {
                        if (responseModelM0.getData() != null) {
                            List<BossBean> data = responseModelM0.getData();
                            this.bossLists = data;
                            if (update) {
                                updateBossUi(data);
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    @Background
    void loadUserGamesData(boolean update) {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            IntentUtil.getInstance().goLogin(this);
            return;
        }
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
                RequestModel requestModel = new RequestModel(this);
                requestGameIdArgs.setUid(AccountUtil_.getInstance_(this).getAccountData().getUid());
                requestModel.setArgs(requestGameIdArgs);
                ResponseModel<List<UserGameListBean>> responseModelZ = this.rpcGameClient.Z(requestModel.makeSign());
                if (responseModelZ != null) {
                    try {
                        if (responseModelZ.getData() != null) {
                            List<UserGameListBean> data = responseModelZ.getData();
                            this.userGameLists = data;
                            updateGamesUi(update, data);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        showToast("网络连接异常，请重试");
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                showToast("网络连接异常，请重试");
            }
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1002 && resultCode == -1 && data != null) {
            ArchiveListBean archiveListBean = (ArchiveListBean) data.getSerializableExtra("mData");
            this.archiveListBean = archiveListBean;
            if (archiveListBean != null) {
                this.rl_slot.setVisibility(0);
                this.ll_choose_slot.setVisibility(8);
                this.iv_archive_image.setImageURI(Uri.parse(this.archiveListBean.getArchiveCover()));
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onBusEvent(com.join.mgps.event.v event) {
        if (FINISH_EVENT_TAG.equals(event.a())) {
            finish();
        }
    }

    @Click({R.id.cv_time})
    void onChooseTime() {
        com.join.mgps.customview.wheel.picker.a aVar = new com.join.mgps.customview.wheel.picker.a(this);
        aVar.G0(false);
        aVar.m0(false);
        aVar.i0(false);
        aVar.D0(q6.a.H(this, 15.0f));
        aVar.V0(new e());
        aVar.B();
    }

    @Click({R.id.btn_next})
    void onClickNext() {
        if (this.archiveListBean == null) {
            showToast("请选择存档");
            return;
        }
        if (this.bossBean == null) {
            showToast("请选择BOSS");
            return;
        }
        long j10 = this.duration;
        if (j10 <= 0) {
            showToast("请设置挑战时长");
        } else if (j10 < 20000) {
            showToast("挑战时长不能低于20秒");
        } else {
            CreateEndGameCommitActivity_.intent(this).c(this.gameId).b(this.bossBean).a(this.archiveListBean).d(Long.valueOf(this.duration)).start();
        }
    }

    @Click({R.id.iv_question})
    void onClickQuestion() {
        if (this.configBean != null) {
            if (this.uploadSlotTipDialog == null) {
                this.uploadSlotTipDialog = new com.join.mgps.dialog.o2(this);
            }
            this.uploadSlotTipDialog.a(this.configBean.getEndgame_archive_hint());
        }
    }

    @Click({R.id.iv_delete_slot})
    void onDeleteSlot() {
        this.archiveListBean = null;
        this.ll_choose_slot.setVisibility(0);
        this.rl_slot.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @UiThread
    void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }

    @UiThread
    void updateBossUi(List<BossBean> list) {
        if (this.popupWindow != null) {
            showBossPopWindow(findViewById(R.id.cv_boss), list);
        }
    }

    @UiThread
    void updateGamesUi(boolean update, List<UserGameListBean> list) {
        UserGameListBean userGameListBean;
        if (this.userGameLists.size() > 0 && (userGameListBean = this.userGameLists.get(0)) != null) {
            this.gameId = userGameListBean.getGameId();
            SimpleDraweeView simpleDraweeView = this.sdv_image_game;
            if (simpleDraweeView != null) {
                com.join.android.app.common.utils.l.h(simpleDraweeView, userGameListBean.getGameIcon());
            }
            TextView textView = this.tv_choose_game;
            if (textView != null) {
                textView.setText(userGameListBean.getGameName());
            }
            loadBossData(false);
        }
        if (!update || this.popupWindowGame == null) {
            return;
        }
        showGamePopWindow(findViewById(R.id.cv_game), list);
    }
}
