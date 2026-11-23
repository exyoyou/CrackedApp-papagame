package com.join.mgps.fragment;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.EndGameListBean;
import com.join.mgps.dto.EndGameNameListBean;
import com.join.mgps.dto.RequestEndGameTypeArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.FragmentArg;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_end_game_select)
public class i1 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RecyclerView f69810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    LinearLayout f69811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById
    LinearLayout f69812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @FragmentArg
    int f69813f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f69815h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c f69817j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f69814g = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<EndGameNameListBean> f69816i = new ArrayList();

    class a implements BaseQuickAdapter.l {
        a() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.l
        public void onLoadMoreRequested() {
            i1.N(i1.this);
            i1 i1Var = i1.this;
            i1Var.Q(i1Var.f69814g);
        }
    }

    class b implements BaseQuickAdapter.j {
        b() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            int i10 = 0;
            while (i10 < i1.this.f69816i.size()) {
                ((EndGameNameListBean) i1.this.f69816i.get(i10)).setSelected(i10 == position);
                i10++;
            }
            i1.this.f69817j.setNewData(i1.this.f69816i);
            if (i1.this.getActivity() instanceof EndGameActivity_) {
                ((EndGameActivity_) i1.this.getActivity()).chooseGame(((EndGameNameListBean) i1.this.f69816i.get(position)).getGameId());
            }
        }
    }

    class c extends BaseQuickAdapter<EndGameNameListBean, com.join.mgps.base.b> {
        public c(List<EndGameNameListBean> data) {
            super(R.layout.item_end_game_select_grid, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, EndGameNameListBean item) {
            com.join.android.app.common.utils.l.h((SimpleDraweeView) helper.getView(R.id.ivIcon), item.getGameIcon());
            helper.setText(R.id.tvGameName, item.getGameName());
            helper.getView(R.id.selector).setSelected(item.isSelected());
            helper.setTextColor(R.id.tvGameName, Color.parseColor(item.isSelected() ? "#3FABFF" : "#000000"));
        }
    }

    static /* synthetic */ int N(i1 i1Var) {
        int i10 = i1Var.f69814g;
        i1Var.f69814g = i10 + 1;
        return i10;
    }

    @Background
    void Q(int page) {
        if (com.join.android.app.common.utils.m.j(this.f69815h)) {
            RequestEndGameTypeArgs requestEndGameTypeArgs = new RequestEndGameTypeArgs();
            requestEndGameTypeArgs.setUid(AccountUtil_.getInstance_(this.f69815h).getUid());
            requestEndGameTypeArgs.setPage(page);
            requestEndGameTypeArgs.setModelType(this.f69813f);
            RequestModel requestModel = new RequestModel();
            requestModel.setArgs(requestEndGameTypeArgs);
            requestModel.setDefault(this.f69815h);
            ResponseModel<EndGameListBean> responseModelL0 = com.join.mgps.rpc.impl.i.P0().l0(requestModel.makeSign());
            if (responseModelL0 == null || responseModelL0.getCode() != 200) {
                return;
            }
            if (responseModelL0.getData() == null || responseModelL0.getData().getGameList() == null || responseModelL0.getData().getGameList().size() <= 0) {
                R();
            } else {
                T(responseModelL0.getData(), page);
            }
        }
    }

    @UiThread
    void R() {
        this.f69817j.loadMoreComplete();
        this.f69817j.loadMoreEnd(true);
    }

    public void S(String gameId) {
        List<EndGameNameListBean> list = this.f69816i;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (EndGameNameListBean endGameNameListBean : this.f69816i) {
            endGameNameListBean.setSelected(TextUtils.equals(endGameNameListBean.getGameId(), gameId));
        }
        c cVar = this.f69817j;
        if (cVar != null) {
            cVar.notifyDataSetChanged();
        }
    }

    @UiThread
    void T(EndGameListBean data, int page) {
        showMain();
        if (this.f69816i == null) {
            this.f69816i = new ArrayList();
        }
        this.f69816i.addAll(data.getGameList());
        c cVar = this.f69817j;
        if (cVar != null) {
            cVar.loadMoreComplete();
            this.f69817j.setNewData(this.f69816i);
        }
    }

    @AfterViews
    void afterviews() {
        this.f69815h = getContext();
        this.f69817j = new c(this.f69816i);
        this.f69810c.setLayoutManager(new GridLayoutManager(getContext(), 4));
        this.f69810c.setAdapter(this.f69817j);
        this.f69817j.setOnLoadMoreListener(new a(), this.f69810c);
        this.f69817j.setOnItemClickListener(new b());
        showLoding();
        Q(this.f69814g);
    }

    @Override // androidx.fragment.app.Fragment
    public void setMenuVisibility(boolean menuVisible) {
        super.setMenuVisibility(menuVisible);
    }

    @UiThread
    void showLoding() {
        LinearLayout linearLayout = this.f69811d;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69812e;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f69810c;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.f69812e;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.f69811d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f69810c;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        LinearLayout linearLayout = this.f69812e;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.f69811d;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        RecyclerView recyclerView = this.f69810c;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
    }

    @UiThread
    void showTost(String message) {
        com.join.mgps.Util.a3.b(getContext()).d(message);
    }
}
