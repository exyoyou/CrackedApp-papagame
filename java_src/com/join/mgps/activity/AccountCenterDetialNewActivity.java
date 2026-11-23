package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_account_center_detial_new)
public class AccountCenterDetialNewActivity extends BaseAppCompatActivity {
    com.join.mgps.rpc.b client;
    Context context;
    List<b> dataList;

    @ViewById
    RecyclerView recycleView;

    @ViewById
    TextView tipName;

    @ViewById
    LinearLayout tipsLayout;

    @ViewById
    SimpleDraweeView titleImg;

    @ViewById
    SimpleDraweeView userIcon;

    @ViewById
    TextView userName;

    class a extends RecyclerView.Adapter {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return AccountCenterDetialNewActivity.this.dataList.get(position).f50278a;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
            if (getItemViewType(position) != 29) {
                return;
            }
            ((c) holder).f50281d.setAdapter((ListAdapter) new com.join.mgps.adapter.x(AccountCenterDetialNewActivity.this.context, (List) AccountCenterDetialNewActivity.this.dataList.get(position).f50279b, 2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
            if (viewType == 1) {
                AccountCenterDetialNewActivity.this.new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.gamedetail_item_title, viewGroup, false));
                return null;
            }
            if (viewType != 29) {
                return null;
            }
            AccountCenterDetialNewActivity.this.new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.detial_favortis_layout, viewGroup, false));
            return null;
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f50278a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f50279b;

        public b(int type, Object data) {
            this.f50278a = type;
            this.f50279b = data;
        }
    }

    class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        HListView f50281d;

        public c(View itemView) {
            super(itemView);
            this.f50281d = (HListView) itemView.findViewById(R.id.favoriteList);
        }
    }

    class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f50283d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f50284e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f50285f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public View f50286g;

        public d(View itemView) {
            super(itemView);
            this.f50283d = (TextView) itemView.findViewById(R.id.titleText);
            this.f50286g = itemView.findViewById(R.id.line_h);
            this.f50284e = (LinearLayout) itemView.findViewById(R.id.look_other);
            this.f50285f = itemView.findViewById(R.id.layoutTop);
        }
    }

    @AfterViews
    void afterview() {
        this.client = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        this.recycleView.setLayoutManager(new LinearLayoutManager(this));
        getData();
    }

    @Background
    void getData() {
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            HashMap map = new HashMap();
            map.put("uid", "" + accountData.getUid());
            map.put("device_id", "");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("");
            RequestBeanUtil.getInstance(this);
            sb2.append(RequestBeanUtil.getVersionAndVersionName());
            map.put("version ", sb2.toString());
            ForumResponse<FavoritesCenterData> forumResponseZ = this.client.Z(map);
            if (forumResponseZ == null || forumResponseZ.getError() != 0) {
                return;
            }
            updateUi(forumResponseZ.getData());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void updateUi(FavoritesCenterData data) {
        com.join.android.app.common.utils.l.h(this.titleImg, data.getMember_info().getPortrait());
        com.join.android.app.common.utils.l.h(this.userIcon, data.getMember_info().getPortrait());
        this.userName.setText(data.getMember_info().getNick_name());
        this.tipName.setText(data.getMember_info().getRank());
        for (String str : data.getMember_info().getTag_info().split(",")) {
            View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.gamedetail_item_tipitem, (ViewGroup) null);
            this.tipsLayout.addView(viewInflate);
            ((TextView) viewInflate.findViewById(R.id.tipText)).setText(str);
        }
        a aVar = new a();
        this.dataList = new ArrayList();
        this.recycleView.setAdapter(aVar);
        if (data.getCreate_group_list().size() > 0) {
            this.dataList.add(new b(1, "创建的游戏单"));
            this.dataList.add(new b(29, data.getCreate_group_list()));
        }
        if (data.getBook_group_list().size() > 0) {
            this.dataList.add(new b(1, "订阅的游戏单"));
            this.dataList.add(new b(29, data.getBook_group_list()));
        }
    }
}
