package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathDataV2;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.gamedetail.GamedetailVideoMainActivity_;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.ArchievePathMultiArgs;
import com.join.mgps.dto.ArchievePathMultiBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.UninstallGuessLikeArgs;
import com.join.mgps.dto.UninstallGuessLikeBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.receiver.BootReceiver_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
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
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_uninstall_wufun_game)
public class UninstallWufunGameActivity extends BaseAppCompatActivity {
    private com.join.mgps.adapter.k8 adapter;
    private ModGameArchivePathDataV2 archivePath;

    @ViewById
    FrameLayout cardDelete;

    @ViewById
    CardView cardRecom;

    @ViewById
    ImageView checkbox1;

    @ViewById
    ImageView checkbox2;

    @ViewById
    ImageView checkbox3;
    DownloadTask cldTask;
    private Context context;

    @ViewById
    FrameLayout flRecom;

    @ViewById
    ConstraintLayout game1;

    @ViewById
    ConstraintLayout game2;

    @ViewById
    ConstraintLayout game3;

    @ViewById
    TextView gameDesc1;

    @ViewById
    SimpleDraweeView gameIcon1;

    @ViewById
    SimpleDraweeView gameIcon2;

    @ViewById
    SimpleDraweeView gameIcon3;

    @Extra
    String gameId;

    @ViewById
    TextView gameName1;

    @ViewById
    TextView gameName2;

    @ViewById
    TextView gameName3;

    @ViewById
    TextView gameStatus1;

    @ViewById
    TextView gameStatus2;

    @ViewById
    TextView gameStatus3;

    @ViewById
    RelativeLayout headview;
    private boolean installCloud;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_layout;
    private String modGameId;
    private com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    RecyclerView rvRecom;

    @ViewById
    View statubar;
    private DownloadTask task;

    @ViewById
    TextView title_textview;

    @ViewById
    FrameLayout toComment;

    @ViewById
    TextView tvDeleteAll;

    @ViewById
    TextView tvDeleteGameOnly;
    private List<CommonGameInfoBean> recomList = new ArrayList();
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;
    private boolean SCROLLING = false;
    private int retryCount = 0;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            UninstallWufunGameActivity.this.SCROLLING = newState != 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            RecyclerView recyclerView2 = UninstallWufunGameActivity.this.rvRecom;
            if (recyclerView2 == null || recyclerView2.getLayoutManager() == null) {
                return;
            }
            GridLayoutManager gridLayoutManager = (GridLayoutManager) UninstallWufunGameActivity.this.rvRecom.getLayoutManager();
            UninstallWufunGameActivity.this.lastVisibleIndex = gridLayoutManager.findLastVisibleItemPosition();
            UninstallWufunGameActivity.this.firstVisiblePosition = gridLayoutManager.findFirstVisibleItemPosition();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56275b;

        b(final String val$gameId) {
            this.f56275b = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadTask downloadTaskG = q5.f.M().G(this.f56275b);
            if (downloadTaskG == null || downloadTaskG.getStatus() == 7) {
                UninstallWufunGameActivity.this.gameStatus2.setVisibility(0);
                UninstallWufunGameActivity.this.checkbox2.setVisibility(8);
                UninstallWufunGameActivity.this.checkbox2.setSelected(false);
                UninstallWufunGameActivity.this.resetBtn();
                UninstallWufunGameActivity.this.resetBtn2();
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56277b;

        c(final String val$gameId) {
            this.f56277b = val$gameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadTask downloadTaskL = q5.f.M().L(this.f56277b);
            if (downloadTaskL == null || downloadTaskL.getStatus() == 7) {
                UninstallWufunGameActivity.this.gameStatus3.setVisibility(0);
                UninstallWufunGameActivity.this.checkbox3.setVisibility(8);
                UninstallWufunGameActivity.this.checkbox3.setSelected(false);
                UninstallWufunGameActivity.this.resetBtn();
                UninstallWufunGameActivity.this.resetBtn2();
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f56279b;

        d(final String val$modGameId) {
            this.f56279b = val$modGameId;
        }

        @Override // java.lang.Runnable
        public void run() {
            DownloadTask downloadTaskG = q5.f.M().G(this.f56279b);
            if (downloadTaskG == null || downloadTaskG.getStatus() == 7) {
                UninstallWufunGameActivity.this.gameStatus1.setVisibility(0);
                UninstallWufunGameActivity.this.checkbox1.setVisibility(8);
                UninstallWufunGameActivity.this.checkbox1.setSelected(false);
                UninstallWufunGameActivity.this.resetBtn();
                UninstallWufunGameActivity.this.resetBtn2();
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f56281b;

        e(final Intent val$intent) {
            this.f56281b = val$intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            String stringExtra = this.f56281b.getStringExtra("packageName");
            if (this.f56281b.getStringExtra("actionFrom").equals(BootReceiver_.f72255b) && UninstallWufunGameActivity.this.task != null && TextUtils.equals(UninstallWufunGameActivity.this.task.getPackageName(), stringExtra)) {
                DownloadTask downloadTaskG = q5.f.M().G(UninstallWufunGameActivity.this.gameId);
                if (downloadTaskG != null && downloadTaskG.getStatus() != 7) {
                    UninstallWufunGameActivity.access$508(UninstallWufunGameActivity.this);
                    if (UninstallWufunGameActivity.this.retryCount <= 3) {
                        new Handler().postDelayed(this, 1000L);
                        return;
                    }
                    return;
                }
                UninstallWufunGameActivity.this.gameStatus2.setVisibility(0);
                UninstallWufunGameActivity.this.checkbox2.setVisibility(8);
                UninstallWufunGameActivity.this.checkbox2.setSelected(false);
                UninstallWufunGameActivity.this.resetBtn();
                UninstallWufunGameActivity.this.resetBtn2();
            }
        }
    }

    static /* synthetic */ int access$508(UninstallWufunGameActivity uninstallWufunGameActivity) {
        int i10 = uninstallWufunGameActivity.retryCount;
        uninstallWufunGameActivity.retryCount = i10 + 1;
        return i10;
    }

    private String getLocalModGameArchievePath() {
        ModGameArchivePathDataV2 modGameArchivePathDataV2;
        if (q5.f.M().G(this.modGameId) == null || (modGameArchivePathDataV2 = this.archivePath) == null || modGameArchivePathDataV2.getMainLocalPath() == null) {
            return null;
        }
        String mainLocalPath = this.archivePath.getMainLocalPath();
        String strK0 = com.join.mgps.va.overmind.k.f73277a.k0();
        if (mainLocalPath.startsWith("/data/data")) {
            mainLocalPath = mainLocalPath.replace("/data/data", "/data/user/0");
            strK0 = strK0.replace("/sdcard", "");
        }
        return strK0 + mainLocalPath;
    }

    private List<String> getLocalSimulatorArchieveStorage(DownloadTask task) {
        task.getPlugin_num();
        ArrayList arrayList = new ArrayList();
        String strD2 = UtilsMy.d2(Integer.parseInt(task.getPlugin_num()));
        if (TextUtils.isEmpty(strD2)) {
            return arrayList;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getExternalFilesDir("papa91"));
        String str = File.separator;
        sb2.append(str);
        sb2.append(strD2);
        sb2.append(str);
        sb2.append(task.getPackageName());
        File file = new File(sb2.toString());
        if (file.exists() && file.isDirectory()) {
            Pattern patternCompile = Pattern.compile("\\.\\d+$");
            Pattern patternCompile2 = Pattern.compile("\\.\\d+\\.png$");
            if (file.listFiles() != null && file.listFiles().length > 0) {
                for (File file2 : file.listFiles()) {
                    if (patternCompile.matcher(file2.getName()).find() || patternCompile2.matcher(file2.getName()).find()) {
                        arrayList.add(file2.getAbsolutePath());
                    }
                }
            }
        }
        return arrayList;
    }

    private void initHeadCard() {
        DownloadTask downloadTask = this.task;
        if (downloadTask == null) {
            return;
        }
        if (downloadTask.isCloudGame()) {
            DownloadTask downloadTaskL = q5.f.M().L(this.gameId);
            this.cldTask = downloadTaskL;
            if (downloadTaskL != null) {
                this.installCloud = true;
            }
        }
        if (com.join.mgps.Util.t2.i(this.task.getMod_info())) {
            ModInfoBean modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(this.task.getMod_info(), ModInfoBean.class);
            if (modInfoBean != null) {
                List<DownloadTask> listH = q5.f.M().H(modInfoBean.getMain_game_id(), modInfoBean.getMod_game_id());
                if (listH != null) {
                    for (DownloadTask downloadTask2 : listH) {
                        if (Dtype.MOD.name().equals(downloadTask2.getFileType())) {
                            this.modGameId = downloadTask2.getCrc_link_type_val();
                            this.game1.setVisibility(0);
                            this.gameName1.setText("增强版");
                            com.join.android.app.common.utils.l.h(this.gameIcon1, downloadTask2.getPortraitURL());
                            getModGameArchievePath(new ArrayList<String>() { // from class: com.join.mgps.activity.UninstallWufunGameActivity.2
                                {
                                    add(UninstallWufunGameActivity.this.modGameId);
                                }
                            });
                        } else {
                            this.gameId = downloadTask2.getCrc_link_type_val();
                            this.game2.setVisibility(0);
                            this.gameName2.setText("标准版");
                            com.join.android.app.common.utils.l.h(this.gameIcon2, downloadTask2.getPortraitURL());
                        }
                    }
                }
                showCloudView();
            }
        } else if (this.task.isSingleGame()) {
            this.modGameId = this.task.getCrc_link_type_val();
            this.game1.setVisibility(0);
            this.gameName1.setText(this.task.getShowName());
            this.gameDesc1.setVisibility(8);
            com.join.android.app.common.utils.l.h(this.gameIcon1, this.task.getPortraitURL());
            showCloudView();
        } else if (com.join.mgps.Util.w0.m(this.task.getTipBeans()) || com.join.mgps.Util.w0.k(this.task.getTipBeans())) {
            this.game1.setVisibility(8);
            this.game2.setVisibility(8);
            this.checkbox1.setVisibility(8);
            this.checkbox2.setVisibility(8);
            this.checkbox3.setVisibility(8);
            showCloudView();
        } else {
            this.game1.setVisibility(8);
            this.gameId = this.task.getCrc_link_type_val();
            this.game2.setVisibility(0);
            this.modGameId = this.task.getRef_crc_sign_id();
            this.gameName2.setText(this.task.getShowName());
            this.checkbox1.setVisibility(8);
            this.checkbox2.setVisibility(8);
            this.checkbox3.setVisibility(8);
            com.join.android.app.common.utils.l.h(this.gameIcon2, this.task.getPortraitURL());
            showCloudView();
        }
        this.gameStatus1.setVisibility(8);
        this.gameStatus2.setVisibility(8);
        if (this.game1.getVisibility() == 0 && this.game2.getVisibility() == 0) {
            this.checkbox1.setVisibility(0);
            this.checkbox2.setVisibility(0);
            this.tvDeleteGameOnly.setVisibility(8);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_46c1ff_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#FFFFFF"));
            if (this.installCloud) {
                this.checkbox3.setVisibility(0);
                return;
            }
            return;
        }
        if (this.game1.getVisibility() == 0 && this.game2.getVisibility() == 8) {
            this.checkbox1.setVisibility(0);
            this.tvDeleteGameOnly.setVisibility(8);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_46c1ff_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#FFFFFF"));
            if (!this.installCloud) {
                this.checkbox2.setVisibility(8);
                return;
            } else {
                this.checkbox2.setVisibility(0);
                this.checkbox3.setVisibility(0);
                return;
            }
        }
        if (this.game1.getVisibility() == 8 && this.game2.getVisibility() == 0) {
            this.checkbox1.setVisibility(8);
            this.tvDeleteGameOnly.setVisibility(8);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_46c1ff_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#FFFFFF"));
            if (this.installCloud) {
                this.checkbox2.setVisibility(0);
                this.checkbox3.setVisibility(0);
            } else {
                this.checkbox2.setVisibility(8);
            }
            if (getLocalSimulatorArchieveStorage(this.task).isEmpty()) {
                return;
            }
            this.tvDeleteGameOnly.setVisibility(0);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_e6e6e6_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#929292"));
            return;
        }
        if (this.game1.getVisibility() != 0) {
            this.checkbox1.setVisibility(8);
            this.tvDeleteGameOnly.setVisibility(8);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_46c1ff_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#FFFFFF"));
            if (!getLocalSimulatorArchieveStorage(this.task).isEmpty()) {
                this.tvDeleteGameOnly.setVisibility(0);
                this.tvDeleteAll.setBackgroundResource(R.drawable.shape_e6e6e6_r8);
                this.tvDeleteAll.setTextColor(Color.parseColor("#929292"));
            }
            if (!this.installCloud) {
                this.checkbox2.setVisibility(8);
                return;
            } else {
                this.checkbox2.setVisibility(0);
                this.checkbox3.setVisibility(0);
                return;
            }
        }
        if (this.game2.getVisibility() != 0) {
            this.checkbox2.setVisibility(8);
            if (this.task.isSingleGame()) {
                this.tvDeleteGameOnly.setVisibility(8);
                this.tvDeleteAll.setBackgroundResource(R.drawable.shape_46c1ff_r8);
                this.tvDeleteAll.setTextColor(Color.parseColor("#FFFFFF"));
            } else {
                this.tvDeleteGameOnly.setVisibility(0);
            }
            if (!this.installCloud) {
                this.checkbox1.setVisibility(8);
            } else {
                this.checkbox1.setVisibility(0);
                this.checkbox3.setVisibility(0);
            }
        }
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

    private void showCloudView() {
        if (this.installCloud) {
            this.game3.setVisibility(0);
            this.gameName3.setText("云玩版");
            com.join.android.app.common.utils.l.h(this.gameIcon3, this.cldTask.getPortraitURL());
        }
    }

    private void updateDownStateList(String gameId, int status) {
        if (com.join.mgps.Util.t2.h(gameId)) {
            return;
        }
        for (int i10 = 0; i10 < this.adapter.getItemCount(); i10++) {
            DlTaskManager.INSTANCE.updateDownloadTask(this.adapter.getItem(i10));
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
        this.context = this;
        com.join.mgps.Util.j0.a().d(this);
        DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
        this.task = downloadTaskG;
        if (downloadTaskG == null) {
            this.task = q5.f.M().L(this.gameId);
        }
        if (this.task == null) {
            finish();
            return;
        }
        initHeadCard();
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.adapter = new com.join.mgps.adapter.k8(this.recomList);
        this.rvRecom.setLayoutManager(new GridLayoutManager(this, 2));
        this.rvRecom.setAdapter(this.adapter);
        this.rvRecom.addOnScrollListener(new a());
        getGuessLikeData();
        Ext ext = new Ext();
        ext.setGameId(this.gameId);
        com.papa.sim.statistic.t.l(this.context).R1(Event.goUninstallGamePage, ext);
    }

    @Receiver(actions = {p5.a.f96211o})
    void apkInstalRecver(Intent intent) {
        this.retryCount = 0;
        new Handler().postDelayed(new e(intent), 1000L);
    }

    @Click
    void back_image() {
        finish();
    }

    void deleteCloudGame(String gameId) {
        DownloadTask downloadTaskL;
        if (this.gameStatus3.getVisibility() == 0 || (downloadTaskL = q5.f.M().L(gameId)) == null) {
            return;
        }
        if (downloadTaskL.getStatus() == 2) {
            this.gameStatus3.setVisibility(0);
            this.checkbox3.setVisibility(8);
            this.checkbox3.setSelected(false);
        }
        UtilsMy.O0(downloadTaskL);
        UtilsMy.U4(downloadTaskL);
        new Handler().postDelayed(new c(gameId), 1000L);
    }

    void deleteGame(String gameId) {
        DownloadTask downloadTaskG;
        if (this.gameStatus2.getVisibility() == 0 || (downloadTaskG = q5.f.M().G(gameId)) == null) {
            return;
        }
        boolean z10 = false;
        if (downloadTaskG.getStatus() == 2) {
            this.gameStatus2.setVisibility(0);
            this.checkbox2.setVisibility(8);
            this.checkbox2.setSelected(false);
        }
        String fileType = downloadTaskG.getFileType();
        if (!TextUtils.isEmpty(fileType) && fileType.equals(Dtype.android.name())) {
            z10 = true;
        }
        if (!z10 || !com.join.android.app.common.utils.g.t0(this.context).e(this.context, downloadTaskG.getPackageName())) {
            UtilsMy.O0(downloadTaskG);
            UtilsMy.U4(downloadTaskG);
        } else if (downloadTaskG.getStatus() == 5 || downloadTaskG.getStatus() == 9) {
            com.join.android.app.common.utils.g.t0(this.context).o0(this.context, downloadTaskG.getPackageName());
        } else {
            UtilsMy.L0(downloadTaskG);
            APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.context).n(this.context, downloadTaskG.getPackageName());
            if (aVarN != null) {
                downloadTaskG.setVer(aVarN.d() + "");
            }
            UtilsMy.i3(downloadTaskG, 5);
        }
        new Handler().postDelayed(new b(gameId), 1000L);
    }

    void deleteModGame(String modGameId) {
        if (this.gameStatus1.getVisibility() == 0) {
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(modGameId);
        if (downloadTaskG != null && downloadTaskG.getStatus() == 48) {
            showToast("游戏安装中无法删除");
            return;
        }
        if (downloadTaskG != null && downloadTaskG.getStatus() == 2) {
            this.gameStatus1.setVisibility(0);
            this.checkbox1.setVisibility(8);
            this.checkbox1.setSelected(false);
        }
        UtilsMy.R0(this.context, downloadTaskG);
        new Handler().postDelayed(new d(modGameId), 1000L);
    }

    @Click
    void game1() {
        if (this.gameStatus1.getVisibility() != 0 && this.checkbox1.getVisibility() == 0) {
            ImageView imageView = this.checkbox1;
            imageView.setSelected(!imageView.isSelected());
            this.tvDeleteGameOnly.setVisibility(this.checkbox1.isSelected() ? 0 : 8);
            this.tvDeleteAll.setBackgroundResource(this.checkbox1.isSelected() ? R.drawable.shape_e6e6e6_r8 : R.drawable.shape_46c1ff_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor(this.checkbox1.isSelected() ? "#929292" : "#FFFFFF"));
        }
    }

    @Click
    void game2() {
        if (this.gameStatus2.getVisibility() != 0 && this.checkbox2.getVisibility() == 0) {
            ImageView imageView = this.checkbox2;
            imageView.setSelected(!imageView.isSelected());
        }
    }

    @Click
    void game3() {
        if (this.gameStatus3.getVisibility() != 0 && this.checkbox3.getVisibility() == 0) {
            ImageView imageView = this.checkbox3;
            imageView.setSelected(!imageView.isSelected());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGuessLikeData() {
        showLoding();
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            RequestModel requestModel = new RequestModel();
            UninstallGuessLikeArgs uninstallGuessLikeArgs = new UninstallGuessLikeArgs();
            uninstallGuessLikeArgs.setUid(String.valueOf(accountData.getUid()));
            uninstallGuessLikeArgs.setGameId((TextUtils.isEmpty(this.modGameId) ? this.gameId : this.modGameId).replace("cld_", ""));
            requestModel.setArgs(uninstallGuessLikeArgs);
            requestModel.setDefault(this);
            ResponseModel<UninstallGuessLikeBean> responseModelO0 = this.rpcGameClient.o0(requestModel.makeSign());
            if (responseModelO0 == null || responseModelO0.getCode() != 200 || responseModelO0.getData() == null) {
                showLodingFailed();
            } else {
                updateData(responseModelO0.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getModGameArchievePath(List<String> modGameIds) {
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
                if (responseModelK != null && responseModelK.getCode() == 200 && responseModelK.getData() != null && responseModelK.getData().getCloud_archive_path_list() != null && responseModelK.getData().getCloud_archive_path_list().size() > 0) {
                    this.archivePath = responseModelK.getData().getCloud_archive_path_list().get(0);
                    resetBtn();
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            setBtn(false);
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
            }
            switch (iC) {
                case 10:
                    if (downloadTaskA == null) {
                        return;
                    }
                    updateUI(downloadTaskA, 7);
                    return;
                case 11:
                    break;
                case 12:
                    updateUI(downloadTaskA, 8);
                    return;
                case 13:
                    updateUI(downloadTaskA, 9);
                    return;
                default:
                    switch (iC) {
                        case 49:
                        case 50:
                            updateDownStateList(downloadTaskEvent.b(), downloadTaskEvent.c());
                            break;
                    }
                    return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Click
    void relodingimag() {
        showLoding();
        getGuessLikeData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resetBtn() {
        String localModGameArchievePath = getLocalModGameArchievePath();
        File file = localModGameArchievePath != null ? new File(localModGameArchievePath) : null;
        if (file == null || !file.exists() || file.length() <= 0) {
            this.tvDeleteGameOnly.setVisibility(8);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_46c1ff_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#FFFFFF"));
            this.gameDesc1.setVisibility(8);
            return;
        }
        if ((this.game1.getVisibility() == 0 && this.game2.getVisibility() == 0) || this.installCloud) {
            this.tvDeleteGameOnly.setVisibility(8);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_46c1ff_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#FFFFFF"));
        } else {
            this.tvDeleteGameOnly.setVisibility(0);
            this.tvDeleteAll.setBackgroundResource(R.drawable.shape_e6e6e6_r8);
            this.tvDeleteAll.setTextColor(Color.parseColor("#929292"));
        }
        this.gameDesc1.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resetBtn2() {
        if (this.game1.getVisibility() != 0 && this.gameStatus2.getVisibility() == 0) {
            this.tvDeleteAll.setVisibility(8);
            return;
        }
        if (this.game2.getVisibility() != 0 && this.gameStatus1.getVisibility() == 0) {
            this.tvDeleteAll.setVisibility(8);
        } else if (this.game1.getVisibility() == 0 && this.game2.getVisibility() == 0 && this.gameStatus1.getVisibility() == 0 && this.gameStatus2.getVisibility() == 0) {
            this.tvDeleteAll.setVisibility(8);
        }
    }

    void saveGameArchieve(String path, String pkg) throws Throwable {
        try {
            if (new File(path).exists()) {
                com.join.mgps.Util.o0.g(path, getExternalFilesDir("backup") + File.separator + pkg);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void saveGameArchieveFiles(List<String> paths, String pkg) {
        try {
            String str = getExternalFilesDir("backup") + File.separator + pkg;
            for (String str2 : paths) {
                if (new File(str2).exists()) {
                    com.join.mgps.Util.o0.f(str2, str + File.separator + str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0)));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setBtn(boolean isVisible) {
        this.tvDeleteGameOnly.setVisibility(isVisible ? 0 : 8);
        this.tvDeleteAll.setBackgroundResource(isVisible ? R.drawable.shape_e6e6e6_r8 : R.drawable.shape_46c1ff_r8);
        this.tvDeleteAll.setTextColor(Color.parseColor(isVisible ? "#929292" : "#FFFFFF"));
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
            this.flRecom.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        try {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(0);
            this.flRecom.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        try {
            this.flRecom.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
    }

    @Click
    void toComment() {
        ExtBean extBean = new ExtBean();
        if (this.task.getExt() != null) {
            extBean = (ExtBean) JsonMapper.getInstance().fromJson(this.task.getExt(), ExtBean.class);
        }
        ModInfoBean modInfoBean = this.task.getModInfoBean();
        GamedetailVideoMainActivity_.intent(this).gameId(modInfoBean == null ? this.gameId : modInfoBean.getMain_game_id()).isShowComment(true).extBean(extBean).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, int] */
    @Click
    void tvDeleteAll() {
        ?? IsSelected = this.checkbox1.isSelected();
        int i10 = IsSelected;
        if (this.checkbox2.isSelected()) {
            i10 = IsSelected + 1;
        }
        int i11 = i10;
        if (this.checkbox3.isSelected()) {
            i11 = i10 + 1;
        }
        int i12 = this.game1.getVisibility() == 0 ? 1 : 0;
        if (this.game2.getVisibility() == 0) {
            i12++;
        }
        if (this.game3.getVisibility() == 0) {
            i12++;
        }
        if (i11 <= 0 && i12 > 1) {
            showToast("请至少选择一个要删除的游戏");
            return;
        }
        if (this.checkbox1.isSelected() || (this.game1.getVisibility() == 0 && this.game2.getVisibility() != 0 && !this.installCloud)) {
            deleteModGame(this.modGameId);
        }
        if (this.checkbox2.isSelected() || (this.game2.getVisibility() == 0 && this.game1.getVisibility() != 0 && !this.installCloud)) {
            deleteGame(this.gameId);
        }
        if (this.checkbox3.isSelected() || (this.game3.getVisibility() == 0 && this.game1.getVisibility() != 0 && this.game2.getVisibility() != 0)) {
            deleteCloudGame(this.gameId);
        }
        Ext ext = new Ext();
        ext.setGameId(this.gameId);
        ext.setClearStatus(2);
        com.papa.sim.statistic.t.l(this.context).R1(Event.uninstallGameSuccess, ext);
    }

    @Click
    void tvDeleteGameOnly() {
        ModGameArchivePathDataV2 modGameArchivePathDataV2;
        if (this.game1.getVisibility() == 0 && this.game2.getVisibility() == 0 && !this.checkbox1.isSelected() && !this.checkbox2.isSelected()) {
            showToast("请至少选择一个要删除的游戏");
            return;
        }
        if (this.checkbox1.isSelected() || (this.game1.getVisibility() == 0 && this.game2.getVisibility() != 0)) {
            DownloadTask downloadTaskG = q5.f.M().G(this.modGameId);
            if (downloadTaskG != null && (modGameArchivePathDataV2 = this.archivePath) != null && modGameArchivePathDataV2.getMainLocalPath() != null) {
                String mainLocalPath = this.archivePath.getMainLocalPath();
                String strK0 = com.join.mgps.va.overmind.k.f73277a.k0();
                if (mainLocalPath.startsWith("/data/data")) {
                    mainLocalPath = mainLocalPath.replace("/data/data", "/data/user/0");
                    strK0 = strK0.replace("/sdcard", "");
                }
                saveGameArchieve(strK0 + mainLocalPath, downloadTaskG.getCrc_link_type_val());
            }
            deleteModGame(this.modGameId);
        }
        if (this.checkbox2.isSelected() || (this.game2.getVisibility() == 0 && this.game1.getVisibility() != 0)) {
            List<String> localSimulatorArchieveStorage = getLocalSimulatorArchieveStorage(this.task);
            if (!localSimulatorArchieveStorage.isEmpty()) {
                saveGameArchieveFiles(localSimulatorArchieveStorage, this.task.getCrc_link_type_val());
            }
            deleteGame(this.gameId);
        }
        if (this.checkbox3.isSelected()) {
            deleteCloudGame(this.gameId);
        }
        Ext ext = new Ext();
        ext.setGameId(this.gameId);
        ext.setClearStatus(1);
        com.papa.sim.statistic.t.l(this.context).R1(Event.uninstallGameSuccess, ext);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateData(UninstallGuessLikeBean data) {
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
            commonGameInfoBean.set_from(168);
            commonGameInfoBean.set_from_type(168);
            DlTaskManager.INSTANCE.updateDownloadTask(commonGameInfoBean);
        }
        com.join.mgps.adapter.k8 k8Var = this.adapter;
        if (k8Var != null) {
            k8Var.setNewData(this.recomList);
        }
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

    private void updateDownStateList(List<CommonGameInfoBean> SearchDataBeanList) {
        Iterator<CommonGameInfoBean> it2 = SearchDataBeanList.iterator();
        while (it2.hasNext()) {
            DlTaskManager.INSTANCE.updateDownloadTask(it2.next());
        }
    }
}
