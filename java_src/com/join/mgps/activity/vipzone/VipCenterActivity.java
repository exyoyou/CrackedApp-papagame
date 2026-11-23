package com.join.mgps.activity.vipzone;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.q;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.e0;
import com.join.mgps.activity.vipzone.bean.IconGame;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.activity.vipzone.bean.Luckbean;
import com.join.mgps.activity.vipzone.bean.PrizeBean;
import com.join.mgps.activity.vipzone.bean.VipCenterGameListitem;
import com.join.mgps.activity.vipzone.bean.VipCenterRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterResultData;
import com.join.mgps.activity.vipzone.dialog.LuckDrawBasPopupWindow;
import com.join.mgps.activity.vipzone.dialog.LuckDrawFinishDialog;
import com.join.mgps.customview.ScratchView;
import com.join.mgps.dto.RecomDatabean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
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
@EActivity(R.layout.vip_center_activity)
public class VipCenterActivity extends BaseAppCompatActivity {
    VipcenterAdapter adapter;
    Context context;

    @ViewById
    View line;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    Luckbean luckbean;
    private LuckDrawBasPopupWindow prizeData;
    private LuckDrawBasPopupWindow prizeList;
    private LuckDrawBasPopupWindow prizeRule;

    @ViewById
    RecyclerView recyclerView;

    @ViewById
    TextView title_textview;
    List<VipCenterDataMain> vipCenterDataMains = new ArrayList();
    boolean isstruckting = false;

    class CollHolder {
        SimpleDraweeView cardImage;
        TextView gameName;

        CollHolder() {
        }
    }

    class CollotionHlistAdapter extends BaseAdapter {
        List<RecomDatabean> recomDatabeans;

        public CollotionHlistAdapter(List<RecomDatabean> recomDatabeans) {
            this.recomDatabeans = recomDatabeans;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.recomDatabeans.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            CollHolder collHolder;
            if (convertView == null) {
                convertView = LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_imagecard_layout, (ViewGroup) null);
                collHolder = VipCenterActivity.this.new CollHolder();
                collHolder.cardImage = (SimpleDraweeView) convertView.findViewById(R.id.cardImage);
                convertView.setTag(collHolder);
            } else {
                collHolder = (CollHolder) convertView.getTag();
            }
            if (position == 0) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) collHolder.cardImage.getLayoutParams();
                layoutParams.setMargins(VipCenterActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp30), 0, 0, 0);
                collHolder.cardImage.setLayoutParams(layoutParams);
            } else {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) collHolder.cardImage.getLayoutParams();
                layoutParams2.setMargins(VipCenterActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp16), 0, 0, 0);
                collHolder.cardImage.setLayoutParams(layoutParams2);
            }
            final RecomDatabean recomDatabean = this.recomDatabeans.get(position);
            l.i(collHolder.cardImage, recomDatabean.getMain().getPic_remote(), s.c.f27292i);
            collHolder.cardImage.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.CollotionHlistAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    IntentUtil.getInstance().intentActivity(VipCenterActivity.this.context, recomDatabean.getSub().get(0).getIntentDataBean());
                }
            });
            return convertView;
        }
    }

    class VipCardHolder extends VipHolder {
        TextView detail;
        SimpleDraweeView iv_user_avatar;
        TextView time;
        TextView userName;

        public VipCardHolder(View itemView) {
            super(itemView);
            this.iv_user_avatar = (SimpleDraweeView) itemView.findViewById(R.id.iv_user_avatar);
            this.userName = (TextView) itemView.findViewById(R.id.userName);
            this.time = (TextView) itemView.findViewById(R.id.time);
            this.detail = (TextView) itemView.findViewById(R.id.detail);
        }
    }

    class VipCenterDataMain {
        public static final int COLOCTION = 5;
        public static final int EMPTY = 6;
        public static final int HLIST = 4;
        public static final int LUCKGIFT = 2;
        public static final int TITLE = 3;
        public static final int VIPCARD = 1;
        Object object;
        int type;

        public VipCenterDataMain(int type, Object object) {
            this.type = type;
            this.object = object;
        }

        public Object getObject() {
            return this.object;
        }

        public int getType() {
            return this.type;
        }

        public void setObject(Object object) {
            this.object = object;
        }

        public void setType(int type) {
            this.type = type;
        }
    }

    class VipHlistHolder extends VipHolder {
        HListView listview;

        public VipHlistHolder(View itemView) {
            super(itemView);
            this.listview = (HListView) itemView.findViewById(R.id.listview);
        }
    }

    class VipHolder extends RecyclerView.ViewHolder {
        public VipHolder(View itemView) {
            super(itemView);
        }
    }

    class VipLuckDrawlHolder extends VipHolder {
        SimpleDraweeView prizeDataImg;
        LinearLayout prizeDataLayout;
        TextView prizeDataName;
        SimpleDraweeView prizeListImg;
        LinearLayout prizeListLayout;
        TextView prizeListName;
        SimpleDraweeView prizeRuleImg;
        LinearLayout prizeRuleLayout;
        TextView prizeRuleName;
        ScratchView scratch;
        TextView scratchBack;
        TextView todayScratchNumber;

        public VipLuckDrawlHolder(View itemView) {
            super(itemView);
            this.prizeListImg = (SimpleDraweeView) itemView.findViewById(R.id.prizeListImg);
            this.prizeListName = (TextView) itemView.findViewById(R.id.prizeListName);
            this.prizeDataName = (TextView) itemView.findViewById(R.id.prizeDataName);
            this.prizeRuleName = (TextView) itemView.findViewById(R.id.prizeRuleName);
            this.scratch = (ScratchView) itemView.findViewById(R.id.scratch);
            this.todayScratchNumber = (TextView) itemView.findViewById(R.id.todayScratchNumber);
            this.prizeListLayout = (LinearLayout) itemView.findViewById(R.id.prizeListLayout);
            this.prizeDataLayout = (LinearLayout) itemView.findViewById(R.id.prizeDataLayout);
            this.prizeRuleLayout = (LinearLayout) itemView.findViewById(R.id.prizeRuleLayout);
            this.scratchBack = (TextView) itemView.findViewById(R.id.scratchBack);
        }
    }

    class VipTitleHolder extends VipHolder {
        TextView more;
        TextView title;

        public VipTitleHolder(View itemView) {
            super(itemView);
            this.title = (TextView) itemView.findViewById(R.id.title);
            this.more = (TextView) itemView.findViewById(R.id.more);
        }
    }

    class VipcenterAdapter extends RecyclerView.Adapter<VipHolder> {
        VipcenterAdapter() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onBindViewHolder$0(View view) {
            IntentUtil.getInstance().goVip(VipCenterActivity.this.context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return VipCenterActivity.this.vipCenterDataMains.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return VipCenterActivity.this.vipCenterDataMains.get(position).getType();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull VipHolder vipHolder, int position) {
            VipCenterDataMain vipCenterDataMain = VipCenterActivity.this.vipCenterDataMains.get(position);
            int itemViewType = getItemViewType(position);
            int i10 = 0;
            if (itemViewType == 1) {
                VipCardHolder vipCardHolder = (VipCardHolder) vipHolder;
                UserInfo accountData = AccountUtil_.getInstance_(VipCenterActivity.this.context).getAccountData();
                vipCardHolder.userName.setText(accountData.getNickname());
                vipCardHolder.detail.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f58177b.lambda$onBindViewHolder$0(view);
                    }
                });
                try {
                    i10 = Integer.parseInt(e0.w(accountData.getVipExpTime() * 1000));
                } catch (Exception unused) {
                }
                if (i10 >= 2037) {
                    vipCardHolder.time.setText("悟饭VIP 终生会员");
                } else {
                    vipCardHolder.time.setText("悟饭VIP " + e0.p(accountData.getVipExpTime() * 1000) + "到期");
                }
                l.h(vipCardHolder.iv_user_avatar, accountData.getAvatarSrc());
                return;
            }
            if (itemViewType != 2) {
                if (itemViewType == 3) {
                    final VipCenterGameListitem vipCenterGameListitem = (VipCenterGameListitem) vipCenterDataMain.getObject();
                    VipTitleHolder vipTitleHolder = (VipTitleHolder) vipHolder;
                    vipTitleHolder.title.setText(vipCenterGameListitem.getTitle());
                    if ("会员专享合集".equals(vipCenterGameListitem.getTitle())) {
                        vipTitleHolder.more.setVisibility(8);
                    } else {
                        vipTitleHolder.more.setVisibility(0);
                    }
                    vipTitleHolder.more.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v10) {
                            IntentDateBean intentDateBean = new IntentDateBean();
                            intentDateBean.setLink_type(3);
                            intentDateBean.setJump_type(vipCenterGameListitem.getBoard_id());
                            IntentUtil.getInstance().intentActivity(VipCenterActivity.this.context, intentDateBean);
                        }
                    });
                    return;
                }
                if (itemViewType == 4) {
                    ((VipHlistHolder) vipHolder).listview.setAdapter((ListAdapter) new GameHlistAdapter((List) vipCenterDataMain.getObject(), VipCenterActivity.this.context, 139));
                    return;
                } else {
                    if (itemViewType != 5) {
                        return;
                    }
                    ((VipHlistHolder) vipHolder).listview.setAdapter((ListAdapter) VipCenterActivity.this.new CollotionHlistAdapter((List) vipCenterDataMain.getObject()));
                    return;
                }
            }
            final Luckbean luckbean = (Luckbean) vipCenterDataMain.getObject();
            if (luckbean != null) {
                final VipLuckDrawlHolder vipLuckDrawlHolder = (VipLuckDrawlHolder) vipHolder;
                vipLuckDrawlHolder.todayScratchNumber.setText("今日剩余机会：" + luckbean.getCount() + "次");
                if (luckbean.getLastPrize() != null) {
                    vipLuckDrawlHolder.scratchBack.setText(luckbean.getLastPrize().getTitle());
                }
                if (luckbean.getCount() == 0) {
                    vipLuckDrawlHolder.scratch.setCanCratch(false);
                    vipLuckDrawlHolder.scratch.setNumber(luckbean.getCount());
                } else {
                    vipLuckDrawlHolder.scratch.setCanCratch(true);
                    vipLuckDrawlHolder.scratch.setNumber(luckbean.getCount());
                }
                vipLuckDrawlHolder.scratch.setOnScratchListener(new ScratchView.c() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.1
                    @Override // com.join.mgps.customview.ScratchView.c
                    public void onScratch() {
                        if (luckbean.getCount() > 0) {
                            VipCenterActivity vipCenterActivity = VipCenterActivity.this;
                            if (vipCenterActivity.isstruckting) {
                                return;
                            }
                            vipCenterActivity.isstruckting = true;
                            vipCenterActivity.startScratchPrize();
                        }
                    }
                });
                vipLuckDrawlHolder.scratch.setOnCompleteListener(new ScratchView.b() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.2
                    @Override // com.join.mgps.customview.ScratchView.b
                    public void complete() {
                        vipLuckDrawlHolder.scratch.setCanCratch(false);
                        vipLuckDrawlHolder.scratch.setNumber(luckbean.getCount());
                        VipCenterActivity.this.delaysetStrcth(vipLuckDrawlHolder.scratch);
                        vipLuckDrawlHolder.scratch.setVisibility(8);
                        PrizeBean lastPrize = luckbean.getLastPrize();
                        if (lastPrize != null) {
                            new LuckDrawFinishDialog(VipCenterActivity.this.context).showMydialog(lastPrize);
                            if (luckbean.getCount() > 0) {
                                vipLuckDrawlHolder.scratch.setVisibility(0);
                                vipLuckDrawlHolder.scratch.k();
                            }
                        }
                    }
                });
                vipLuckDrawlHolder.prizeListLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        if (VipCenterActivity.this.prizeList == null) {
                            int iK = q.n(VipCenterActivity.this).k(VipCenterActivity.this) / 2;
                            VipCenterActivity.this.prizeList = new LuckDrawBasPopupWindow(VipCenterActivity.this.context, 2, iK);
                            VipCenterActivity.this.prizeList.setWidth(-1);
                        }
                        VipCenterActivity.this.prizeList.show(VipCenterActivity.this.recyclerView, luckbean, 2);
                    }
                });
                vipLuckDrawlHolder.prizeDataLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        if (VipCenterActivity.this.prizeData == null) {
                            int iK = q.n(VipCenterActivity.this).k(VipCenterActivity.this) / 2;
                            VipCenterActivity.this.prizeData = new LuckDrawBasPopupWindow(VipCenterActivity.this.context, 1, iK);
                            VipCenterActivity.this.prizeData.setWidth(-1);
                        }
                        VipCenterActivity.this.prizeData.show(VipCenterActivity.this.recyclerView, luckbean, 1);
                    }
                });
                vipLuckDrawlHolder.prizeRuleLayout.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.VipcenterAdapter.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        if (VipCenterActivity.this.prizeRule == null) {
                            int iK = q.n(VipCenterActivity.this).k(VipCenterActivity.this) / 2;
                            VipCenterActivity.this.prizeRule = new LuckDrawBasPopupWindow(VipCenterActivity.this.context, 3, iK);
                            VipCenterActivity.this.prizeRule.setWidth(-1);
                        }
                        VipCenterActivity.this.prizeRule.show(VipCenterActivity.this.recyclerView, luckbean, 3);
                    }
                });
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public VipHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int type) {
            switch (type) {
                case 1:
                    return VipCenterActivity.this.new VipCardHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_vipcard_layout, viewGroup, false));
                case 2:
                    return VipCenterActivity.this.new VipLuckDrawlHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_luckdrawl_layout, viewGroup, false));
                case 3:
                    return VipCenterActivity.this.new VipTitleHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_title_layout, viewGroup, false));
                case 4:
                case 5:
                    return VipCenterActivity.this.new VipHlistHolder(LayoutInflater.from(VipCenterActivity.this.context).inflate(R.layout.vip_center_hlistview_layout, viewGroup, false));
                case 6:
                    TextView textView = new TextView(VipCenterActivity.this.context);
                    textView.setHeight(VipCenterActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp100));
                    return VipCenterActivity.this.new VipHlistHolder(textView);
                default:
                    return null;
            }
        }
    }

    private void addItemHlist(VipCenterGameListitem vipCenterGameListitem) {
        if (vipCenterGameListitem != null) {
            List<IconGame> game_list = vipCenterGameListitem.getGame_list();
            this.vipCenterDataMains.add(new VipCenterDataMain(3, vipCenterGameListitem));
            this.vipCenterDataMains.add(new VipCenterDataMain(4, game_list));
        }
    }

    private void getData() {
        int i10;
        RequestModel<VipCenterRequestBean> requestModel = new RequestModel<>(this);
        VipCenterRequestBean vipCenterRequestBean = new VipCenterRequestBean();
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        vipCenterRequestBean.setUid(accountData.getUid());
        vipCenterRequestBean.setUserToken(accountData.getToken());
        try {
            i10 = Integer.parseInt(com.join.mgps.Util.b.vl(com.join.mgps.Util.a.b(accountData.getSecretKey())));
        } catch (Exception unused) {
            i10 = 0;
        }
        vipCenterRequestBean.setVip(i10);
        requestModel.setArgs(vipCenterRequestBean);
        i.P0().N0().b1(requestModel).enqueue(new Callback<ResponseModel<VipCenterResultData>>() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<VipCenterResultData>> call, Throwable t10) {
                List<VipCenterDataMain> list = VipCenterActivity.this.vipCenterDataMains;
                if (list == null || list.size() == 0) {
                    VipCenterActivity.this.loding_faile.setVisibility(0);
                    VipCenterActivity.this.loding_layout.setVisibility(8);
                    VipCenterActivity.this.recyclerView.setVisibility(8);
                }
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<VipCenterResultData>> call, Response<ResponseModel<VipCenterResultData>> response) {
                if (response == null || response.body() == null) {
                    return;
                }
                ResponseModel<VipCenterResultData> responseModelBody = response.body();
                if (responseModelBody.getCode() == 200) {
                    VipCenterActivity.this.showData(responseModelBody.getData());
                    return;
                }
                VipCenterActivity.this.loding_faile.setVisibility(0);
                VipCenterActivity.this.loding_layout.setVisibility(8);
                VipCenterActivity.this.recyclerView.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showData(VipCenterResultData resultData) {
        if (resultData == null) {
            return;
        }
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.recyclerView.setVisibility(0);
        this.vipCenterDataMains.add(new VipCenterDataMain(1, ""));
        VipCenterDataMain vipCenterDataMain = new VipCenterDataMain(2, resultData.getLuck_draw_info());
        this.luckbean = resultData.getLuck_draw_info();
        this.vipCenterDataMains.add(vipCenterDataMain);
        addItemHlist(resultData.getMod_game_list());
        addItemHlist(resultData.getGf_game_list());
        addItemHlist(resultData.getOs_game_list());
        addItemHlist(resultData.getCp_game_list());
        VipCenterGameListitem vipCenterGameListitem = new VipCenterGameListitem();
        vipCenterGameListitem.setTitle("会员专享合集");
        this.vipCenterDataMains.add(new VipCenterDataMain(3, vipCenterGameListitem));
        this.vipCenterDataMains.add(new VipCenterDataMain(5, resultData.getMember_collection()));
        this.vipCenterDataMains.add(new VipCenterDataMain(6, null));
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScratchPrize() {
        RequestModel<LuckHistoryrequest> requestModel = new RequestModel<>(this.context);
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        luckHistoryrequest.setPage(1);
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        luckHistoryrequest.setUid(accountData.getUid());
        luckHistoryrequest.setUserToken(accountData.getToken());
        requestModel.setArgs(luckHistoryrequest);
        i.P0().N0().I1(requestModel).enqueue(new Callback<ResponseModel<PrizeBean>>() { // from class: com.join.mgps.activity.vipzone.VipCenterActivity.2
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<PrizeBean>> call, Throwable t10) {
                VipCenterActivity.this.isstruckting = false;
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<PrizeBean>> call, Response<ResponseModel<PrizeBean>> response) {
                if (response != null && response.body() != null && response.body().getCode() == 200) {
                    VipCenterActivity.this.luckbean.setLastPrize(response.body().getData());
                    Luckbean luckbean = VipCenterActivity.this.luckbean;
                    luckbean.setCount(luckbean.getCount() - 1);
                    VipCenterActivity.this.adapter.notifyDataSetChanged();
                    return;
                }
                if (response == null || response.body() == null || response.body().getCode() != 500) {
                    return;
                }
                a3.b(VipCenterActivity.this.context).d(response.body().getMessage());
                VipCenterActivity.this.isstruckting = false;
            }
        });
    }

    @AfterViews
    void afterview() {
        this.context = this;
        t.l(this).R1(Event.visitMembercen, new Ext());
        this.title_textview.setText("会员中心");
        this.title_textview.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp32));
        this.title_textview.setGravity(17);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        VipcenterAdapter vipcenterAdapter = new VipcenterAdapter();
        this.adapter = vipcenterAdapter;
        this.recyclerView.setAdapter(vipcenterAdapter);
        this.line.setVisibility(8);
        getData();
    }

    @Click
    void back_image() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 1000)
    public void delaysetStrcth(ScratchView scratch) {
        this.isstruckting = false;
        Luckbean luckbean = this.luckbean;
        if (luckbean == null || luckbean.getCount() == 0) {
            scratch.setCanCratch(false);
        } else {
            scratch.setCanCratch(true);
        }
        Luckbean luckbean2 = this.luckbean;
        if (luckbean2 == null) {
            scratch.setNumber(0);
        } else {
            scratch.setNumber(luckbean2.getCount());
        }
    }

    @Click
    void relodingimag() {
        getData();
    }
}
