package com.join.mgps.activity;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.coupon.ServerListData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.XListView;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ServiceState;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.gamedetial_more_service_layout)
public class DetialMoreServiceListActivity extends BaseActivity {

    @ViewById
    ImageView back_image;
    com.join.mgps.adapter.y collectionAdapter;
    List<ServiceState> collectionBeanSubList;
    private Context context;

    @ViewById(R.id.title_normal_download_cdv)
    CustomerDownloadView downloadView;

    @Extra
    String gameId;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    XListView rankListView;

    @ViewById
    ImageView relodingimag;
    com.join.mgps.rpc.e rpcClient;

    @ViewById(R.id.title_normal_search_img)
    ImageView searchImg;

    @ViewById
    TextView title_textview;
    private int pn = 1;
    private boolean isRequesting = false;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long l10) {
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcClient = com.join.mgps.rpc.impl.d.O1();
        this.context = this;
        com.join.mgps.adapter.y yVar = new com.join.mgps.adapter.y(this.context);
        this.collectionAdapter = yVar;
        this.collectionBeanSubList = yVar.a();
        showLoding();
        getListData();
        this.rankListView.setPreLoadCount(10);
        this.rankListView.b();
        this.rankListView.c();
        this.rankListView.setOnItemClickListener(new a());
        this.rankListView.setAdapter((ListAdapter) this.collectionAdapter);
    }

    @Click
    void back_image() {
        finish();
    }

    @Background
    void getListData() {
        new ArrayList();
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            updateListFooter();
            showLodingFailed();
            return;
        }
        this.isRequesting = true;
        try {
            try {
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this.context);
                RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs();
                requestGameIdArgs.setGameId(this.gameId);
                requestGameIdArgs.setPage(1);
                requestGameIdArgs.setUid(AccountUtil_.getInstance_(this.context).getAccountData().getUid());
                requestModel.setArgs(requestGameIdArgs);
                ResponseModel<ServerListData> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().S0(requestModel.makeSign()).execute().body();
                if (responseModelBody == null || responseModelBody.getData() == null) {
                    updateListFooter();
                    showLodingFailed();
                } else {
                    List<ServiceState> game_open_server_list = responseModelBody.getData().getGame_open_server_list();
                    if (game_open_server_list == null || game_open_server_list.size() <= 0) {
                        noMore();
                    } else {
                        if (game_open_server_list.size() == 0) {
                            noMore();
                        } else {
                            this.pn++;
                        }
                        showMain(game_open_server_list);
                        updateListFooter();
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                updateListFooter();
                showLodingFailed();
            }
        } finally {
            this.isRequesting = false;
        }
    }

    @Click
    void mg_loading() {
        this.pn = 1;
        getListData();
    }

    @UiThread
    void noMore() {
        this.rankListView.setNoMore();
    }

    @Click
    void relodingimag() {
        this.pn = 1;
        showLoding();
        getListData();
    }

    @UiThread
    void showLoding() {
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    @UiThread
    void showLodingFailed() {
        List<ServiceState> list = this.collectionBeanSubList;
        if (list == null || list.size() == 0) {
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.rankListView.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<ServiceState> subList) {
        if (subList == null || subList.size() == 0) {
            return;
        }
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.rankListView.setVisibility(0);
        if (this.pn <= 2) {
            this.collectionBeanSubList.clear();
        }
        this.collectionBeanSubList.addAll(subList);
        if (this.pn != 2) {
            this.collectionAdapter.notifyDataSetChanged();
            return;
        }
        this.title_textview.setText("开合服表");
        this.collectionBeanSubList.size();
        this.collectionAdapter.notifyDataSetChanged();
    }

    @UiThread
    void updateListFooter() {
        this.rankListView.r();
        this.rankListView.q();
    }
}
