package com.join.mgps.activity.vipzone;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.j;
import com.join.android.app.common.utils.l;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.j0;
import com.join.mgps.activity.GameMainActivity4;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.activity.vipzone.bean.IconGame;
import com.join.mgps.activity.vipzone.bean.ScreeningConditionBean;
import com.join.mgps.activity.vipzone.bean.SpecialTag;
import com.join.mgps.activity.vipzone.bean.SpecialZoneColloctionbean;
import com.join.mgps.activity.vipzone.bean.SpecialZoneResultbean;
import com.join.mgps.activity.vipzone.bean.SpecialgamelistRequestBean;
import com.join.mgps.activity.vipzone.bean.VipCenterRequestBean;
import com.join.mgps.customview.CarouselViewPager2;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.q0;
import com.join.mgps.customview.s0;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.event.r;
import com.join.mgps.rpc.impl.i;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.HListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.vip_specialzone_activity)
public class VipSpecialZoneActivity extends BaseAppCompatActivity {
    SpecialAdapter adapter;

    @ViewById
    View appbar;

    @ViewById
    ImageView back;

    @Extra
    int boardId;
    Context context;

    @ViewById
    CustomerDownloadView downloadView;

    @ViewById
    View filter;

    @ViewById
    View filterArr;
    q0 filterGames;
    s0 filterPw;
    private int lastVisibleIndex;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    LinearLayoutManager manager;

    @ViewById
    XRecyclerView recyclerView;
    ScreeningConditionBean screening_condition;

    @ViewById
    ImageView search;

    @ViewById
    TextView title;
    List<VipCenterDataMain> vipCenterDataMains = new ArrayList();
    int _from = 0;
    int _from_type = 0;
    private boolean SCROLLING = false;
    int page = 1;
    SpecialTag tag1 = new SpecialTag();
    SpecialTag tag2 = new SpecialTag();
    SpecialTag tag3 = new SpecialTag();
    List<CollectionBeanSub> businessList = new ArrayList();
    private int firstVisiblePosition = 0;
    List<View> pageview = new ArrayList();
    PagerAdapter mPagerAdapter = new PagerAdapter() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.5
        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup arg0, int arg1, Object arg2) {
            List<View> list = VipSpecialZoneActivity.this.pageview;
            if (list == null || list.size() <= arg1) {
                return;
            }
            ((ViewPager) arg0).removeView(VipSpecialZoneActivity.this.pageview.get(arg1));
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return VipSpecialZoneActivity.this.pageview.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup arg0, int arg1) {
            List<View> list = VipSpecialZoneActivity.this.pageview;
            if (list != null && list.size() > arg1) {
                ((ViewPager) arg0).addView(VipSpecialZoneActivity.this.pageview.get(arg1));
                return VipSpecialZoneActivity.this.pageview.get(arg1);
            }
            List<View> list2 = VipSpecialZoneActivity.this.pageview;
            if (list2 == null || list2.size() <= 0) {
                return null;
            }
            ((ViewPager) arg0).addView(VipSpecialZoneActivity.this.pageview.get(0));
            return VipSpecialZoneActivity.this.pageview.get(arg1);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View arg0, Object arg1) {
            return arg0 == arg1;
        }
    };

    class SpecialAdapter extends RecyclerView.Adapter<VipHolder> {

        /* JADX INFO: renamed from: com.join.mgps.activity.vipzone.VipSpecialZoneActivity$SpecialAdapter$2, reason: invalid class name */
        class AnonymousClass2 implements View.OnClickListener {
            AnonymousClass2() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$onClick$0(SpecialTag specialTag, SpecialTag specialTag2, SpecialTag specialTag3) {
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                vipSpecialZoneActivity.tag1 = specialTag;
                vipSpecialZoneActivity.tag2 = specialTag2;
                vipSpecialZoneActivity.tag3 = specialTag3;
                vipSpecialZoneActivity.page = 1;
                vipSpecialZoneActivity.getGamelist();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void lambda$onClick$1() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                if (vipSpecialZoneActivity.filterGames == null) {
                    vipSpecialZoneActivity.filterGames = new q0(VipSpecialZoneActivity.this.context);
                    VipSpecialZoneActivity.this.filterGames.g(new q0.f() { // from class: com.join.mgps.activity.vipzone.e
                        @Override // com.join.mgps.customview.q0.f
                        public final void onfinifilter(SpecialTag specialTag, SpecialTag specialTag2, SpecialTag specialTag3) {
                            this.f58186a.lambda$onClick$0(specialTag, specialTag2, specialTag3);
                        }
                    });
                    VipSpecialZoneActivity.this.filterGames.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.join.mgps.activity.vipzone.f
                        @Override // android.widget.PopupWindow.OnDismissListener
                        public final void onDismiss() {
                            VipSpecialZoneActivity.SpecialAdapter.AnonymousClass2.lambda$onClick$1();
                        }
                    });
                    VipSpecialZoneActivity.this.filterGames.setWidth(-1);
                }
                VipSpecialZoneActivity vipSpecialZoneActivity2 = VipSpecialZoneActivity.this;
                vipSpecialZoneActivity2.filterGames.h(vipSpecialZoneActivity2.recyclerView, vipSpecialZoneActivity2.screening_condition);
            }
        }

        SpecialAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return VipSpecialZoneActivity.this.vipCenterDataMains.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return VipSpecialZoneActivity.this.vipCenterDataMains.get(position).getType();
        }

        void updateGameUI(ViewHolderAppItem appItemVideoHolder, CollectionBeanSub temp) {
            appItemVideoHolder.dv_view.f(new m6.c(VipSpecialZoneActivity.this.context, temp));
            DownloadTask downloadTask = temp.getDownloadTask();
            long j10 = (long) (Double.parseDouble(temp.getSize()) * 1024.0d * 1024.0d);
            if (temp.isH5Game()) {
                appItemVideoHolder.tipsLayout.setVisibility(8);
                appItemVideoHolder.giftPackageSwich.setVisibility(8);
                return;
            }
            if (downloadTask == null) {
                updateUi(appItemVideoHolder, Boolean.TRUE, Boolean.FALSE);
                return;
            }
            g1.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
            int status = downloadTask.getStatus();
            if (status != 0) {
                if (status != 42) {
                    if (status != 48) {
                        if (status == 2) {
                            UtilsMy.U4(downloadTask);
                            Boolean bool = Boolean.FALSE;
                            updateUi(appItemVideoHolder, bool, bool);
                            if (downloadTask.getSize() == 0) {
                                appItemVideoHolder.appSize.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            } else {
                                appItemVideoHolder.appSize.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            }
                            appItemVideoHolder.progressBar.setProgress((int) downloadTask.getProgress());
                            String speed = downloadTask.getSpeed();
                            appItemVideoHolder.lodingInfo.setText(speed + "/S");
                            return;
                        }
                        if (status != 3) {
                            if (status != 5) {
                                if (status != 6) {
                                    if (status != 7) {
                                        switch (status) {
                                            case 10:
                                                Boolean bool2 = Boolean.FALSE;
                                                updateUi(appItemVideoHolder, bool2, bool2);
                                                appItemVideoHolder.appSize.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                                try {
                                                    appItemVideoHolder.progressBar.setProgress((int) downloadTask.getProgress());
                                                } catch (Exception e10) {
                                                    e10.printStackTrace();
                                                }
                                                appItemVideoHolder.lodingInfo.setText("等待中");
                                                break;
                                            case 12:
                                                updateUi(appItemVideoHolder, Boolean.FALSE, Boolean.TRUE);
                                                appItemVideoHolder.appSize.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                                appItemVideoHolder.lodingInfo.setText("解压中..");
                                                appItemVideoHolder.progressBarZip.setProgress((int) downloadTask.getProgress());
                                                break;
                                            case 13:
                                                updateUi(appItemVideoHolder, Boolean.FALSE, Boolean.TRUE);
                                                appItemVideoHolder.appSize.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                                                appItemVideoHolder.lodingInfo.setText("点击重新解压");
                                                appItemVideoHolder.progressBarZip.setProgress((int) downloadTask.getProgress());
                                                break;
                                        }
                                    }
                                }
                            }
                        }
                        Boolean bool3 = Boolean.FALSE;
                        updateUi(appItemVideoHolder, bool3, bool3);
                        try {
                            if (downloadTask.getSize() == 0) {
                                appItemVideoHolder.appSize.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            } else {
                                appItemVideoHolder.appSize.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            }
                            appItemVideoHolder.progressBar.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        appItemVideoHolder.lodingInfo.setText("暂停中");
                        return;
                    }
                }
                Boolean bool4 = Boolean.TRUE;
                updateUi(appItemVideoHolder, bool4, bool4);
                return;
            }
            updateUi(appItemVideoHolder, Boolean.TRUE, Boolean.FALSE);
        }

        void updateUi(ViewHolderAppItem holder, Boolean isNormal, Boolean isZip) {
            if (isNormal.booleanValue()) {
                holder.linearLayout2.setVisibility(8);
                holder.progressBar.setVisibility(8);
                holder.progressBarZip.setVisibility(8);
                holder.tipsLayout.setVisibility(0);
                holder.describe.setVisibility(0);
                return;
            }
            holder.linearLayout2.setVisibility(0);
            if (isZip.booleanValue()) {
                holder.progressBar.setVisibility(8);
                holder.progressBarZip.setVisibility(0);
            } else {
                holder.progressBarZip.setVisibility(8);
                holder.progressBar.setVisibility(0);
            }
            holder.tipsLayout.setVisibility(8);
            holder.describe.setVisibility(8);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull VipHolder vipHolder, int position) {
            VipCenterDataMain vipCenterDataMain = VipSpecialZoneActivity.this.vipCenterDataMains.get(position);
            int itemViewType = getItemViewType(position);
            if (itemViewType == 1) {
                ViewPagerHolder viewPagerHolder = (ViewPagerHolder) vipHolder;
                viewPagerHolder.viewpager.setAdapter(VipSpecialZoneActivity.this.mPagerAdapter);
                viewPagerHolder.viewpager.setClipToPadding(false);
                viewPagerHolder.viewpager.setPadding(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp32), 0, VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp32), 0);
                viewPagerHolder.viewpager.setPageMargin(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp16));
                viewPagerHolder.viewpager.setCurrentItem(1);
                VipSpecialZoneActivity.this.mPagerAdapter.notifyDataSetChanged();
                return;
            }
            if (itemViewType == 2) {
                final CollectionBeanSub collectionBeanSub = (CollectionBeanSub) vipCenterDataMain.object;
                ViewHolderAppItem viewHolderAppItem = (ViewHolderAppItem) vipHolder;
                viewHolderAppItem.line.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewHolderAppItem.line.getLayoutParams();
                layoutParams.setMargins(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp153), 0, VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp30), 0);
                viewHolderAppItem.line.setLayoutParams(layoutParams);
                l.h(viewHolderAppItem.icon, collectionBeanSub.getIco_remote().trim());
                UtilsMy.K(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), viewHolderAppItem.tipsLayout, VipSpecialZoneActivity.this.context);
                UtilsMy.z1(collectionBeanSub.getDownloadTask(), collectionBeanSub);
                viewHolderAppItem.name.setText(collectionBeanSub.getGame_name());
                viewHolderAppItem.describe.setText(collectionBeanSub.getInfo());
                viewHolderAppItem.relateLayoutApp.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.SpecialAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        IntentUtil.getInstance().goGameDetialActivity(VipSpecialZoneActivity.this.context, collectionBeanSub.getCrc_sign_id(), collectionBeanSub.getGame_info_tpl_type(), Integer.valueOf(collectionBeanSub.getSp_tpl_two_position()).intValue(), collectionBeanSub.get_from_type());
                    }
                });
                updateGameUI(viewHolderAppItem, collectionBeanSub);
                return;
            }
            if (itemViewType != 3) {
                if (itemViewType != 4) {
                    return;
                }
                List<IconGame> game_list = ((SpecialZoneColloctionbean) vipCenterDataMain.getObject()).getGame_list();
                HListView hListView = ((VipHlistHolder) vipHolder).listview;
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                hListView.setAdapter((ListAdapter) new GameHlistAdapter(game_list, vipSpecialZoneActivity.context, vipSpecialZoneActivity._from));
                return;
            }
            final SpecialZoneColloctionbean specialZoneColloctionbean = (SpecialZoneColloctionbean) vipCenterDataMain.getObject();
            VipTitleHolder vipTitleHolder = (VipTitleHolder) vipHolder;
            vipTitleHolder.title.setText(specialZoneColloctionbean.getTitle());
            if (!specialZoneColloctionbean.getTitle().equals("热门游戏")) {
                vipTitleHolder.more.setText(LocalGameActivity.ALL);
                vipTitleHolder.more.setCompoundDrawablePadding(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp13));
                Drawable drawable = ContextCompat.getDrawable(VipSpecialZoneActivity.this.context, R.drawable.special_more);
                drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
                vipTitleHolder.more.setCompoundDrawables(null, null, drawable, null);
                vipTitleHolder.more.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.SpecialAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        IntentDateBean intentDateBean = new IntentDateBean();
                        intentDateBean.setLink_type(2);
                        intentDateBean.setTpl_type(specialZoneColloctionbean.getTpl_type());
                        intentDateBean.setCrc_link_type_val(specialZoneColloctionbean.getCollection_id());
                        IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDateBean);
                    }
                });
                return;
            }
            vipTitleHolder.more.setText("热门游戏");
            vipTitleHolder.line.setVisibility(0);
            vipTitleHolder.more.setCompoundDrawablePadding(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp13));
            Drawable drawable2 = ContextCompat.getDrawable(VipSpecialZoneActivity.this.context, R.drawable.special_filter);
            drawable2.setBounds(0, 0, drawable2.getMinimumWidth(), drawable2.getMinimumHeight());
            vipTitleHolder.more.setCompoundDrawables(null, null, drawable2, null);
            vipTitleHolder.more.setOnClickListener(new AnonymousClass2());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public VipHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int type) {
            if (type == 1) {
                return VipSpecialZoneActivity.this.new ViewPagerHolder(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.special_zone_viewpager_layout, viewGroup, false));
            }
            if (type == 2) {
                return VipSpecialZoneActivity.this.new ViewHolderAppItem(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.item_simulator_download_view, (ViewGroup) null));
            }
            if (type == 3) {
                return VipSpecialZoneActivity.this.new VipTitleHolder(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.vip_center_title_layout, viewGroup, false));
            }
            if (type == 4) {
                return VipSpecialZoneActivity.this.new VipHlistHolder(LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.vip_center_hlistview_layout, viewGroup, false));
            }
            if (type != 5) {
                return null;
            }
            TextView textView = new TextView(VipSpecialZoneActivity.this.context);
            textView.setWidth(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp1280));
            textView.setHeight(VipSpecialZoneActivity.this.getResources().getDimensionPixelOffset(R.dimen.wdp10));
            textView.setBackgroundColor(Color.parseColor("#EFEFF6"));
            return VipSpecialZoneActivity.this.new VipHolder(textView);
        }
    }

    public class ViewHolderAppItem extends VipHolder {
        public TextView appSize;
        public TextView describe;
        DownloadNormalView dv_view;
        ImageView giftPackageSwich;
        SimpleDraweeView icon;
        View line;
        LinearLayout linearLayout2;
        public TextView lodingInfo;
        TextView name;
        public ProgressBar progressBar;
        public ProgressBar progressBarZip;
        RelativeLayout relateLayoutApp;
        LinearLayout tipsLayout;

        public ViewHolderAppItem(View convertView) {
            super(convertView);
            this.icon = (SimpleDraweeView) convertView.findViewById(R.id.mgListviewItemIcon);
            this.giftPackageSwich = (ImageView) convertView.findViewById(R.id.giftPackageSwich);
            this.name = (TextView) convertView.findViewById(R.id.mgListviewItemAppname);
            this.describe = (TextView) convertView.findViewById(R.id.mgListviewItemDescribe);
            this.linearLayout2 = (LinearLayout) convertView.findViewById(R.id.linearLayout2);
            this.tipsLayout = (LinearLayout) convertView.findViewById(R.id.tipsLayout);
            this.appSize = (TextView) convertView.findViewById(R.id.appSize);
            this.lodingInfo = (TextView) convertView.findViewById(R.id.loding_info);
            this.progressBar = (ProgressBar) convertView.findViewById(R.id.progressBar);
            this.progressBarZip = (ProgressBar) convertView.findViewById(R.id.progressBarZip);
            this.dv_view = (DownloadNormalView) convertView.findViewById(R.id.dv_view);
            this.relateLayoutApp = (RelativeLayout) convertView.findViewById(R.id.relateLayoutApp);
            this.progressBarZip = (ProgressBar) convertView.findViewById(R.id.progressBarZip);
            this.line = convertView.findViewById(R.id.line);
        }
    }

    class ViewPagerHolder extends VipHolder {
        CarouselViewPager2 viewpager;

        public ViewPagerHolder(View itemView) {
            super(itemView);
            this.viewpager = (CarouselViewPager2) itemView.findViewById(R.id.viewpager);
        }
    }

    class VipCenterDataMain {
        public static final int GAMELIST = 2;
        public static final int HLIST = 4;
        public static final int LINE = 5;
        public static final int TITLE = 3;
        public static final int VIEWPAGER = 1;
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

    class VipTitleHolder extends VipHolder {
        View line;
        TextView more;
        TextView title;

        public VipTitleHolder(View itemView) {
            super(itemView);
            this.title = (TextView) itemView.findViewById(R.id.title);
            this.more = (TextView) itemView.findViewById(R.id.more);
            this.line = itemView.findViewById(R.id.line);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addnewDatas(List<CollectionBeanSub> collectionBeanSubs) {
        for (CollectionBeanSub collectionBeanSub : collectionBeanSubs) {
            collectionBeanSub.set_from(this._from);
            collectionBeanSub.set_from_type(this._from_type);
            this.businessList.add(collectionBeanSub);
            this.vipCenterDataMains.add(new VipCenterDataMain(2, collectionBeanSub));
        }
        updateDownStateList();
        this.adapter.notifyDataSetChanged();
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
        vipCenterRequestBean.setBoardId(this.boardId);
        requestModel.setArgs(vipCenterRequestBean);
        i.P0().N0().Q0(requestModel).enqueue(new Callback<ResponseModel<SpecialZoneResultbean>>() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.3
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<SpecialZoneResultbean>> call, Throwable t10) {
                t10.printStackTrace();
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                if (vipSpecialZoneActivity.screening_condition == null) {
                    vipSpecialZoneActivity.loding_faile.setVisibility(0);
                    VipSpecialZoneActivity.this.loding_layout.setVisibility(8);
                    VipSpecialZoneActivity.this.recyclerView.setVisibility(8);
                }
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<SpecialZoneResultbean>> call, Response<ResponseModel<SpecialZoneResultbean>> response) {
                if (response != null && response.body() != null) {
                    ResponseModel<SpecialZoneResultbean> responseModelBody = response.body();
                    if (responseModelBody.getCode() == 200) {
                        SpecialZoneResultbean data = responseModelBody.getData();
                        VipSpecialZoneActivity.this.screening_condition = data.getScreening_condition();
                        VipSpecialZoneActivity.this.screening_condition.getSort_type().get(0).setIsselected(true);
                        SpecialTag specialTag = new SpecialTag();
                        specialTag.setId(0);
                        specialTag.setTitle("全部游戏");
                        specialTag.setIsselected(true);
                        VipSpecialZoneActivity.this.screening_condition.getGame_class().add(0, specialTag);
                        SpecialTag specialTag2 = new SpecialTag();
                        specialTag2.setId(0);
                        specialTag2.setTitle("全部游戏");
                        specialTag2.setIsselected(true);
                        VipSpecialZoneActivity.this.screening_condition.getGame_type().add(0, specialTag2);
                        VipSpecialZoneActivity.this.pageview.clear();
                        VipSpecialZoneActivity.this.mPagerAdapter.notifyDataSetChanged();
                        List<BannerBean> banner = data.getBanner();
                        View viewInflate = null;
                        View viewInflate2 = null;
                        for (int i11 = 0; i11 < banner.size(); i11++) {
                            BannerBean bannerBean = banner.get(i11);
                            final IntentDateBean intentDataBean = bannerBean.getIntentDataBean();
                            intentDataBean.setExtBean(new ExtBean(VipSpecialZoneActivity.this._from_type));
                            View viewInflate3 = LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate3.findViewById(R.id.adImage);
                            simpleDraweeView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.3.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View v10) {
                                    IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDataBean);
                                }
                            });
                            String pic_remote = bannerBean.getPic_remote();
                            Context context = VipSpecialZoneActivity.this.context;
                            l.f(simpleDraweeView, R.drawable.banner_normal_icon, pic_remote, l.F(context, context.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
                            VipSpecialZoneActivity.this.pageview.add(viewInflate3);
                            if (i11 == 0) {
                                viewInflate = LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) viewInflate.findViewById(R.id.adImage);
                                simpleDraweeView2.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.3.2
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View v10) {
                                        IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDataBean);
                                    }
                                });
                                String pic_remote2 = bannerBean.getPic_remote();
                                Context context2 = VipSpecialZoneActivity.this.context;
                                l.f(simpleDraweeView2, R.drawable.banner_normal_icon, pic_remote2, l.F(context2, context2.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
                            } else if (i11 == banner.size() - 1) {
                                viewInflate2 = LayoutInflater.from(VipSpecialZoneActivity.this.context).inflate(R.layout.detial_viewpager_layout, (ViewGroup) null);
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) viewInflate2.findViewById(R.id.adImage);
                                simpleDraweeView3.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.3.3
                                    @Override // android.view.View.OnClickListener
                                    public void onClick(View v10) {
                                        IntentUtil.getInstance().intentActivity(VipSpecialZoneActivity.this.context, intentDataBean);
                                    }
                                });
                                String pic_remote3 = bannerBean.getPic_remote();
                                Context context3 = VipSpecialZoneActivity.this.context;
                                l.f(simpleDraweeView3, R.drawable.banner_normal_icon, pic_remote3, l.F(context3, context3.getResources().getDimensionPixelOffset(R.dimen.wdp16)));
                            }
                        }
                        VipSpecialZoneActivity.this.pageview.add(viewInflate);
                        VipSpecialZoneActivity.this.pageview.add(0, viewInflate2);
                        VipSpecialZoneActivity.this.showmainData(data);
                        return;
                    }
                }
                VipSpecialZoneActivity.this.loding_faile.setVisibility(0);
                VipSpecialZoneActivity.this.loding_layout.setVisibility(8);
                VipSpecialZoneActivity.this.recyclerView.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getGamelist() {
        RequestModel<SpecialgamelistRequestBean> requestModel = new RequestModel<>(this);
        SpecialgamelistRequestBean specialgamelistRequestBean = new SpecialgamelistRequestBean();
        specialgamelistRequestBean.setBoardId(this.boardId);
        specialgamelistRequestBean.setSortType(this.tag1.getId());
        specialgamelistRequestBean.setGameType(this.tag2.getId());
        specialgamelistRequestBean.setGameClass(this.tag3.getId());
        specialgamelistRequestBean.setPage(this.page);
        requestModel.setArgs(specialgamelistRequestBean);
        i.P0().N0().O0(requestModel).enqueue(new Callback<ResponseModel<List<CollectionBeanSub>>>() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.4
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<List<CollectionBeanSub>>> call, Throwable t10) {
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<List<CollectionBeanSub>>> call, Response<ResponseModel<List<CollectionBeanSub>>> response) {
                if (response != null && response.body() != null) {
                    ResponseModel<List<CollectionBeanSub>> responseModelBody = response.body();
                    if (responseModelBody.getCode() == 200) {
                        List<CollectionBeanSub> data = responseModelBody.getData();
                        if (data == null || data.size() <= 0) {
                            VipSpecialZoneActivity.this.recyclerView.setNoMore();
                            return;
                        }
                        VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                        if (vipSpecialZoneActivity.page == 1) {
                            vipSpecialZoneActivity.businessList.clear();
                            VipSpecialZoneActivity.this.recyclerView.reset();
                            ArrayList arrayList = new ArrayList();
                            for (VipCenterDataMain vipCenterDataMain : VipSpecialZoneActivity.this.vipCenterDataMains) {
                                if (vipCenterDataMain.type == 2) {
                                    arrayList.add(vipCenterDataMain);
                                }
                            }
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                VipSpecialZoneActivity.this.vipCenterDataMains.remove((VipCenterDataMain) it2.next());
                            }
                        }
                        VipSpecialZoneActivity vipSpecialZoneActivity2 = VipSpecialZoneActivity.this;
                        vipSpecialZoneActivity2.page++;
                        vipSpecialZoneActivity2.addnewDatas(data);
                    } else if (responseModelBody.getCode() == 500) {
                        a3.b(VipSpecialZoneActivity.this.context).d(responseModelBody.getMessage());
                    }
                }
                VipSpecialZoneActivity.this.recyclerView.loadMoreComplete();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filter$0(int i10, String str) {
        ScreeningConditionBean screeningConditionBean;
        this.boardId = i10;
        updateFrom();
        this.title.setText(str);
        this.page = 1;
        this.recyclerView.reset();
        getData();
        q0 q0Var = this.filterGames;
        if (q0Var == null || (screeningConditionBean = this.screening_condition) == null) {
            return;
        }
        q0Var.f(screeningConditionBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$filter$1() {
        this.filterArr.setRotation(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onEventMainThread$2() {
        updateDownloadView();
        return null;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList();
        updatePartly();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            updateDownStateList();
            updatePartly();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList();
        updatePartly();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList();
        updatePartly();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showmainData(SpecialZoneResultbean resultbean) {
        if (resultbean == null) {
            return;
        }
        this.loding_faile.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.recyclerView.setVisibility(0);
        this.page = 2;
        this.vipCenterDataMains.clear();
        this.vipCenterDataMains.add(new VipCenterDataMain(1, resultbean.getBanner()));
        this.vipCenterDataMains.add(new VipCenterDataMain(3, resultbean.getCollection_game_list()));
        this.vipCenterDataMains.add(new VipCenterDataMain(4, resultbean.getCollection_game_list()));
        SpecialZoneColloctionbean specialZoneColloctionbean = new SpecialZoneColloctionbean();
        specialZoneColloctionbean.setTitle("热门游戏");
        this.vipCenterDataMains.add(new VipCenterDataMain(3, specialZoneColloctionbean));
        List<CollectionBeanSub> ranking_game_list = resultbean.getRanking_game_list();
        if (ranking_game_list != null) {
            for (CollectionBeanSub collectionBeanSub : ranking_game_list) {
                collectionBeanSub.set_from(this._from);
                collectionBeanSub.set_from_type(this._from_type);
                this.businessList.add(collectionBeanSub);
                this.vipCenterDataMains.add(new VipCenterDataMain(2, collectionBeanSub));
            }
        }
        updateDownStateList();
        this.adapter.notifyDataSetChanged();
    }

    private void updateDownStateList() {
        try {
            Iterator<CollectionBeanSub> it2 = this.businessList.iterator();
            while (it2.hasNext()) {
                DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateFrom() {
        switch (this.boardId) {
            case 52:
                this._from = 13901;
                this._from_type = 13901;
                break;
            case 53:
                this._from = 13902;
                this._from_type = 13902;
                break;
            case 54:
                this._from = 13903;
                this._from_type = 13903;
                break;
            case 55:
                this._from = 13904;
                this._from_type = 13904;
                break;
        }
        t.l(this.context).R1(Event.visitMemberpre, new Ext().setPosition(this.boardId + ""));
    }

    private void updatePartly() {
        View childAt;
        try {
            for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex && i10 < this.adapter.getItemCount(); i10++) {
                if (i10 >= 0) {
                    VipCenterDataMain vipCenterDataMain = this.vipCenterDataMains.get(i10);
                    if (vipCenterDataMain.getType() == 2 && (childAt = this.recyclerView.getChildAt(i10 - this.firstVisiblePosition)) != null && this.recyclerView.getChildViewHolder(childAt) != null) {
                        this.adapter.updateGameUI((ViewHolderAppItem) this.recyclerView.getChildViewHolder(childAt), (CollectionBeanSub) vipCenterDataMain.getObject());
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void updateProgressPartly() {
        CollectionBeanSub collectionBeanSub;
        DownloadTask downloadTask;
        View childAt;
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex && i10 <= this.vipCenterDataMains.size() - 1; i10++) {
            VipCenterDataMain vipCenterDataMain = this.vipCenterDataMains.get(i10);
            if (vipCenterDataMain.type == 2 && (collectionBeanSub = (CollectionBeanSub) vipCenterDataMain.getObject()) != null && (downloadTask = collectionBeanSub.getDownloadTask()) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.recyclerView.getChildAt(i10 - this.firstVisiblePosition)) != null && this.recyclerView.getChildViewHolder(childAt) != null)) {
                ViewHolderAppItem viewHolderAppItem = (ViewHolderAppItem) this.recyclerView.getChildViewHolder(childAt);
                try {
                    DownloadTask downloadTaskG = j.f().g(downloadTask.getCrc_link_type_val());
                    if (downloadTaskG == null) {
                        return;
                    }
                    long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                    if (downloadTask.getSize() == 0) {
                        viewHolderAppItem.appSize.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        viewHolderAppItem.appSize.setText(UtilsMy.c(downloadTaskG.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    if (downloadTask.getStatus() == 12) {
                        viewHolderAppItem.progressBarZip.setProgress((int) downloadTaskG.getProgress());
                    } else {
                        viewHolderAppItem.progressBar.setProgress((int) downloadTaskG.getProgress());
                    }
                    if (downloadTask.getStatus() == 2) {
                        viewHolderAppItem.lodingInfo.setText(downloadTaskG.getSpeed() + "/S");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    @AfterViews
    void afterview() {
        this.context = this;
        j0.a().d(this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.context);
        this.manager = linearLayoutManager;
        this.recyclerView.setLayoutManager(linearLayoutManager);
        SpecialAdapter specialAdapter = new SpecialAdapter();
        this.adapter = specialAdapter;
        this.recyclerView.setAdapter(specialAdapter);
        this.recyclerView.setLoadingMoreEnabled(true);
        this.recyclerView.setLoadingListener(new XRecyclerView.f() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.1
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                VipSpecialZoneActivity.this.getGamelist();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
            }
        });
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.join.mgps.activity.vipzone.VipSpecialZoneActivity.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                VipSpecialZoneActivity.this.SCROLLING = newState != 0;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                VipSpecialZoneActivity vipSpecialZoneActivity = VipSpecialZoneActivity.this;
                vipSpecialZoneActivity.firstVisiblePosition = vipSpecialZoneActivity.manager.findFirstVisibleItemPosition();
                VipSpecialZoneActivity vipSpecialZoneActivity2 = VipSpecialZoneActivity.this;
                vipSpecialZoneActivity2.lastVisibleIndex = vipSpecialZoneActivity2.manager.findLastVisibleItemPosition();
            }
        });
        getData();
        switch (this.boardId) {
            case 52:
                this.title.setText("MOD");
                break;
            case 53:
                this.title.setText(GameMainActivity4.TITLE_GOLDFINGER);
                break;
            case 54:
                this.title.setText("一键技能");
                break;
            case 55:
                this.title.setText("快速选关");
                break;
        }
        updateFrom();
    }

    @Click
    void back() {
        finish();
    }

    @Click
    void downloadView() {
        IntentUtil.getInstance().goMyGameManagerActivity(this);
    }

    @Click
    void filter() {
        if (this.filterPw == null) {
            s0 s0Var = new s0(this.context);
            this.filterPw = s0Var;
            s0Var.h(new s0.c() { // from class: com.join.mgps.activity.vipzone.c
                @Override // com.join.mgps.customview.s0.c
                public final void onItemClick(int i10, String str) {
                    this.f58182a.lambda$filter$0(i10, str);
                }
            });
            this.filterPw.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.join.mgps.activity.vipzone.d
                @Override // android.widget.PopupWindow.OnDismissListener
                public final void onDismiss() {
                    this.f58183b.lambda$filter$1();
                }
            });
            this.filterPw.setWidth(-1);
        }
        this.filterPw.j(this.appbar, this.boardId);
        this.filterArr.setRotation(180.0f);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        DlTaskManager.INSTANCE.onNotifyDataSet(downloadTaskEvent, new Function0() { // from class: com.join.mgps.activity.vipzone.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f58178b.lambda$onEventMainThread$2();
            }
        });
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        updateDownloadView();
    }

    @Click
    void search() {
        IntentUtil.getInstance().goSearchHintActivity(this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateDownloadView() {
        this.downloadView.setDownloadGameNum();
    }

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
