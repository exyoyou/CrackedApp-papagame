package com.join.mgps.activity.mygame;

import android.content.Context;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.activity.mygame.adapter.DetailRecyclerViewChileAdapter;
import com.join.mgps.activity.mygame.data.DataGameListBean;
import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.dto.CommonMultiItemBean;
import com.join.mgps.dto.QueryDownloadInfoRequestArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.mygame_guesslike_activity)
public class MyGameGuesslikeActivity extends BaseAppCompatActivity {
    Context mContext;

    @ViewById
    RecyclerView recyclerView;

    @ViewById
    TextView title_textview;

    @AfterViews
    void afterviews() {
        this.mContext = this;
        this.title_textview.setText("猜你喜欢");
        showLoadingLayoutBase();
        getDownloadRecomedData();
    }

    @Click
    void back_image() {
        finish();
    }

    void getDownloadRecomedData() {
        String uid = AccountUtil_.getInstance_(this.mContext).getUid();
        String token = AccountUtil_.getInstance_(this.mContext).getToken();
        RequestModel<QueryDownloadInfoRequestArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this.mContext);
        QueryDownloadInfoRequestArgs queryDownloadInfoRequestArgs = new QueryDownloadInfoRequestArgs();
        queryDownloadInfoRequestArgs.setGameId("0");
        queryDownloadInfoRequestArgs.setDataType("2");
        queryDownloadInfoRequestArgs.setUid(uid);
        queryDownloadInfoRequestArgs.setToken(token);
        requestModel.setArgs(queryDownloadInfoRequestArgs);
        i.P0().N0().K1(requestModel).enqueue(new Callback<ResponseModel<DataGameListBean>>() { // from class: com.join.mgps.activity.mygame.MyGameGuesslikeActivity.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<DataGameListBean>> call, Throwable t10) {
                MyGameGuesslikeActivity.this.showFailLayoutBase();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<DataGameListBean>> call, Response<ResponseModel<DataGameListBean>> response) {
                if (response == null) {
                    MyGameGuesslikeActivity.this.showFailLayoutBase();
                    return;
                }
                ResponseModel<DataGameListBean> responseModelBody = response.body();
                if (responseModelBody == null || responseModelBody.getData() == null) {
                    MyGameGuesslikeActivity.this.showFailLayoutBase();
                    return;
                }
                List<GamedownRecomendItemBean> gameList = responseModelBody.getData().getGameList();
                if (gameList == null || gameList.size() <= 0) {
                    MyGameGuesslikeActivity.this.showNoDataLayoutBase();
                } else {
                    MyGameGuesslikeActivity.this.showGuesslike(gameList);
                }
            }
        });
    }

    @Override // com.BaseAppCompatActivity
    public int getLoadingLayoutResID() {
        return R.id.main;
    }

    @Override // com.BaseAppCompatActivity
    public void loadDataBase() {
        getDownloadRecomedData();
    }

    @UiThread
    void showGuesslike(List<GamedownRecomendItemBean> subs) {
        Ext ext = new Ext();
        ext.setPosition("3");
        ext.setGameId("0");
        t.l(this.mContext).R1(Event.showGuessYouLike, ext);
        hideLoadingLayoutBase();
        this.recyclerView.setLayoutManager(new StaggeredGridLayoutManager(2, 1));
        ArrayList arrayList = new ArrayList();
        if (subs != null) {
            Iterator<GamedownRecomendItemBean> it2 = subs.iterator();
            while (it2.hasNext()) {
                arrayList.add(new CommonMultiItemBean(1, it2.next()));
            }
        }
        this.recyclerView.setAdapter(new DetailRecyclerViewChileAdapter(this.mContext, arrayList, 3));
    }
}
