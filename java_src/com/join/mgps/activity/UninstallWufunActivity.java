package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathDataV2;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.ArchievePathMultiArgs;
import com.join.mgps.dto.ArchievePathMultiBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.UninstallGuessLikeArgs;
import com.join.mgps.dto.UninstallGuessLikeBean;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.util.FileUtils;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_uninstall_wufun)
public class UninstallWufunActivity extends BaseAppCompatActivity {
    private ActivityResultLauncher<Intent> activityResultLauncher;
    private com.join.mgps.adapter.k8 adapter;

    @ViewById
    CardView cardClean;

    @ViewById
    CardView cardRecom;

    @ViewById
    FrameLayout flRecom;
    private ArrayList<DownloadTask> gameList;

    @ViewById
    RelativeLayout headview;

    @ViewById
    LinearLayout llLocalArchiveGame;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    private Context mContext;
    private com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    RecyclerView rvRecom;

    @ViewById
    View statubar;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView tvClean;

    @ViewById
    TextView tvCleanSpace;

    @ViewById
    TextView tvFinish;

    @ViewById
    TextView tvGameTag;

    @ViewById
    TextView tvNoArchieveGame;

    @ViewById
    TextView tvTotalDataSize;

    @ViewById
    TextView tvTotalGamePkgSize;

    @ViewById
    TextView tvUninstall;
    private List<CommonGameInfoBean> recomList = new ArrayList();
    private ArrayList<String> onlyArchieveGameIdList = new ArrayList<>();
    List<DownloadTask> archieveGameList = new ArrayList();
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;

    class a implements ActivityResultCallback<ActivityResult> {
        a() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onActivityResult(ActivityResult result) {
            if (result.getResultCode() == 10001) {
                UninstallWufunActivity.this.refresh();
            }
        }
    }

    class b extends RecyclerView.OnScrollListener {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            UninstallWufunActivity.this.SCROLLING = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            RecyclerView recyclerView2 = UninstallWufunActivity.this.rvRecom;
            if (recyclerView2 == null || recyclerView2.getLayoutManager() == null) {
                return;
            }
            GridLayoutManager gridLayoutManager = (GridLayoutManager) UninstallWufunActivity.this.rvRecom.getLayoutManager();
            UninstallWufunActivity.this.lastVisibleIndex = gridLayoutManager.findLastVisibleItemPosition();
            UninstallWufunActivity.this.firstVisiblePosition = gridLayoutManager.findFirstVisibleItemPosition();
        }
    }

    private List<String> getLocalSimulatorArchieveStorage(DownloadTask task) {
        ArrayList arrayList = new ArrayList();
        String strD2 = UtilsMy.d2(Integer.parseInt(task.getPlugin_num()));
        if (TextUtils.isEmpty(strD2)) {
            return arrayList;
        }
        Pattern patternCompile = Pattern.compile("\\.\\d+$");
        Pattern patternCompile2 = Pattern.compile("\\.\\d+\\.png$");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getExternalFilesDir("papa91"));
        String str = File.separator;
        sb2.append(str);
        sb2.append(strD2);
        sb2.append(str);
        sb2.append(task.getPackageName());
        File file = new File(sb2.toString());
        if (file.exists() && file.isDirectory() && file.listFiles() != null && file.listFiles().length > 0) {
            for (File file2 : file.listFiles()) {
                if (patternCompile.matcher(file2.getName()).find() || patternCompile2.matcher(file2.getName()).find()) {
                    arrayList.add(file2.getAbsolutePath());
                }
            }
        }
        File file3 = new File(getFilesDir() + "/emus/" + UtilsMy.d2(Integer.parseInt(task.getPlugin_num())) + File.separator + task.getPackageName());
        if (file3.exists() && file3.isDirectory() && file3.listFiles() != null && file3.listFiles().length > 0) {
            for (File file4 : file3.listFiles()) {
                if (patternCompile.matcher(file4.getName()).find() || patternCompile2.matcher(file4.getName()).find()) {
                    arrayList.add(file4.getAbsolutePath());
                }
            }
        }
        return arrayList;
    }

    private void receiveDelete(DownloadTask downloadTask) {
        updateDownStateList(this.recomList);
        notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            updateDownStateList(this.recomList);
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        updateDownStateList(this.recomList);
        notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        updateDownStateList(this.recomList);
        notifyDataSetChanged();
    }

    private void updateDownStateList(List<CommonGameInfoBean> SearchDataBeanList) {
        Iterator<CommonGameInfoBean> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.firstVisiblePosition < 0 || this.lastVisibleIndex >= this.adapter.getItemCount()) {
            return;
        }
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            CommonGameInfoBean item = this.adapter.getItem(i10);
            if (item != null && (downloadTask = item.getDownloadTask()) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.rvRecom.getChildAt(i10 - this.firstVisiblePosition)) != null)) {
                RecyclerView.ViewHolder childViewHolder = this.rvRecom.getChildViewHolder(childAt);
                if (childViewHolder instanceof com.join.mgps.base.b) {
                    com.join.mgps.base.b bVar = (com.join.mgps.base.b) childViewHolder;
                    try {
                        DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                        if (downloadTaskG == null) {
                            return;
                        }
                        DownloadNormalView downloadNormalView = (DownloadNormalView) bVar.getView(R.id.dv_view);
                        if (downloadNormalView != null) {
                            downloadNormalView.s(downloadTaskG.getProgress());
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @AfterViews
    void afterviews() {
        com.join.mgps.Util.j0.a().d(this);
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.mContext = this;
        this.adapter = new com.join.mgps.adapter.k8(this.recomList);
        this.rvRecom.setLayoutManager(new GridLayoutManager(this, 2));
        this.rvRecom.setAdapter(this.adapter);
        this.title_textview.setText("卸载应用");
        this.activityResultLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new a());
        this.rvRecom.addOnScrollListener(new b());
        getDownloadTask();
        getGuessLikeData();
        com.papa.sim.statistic.t.l(this.mContext).R1(Event.goUninstallPage, new Ext());
    }

    @Click
    void back_image() {
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        Intent intent = new Intent();
        intent.setClass(this.mContext, MGMainActivity_.class);
        intent.setFlags(603979776);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", 3);
        intent.putExtras(bundle);
        startActivity(intent);
        super.finish();
    }

    @Background
    void getArchieveGameInfo(int index) {
        if (!com.join.android.app.common.utils.m.j(this.mContext)) {
            showGameIcon();
            return;
        }
        try {
            if (index > this.onlyArchieveGameIdList.size() - 1) {
                showGameIcon();
                return;
            }
            String str = this.onlyArchieveGameIdList.get(index);
            UserInfo accountData = AccountUtil_.getInstance_(this.mContext).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.newBuilder().build();
            }
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this.mContext);
            RequestGameIdArgs requestGameIdArgs = new RequestGameIdArgs(str, 1, accountData.getUid());
            requestGameIdArgs.setDownloadedGameIdList(q5.f.M().B());
            requestModel.setArgs(requestGameIdArgs);
            ResponseModel<GamedetialModleFourBean> responseModelBody = com.join.mgps.rpc.impl.i.P0().N0().e0(requestModel.makeSign()).execute().body();
            if (responseModelBody != null && responseModelBody.getCode() == 200) {
                this.archieveGameList.add(responseModelBody.getData().getDownloadtaskDown());
            }
            getArchieveGameInfo(index + 1);
        } catch (Exception e10) {
            e10.printStackTrace();
            showGameIcon();
        }
    }

    @UiThread
    void getDownloadTask() {
        this.gameList = q5.f.M().D();
        ArrayList arrayList = new ArrayList();
        for (DownloadTask downloadTask : this.gameList) {
            if (downloadTask.getModInfoBean() != null && TextUtils.equals(String.valueOf(downloadTask.getCrc_link_type_val()), downloadTask.getModInfoBean().getMod_game_id())) {
                arrayList.add(downloadTask.getCrc_link_type_val());
            }
        }
        if (arrayList.size() > 0) {
            getModGameArchievePath(arrayList);
        } else {
            updateDatas(null);
        }
    }

    @Background
    void getGuessLikeData() {
        showLoding();
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            RequestModel requestModel = new RequestModel();
            UninstallGuessLikeArgs uninstallGuessLikeArgs = new UninstallGuessLikeArgs();
            uninstallGuessLikeArgs.setUid(String.valueOf(accountData.getUid()));
            requestModel.setArgs(uninstallGuessLikeArgs);
            requestModel.setDefault(this);
            ResponseModel<UninstallGuessLikeBean> responseModelM = this.rpcGameClient.m(requestModel.makeSign());
            if (responseModelM == null || responseModelM.getCode() != 200 || responseModelM.getData() == null) {
                showLodingFailed();
            } else {
                updateData(responseModelM.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @Background
    void getModGameArchievePath(List<String> modGameIds) {
        if (com.join.android.app.common.utils.m.j(this)) {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                if (accountData == null) {
                    accountData = UserInfo.getDefaultInstance();
                }
                RequestModel requestModel = new RequestModel();
                ArchievePathMultiArgs archievePathMultiArgs = new ArchievePathMultiArgs();
                archievePathMultiArgs.setUid(String.valueOf(accountData.getUid()));
                archievePathMultiArgs.setDownloadedGameIdList(modGameIds);
                requestModel.setArgs(archievePathMultiArgs);
                requestModel.setDefault(this);
                ResponseModel<ArchievePathMultiBean> responseModelK = this.rpcGameClient.k(requestModel.makeSign());
                if (responseModelK == null || responseModelK.getCode() != 200 || responseModelK.getData() == null) {
                    return;
                }
                updateDatas(responseModelK);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void notifyDataSetChanged() {
        com.join.mgps.adapter.k8 k8Var = this.adapter;
        if (k8Var != null) {
            k8Var.notifyDataSetChanged();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
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
                downloadTaskA.setStatus(7);
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
                        if (downloadTaskA != null) {
                            updateUI(downloadTaskA, 7);
                            break;
                        }
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

    @UiThread
    void refresh() {
        this.onlyArchieveGameIdList.clear();
        this.archieveGameList.clear();
        getDownloadTask();
    }

    @Click
    void relodingimag() {
        showLoding();
        getGuessLikeData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    @UiThread
    void showGameIcon() {
        if (this.archieveGameList.size() <= 0) {
            this.tvNoArchieveGame.setVisibility(0);
            this.llLocalArchiveGame.setVisibility(8);
            return;
        }
        this.tvNoArchieveGame.setVisibility(8);
        this.llLocalArchiveGame.setVisibility(0);
        new ArrayList();
        List<DownloadTask> listSubList = this.archieveGameList.size() <= 4 ? this.archieveGameList : this.archieveGameList.subList(0, 4);
        this.llLocalArchiveGame.removeAllViews();
        for (DownloadTask downloadTask : listSubList) {
            View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.item_uninstall_local_archieve_game, (ViewGroup) null);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) viewInflate.findViewById(R.id.icon);
            TextView textView = (TextView) viewInflate.findViewById(R.id.count);
            simpleDraweeView.setVisibility(0);
            textView.setVisibility(8);
            com.join.android.app.common.utils.l.o(simpleDraweeView, downloadTask.getPortraitURL());
            this.llLocalArchiveGame.addView(viewInflate);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewInflate.getLayoutParams();
            layoutParams.weight = 1.0f;
            viewInflate.setLayoutParams(layoutParams);
        }
        if (this.archieveGameList.size() >= 5) {
            View viewInflate2 = LayoutInflater.from(this.mContext).inflate(R.layout.item_uninstall_local_archieve_game, (ViewGroup) null);
            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) viewInflate2.findViewById(R.id.icon);
            TextView textView2 = (TextView) viewInflate2.findViewById(R.id.count);
            simpleDraweeView2.setVisibility(8);
            textView2.setVisibility(0);
            textView2.setText(this.archieveGameList.size() + "");
            this.llLocalArchiveGame.addView(viewInflate2);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewInflate2.getLayoutParams();
            layoutParams2.weight = 1.0f;
            viewInflate2.setLayoutParams(layoutParams2);
        }
    }

    @UiThread
    void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.flRecom.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingFailed() {
        try {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(0);
            this.flRecom.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMain() {
        try {
            this.flRecom.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click
    void tvClean() {
        com.papa.sim.statistic.t.l(this.mContext).R1(Event.clickClearBtn, new Ext());
        if (this.activityResultLauncher == null) {
            CleanSpaceActivity_.intent(this).start();
        } else {
            this.activityResultLauncher.launch(new Intent(this, (Class<?>) CleanSpaceActivity_.class));
        }
    }

    @Click
    void tvFinish() {
        com.papa.sim.statistic.t.l(this.mContext).R1(Event.clickPauseUninstallBtn, new Ext());
        finish();
    }

    @Click
    void tvUninstall() {
        com.papa.sim.statistic.t.l(this.mContext).R1(Event.clickUninstallBtn, new Ext());
        UninstallWufunReasonActivity_.intent(this.mContext).start();
    }

    @UiThread
    void updateData(UninstallGuessLikeBean data) {
        if (data == null || data.getGuessYouLikeInfo() == null || data.getGuessYouLikeInfo().size() <= 0) {
            return;
        }
        showMain();
        if (this.recomList == null) {
            this.recomList = new ArrayList();
        }
        List<CommonGameInfoBean> guessYouLikeInfo = data.getGuessYouLikeInfo();
        this.recomList = guessYouLikeInfo;
        for (CommonGameInfoBean commonGameInfoBean : guessYouLikeInfo) {
            commonGameInfoBean.set_from(167);
            commonGameInfoBean.set_from_type(167);
        }
        com.join.mgps.adapter.k8 k8Var = this.adapter;
        if (k8Var != null) {
            k8Var.setNewData(this.recomList);
        }
        updateDownStateList(this.recomList);
    }

    @UiThread
    void updateDatas(ResponseModel<ArchievePathMultiBean> main) {
        long jFileSize;
        String strReplace = com.join.mgps.va.overmind.k.f73277a.k0().replace("/sdcard", "");
        long jFileSize2 = 0;
        if (main != null) {
            jFileSize = 0;
            for (ModGameArchivePathDataV2 modGameArchivePathDataV2 : main.getData().getCloud_archive_path_list()) {
                if (modGameArchivePathDataV2 != null) {
                    String mainLocalPath = modGameArchivePathDataV2.getMainLocalPath();
                    String strK0 = com.join.mgps.va.overmind.k.f73277a.k0();
                    if (mainLocalPath.startsWith("/data/data")) {
                        mainLocalPath = mainLocalPath.replace("/data/data", "/data/user/0");
                        strK0 = strK0.replace("/sdcard", "");
                    }
                    File file = new File(strK0 + mainLocalPath);
                    DownloadTask downloadTaskG = q5.f.M().G(modGameArchivePathDataV2.getGameId());
                    if (file.exists()) {
                        jFileSize += FileUtils.fileSize(file.getAbsolutePath());
                        if (downloadTaskG != null) {
                            this.archieveGameList.add(downloadTaskG);
                        }
                    }
                }
            }
        } else {
            jFileSize = 0;
        }
        ArrayList<DownloadTask> arrayList = this.gameList;
        if (arrayList != null) {
            for (DownloadTask downloadTask : arrayList) {
                List<String> localSimulatorArchieveStorage = getLocalSimulatorArchieveStorage(downloadTask);
                if (localSimulatorArchieveStorage != null && localSimulatorArchieveStorage.size() > 0) {
                    this.archieveGameList.add(downloadTask);
                    Iterator<String> it2 = localSimulatorArchieveStorage.iterator();
                    while (it2.hasNext()) {
                        File file2 = new File(it2.next());
                        if (file2.exists()) {
                            jFileSize += file2.length();
                        }
                    }
                }
                String plugin_num = downloadTask.getPlugin_num();
                if (TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.FC.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.GBA.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.FBA.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.MD.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.SFC.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.PSP.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.PS.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.WSC.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.GBC.value()))) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(getExternalFilesDir("wufan91"));
                    String str = File.separator;
                    sb2.append(str);
                    sb2.append(plugin_num);
                    sb2.append(str);
                    sb2.append("roms");
                    sb2.append(str);
                    sb2.append(downloadTask.getPackageName());
                    File file3 = new File(sb2.toString());
                    if (file3.exists()) {
                        jFileSize2 += FileUtils.fileSize(file3.getAbsolutePath());
                    }
                } else if ((downloadTask.getModInfoBean() != null && TextUtils.equals(String.valueOf(downloadTask.getCrc_link_type_val()), downloadTask.getModInfoBean().getMod_game_id())) || downloadTask.isSingleGame()) {
                    String packageName = (!downloadTask.isMod() || downloadTask.getModInfoBean() == null) ? downloadTask.isSingleGame() ? downloadTask.getPackageName() : "" : downloadTask.getModInfoBean().getMod_package_name();
                    if (!TextUtils.isEmpty(packageName)) {
                        jFileSize2 += FileUtils.fileSize(strReplace + "/data/user/0/" + packageName) + FileUtils.fileSize(strReplace + "/data/app/" + packageName) + FileUtils.fileSize(strReplace + "/data/user_de/0/" + packageName) + FileUtils.fileSize(strReplace + "/sdcard/Android/data/" + packageName) + FileUtils.fileSize(strReplace + "/sdcard/Android/obb/" + packageName);
                    }
                }
            }
        }
        File externalFilesDir = getExternalFilesDir("backup");
        if (!externalFilesDir.exists() || !externalFilesDir.isDirectory() || externalFilesDir.listFiles() == null || externalFilesDir.listFiles().length <= 0) {
            showGameIcon();
        } else {
            jFileSize += FileUtils.fileSize(externalFilesDir.getAbsolutePath());
            for (File file4 : externalFilesDir.listFiles()) {
                if (file4.exists() && file4.isDirectory()) {
                    this.onlyArchieveGameIdList.add(file4.getName());
                }
            }
            ArrayList<String> arrayList2 = this.onlyArchieveGameIdList;
            if (arrayList2 == null || arrayList2.size() <= 0) {
                showGameIcon();
            } else {
                getArchieveGameInfo(0);
            }
        }
        long jFileSize3 = FileUtils.fileSize(getExternalCacheDir().getAbsolutePath()) + FileUtils.fileSize(getCacheDir().getAbsolutePath());
        this.tvTotalDataSize.setText(UtilsMy.g(jFileSize, "0.0"));
        this.tvTotalGamePkgSize.setText(UtilsMy.g(jFileSize2, "0.0"));
        this.tvCleanSpace.setText("可清理" + UtilsMy.g(jFileSize + jFileSize2 + jFileSize3, "0.0") + "文件");
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
