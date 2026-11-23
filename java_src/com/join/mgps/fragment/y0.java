package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.EndGameDetailBean;
import com.join.mgps.dto.EndGameRecordArgs;
import com.join.mgps.dto.RequestEndGameDetailArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Collection;
import java.util.List;
import okhttp3.Request;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_end_game_detail_ranking)
public class y0 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    TextView f71473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    SimpleDraweeView f71474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    TextView f71475e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    TextView f71476f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById
    TextView f71477g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    ImageView f71478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    RecyclerView f71479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    RelativeLayout f71480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @ViewById
    ImageView f71481k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @FragmentArg
    EndGameDetailBean f71482l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Context f71483m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private List<EndGameDetailBean.RankingListBean> f71484n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c f71485o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f71486p = 1;

    class a implements BaseQuickAdapter.l {
        a() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.l
        public void onLoadMoreRequested() {
            y0.O(y0.this);
            y0 y0Var = y0.this;
            y0Var.S(y0Var.f71486p);
        }
    }

    class b extends com.join.android.app.common.http.d.p<String> {
        b() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
            Toast.makeText(y0.this.f71483m, "回放失败！", 0).show();
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String response) {
            y0.this.X(response);
        }
    }

    class c extends BaseQuickAdapter<EndGameDetailBean.RankingListBean, com.join.mgps.base.b> {
        public c(List<EndGameDetailBean.RankingListBean> data) {
            super(R.layout.item_end_game_detail_ranking, data);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void t(EndGameDetailBean.RankingListBean rankingListBean, View view) {
            y0.this.T(rankingListBean);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, final EndGameDetailBean.RankingListBean item) {
            helper.setText(R.id.tvRank, String.valueOf(helper.getLayoutPosition() + 1)).setText(R.id.tvUsername, item.getNickname()).setText(R.id.tvScoreTime, y0.this.R(item.getElapsedTime())).setText(R.id.tvRankChange, String.valueOf(item.getChange())).setVisible(R.id.ivPlayVideo, item.isPlayback()).setTextColor(R.id.tvRank, Color.parseColor(helper.getLayoutPosition() <= 2 ? "#097BEC" : "#363636"));
            ((TextView) helper.getView(R.id.tvRank)).setTypeface(null, helper.getLayoutPosition() > 2 ? 0 : 1);
            helper.getView(R.id.ivPlayVideo).setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.z0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f71540b.t(item, view);
                }
            });
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivAvatar), item.getAvatar());
        }
    }

    static /* synthetic */ int O(y0 y0Var) {
        int i10 = y0Var.f71486p;
        y0Var.f71486p = i10 + 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String R(int mills) {
        float f10 = mills / 1000.0f;
        if (f10 < 60.0f) {
            return new DecimalFormat("0.00").format(f10) + "秒";
        }
        int i10 = (int) f10;
        return (i10 / 60) + "分" + (i10 % 60) + "秒";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(EndGameDetailBean.RankingListBean rankingListBean, View view) {
        T(rankingListBean);
    }

    @Background
    void S(int page) {
        if (!com.join.android.app.common.utils.m.j(getContext())) {
            showTost(getResources().getString(R.string.net_connect_failed));
            return;
        }
        RequestEndGameDetailArgs requestEndGameDetailArgs = new RequestEndGameDetailArgs();
        requestEndGameDetailArgs.setGameId(this.f71482l.getEndgameInfo().getGameId());
        requestEndGameDetailArgs.setEndgameId(this.f71482l.getEndgameInfo().getEndgameId());
        requestEndGameDetailArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
        requestEndGameDetailArgs.setPage(page);
        RequestModel requestModel = new RequestModel();
        requestModel.setArgs(requestEndGameDetailArgs);
        requestModel.setDefault(getContext());
        ResponseModel<List<EndGameDetailBean.RankingListBean>> responseModelA0 = com.join.mgps.rpc.impl.i.P0().a0(requestModel.makeSign());
        if (responseModelA0 == null || responseModelA0.getCode() != 200) {
            return;
        }
        updateUi(responseModelA0.getData());
    }

    @Background
    void T(EndGameDetailBean.RankingListBean item) {
        if (!com.join.android.app.common.utils.m.j(getContext())) {
            showTost(getResources().getString(R.string.net_connect_failed));
            return;
        }
        EndGameRecordArgs endGameRecordArgs = new EndGameRecordArgs();
        endGameRecordArgs.setEndgameId(this.f71482l.getEndgameInfo().getEndgameId());
        endGameRecordArgs.setUid(AccountUtil_.getInstance_(getContext()).getUid());
        endGameRecordArgs.setChallengeId(item.getChallengeId());
        endGameRecordArgs.setOwnerUid(item.getUid());
        RequestModel requestModel = new RequestModel();
        requestModel.setArgs(endGameRecordArgs);
        requestModel.setDefault(getContext());
        ResponseModel responseModelH0 = com.join.mgps.rpc.impl.i.P0().H0(requestModel.makeSign());
        if (responseModelH0 == null || responseModelH0.getCode() != 200) {
            showTost("获取回放地址失败");
        } else {
            V((String) responseModelH0.getData());
        }
    }

    public void V(String url) {
        DownloadTask downloadTaskG = q5.f.M().G(this.f71482l.getEndgameInfo().getGameId());
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            EndGameLaunchActivity_.intent(getContext()).b(this.f71482l.getEndgameInfo().getGameId()).a(this.f71482l.getEndgameInfo()).d(15).c(url).start();
            return;
        }
        String str = com.join.mgps.Util.z.f50171j + "/record/";
        if (url.isEmpty()) {
            Toast.makeText(this.f71483m, "回放失败！", 0).show();
            return;
        }
        File file = new File(str + url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1));
        if (file.exists()) {
            X(file.getPath());
        } else {
            com.join.android.app.common.http.d.B().a(url, str, new b());
        }
    }

    public void W(EndGameDetailBean data) {
        this.f71482l = data;
        if (this.f71479i == null) {
            return;
        }
        this.f71486p = 1;
        afterviews();
    }

    @UiThread
    void X(String path) {
        UtilsMy.F4(this.f71483m, AccountUtil_.getInstance_(getContext()).getUid(), q5.f.M().G(this.f71482l.getEndgameInfo().getGameId()), 15, path, true);
    }

    @AfterViews
    void afterviews() {
        this.f71483m = getContext();
        this.f71484n = this.f71482l.getRankingList();
        this.f71479i.setLayoutManager(new LinearLayoutManager(this.f71483m));
        c cVar = new c(this.f71484n);
        this.f71485o = cVar;
        cVar.setEmptyView(LayoutInflater.from(this.f71483m).inflate(R.layout.empty_layout_include, (ViewGroup) null, false));
        this.f71479i.setAdapter(this.f71485o);
        this.f71479i.setHasFixedSize(true);
        this.f71485o.setOnLoadMoreListener(new a(), this.f71479i);
        final EndGameDetailBean.RankingListBean myRankings = this.f71482l.getMyRankings();
        if (myRankings == null) {
            this.f71473c.setText("--");
            com.join.android.app.common.utils.l.h(this.f71474d, AccountUtil_.getInstance_(getContext()).getAccountData().getAvatarSrc());
            this.f71475e.setText(AccountUtil_.getInstance_(getContext()).getAccountData().getNickname());
            this.f71476f.setText("暂无记录");
            this.f71477g.setText("--");
            this.f71480j.setVisibility(8);
            this.f71481k.setVisibility(4);
            return;
        }
        this.f71480j.setVisibility(0);
        this.f71480j.setBackgroundColor(Color.parseColor("#FAFAFA"));
        this.f71473c.setText("第" + myRankings.getRanking() + "名");
        com.join.android.app.common.utils.l.h(this.f71474d, myRankings.getAvatar());
        this.f71475e.setText(myRankings.getNickname());
        this.f71476f.setText(R(myRankings.getElapsedTime()));
        this.f71477g.setText(String.valueOf(myRankings.getChange()));
        this.f71481k.setVisibility(myRankings.isPlayback() ? 0 : 4);
        this.f71481k.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.fragment.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f71443b.U(myRankings, view);
            }
        });
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(getContext()).d(message);
    }

    @UiThread
    void updateUi(List<EndGameDetailBean.RankingListBean> data) {
        this.f71485o.loadMoreComplete();
        if (data == null || data.size() <= 0) {
            this.f71485o.loadMoreEnd(true);
        } else {
            this.f71485o.addData((Collection) data);
        }
    }
}
