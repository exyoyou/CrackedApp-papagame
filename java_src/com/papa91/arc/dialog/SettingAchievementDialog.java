package com.papa91.arc.dialog;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.mgps.activity.GameMainActivity4;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.bean.AchievementBean;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.RequestAchievementArgs;
import com.papa91.arc.bean.Response;
import com.papa91.arc.bean.TypeBean;
import com.papa91.arc.ext.ThreadManager;
import com.papa91.arc.http.HttpUtils;
import com.papa91.arc.interfaces.IOnItemClickListener;
import com.papa91.arc.util.SignUtil;
import com.papa91.arc.widget.listview.ListViewFinal;
import com.papa91.arc.widget.listview.OnLoadMoreListener;
import java.util.ArrayList;
import org.ppsspp.ppsspp.R;

/* JADX INFO: loaded from: classes2.dex */
public class SettingAchievementDialog extends SettingDialog {
    private AchievementAdapter allAdapter;
    private int allPage;
    private Context context;
    private int defaultType;
    private boolean isTourist;
    private SimpleDraweeView ivAvatar;
    private ImageView ivTips;
    private LinearLayout llUserInfo;
    private LinearLayout ll_empty;
    private AchievementAdapter lockAdapter;
    private int lockPage;
    private ListViewFinal lv_achievement_all;
    private ListViewFinal lv_achievement_lock;
    private ListViewFinal lv_achievement_unlock;
    private ListView lv_type;
    private int oldSelIndex;
    private ProgressBar progressBar;
    private TextView tvProgress;
    private TextView tvUsername;
    private TextView tv_back_game;
    private TextView tv_title;
    private TypeAdapter typeAdapter;
    private ArrayList<TypeBean> typeBeans;
    private AchievementAdapter unlockAdapter;
    private int unlockPage;

    class AchievementAdapter extends SimpleBaseAdapter<AchievementBean.AchievementInfo> {

        class ViewHolder {
            public SimpleDraweeView ivAchievement;
            public LinearLayout llProgress;
            public ProgressBar progressBar;
            public TextView tvAchievementDesc;
            public TextView tvAchievementName;
            public TextView tvAchievementUnlockPercent;
            public TextView tvProgress;

            ViewHolder() {
            }
        }

        AchievementAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i10, View view, ViewGroup viewGroup, boolean z10) {
            ViewHolder viewHolder;
            if (z10) {
                viewHolder = new ViewHolder();
                viewHolder.ivAchievement = (SimpleDraweeView) view.findViewById(R.id.ivAchievement);
                viewHolder.tvAchievementName = (TextView) view.findViewById(R.id.tvAchievementName);
                viewHolder.tvAchievementDesc = (TextView) view.findViewById(R.id.tvAchievementDesc);
                viewHolder.tvAchievementUnlockPercent = (TextView) view.findViewById(R.id.tvAchievementUnlockPercent);
                viewHolder.llProgress = (LinearLayout) view.findViewById(R.id.llProgress);
                viewHolder.tvProgress = (TextView) view.findViewById(R.id.tvProgress);
                viewHolder.progressBar = (ProgressBar) view.findViewById(R.id.progressBar);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            AchievementBean.AchievementInfo item = getItem(i10);
            viewHolder.ivAchievement.getHierarchy().J(R.drawable.shape_placeholder);
            viewHolder.ivAchievement.getHierarchy().C(R.drawable.wifi);
            viewHolder.ivAchievement.setImageURI(Uri.parse(item.getIcon()));
            viewHolder.tvAchievementDesc.setText(item.getCondition());
            viewHolder.tvAchievementName.setText(item.getName());
            viewHolder.tvAchievementUnlockPercent.setText(item.getUnlock_rate() + "%玩家已解锁");
            viewHolder.llProgress.setVisibility(item.getTarget() > 1 ? 0 : 8);
            viewHolder.tvProgress.setText(item.getDone() + net.lingala.zip4j.util.e.F0 + item.getTarget());
            viewHolder.progressBar.setMax(item.getTarget());
            viewHolder.progressBar.setProgress(item.getDone());
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_achievement;
        }
    }

    class TypeAdapter extends SimpleBaseAdapter<TypeBean> {

        class ViewHolder {
            public ImageView iv_arrow;
            public ImageView iv_dot;
            public ImageView iv_slot_store;
            public LinearLayout ll_root;
            public TextView tv_type;

            ViewHolder() {
            }
        }

        TypeAdapter() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int i10, View view, ViewGroup viewGroup, boolean z10) {
            ViewHolder viewHolder;
            if (z10) {
                viewHolder = new ViewHolder();
                viewHolder.ll_root = (LinearLayout) view.findViewById(R.id.ll_root);
                viewHolder.tv_type = (TextView) view.findViewById(R.id.tv_type);
                viewHolder.iv_slot_store = (ImageView) view.findViewById(R.id.iv_icon);
                viewHolder.iv_arrow = (ImageView) view.findViewById(R.id.iv_arrow);
                viewHolder.iv_dot = (ImageView) view.findViewById(R.id.iv_dot);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            TypeBean item = getItem(i10);
            viewHolder.iv_slot_store.setVisibility(8);
            viewHolder.tv_type.setText(item.getName());
            if (item.isSelected()) {
                viewHolder.tv_type.setTextColor(-16777216);
                viewHolder.ll_root.setBackgroundResource(R.drawable.bg_type_h);
                viewHolder.iv_arrow.setVisibility(0);
            } else {
                viewHolder.tv_type.setTextColor(-7022593);
                viewHolder.ll_root.setBackgroundResource(R.drawable.bg_type_n);
                viewHolder.iv_arrow.setVisibility(8);
            }
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_slot_type;
        }
    }

    public SettingAchievementDialog(Context context, int i10, boolean z10) {
        super(context);
        this.allPage = 1;
        this.unlockPage = 1;
        this.lockPage = 1;
        this.context = context;
        this.defaultType = i10;
        this.isTourist = z10;
        this.tv_back_game = (TextView) findViewById(R.id.tv_back_game);
        this.ivAvatar = (SimpleDraweeView) findViewById(R.id.ivAvatar);
        this.tvUsername = (TextView) findViewById(R.id.tvUsername);
        this.llUserInfo = (LinearLayout) findViewById(R.id.llUserInfo);
        this.lv_type = (ListView) findViewById(R.id.lv_type);
        this.lv_achievement_all = (ListViewFinal) findViewById(R.id.lv_achievement_all);
        this.lv_achievement_unlock = (ListViewFinal) findViewById(R.id.lv_achievement_unlock);
        this.lv_achievement_lock = (ListViewFinal) findViewById(R.id.lv_achievement_lock);
        this.tv_title = (TextView) findViewById(R.id.tv_title);
        this.ivTips = (ImageView) findViewById(R.id.ivTips);
        this.tvProgress = (TextView) findViewById(R.id.tvProgress);
        this.progressBar = (ProgressBar) findViewById(R.id.progressBar);
        this.ll_empty = (LinearLayout) findViewById(R.id.ll_empty);
        this.tv_title.setText(GameMainActivity4.TITLE_ACHIEVEMENT);
        setOnListener(this.tv_back_game, this.ivTips);
    }

    private void getData(final int i10) {
        final int i11;
        if (i10 == 1) {
            i11 = this.allPage;
        } else {
            i11 = i10 == 2 ? this.unlockPage : this.lockPage;
        }
        RequestAchievementArgs requestAchievementArgs = new RequestAchievementArgs();
        requestAchievementArgs.setPage(i11);
        requestAchievementArgs.setGameId(getGameId());
        requestAchievementArgs.setUid(getUserId());
        requestAchievementArgs.setPlugVersion(getPlugVerCode());
        requestAchievementArgs.setType(i10);
        requestAchievementArgs.setToken(getToken());
        final Request request = Request.getRequest(getContext(), requestAchievementArgs);
        request.setSign(SignUtil.getSignForAPP(request));
        ThreadManager.runOnWriteThread(new Runnable() { // from class: com.papa91.arc.dialog.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f78045b.lambda$getData$5(request, i10, i11);
            }
        });
    }

    private void initData() {
        refreshUserStatus();
        if (this.typeAdapter == null) {
            this.typeAdapter = new TypeAdapter();
        }
        this.typeAdapter.setItemClickListener(new IOnItemClickListener() { // from class: com.papa91.arc.dialog.SettingAchievementDialog.1
            @Override // com.papa91.arc.interfaces.IOnItemClickListener
            public void onItemClick(int i10) {
                if (i10 == SettingAchievementDialog.this.oldSelIndex || SettingAchievementDialog.this.typeBeans == null) {
                    return;
                }
                int i11 = 0;
                while (i11 < SettingAchievementDialog.this.typeBeans.size()) {
                    ((TypeBean) SettingAchievementDialog.this.typeBeans.get(i11)).setSelected(i11 == i10);
                    i11++;
                }
                SettingAchievementDialog.this.oldSelIndex = i10;
                SettingAchievementDialog.this.typeAdapter.notifyDataSetChanged();
                SettingAchievementDialog settingAchievementDialog = SettingAchievementDialog.this;
                settingAchievementDialog.setTab(((TypeBean) settingAchievementDialog.typeBeans.get(i10)).getType());
            }
        });
        this.lv_type.setAdapter((ListAdapter) this.typeAdapter);
        ArrayList<TypeBean> arrayList = new ArrayList<>();
        this.typeBeans = arrayList;
        arrayList.add(new TypeBean(1, "全部成就", this.defaultType == 1, 0, 0));
        this.typeBeans.add(new TypeBean(2, "已解锁", this.defaultType == 2, 0, 0));
        this.typeBeans.add(new TypeBean(3, "未解锁", this.defaultType == 3, 0, 0));
        this.typeAdapter.setDatas(this.typeBeans);
        AchievementAdapter achievementAdapter = new AchievementAdapter();
        this.allAdapter = achievementAdapter;
        this.lv_achievement_all.setAdapter((ListAdapter) achievementAdapter);
        this.lv_achievement_all.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.papa91.arc.dialog.o
            @Override // com.papa91.arc.widget.listview.OnLoadMoreListener
            public final void loadMore() {
                this.f78050a.lambda$initData$0();
            }
        });
        getData(1);
        AchievementAdapter achievementAdapter2 = new AchievementAdapter();
        this.unlockAdapter = achievementAdapter2;
        this.lv_achievement_unlock.setAdapter((ListAdapter) achievementAdapter2);
        this.lv_achievement_unlock.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.papa91.arc.dialog.p
            @Override // com.papa91.arc.widget.listview.OnLoadMoreListener
            public final void loadMore() {
                this.f78051a.lambda$initData$1();
            }
        });
        getData(2);
        AchievementAdapter achievementAdapter3 = new AchievementAdapter();
        this.lockAdapter = achievementAdapter3;
        this.lv_achievement_lock.setAdapter((ListAdapter) achievementAdapter3);
        this.lv_achievement_lock.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.papa91.arc.dialog.q
            @Override // com.papa91.arc.widget.listview.OnLoadMoreListener
            public final void loadMore() {
                this.f78052a.lambda$initData$2();
            }
        });
        getData(3);
        setTab(this.defaultType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getData$4(int i10, Response response, int i11) {
        ListViewFinal listViewFinal;
        AchievementAdapter achievementAdapter;
        if (i10 == 1) {
            listViewFinal = this.lv_achievement_all;
        } else {
            listViewFinal = i10 == 2 ? this.lv_achievement_unlock : this.lv_achievement_lock;
        }
        if (response == null || response.getCode() != 200) {
            return;
        }
        if (response.getData() == null) {
            listViewFinal.setHasLoadMore(false);
            return;
        }
        AchievementBean achievementBean = (AchievementBean) response.getData();
        if (i11 == 1 && achievementBean.getAchievement_list() != null && achievementBean.getAchievement_list().size() > 0) {
            listViewFinal.setVisibility(0);
            this.ll_empty.setVisibility(8);
        }
        this.tvProgress.setText("您已完成" + achievementBean.getDone() + net.lingala.zip4j.util.e.F0 + achievementBean.getTarget());
        this.progressBar.setMax(achievementBean.getTarget());
        this.progressBar.setProgress(achievementBean.getDone());
        if (i10 == 1) {
            achievementAdapter = this.allAdapter;
        } else {
            achievementAdapter = i10 == 2 ? this.unlockAdapter : this.lockAdapter;
        }
        if (achievementAdapter != null) {
            achievementAdapter.addDatas(achievementBean.getAchievement_list());
        }
        if (i11 > 1) {
            listViewFinal.onLoadMoreComplete();
        }
        listViewFinal.setHasLoadMore(achievementBean.getAchievement_list() != null && achievementBean.getAchievement_list().size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getData$5(Request request, final int i10, final int i11) {
        try {
            final Response<AchievementBean> achievements = HttpUtils.getAchievements(request);
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.dialog.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f78053b.lambda$getData$4(i10, achievements, i11);
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$0() {
        this.allPage++;
        getData(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$1() {
        this.unlockPage++;
        getData(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initData$2() {
        this.lockPage++;
        getData(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$refreshUserStatus$3(View view) {
        if (this.isTourist) {
            goLogin();
            dismiss();
        }
    }

    private void refreshUserStatus() {
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("Papa_Stat_SharedPreferences", 4);
        String string = sharedPreferences.getString("userAvatarForSimulator", "");
        String string2 = sharedPreferences.getString("userNameForSimulator", "");
        com.facebook.drawee.generic.a hierarchy = this.ivAvatar.getHierarchy();
        int i10 = R.drawable.icon_noraml;
        hierarchy.J(i10);
        this.ivAvatar.getHierarchy().C(i10);
        SimpleDraweeView simpleDraweeView = this.ivAvatar;
        if (this.isTourist) {
            string = "res:///" + i10;
        }
        simpleDraweeView.setImageURI(Uri.parse(string));
        TextView textView = this.tvUsername;
        if (this.isTourist) {
            string2 = "点击登录";
        }
        textView.setText(string2);
        this.llUserInfo.setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.dialog.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f78049b.lambda$refreshUserStatus$3(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTab(int i10) {
        ListViewFinal listViewFinal;
        AchievementAdapter achievementAdapter;
        this.lv_achievement_all.setVisibility(i10 == 1 ? 0 : 8);
        this.lv_achievement_unlock.setVisibility(i10 == 2 ? 0 : 8);
        this.lv_achievement_lock.setVisibility(i10 == 3 ? 0 : 8);
        if (i10 == 1) {
            listViewFinal = this.lv_achievement_all;
        } else {
            listViewFinal = i10 == 2 ? this.lv_achievement_unlock : this.lv_achievement_lock;
        }
        if (i10 == 1) {
            achievementAdapter = this.allAdapter;
        } else {
            achievementAdapter = i10 == 2 ? this.unlockAdapter : this.lockAdapter;
        }
        listViewFinal.setVisibility(achievementAdapter.getCount() == 0 ? 8 : 0);
        this.ll_empty.setVisibility(achievementAdapter.getCount() != 0 ? 8 : 0);
    }

    private void updateListView(AchievementBean achievementBean, int i10) {
    }

    @Override // com.papa91.arc.dialog.SettingDialog
    public int getLayoutId() {
        return R.layout.dialog_setting_achievement;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.tv_back_game) {
            dismiss();
            showAdVideo();
        } else if (view.getId() == R.id.ivTips) {
            AchievmentTipsDialog achievmentTipsDialog = new AchievmentTipsDialog(this.context);
            ImageView imageView = this.ivTips;
            achievmentTipsDialog.showAsDropDown(imageView, (int) ((imageView.getMeasuredWidth() / 2) - this.context.getResources().getDimension(R.dimen.wdp336)), (int) (-this.context.getResources().getDimension(R.dimen.wdp10)));
        }
    }

    public void setTourist(boolean z10) {
        this.isTourist = z10;
    }

    @Override // com.papa91.arc.dialog.SettingDialog, com.papa91.arc.view.BaseDialog, android.app.Dialog
    public void show() {
        super.show();
        this.allPage = 1;
        this.unlockPage = 1;
        this.lockPage = 1;
        initData();
    }
}
