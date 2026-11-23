package com.join.mgps.activity.vipzone.dialog;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.e0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryResult;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.activity.vipzone.bean.LuckPrizeBean;
import com.join.mgps.activity.vipzone.bean.Luckbean;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
import com.join.mgps.activity.vipzone.bean.SpecialTag;
import com.join.mgps.customview.v;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes9.dex */
public class LuckDrawBasPopupWindow extends v implements View.OnClickListener {
    Luckbean Luckbean;
    PrizeAdapter adapter;
    View closed;
    List<DataMain> dataMainList;
    int height;
    View historyTitle;
    View nullHistory;
    int page;
    XRecyclerView recyclerView;
    TextView title;
    int type;

    public class DataMain {
        public static final int PRIZEHISTORYLIST = 2;
        public static final int PRIZELIST = 1;
        public static final int PRIZEROLLIST = 3;
        Object object;
        int type;

        public DataMain() {
        }
    }

    class DrawPrizeHolder extends PrizeBasHolder {
        SimpleDraweeView icon;
        View main;
        TextView name;

        public DrawPrizeHolder(View itemView) {
            super(itemView);
            this.icon = (SimpleDraweeView) itemView.findViewById(R.id.icon);
            this.name = (TextView) itemView.findViewById(R.id.name);
            this.main = itemView.findViewById(R.id.main);
        }
    }

    class HistoryHolder extends PrizeBasHolder {
        View main;
        TextView name;
        TextView time;

        public HistoryHolder(View itemView) {
            super(itemView);
            this.time = (TextView) itemView.findViewById(R.id.time);
            this.name = (TextView) itemView.findViewById(R.id.name);
            this.main = itemView.findViewById(R.id.main);
        }
    }

    public interface OnGameOperateListener {
        void onfinifilter(SpecialTag tag1, SpecialTag tag2, SpecialTag tag3);
    }

    class PrizeAdapter extends RecyclerView.Adapter<PrizeBasHolder> {
        PrizeAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LuckDrawBasPopupWindow.this.dataMainList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return LuckDrawBasPopupWindow.this.dataMainList.get(position).type;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull PrizeBasHolder prizeBasHolder, int i10) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType == 1) {
                DrawPrizeHolder drawPrizeHolder = (DrawPrizeHolder) prizeBasHolder;
                LuckPrizeBean luckPrizeBean = (LuckPrizeBean) LuckDrawBasPopupWindow.this.dataMainList.get(i10).object;
                l.h(drawPrizeHolder.icon, luckPrizeBean.getPic());
                drawPrizeHolder.name.setText(luckPrizeBean.getTitle());
                drawPrizeHolder.icon.invalidate();
                return;
            }
            if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return;
                }
                ((RuleHolder) prizeBasHolder).describe.setText((String) LuckDrawBasPopupWindow.this.dataMainList.get(i10).object);
                return;
            }
            HistoryHolder historyHolder = (HistoryHolder) prizeBasHolder;
            final PrizeBean prizeBean = (PrizeBean) LuckDrawBasPopupWindow.this.dataMainList.get(i10).object;
            historyHolder.time.setText(e0.p(prizeBean.getTime() * 1000));
            historyHolder.name.setText(prizeBean.getName());
            historyHolder.main.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.dialog.LuckDrawBasPopupWindow.PrizeAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    if (prizeBean.isHasAddAddress()) {
                        return;
                    }
                    Intent intent = new Intent(((v) LuckDrawBasPopupWindow.this).mContext, (Class<?>) LuckDrawAddressDialog.class);
                    intent.putExtra("datas", prizeBean);
                    ((v) LuckDrawBasPopupWindow.this).mContext.startActivity(intent);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public PrizeBasHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i10) {
            PrizeBasHolder drawPrizeHolder;
            if (i10 == 1) {
                drawPrizeHolder = LuckDrawBasPopupWindow.this.new DrawPrizeHolder(LayoutInflater.from(((v) LuckDrawBasPopupWindow.this).mContext).inflate(R.layout.luckdraw_prize_layout_item, viewGroup, false));
            } else if (i10 == 2) {
                drawPrizeHolder = LuckDrawBasPopupWindow.this.new HistoryHolder(LayoutInflater.from(((v) LuckDrawBasPopupWindow.this).mContext).inflate(R.layout.luckdraw_history_layout_item, viewGroup, false));
            } else {
                if (i10 != 3) {
                    return null;
                }
                drawPrizeHolder = LuckDrawBasPopupWindow.this.new RuleHolder(LayoutInflater.from(((v) LuckDrawBasPopupWindow.this).mContext).inflate(R.layout.luckdraw_rule_layout_item, viewGroup, false));
            }
            return drawPrizeHolder;
        }
    }

    class PrizeBasHolder extends RecyclerView.ViewHolder {
        public PrizeBasHolder(View itemView) {
            super(itemView);
        }
    }

    class RuleHolder extends PrizeBasHolder {
        TextView describe;

        public RuleHolder(View itemView) {
            super(itemView);
            this.describe = (TextView) itemView.findViewById(R.id.describe);
        }
    }

    public LuckDrawBasPopupWindow(Context context, int type, int height) {
        super(context);
        this.adapter = null;
        this.page = 1;
        this.type = 0;
        this.height = 0;
        this.dataMainList = new ArrayList();
        this.type = type;
        this.height = height;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getHistory(final PrizeAdapter adapter, int pn) {
        RequestModel<LuckHistoryrequest> requestModel = new RequestModel<>(this.mContext);
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        luckHistoryrequest.setPage(pn);
        UserInfo accountData = AccountUtil_.getInstance_(this.mContext).getAccountData();
        luckHistoryrequest.setUid(accountData.getUid());
        luckHistoryrequest.setUserToken(accountData.getToken());
        requestModel.setArgs(luckHistoryrequest);
        i.P0().N0().J1(requestModel).enqueue(new Callback<ResponseModel<LuckHistoryResult>>() { // from class: com.join.mgps.activity.vipzone.dialog.LuckDrawBasPopupWindow.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<LuckHistoryResult>> call, Throwable t10) {
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<LuckHistoryResult>> call, Response<ResponseModel<LuckHistoryResult>> response) {
                if (response == null || response.body() == null || response.body().getCode() != 200) {
                    return;
                }
                LuckDrawBasPopupWindow.this.page++;
                LuckHistoryResult data = response.body().getData();
                PrizeBean missing_prize = data.getMissing_prize();
                DataMain dataMain = LuckDrawBasPopupWindow.this.new DataMain();
                if (missing_prize != null) {
                    dataMain.type = 2;
                    dataMain.object = missing_prize;
                    missing_prize.setHasAddAddress(false);
                    LuckDrawBasPopupWindow.this.dataMainList.add(dataMain);
                }
                if (data.getRecord_list() == null || data.getRecord_list().size() == 0) {
                    List<DataMain> list = LuckDrawBasPopupWindow.this.dataMainList;
                    if (list != null && list.size() > 0) {
                        LuckDrawBasPopupWindow.this.recyclerView.setNoMore();
                    }
                } else {
                    for (PrizeBean prizeBean : data.getRecord_list()) {
                        DataMain dataMain2 = LuckDrawBasPopupWindow.this.new DataMain();
                        dataMain2.type = 2;
                        dataMain2.object = prizeBean;
                        LuckDrawBasPopupWindow.this.dataMainList.add(dataMain2);
                    }
                    PrizeAdapter prizeAdapter = adapter;
                    if (prizeAdapter != null) {
                        prizeAdapter.notifyDataSetChanged();
                    }
                    LuckDrawBasPopupWindow.this.recyclerView.loadMoreComplete();
                }
                List<DataMain> list2 = LuckDrawBasPopupWindow.this.dataMainList;
                if (list2 == null || list2.size() == 0) {
                    LuckDrawBasPopupWindow.this.recyclerView.setVisibility(8);
                    LuckDrawBasPopupWindow.this.nullHistory.setVisibility(0);
                    LuckDrawBasPopupWindow.this.historyTitle.setVisibility(8);
                }
            }
        });
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.luck_prize_base_filter_bottom_operate, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.recyclerView = (XRecyclerView) this.parentView.findViewById(R.id.recyclerView);
        this.historyTitle = this.parentView.findViewById(R.id.historyTitle);
        this.closed = this.parentView.findViewById(R.id.closed);
        this.nullHistory = this.parentView.findViewById(R.id.nullHistory);
        this.title = (TextView) this.parentView.findViewById(R.id.title);
        this.adapter = new PrizeAdapter();
        int i10 = this.type;
        if (i10 == 1) {
            this.recyclerView.setLayoutManager(new GridLayoutManager(this.mContext, 3));
        } else if (i10 == 2) {
            this.recyclerView.setLoadingMoreEnabled(true);
            this.recyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
        } else if (i10 == 3) {
            this.recyclerView.setLayoutManager(new LinearLayoutManager(this.mContext));
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.recyclerView.getLayoutParams();
        layoutParams.height = this.height;
        this.recyclerView.setLayoutParams(layoutParams);
        this.recyclerView.setAdapter(this.adapter);
        this.closed.setOnClickListener(this);
        this.recyclerView.setLoadingListener(new XRecyclerView.f() { // from class: com.join.mgps.activity.vipzone.dialog.LuckDrawBasPopupWindow.1
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                LuckDrawBasPopupWindow luckDrawBasPopupWindow = LuckDrawBasPopupWindow.this;
                if (luckDrawBasPopupWindow.type == 2) {
                    luckDrawBasPopupWindow.getHistory(luckDrawBasPopupWindow.adapter, luckDrawBasPopupWindow.page);
                }
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (v10.getId() != R.id.closed) {
            return;
        }
        onClickClosed(v10);
    }

    public void onClickClosed(View view) {
        dismiss();
    }

    public void show(View parent, Luckbean luckbean, int type) {
        this.Luckbean = luckbean;
        this.type = type;
        showAtLocation(parent, 80, 0, 0);
        if (type == 1) {
            this.title.setText("奖品池");
            this.dataMainList.clear();
            for (LuckPrizeBean luckPrizeBean : luckbean.getPrize_list()) {
                DataMain dataMain = new DataMain();
                dataMain.type = type;
                dataMain.object = luckPrizeBean;
                this.dataMainList.add(dataMain);
            }
            this.recyclerView.setNoMore();
            this.historyTitle.setVisibility(8);
        } else if (type == 2) {
            this.recyclerView.setLoadingMoreEnabled(true);
            this.title.setText("中奖记录");
            getHistory(this.adapter, this.page);
            this.historyTitle.setVisibility(0);
        } else if (type == 3) {
            this.dataMainList.clear();
            this.title.setText("活动规则");
            this.historyTitle.setVisibility(8);
            for (String str : luckbean.getRule()) {
                DataMain dataMain2 = new DataMain();
                dataMain2.type = type;
                dataMain2.object = str;
                this.dataMainList.add(dataMain2);
            }
            this.recyclerView.setNoMore();
        }
        this.adapter.notifyDataSetChanged();
    }
}
