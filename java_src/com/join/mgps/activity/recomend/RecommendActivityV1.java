package com.join.mgps.activity.recomend;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.MApplication;
import com.airbnb.lottie.LottieAnimationView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.google.gson.JsonObject;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.join.android.app.common.http.PointSendUtile;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.component.video.h;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.a50;
import com.join.android.app.mgsim.wufun.databinding.c50;
import com.join.android.app.mgsim.wufun.databinding.e50;
import com.join.kotlin.base.widget.loadCallBack.LoadingCallback;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.d0;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.j0;
import com.join.mgps.Util.n1;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.QuarkInstallAppActivity_;
import com.join.mgps.activity.arena.GameRoomActivity;
import com.join.mgps.activity.recomend.adapter.GameListAdapter;
import com.join.mgps.activity.recomend.adapter.TopGameAdapter;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.MultiRecommendBean;
import com.join.mgps.dto.RecommendArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.event.r;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.rpc.k;
import com.join.mgps.service.CommonService_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.t;
import com.papa.sim.statistic.u;
import com.papa91.arc.bean.ButtonBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.recommend_activity_layout_v1)
public class RecommendActivityV1 extends BaseAppCompatActivity {
    List<RecommendBean> allData;

    @ViewById
    ConstraintLayout cl_games;
    Context context;

    @ViewById
    Group g_1;
    List<MultiRecommendBean> gameList;
    GameListAdapter gameListAdapter;

    @ViewById
    ImageView iv_1;

    @ViewById
    ImageView iv_btn_1;

    @ViewById
    ImageView iv_btn_2;

    @ViewById
    LottieAnimationView lav_p_view;

    @ViewById
    LottieAnimationView lav_view;

    @ViewById
    LinearLayout ll_container;
    com.kingja.loadsir.core.b loadSir;

    @Pref
    PrefDef_ prefDef;

    @ViewById
    View protocol;

    @ViewById
    View protocolCheck;
    k rpcGameClient;

    @ViewById
    RecyclerView rv_game;

    @ViewById
    RecyclerView rv_list;
    TopGameAdapter topGameAdapter;

    @ViewById
    TextView tv_text_3;

    @ViewById
    TextView userProtocolTxt;

    @ViewById
    View v_status;
    int loadDataType = 1;
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    List<AppBean> downloadList = new ArrayList();
    private boolean showGame = false;
    ExtBean pageBean = new ExtBean().setFrom("112").setTypeCode("page").setChatId("oneKeyDown");
    private boolean SCROLLING = false;
    int selectedNumber = 0;
    private boolean isExposuring = false;

    private static class ClickSpan extends ClickableSpan {
        private String url;

        public ClickSpan(String url) {
            this.url = url;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            IntentUtil.getInstance().goShareWebActivity(widget.getContext(), this.url);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(ds.linkColor);
            ds.bgColor = Color.parseColor("#ffffff");
            ds.setUnderlineText(false);
            ds.clearShadowLayer();
        }
    }

    private void animClick() {
        this.lav_view.E();
        animView();
        this.cl_games.setEnabled(false);
    }

    private void animView() {
        this.cl_games.setCameraDistance(getResources().getDisplayMetrics().density * 10000.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.cl_games, "rotationY", 0.0f, 180.0f, 270.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(880L);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.join.mgps.activity.recomend.RecommendActivityV1.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NonNull Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NonNull Animator animation) {
                if (RecommendActivityV1.this.showGame) {
                    RecommendActivityV1.this.iv_1.setVisibility(8);
                    RecommendActivityV1.this.rv_list.setVisibility(0);
                } else {
                    RecommendActivityV1.this.iv_1.setVisibility(0);
                    RecommendActivityV1.this.rv_list.setVisibility(8);
                }
                RecommendActivityV1.this.cl_games.setEnabled(true);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NonNull Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NonNull Animator animation) {
                RecommendActivityV1 recommendActivityV1 = RecommendActivityV1.this;
                recommendActivityV1.showGame = !recommendActivityV1.showGame;
            }
        });
        objectAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void expGame() {
        View childAt;
        RecyclerView recyclerView;
        View childAt2;
        try {
            if (!this.isExposuring) {
                this.isExposuring = true;
                int[] iArrM = h.m(this.rv_game);
                Rect rect = new Rect();
                for (int i10 = iArrM[0]; i10 <= iArrM[1]; i10++) {
                    MultiRecommendBean multiRecommendBean = this.gameList.get(i10);
                    if (multiRecommendBean.getViewType() == 3) {
                        AppBean appBean = (AppBean) multiRecommendBean.getData();
                        if (appBean.getExtBean() != null && !appBean.getExtBean().hasExplore() && (childAt2 = this.rv_game.getChildAt(i10 - iArrM[0])) != null && childAt2.getGlobalVisibleRect(rect)) {
                            t.l(this.context).R1(Event.expGameAdPage, appBean.getExtBean().itemWithParent(this.pageBean).setResourceId(appBean.getGame_id()).buildScene().toExt());
                            appBean.getExtBean().setHasExplore(true);
                        }
                    } else if (multiRecommendBean.getViewType() == 2 && (childAt = this.rv_game.getChildAt(i10 - iArrM[0])) != null && childAt.getGlobalVisibleRect(rect) && (recyclerView = (RecyclerView) childAt.findViewById(R.id.rv_list)) != null && recyclerView.getGlobalVisibleRect(rect)) {
                        this.gameListAdapter.expGame(recyclerView, (List) multiRecommendBean.getData());
                    }
                }
            }
        } catch (Exception unused) {
        } finally {
            this.isExposuring = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterView$0() {
        this.loadSir.g(LoadingCallback.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterView$1(View view) {
        animClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterView$2(View view) {
        animClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterView$3(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        RecommendBean recommendBean = (RecommendBean) baseQuickAdapter.getItem(i10);
        if (recommendBean.getIs_select() == 1) {
            recommendBean.setIs_select(0);
            this.selectedNumber--;
        } else {
            recommendBean.setIs_select(1);
            this.selectedNumber++;
        }
        this.topGameAdapter.notifyItemChanged(i10);
        refreshEnterGame();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterView$364e49b8$1(View view) {
        getData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$afterView$4(View view) {
        finish();
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList(downloadTask);
        updateListPartly(downloadTask);
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            updateDownStateList(downloadTask);
            updateListPartly(downloadTask);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList(downloadTask);
        updateListPartly(downloadTask);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList(downloadTask);
        updateListPartly(downloadTask);
    }

    public static void sortIntMethod(List list) {
        Collections.sort(list, new Comparator() { // from class: com.join.mgps.activity.recomend.RecommendActivityV1.7
            @Override // java.util.Comparator
            public int compare(Object o10, Object o11) {
                RecommendBean recommendBean = (RecommendBean) o10;
                RecommendBean recommendBean2 = (RecommendBean) o11;
                if (recommendBean.getIndex() > recommendBean2.getIndex()) {
                    return 1;
                }
                return recommendBean.getIndex() == recommendBean2.getIndex() ? 0 : -1;
            }
        });
    }

    private void updateDownStateList(DownloadTask downloadTask) {
        try {
            Iterator<AppBean> it2 = this.downloadList.iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateGameUi(SimpleDraweeView imag, TextView appname, RecommendBean recommendBean) {
        l.d(imag, R.drawable.main_normal_icon, recommendBean.getGame_info().getIco_remote());
        appname.setText(recommendBean.getGame_info().getGame_name());
    }

    private void updateListPartly(DownloadTask task) {
        View childAt;
        RecyclerView recyclerView;
        for (int i10 = 0; i10 < this.gameListAdapter.getItemCount(); i10++) {
            MultiRecommendBean item = this.gameListAdapter.getItem(i10);
            if (item != null && task != null) {
                if (item.getItemType() == 3) {
                    if (Objects.equals(((AppBean) item.getData()).getPackageName(), task.getPackageName())) {
                        this.gameListAdapter.notifyItemChanged(i10);
                    }
                } else if (item.getItemType() == 2 && (childAt = this.rv_game.getChildAt(i10)) != null) {
                    RecyclerView.ViewHolder childViewHolder = this.rv_game.getChildViewHolder(childAt);
                    if ((childViewHolder instanceof v2.a) && (recyclerView = (RecyclerView) childViewHolder.itemView.findViewById(R.id.rv_list)) != null) {
                        int[] iArrM = h.m(recyclerView);
                        List list = (List) item.getData();
                        for (int i11 = iArrM[0]; i11 <= iArrM[1]; i11++) {
                            if (Objects.equals(((AppBean) list.get(i11)).getPackageName(), task.getPackageName())) {
                                recyclerView.getAdapter().notifyItemChanged(i11);
                            }
                        }
                    }
                }
            }
        }
    }

    private void updateProgressPartly() {
        View childAt;
        View childAt2;
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            MultiRecommendBean item = this.gameListAdapter.getItem(i10);
            if (item != null) {
                if (item.getItemType() == 3) {
                    DownloadTask downloadTask = ((AppBean) item.getData()).getDownloadTask();
                    if (downloadTask != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt2 = this.rv_game.getChildAt(i10 - this.firstVisiblePosition)) != null)) {
                        RecyclerView.ViewHolder childViewHolder = this.rv_game.getChildViewHolder(childAt2);
                        if (childViewHolder instanceof v2.a) {
                            try {
                                DownloadTask downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val());
                                if (downloadTaskG == null) {
                                    return;
                                }
                                v2.a aVar = (v2.a) childViewHolder;
                                long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                                if (downloadTask.getSize() == 0) {
                                    ((e50) aVar.a()).f37796k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                } else {
                                    ((e50) aVar.a()).f37796k.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                }
                                if (downloadTask.getStatus() == 12) {
                                    ((e50) aVar.a()).f37794i.setProgress((int) downloadTaskG.getProgress());
                                } else {
                                    ((e50) aVar.a()).f37793h.setProgress((int) downloadTaskG.getProgress());
                                }
                                if (downloadTask.getStatus() == 2) {
                                    ((e50) aVar.a()).f37792g.setText(downloadTaskG.getSpeed() + "/S");
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        } else {
                            continue;
                        }
                    }
                } else if (item.getItemType() == 2 && (childAt = this.rv_game.getChildAt(i10 - this.firstVisiblePosition)) != null) {
                    RecyclerView.ViewHolder childViewHolder2 = this.rv_game.getChildViewHolder(childAt);
                    if (childViewHolder2 instanceof v2.a) {
                        RecyclerView recyclerView = ((a50) ((v2.a) childViewHolder2).a()).f35666b;
                        int[] iArrM = h.m(recyclerView);
                        List list = (List) item.getData();
                        for (int i11 = iArrM[0]; i11 <= iArrM[1]; i11++) {
                            try {
                                DownloadTask downloadTask2 = ((AppBean) list.get(i11)).getDownloadTask();
                                if (downloadTask2 != null && (downloadTask2.getStatus() == 2 || downloadTask2.getStatus() == 12)) {
                                    DownloadTask downloadTaskG2 = j.f().g(downloadTask2.getCrc_link_type_val());
                                    if (downloadTaskG2 == null) {
                                        return;
                                    } else {
                                        ((c50) ((v2.a) recyclerView.getChildViewHolder(recyclerView.getChildAt(i11 - iArrM[0]))).a()).f36780b.s(downloadTaskG2.getProgress());
                                    }
                                }
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    @AfterViews
    void afterView() {
        this.context = getApplicationContext();
        getWindow().addFlags(67108864);
        this.rpcGameClient = i.P0();
        j0.a().d(this);
        this.protocolCheck.setSelected(true);
        this.loadSir = com.kingja.loadsir.core.c.c().e(this.ll_container, new b(this));
        this.ll_container.post(new Runnable() { // from class: com.join.mgps.activity.recomend.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f57972b.lambda$afterView$0();
            }
        });
        this.allData = new ArrayList();
        this.gameList = new ArrayList();
        getData();
        if (ContextCompat.checkSelfPermission(this.context, com.kuaishou.weapon.p0.g.f74779c) != 0 && !e0.z(this.prefDef.lastApplyReadPhonePermissionOnRecom().d().longValue())) {
            this.prefDef.lastApplyReadPhonePermission().g(Long.valueOf(System.currentTimeMillis()));
            this.prefDef.lastApplyReadPhonePermissionOnRecom().g(Long.valueOf(System.currentTimeMillis()));
            UtilsMy.e3(this.context, com.kuaishou.weapon.p0.g.f74779c);
        }
        u.f(this).x(false);
        this.lav_view.setAnimation("lottie/recommend/rec_down.json");
        this.lav_view.setRepeatCount(0);
        this.lav_p_view.setAnimation("lottie/recommend/pointer.json");
        this.lav_p_view.setRepeatCount(-1);
        this.lav_p_view.E();
        this.cl_games.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57973b.lambda$afterView$1(view);
            }
        });
        this.lav_p_view.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57974b.lambda$afterView$2(view);
            }
        });
        TopGameAdapter topGameAdapter = new TopGameAdapter();
        this.topGameAdapter = topGameAdapter;
        topGameAdapter.setOnItemClickListener(new BaseQuickAdapter.d() { // from class: com.join.mgps.activity.recomend.f
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.d
            public final void onClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                this.f57975a.lambda$afterView$3(baseQuickAdapter, view, i10);
            }
        });
        this.rv_list.setAdapter(this.topGameAdapter);
        this.rv_list.setLayoutManager(new GridLayoutManager(this.context, 4));
        int iD = n1.d(this);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.v_status.getLayoutParams();
        layoutParams.height = iD;
        this.v_status.setLayoutParams(layoutParams);
        this.iv_btn_1.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.recomend.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f57976b.lambda$afterView$4(view);
            }
        });
        this.gameListAdapter = new GameListAdapter();
        this.rv_game.setLayoutManager(new LinearLayoutManager(this));
        this.rv_game.setAdapter(this.gameListAdapter);
        this.gameListAdapter.addOnItemChildClickListener(R.id.downloadView, new BaseQuickAdapter.b<MultiRecommendBean>() { // from class: com.join.mgps.activity.recomend.RecommendActivityV1.1
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.b
            public void onItemClick(@NonNull BaseQuickAdapter<MultiRecommendBean, ?> adapter, @NonNull View view, int position) {
                MultiRecommendBean item = RecommendActivityV1.this.gameListAdapter.getItem(position);
                if (item.getItemType() == 3) {
                    AppBean appBean = (AppBean) item.getData();
                    if (appBean.getExtBean() != null) {
                        appBean.setExt(JsonMapper.toJsonString(appBean.getExtBean().buildScene().toExt()));
                        t.l(RecommendActivityV1.this).R1(Event.commonClick, appBean.getExtBean().copy().setTypeCode("btnDown").buildScene().toExt());
                    }
                    DlTaskManager.INSTANCE.performDownloadClick(RecommendActivityV1.this.context, appBean);
                }
            }
        });
        this.rv_game.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.mgps.activity.recomend.RecommendActivityV1.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                RecommendActivityV1.this.SCROLLING = newState != 0;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                int[] iArrM = h.m(RecommendActivityV1.this.rv_game);
                RecommendActivityV1.this.firstVisiblePosition = iArrM[0];
                RecommendActivityV1.this.lastVisibleIndex = iArrM[1];
            }
        });
        t.l(this).R1(Event.commonExp, this.pageBean.buildScene().toExt());
    }

    @UiThread(delay = BaseCloudFileManager.ACK_TIMEOUT)
    void delayRequest() {
        if (isDestroyed()) {
            return;
        }
        getData();
    }

    void down() {
        downv2(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Background
    void downv2(boolean onlyDownNet) {
        if (!this.protocolCheck.isSelected() || this.selectedNumber == 0) {
            return;
        }
        ArrayList<RecommendBean> arrayList = new ArrayList();
        for (RecommendBean recommendBean : this.allData) {
            if (recommendBean.getIs_select() == 1) {
                if (onlyDownNet) {
                    try {
                        if (recommendBean.getGame_info().getSp_tag_info().getModel().getId().equals("7")) {
                            arrayList.add(recommendBean);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    arrayList.add(recommendBean);
                }
            }
        }
        sortIntMethod(arrayList);
        try {
            Thread.sleep(1500L);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(QuarkInstallAppActivity_.COUNT_EXTRA, Integer.valueOf(this.selectedNumber));
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((RecommendBean) it2.next()).getGame_info().getGame_id());
        }
        jsonObject.addProperty("games", arrayList2.toString());
        t.l(this).R1(Event.commonClick, new ExtBean().setChatId("oneKeyDown").setFrom("112").setTypeCode("btnOneKey").setReMarks(jsonObject.toString()).buildScene().toExt());
        for (RecommendBean recommendBean2 : arrayList) {
            AppBean game_info = recommendBean2.getGame_info();
            game_info.set_from(112);
            try {
                Thread.sleep(1000L);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            String game_id = game_info.getGame_id();
            if (game_info.getMod_info() != null) {
                game_id = game_info.getMod_info().getMod_game_id();
            }
            if (!com.join.android.app.common.utils.g.t0(this.context).e(this.context, game_info.getPackageName())) {
                PointSendUtile.sendPoint(this.context, game_id);
            }
            game_info.setExt(JsonMapper.toJsonString(recommendBean2.getExtBean().setReMarks("oneKey").buildScene().toExt()));
            ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) ((CommonService_.n0) CommonService_.P2(this.context).extra("gameDownloadDetail", game_id)).extra("_from", game_info.get_from())).extra("_from_type", game_info.get_from_type())).extra("ext", game_info.getExt())).a();
        }
    }

    @Click({R.id.cl_enter_game})
    void enterGame() {
        String str;
        boolean zW2;
        com.papa.sim.statistic.pref.b.k(this.context).F(true);
        List<RecommendBean> list = this.allData;
        if (list == null || list.size() == 0) {
            return;
        }
        if (!this.protocolCheck.isSelected() || this.selectedNumber == 0) {
            t.l(this).R1(Event.commonClick, new ExtBean().setChatId("oneKeyDown").setFrom("112").setTypeCode("btnEnter").buildScene().toExt());
            finish();
            return;
        }
        try {
            boolean z10 = false;
            if (this.protocolCheck.isSelected()) {
                str = "";
                boolean z11 = false;
                for (RecommendBean recommendBean : this.allData) {
                    if (recommendBean.getIs_select() == 1) {
                        AppBean game_info = recommendBean.getGame_info();
                        if (game_info.getMod_info() != null) {
                            str = "VIRTUAL_SINGLE";
                        }
                        if ("7".equals(game_info.getSp_tag_info().getModel().getId())) {
                            zW2 = false;
                        } else {
                            str = "ANDROID_SINGLE";
                            zW2 = true;
                        }
                        if (!zW2) {
                            zW2 = t2.h(game_info.getPlugin_num()) ? false : UtilsMy.w2(Integer.parseInt(game_info.getPlugin_num()));
                            if (zW2) {
                                str = UtilsMy.f2(game_info.getPlugin_num()).getDown_type() == 2 ? "SO_SIMULATOR" : "RAW_SIMULATOR";
                            }
                        }
                        z11 = zW2;
                        if (z11) {
                            break;
                        }
                    }
                }
                z10 = z11;
            } else {
                str = "";
            }
            try {
                String strD = new PrefDef_(this.context).androidIdNullsKey().d();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(MApplication.K);
                sb2.append("   ");
                sb2.append(strD);
                sb2.append("   ");
                if (t2.i(strD)) {
                    List list2 = (List) JsonMapper.getInstance().fromJson(strD, List.class);
                    if (t2.i(MApplication.K) && list2.contains(MApplication.K) && z10 && IntentUtil.getInstance().goLogin(this.context)) {
                        return;
                    }
                }
            } catch (Exception unused) {
            }
            boolean zBooleanValue = new PrefDef_(this.context).download_game_switch().d().booleanValue();
            if (z10 && zBooleanValue) {
                UtilsMy.A0(this.context, 2, "", str, new GameRoomActivity.x() { // from class: com.join.mgps.activity.recomend.RecommendActivityV1.6
                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onFail(int type) {
                    }

                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onSuccess(int type, int duration) {
                        org.androidannotations.api.sharedpreferences.d dVarIsFirstCommendVersion = RecommendActivityV1.this.prefDef.isFirstCommendVersion();
                        Boolean bool = Boolean.FALSE;
                        dVarIsFirstCommendVersion.g(bool);
                        RecommendActivityV1.this.down();
                        RecommendActivityV1.this.prefDef.isFirst35().g(bool);
                        RecommendActivityV1.this.setResult(34343);
                        RecommendActivityV1.this.finish();
                    }

                    @Override // com.join.mgps.activity.arena.GameRoomActivity.x
                    public void onSuccess(int type, int duration, ButtonBean buttonBean) {
                        org.androidannotations.api.sharedpreferences.d dVarIsFirstCommendVersion = RecommendActivityV1.this.prefDef.isFirstCommendVersion();
                        Boolean bool = Boolean.FALSE;
                        dVarIsFirstCommendVersion.g(bool);
                        RecommendActivityV1.this.downv2(true);
                        RecommendActivityV1.this.prefDef.isFirst35().g(bool);
                        RecommendActivityV1.this.setResult(34343);
                        RecommendActivityV1.this.finish();
                    }
                });
                return;
            }
            org.androidannotations.api.sharedpreferences.d dVarIsFirstCommendVersion = this.prefDef.isFirstCommendVersion();
            Boolean bool = Boolean.FALSE;
            dVarIsFirstCommendVersion.g(bool);
            down();
            this.prefDef.isFirst35().g(bool);
            setResult(34343);
            finish();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void finishActivit() {
        this.prefDef.isFirst35().g(Boolean.FALSE);
        setResult(34343);
        finish();
    }

    @Background
    void getData() {
        try {
            if (m.j(this)) {
                RequestModel requestModel = new RequestModel(this);
                boolean z10 = true;
                requestModel.setArgs(new RecommendArgs(1, this.loadDataType));
                ResponseModel<RecommendDataBean> responseModelC = this.rpcGameClient.C(requestModel.makeSign());
                boolean z11 = responseModelC != null;
                if (responseModelC.getData() == null) {
                    z10 = false;
                }
                if (z11 && z10) {
                    RecommendDataBean data = responseModelC.getData();
                    UserProtocolBean user_protocol = data.getUser_protocol();
                    if (data.getGame_list() != null) {
                        updateUI(data, user_protocol);
                    } else {
                        delayRequest();
                    }
                } else if (responseModelC.getFlag() == 0) {
                    finishActivit();
                } else {
                    delayRequest();
                }
            } else {
                delayRequest();
                showToast("网络异常，请检查网络");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            delayRequest();
            showToast("获取数据失败请重试");
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(r downloadTaskEvent) {
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
                if (this.SCROLLING) {
                    return;
                }
                updateProgressPartly();
                return;
            } else if (iC != 48) {
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

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.prefDef.isFirstCommendVersion().d().booleanValue()) {
            return;
        }
        this.prefDef.isFirst35().g(Boolean.FALSE);
        setResult(34343);
        finish();
    }

    @Click
    void protocolCheckPlaceholder() {
        this.protocolCheck.setSelected(!this.protocolCheck.isSelected());
        refreshEnterGame();
    }

    void refreshEnterGame() {
        if (this.selectedNumber == 0 || !this.protocolCheck.isSelected()) {
            this.iv_btn_2.setImageResource(R.drawable.bg_recommend_down_4);
            this.g_1.setVisibility(8);
            return;
        }
        this.tv_text_3.setText(this.selectedNumber + "");
        this.iv_btn_2.setImageResource(R.drawable.bg_recommend_down_3);
        this.g_1.setVisibility(0);
    }

    @UiThread
    void showToast(String message) {
        a3.b(this).d(message);
    }

    @UiThread
    void updateUI(RecommendDataBean dataBean, UserProtocolBean protocol) {
        int i10 = 0;
        if (protocol != null) {
            this.protocol.setVisibility(0);
            try {
                SpannableString spannableString = new SpannableString(protocol.getTxt());
                spannableString.setSpan(new ClickSpan(protocol.getUrl()), spannableString.length() - protocol.getUrl_txt().length(), spannableString.length(), 17);
                this.userProtocolTxt.setText(spannableString);
                this.userProtocolTxt.setMovementMethod(new d0());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            this.protocol.setVisibility(8);
        }
        this.allData.clear();
        this.downloadList.clear();
        if (dataBean.getGame_list() != null && !dataBean.getGame_list().isEmpty()) {
            int i11 = 0;
            for (RecommendBean recommendBean : dataBean.getGame_list()) {
                int i12 = i11 / 4;
                int i13 = i11 % 4;
                i11++;
                recommendBean.setExtBean(new ExtBean().setSopName("童年经典").setPosition((i12 + 1) + "_" + (i13 + 1)).setFrom("112").setChatId("oneKeyDown").setResourceId(recommendBean.getGame_info().getGame_id()));
                this.allData.add(recommendBean);
            }
            this.topGameAdapter.submitList(this.allData);
        }
        if (dataBean.getTop_10_game() != null && dataBean.getTop_10_game().getGame_list() != null && !dataBean.getTop_10_game().getGame_list().isEmpty()) {
            this.gameList.add(new MultiRecommendBean(1, dataBean.getTop_10_game().getTitle()));
            int i14 = 0;
            for (AppBean appBean : dataBean.getTop_10_game().getGame_list()) {
                i14++;
                appBean.getExtBean().setSopName(dataBean.getTop_10_game().getTitle()).setPosition("1_" + i14).setFrom("112").setChatId("oneKeyDown").setResourceId(appBean.getGame_id());
                this.downloadList.add(appBean);
            }
            this.gameList.add(new MultiRecommendBean(2, dataBean.getTop_10_game().getGame_list()));
        }
        if (dataBean.getPocket_game() != null && dataBean.getPocket_game().getGame_list() != null && !dataBean.getPocket_game().getGame_list().isEmpty()) {
            this.gameList.add(new MultiRecommendBean(1, dataBean.getPocket_game().getTitle()));
            int i15 = 0;
            for (AppBean appBean2 : dataBean.getPocket_game().getGame_list()) {
                i15++;
                appBean2.getExtBean().setSopName(dataBean.getPocket_game().getTitle()).setPosition(i15 + "_1").setFrom("112").setChatId("oneKeyDown").setResourceId(appBean2.getGame_id());
                this.gameList.add(new MultiRecommendBean(3, appBean2));
                this.downloadList.add(appBean2);
            }
        }
        if (dataBean.getSteam_game() != null && dataBean.getSteam_game().getGame_list() != null && !dataBean.getSteam_game().getGame_list().isEmpty()) {
            this.gameList.add(new MultiRecommendBean(1, dataBean.getSteam_game().getTitle()));
            int i16 = 0;
            for (AppBean appBean3 : dataBean.getSteam_game().getGame_list()) {
                i16++;
                appBean3.getExtBean().setSopName(dataBean.getSteam_game().getTitle()).setPosition("1_" + i16).setFrom("112").setChatId("oneKeyDown").setResourceId(appBean3.getGame_id());
                this.downloadList.add(appBean3);
            }
            this.gameList.add(new MultiRecommendBean(2, dataBean.getSteam_game().getGame_list()));
        }
        if (dataBean.getDoomsday_game() != null && dataBean.getDoomsday_game().getGame_list() != null && !dataBean.getDoomsday_game().getGame_list().isEmpty()) {
            this.gameList.add(new MultiRecommendBean(1, dataBean.getDoomsday_game().getTitle()));
            int i17 = 0;
            for (AppBean appBean4 : dataBean.getDoomsday_game().getGame_list()) {
                i17++;
                appBean4.getExtBean().setSopName(dataBean.getDoomsday_game().getTitle()).setPosition(i17 + "_1").setFrom("112").setChatId("oneKeyDown").setResourceId(appBean4.getGame_id());
                this.gameList.add(new MultiRecommendBean(3, appBean4));
                this.downloadList.add(appBean4);
            }
        }
        if (dataBean.getRoguelike_game() != null && dataBean.getRoguelike_game().getGame_list() != null && !dataBean.getRoguelike_game().getGame_list().isEmpty()) {
            this.gameList.add(new MultiRecommendBean(1, dataBean.getRoguelike_game().getTitle()));
            for (AppBean appBean5 : dataBean.getRoguelike_game().getGame_list()) {
                i10++;
                appBean5.getExtBean().setSopName(dataBean.getRoguelike_game().getTitle()).setPosition("1_" + i10).setFrom("112").setChatId("oneKeyDown").setResourceId(appBean5.getGame_id());
                this.downloadList.add(appBean5);
            }
            this.gameList.add(new MultiRecommendBean(2, dataBean.getRoguelike_game().getGame_list()));
        }
        this.gameListAdapter.submitList(this.gameList);
        if (this.allData.isEmpty()) {
            delayRequest();
        } else {
            this.loadSir.h();
        }
        Iterator<RecommendBean> it2 = this.allData.iterator();
        while (it2.hasNext()) {
            if (it2.next().getIs_select() == 1) {
                this.selectedNumber++;
            }
        }
        refreshEnterGame();
        this.rv_game.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.mgps.activity.recomend.RecommendActivityV1.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                if (newState == 0) {
                    RecommendActivityV1.this.expGame();
                }
            }
        });
        this.rv_game.postDelayed(new Runnable() { // from class: com.join.mgps.activity.recomend.RecommendActivityV1.5
            @Override // java.lang.Runnable
            public void run() {
                RecommendActivityV1.this.expGame();
            }
        }, 800L);
    }

    @UiThread
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
