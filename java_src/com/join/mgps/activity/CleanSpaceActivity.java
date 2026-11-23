package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathDataV2;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.ArchievePathMultiArgs;
import com.join.mgps.dto.ArchievePathMultiBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.util.FileUtils;
import com.papa91.arc.util.StoreUtils;
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

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_clean_space)
public class CleanSpaceActivity extends BaseAppCompatActivity {
    private ArrayList<DownloadTask> archieveGameList;
    private List<ModGameArchivePathDataV2> archivePathList;

    @ViewById
    ImageView checkboxSys;
    private int cleanCount;
    private com.join.mgps.dialog.m2 confirmDialog;

    @ViewById
    LinearLayout empty_layout;

    @ViewById
    FrameLayout flBottom;
    private ArrayList<DownloadTask> gameList;

    @ViewById
    Group groupContent;

    @ViewById
    Group groupMyGame;

    @ViewById
    Group groupSimulator;
    private boolean hasCleaned;
    private boolean isCleanListContainsArchieve;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private Context mContext;
    private ArrayList<String> modGameIds;
    private com.join.mgps.rpc.k rpcGameClient;

    @ViewById
    RecyclerView rvMyGame;

    @ViewById
    RecyclerView rvSimulator;

    @ViewById
    TextView tvClean;

    @ViewById
    TextView tvSysSpace;

    @ViewById
    TextView tvTitleMyGame;

    @ViewById
    TextView tvTitleSimulator;

    @ViewById
    TextView tvTotalData;
    private ArrayList<String> cleanPaths = new ArrayList<>();
    private ArrayList<DownloadTask> simulatorList = new ArrayList<>();
    private ArrayList<DownloadTask> uninstallGameList = new ArrayList<>();
    private ArrayList<DownloadTask> uninstallSimulatorList = new ArrayList<>();
    private ArrayList<String> onlyArchieveGameIdList = new ArrayList<>();
    ArrayList<c> gameBeans = new ArrayList<>();
    ArrayList<c> simulatorBeans = new ArrayList<>();

    class a extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f50544e;

        a(final com.join.mgps.base.decoration.b.a val$decoration1) {
            this.f50544e = val$decoration1;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return this.f50544e;
        }
    }

    class b extends com.join.mgps.base.decoration.b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.base.decoration.b.a f50546e;

        b(final com.join.mgps.base.decoration.b.a val$decoration1) {
            this.f50546e = val$decoration1;
        }

        @Override // com.join.mgps.base.decoration.b
        public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
            return this.f50546e;
        }
    }

    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f50548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private DownloadTask f50549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<String> f50550c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<String> f50551d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f50552e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f50553f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f50554g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f50555h;

        c() {
        }

        public List<String> a() {
            return this.f50550c;
        }

        public long b() {
            return this.f50553f;
        }

        public List<String> c() {
            return this.f50551d;
        }

        public long d() {
            return this.f50552e;
        }

        public DownloadTask e() {
            return this.f50549b;
        }

        public boolean f() {
            return this.f50555h;
        }

        public boolean g() {
            return this.f50554g;
        }

        public int getType() {
            return this.f50548a;
        }

        public boolean h() {
            return this.f50553f > 0;
        }

        public boolean i() {
            return this.f50552e > 0;
        }

        public void j(List<String> archieveFiles) {
            this.f50550c = archieveFiles;
        }

        public void k(boolean cleanData) {
            this.f50555h = cleanData;
        }

        public void l(boolean cleanPkg) {
            this.f50554g = cleanPkg;
        }

        public void m(long dataStorage) {
            this.f50553f = dataStorage;
        }

        public void n(List<String> pkgFiles) {
            this.f50551d = pkgFiles;
        }

        public void o(long pkgStorage) {
            this.f50552e = pkgStorage;
        }

        public void p(DownloadTask task) {
            this.f50549b = task;
        }

        public void q(int type) {
            this.f50548a = type;
        }
    }

    class d extends BaseQuickAdapter<c, com.join.mgps.base.b> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f50557e;

        class a implements CompoundButton.OnCheckedChangeListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ImageView f50559a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ c f50560b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ DownloadTask f50561c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ CheckBox f50562d;

            a(final ImageView val$checkbox, final c val$bean, final DownloadTask val$item, final CheckBox val$checkboxData) {
                this.f50559a = val$checkbox;
                this.f50560b = val$bean;
                this.f50561c = val$item;
                this.f50562d = val$checkboxData;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    this.f50559a.setSelected(true);
                    this.f50560b.l(true);
                    CleanSpaceActivity.access$008(CleanSpaceActivity.this);
                    if (this.f50560b.getType() == 1) {
                        CleanSpaceActivity.this.uninstallSimulatorList.add(this.f50561c);
                    } else {
                        CleanSpaceActivity.this.uninstallGameList.add(this.f50561c);
                    }
                    if (this.f50560b.c() != null) {
                        Iterator<String> it2 = this.f50560b.c().iterator();
                        while (it2.hasNext()) {
                            CleanSpaceActivity.this.addCleanPath(it2.next());
                        }
                        return;
                    }
                    return;
                }
                if (!this.f50562d.isChecked()) {
                    this.f50559a.setSelected(false);
                }
                this.f50560b.l(false);
                CleanSpaceActivity.access$010(CleanSpaceActivity.this);
                if (this.f50560b.getType() == 1) {
                    CleanSpaceActivity.this.uninstallSimulatorList.remove(this.f50561c);
                } else {
                    CleanSpaceActivity.this.uninstallGameList.remove(this.f50561c);
                }
                if (this.f50560b.c() != null) {
                    Iterator<String> it3 = this.f50560b.c().iterator();
                    while (it3.hasNext()) {
                        CleanSpaceActivity.this.removeCleanPath(it3.next());
                    }
                }
            }
        }

        class b implements CompoundButton.OnCheckedChangeListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ImageView f50564a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ c f50565b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ CheckBox f50566c;

            b(final ImageView val$checkbox, final c val$bean, final CheckBox val$checkboxPkg) {
                this.f50564a = val$checkbox;
                this.f50565b = val$bean;
                this.f50566c = val$checkboxPkg;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    this.f50564a.setSelected(true);
                    this.f50565b.k(true);
                    CleanSpaceActivity.access$008(CleanSpaceActivity.this);
                    if (this.f50565b.a() != null) {
                        Iterator<String> it2 = this.f50565b.a().iterator();
                        while (it2.hasNext()) {
                            CleanSpaceActivity.this.addCleanPath(it2.next());
                        }
                    }
                } else {
                    if (!this.f50566c.isChecked()) {
                        this.f50564a.setSelected(false);
                    }
                    this.f50565b.k(false);
                    CleanSpaceActivity.access$010(CleanSpaceActivity.this);
                    if (this.f50565b.a() != null) {
                        Iterator<String> it3 = this.f50565b.a().iterator();
                        while (it3.hasNext()) {
                            CleanSpaceActivity.this.removeCleanPath(it3.next());
                        }
                    }
                }
                CleanSpaceActivity.this.checkIsCleanListContainsArchieve();
            }
        }

        public d(List<c> data, int type) {
            super(R.layout.item_clean_space_list, data);
            this.f50557e = type;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void t(CheckBox checkBox, CheckBox checkBox2, ImageView imageView, View view) {
            if (checkBox.isEnabled() || checkBox2.isEnabled()) {
                if (imageView.isSelected()) {
                    imageView.setSelected(false);
                    if (checkBox.isEnabled()) {
                        checkBox.setChecked(false);
                    }
                    if (checkBox2.isEnabled()) {
                        checkBox2.setChecked(false);
                        return;
                    }
                    return;
                }
                imageView.setSelected(true);
                if (checkBox.isEnabled()) {
                    checkBox.setChecked(true);
                }
                if (checkBox2.isEnabled()) {
                    checkBox2.setChecked(true);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, c bean) {
            DownloadTask downloadTaskE = bean.e();
            if (downloadTaskE == null) {
                return;
            }
            com.join.android.app.common.utils.l.o((SimpleDraweeView) helper.getView(R.id.gameIcon), downloadTaskE.getPortraitURL());
            helper.setText(R.id.gameName, downloadTaskE.getShowName()).setText(R.id.tvGameSpace, UtilsMy.g(bean.d() + bean.b(), "0.0")).setGone(R.id.llPkgAndData, bean.getType() == 0).setVisible(R.id.tvSimulatorSize, bean.getType() == 1).setText(R.id.tvSimulatorSize, UtilsMy.g(bean.d(), "0.0"));
            final CheckBox checkBox = (CheckBox) helper.getView(R.id.checkboxPkg);
            final CheckBox checkBox2 = (CheckBox) helper.getView(R.id.checkboxData);
            final ImageView imageView = (ImageView) helper.getView(R.id.checkbox);
            checkBox2.setVisibility(this.f50557e != 0 ? 8 : 0);
            checkBox.setEnabled(bean.i());
            checkBox2.setEnabled(bean.h());
            checkBox.setText("游戏包 " + UtilsMy.g(bean.d(), "0.0"));
            checkBox2.setText("数据与进度 " + UtilsMy.g(bean.b(), "0.0"));
            checkBox.setTextColor(bean.i() ? Color.parseColor("#646464") : Color.parseColor("#DEDEDE"));
            checkBox2.setTextColor(bean.h() ? Color.parseColor("#646464") : Color.parseColor("#DEDEDE"));
            checkBox.setOnCheckedChangeListener(new a(imageView, bean, downloadTaskE, checkBox2));
            checkBox2.setOnCheckedChangeListener(new b(imageView, bean, checkBox));
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CleanSpaceActivity.d.t(checkBox2, checkBox, imageView, view);
                }
            });
        }
    }

    static /* synthetic */ int access$008(CleanSpaceActivity cleanSpaceActivity) {
        int i10 = cleanSpaceActivity.cleanCount;
        cleanSpaceActivity.cleanCount = i10 + 1;
        return i10;
    }

    static /* synthetic */ int access$010(CleanSpaceActivity cleanSpaceActivity) {
        int i10 = cleanSpaceActivity.cleanCount;
        cleanSpaceActivity.cleanCount = i10 - 1;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIsCleanListContainsArchieve() {
        Iterator<c> it2 = this.gameBeans.iterator();
        while (it2.hasNext()) {
            if (it2.next().f()) {
                this.isCleanListContainsArchieve = true;
                return;
            }
        }
        this.isCleanListContainsArchieve = false;
    }

    private void cleanGame(DownloadTask task) {
        if (task.isMod()) {
            UtilsMy.R0(this.mContext, task);
            return;
        }
        String fileType = task.getFileType();
        if (!(!TextUtils.isEmpty(fileType) && fileType.equals(Dtype.android.name()))) {
            UtilsMy.O0(task);
            UtilsMy.U4(task);
            return;
        }
        if (!com.join.android.app.common.utils.g.t0(this.mContext).e(this.mContext, task.getPackageName())) {
            UtilsMy.O0(task);
            UtilsMy.U4(task);
            return;
        }
        if (task.getStatus() == 5 || task.getStatus() == 9) {
            com.join.android.app.common.utils.g.t0(this.mContext).o0(this.mContext, task.getPackageName());
            return;
        }
        UtilsMy.L0(task);
        APKUtils.a aVarN = com.join.android.app.common.utils.g.t0(this.mContext).n(this.mContext, task.getPackageName());
        if (aVarN != null) {
            task.setVer(aVarN.d() + "");
        }
        UtilsMy.i3(task, 5);
    }

    private void finishForResult() {
        if (this.hasCleaned) {
            setResult(10001);
        }
        finish();
    }

    private long getArchieveFilesStorage(List<String> files) {
        long length = 0;
        if (files != null && files.size() > 0) {
            Iterator<String> it2 = files.iterator();
            while (it2.hasNext()) {
                File file = new File(it2.next());
                if (file.exists()) {
                    length += file.length();
                }
            }
        }
        return length;
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
        sb2.append(StoreUtils.getEmuRoot(this));
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

    private void initSysData() {
        this.checkboxSys.setSelected(false);
        long jFileSize = FileUtils.fileSize(getExternalCacheDir().getAbsolutePath()) + FileUtils.fileSize(getCacheDir().getAbsolutePath());
        this.tvSysSpace.setText(UtilsMy.g(jFileSize, "0.0") + " | 图片、视频等临时数据");
    }

    private boolean isDeleteArchieve(DownloadTask task) {
        for (c cVar : this.gameBeans) {
            if (TextUtils.equals(cVar.e().getCrc_link_type_val(), task.getCrc_link_type_val())) {
                return cVar.f();
            }
        }
        return false;
    }

    @UiThread
    void addCleanPath(String path) {
        ArrayList<String> arrayList = this.cleanPaths;
        if (arrayList == null || arrayList.contains(path)) {
            return;
        }
        this.cleanPaths.add(path);
        calculateSpace();
    }

    @AfterViews
    void afterviews() {
        this.mContext = this;
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.gameList = q5.f.M().D();
        for (DownloadTask downloadTask : q5.f.M().E()) {
            if (TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.FBA.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.FC.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.GBA.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.MD.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.SFC.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.PSP.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.PS.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.WSC.value())) || TextUtils.equals(downloadTask.getPlugin_num(), String.valueOf(ConstantIntEnum.GBC.value()))) {
                this.simulatorList.add(downloadTask);
            }
        }
        ArrayList<DownloadTask> arrayList = this.simulatorList;
        if (arrayList == null || arrayList.size() <= 0) {
            this.groupSimulator.setVisibility(8);
        } else {
            this.groupSimulator.setVisibility(0);
            this.tvTitleSimulator.setText("我的插件(" + this.simulatorList.size() + ")");
        }
        initSysData();
        this.modGameIds = new ArrayList<>();
        this.archieveGameList = new ArrayList<>();
        for (DownloadTask downloadTask2 : this.gameList) {
            if ((downloadTask2.isMod() && downloadTask2.getModInfoBean() != null && TextUtils.equals(downloadTask2.getModInfoBean().getMod_game_id(), downloadTask2.getCrc_link_type_val())) || downloadTask2.isSingleGame()) {
                this.modGameIds.add(downloadTask2.getCrc_link_type_val());
                this.archieveGameList.add(downloadTask2);
            } else if (TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.FBA.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.FC.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.GBA.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.MD.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.SFC.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.PSP.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.PS.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.WSC.value())) || TextUtils.equals(downloadTask2.getPlugin_num(), String.valueOf(ConstantIntEnum.GBC.value()))) {
                this.archieveGameList.add(downloadTask2);
            }
        }
        getModGameArchievePath(this.modGameIds);
    }

    @Click
    void back_image() {
        finishForResult();
    }

    void calculateSpace() {
        ArrayList<String> arrayList = this.cleanPaths;
        if (arrayList == null || arrayList.size() <= 0) {
            this.tvTotalData.setText("未选中");
            this.tvClean.setBackgroundResource(R.drawable.shape_e6e6e6_r8);
            return;
        }
        Iterator<String> it2 = this.cleanPaths.iterator();
        long jFileSize = 0;
        while (it2.hasNext()) {
            jFileSize += FileUtils.fileSize(it2.next());
        }
        String strG = UtilsMy.g(jFileSize, "0.0");
        this.tvTotalData.setText("已选" + this.cleanCount + "个，共" + strG);
        this.tvClean.setBackgroundResource(R.drawable.shape_46c1ff_r8);
    }

    @Click
    void cardCleanSys() {
        ImageView imageView = this.checkboxSys;
        imageView.setSelected(!imageView.isSelected());
        if (this.checkboxSys.isSelected()) {
            this.cleanCount++;
            addCleanPath(getExternalCacheDir().getAbsolutePath());
            addCleanPath(getCacheDir().getAbsolutePath());
        } else {
            this.cleanCount--;
            removeCleanPath(getExternalCacheDir().getAbsolutePath());
            removeCleanPath(getCacheDir().getAbsolutePath());
        }
    }

    @UiThread
    void clean() {
        ArrayList<String> arrayList = this.cleanPaths;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList<DownloadTask> arrayList2 = this.uninstallGameList;
        if (arrayList2 != null && arrayList2.size() > 0) {
            for (DownloadTask downloadTask : this.uninstallGameList) {
                if (isDeleteArchieve(downloadTask)) {
                    cleanGame(downloadTask);
                } else {
                    saveGameArchieveFiles(downloadTask);
                }
            }
        }
        ArrayList<DownloadTask> arrayList3 = this.uninstallSimulatorList;
        if (arrayList3 != null && arrayList3.size() > 0) {
            for (DownloadTask downloadTask2 : this.uninstallSimulatorList) {
                if (downloadTask2 != null) {
                    try {
                        String crc_link_type_val = downloadTask2.getCrc_link_type_val();
                        EMUApkTable eMUApkTableN = t6.p.o().n(crc_link_type_val);
                        if (eMUApkTableN == null) {
                            return;
                        }
                        DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(crc_link_type_val));
                        if (downloadTaskC0 != null) {
                            if (downloadTaskC0.getDown_type() == 2) {
                                com.join.mgps.Util.o0.l(downloadTaskC0.getGameZipPath(), true);
                                del(downloadTaskC0);
                                if (com.join.android.app.common.utils.o.i(eMUApkTableN)) {
                                    com.join.android.app.common.utils.o.delete(crc_link_type_val);
                                }
                                com.join.mgps.Util.o0.l(eMUApkTableN.getApkPath(), true);
                                eMUApkTableN.setApkPath("");
                                t6.p.o().m(eMUApkTableN);
                            } else if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTaskC0.getPackageName())) {
                                com.join.android.app.common.utils.g.t0(this).o0(this, downloadTaskC0.getPackageName());
                            } else {
                                del(downloadTaskC0);
                            }
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        Iterator<String> it2 = this.cleanPaths.iterator();
        while (it2.hasNext()) {
            com.join.mgps.Util.o0.m(it2.next());
        }
        this.hasCleaned = true;
        this.isCleanListContainsArchieve = false;
        if (this.checkboxSys.isSelected()) {
            com.papa.sim.statistic.t.l(this.mContext).R1(Event.clearSystemStoreSuccess, new Ext());
        }
        ArrayList arrayList4 = new ArrayList();
        arrayList4.addAll(this.gameBeans);
        arrayList4.addAll(this.simulatorBeans);
        Iterator it3 = arrayList4.iterator();
        while (it3.hasNext()) {
            if (((c) it3.next()).g()) {
                com.papa.sim.statistic.t.l(this.mContext).R1(Event.clearGameBagSuccess, new Ext());
                break;
            }
        }
        Iterator it4 = arrayList4.iterator();
        while (it4.hasNext()) {
            if (((c) it4.next()).f()) {
                com.papa.sim.statistic.t.l(this.mContext).R1(Event.clearDataProgressSuccess, new Ext());
                break;
            }
        }
        refresh();
        new com.join.mgps.dialog.j2(this).show();
    }

    public void del(DownloadTask downloadTask) {
        com.php25.PDownload.d.a(downloadTask);
        try {
            if (downloadTask.getRomType().equals(Dtype.androidobb.name()) || downloadTask.getRomType().equals(Dtype.androiddata.name()) || downloadTask.getRomType().equals(Dtype.androidobbdata.name())) {
                UtilsMy.delete(new File(com.join.mgps.Util.z.f50178q, downloadTask.getPackageName()));
                UtilsMy.delete(new File(com.join.mgps.Util.z.f50179r, downloadTask.getPackageName()));
                UtilsMy.delete(new File(downloadTask.getGameZipPath()));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.php25.PDownload.d.a(downloadTask);
    }

    @Background
    void getArchieveGameInfo(int index) {
        if (!com.join.android.app.common.utils.m.j(this.mContext)) {
            initListData();
            return;
        }
        try {
            if (index > this.onlyArchieveGameIdList.size() - 1) {
                initListData();
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
                GamedetialModleFourBean data = responseModelBody.getData();
                c cVar = new c();
                cVar.p(data.getDownloadtaskDown());
                File file = new File(getExternalFilesDir("backup").getAbsolutePath() + File.separator + str);
                if (file.exists()) {
                    cVar.j(new ArrayList<String>(file) { // from class: com.join.mgps.activity.CleanSpaceActivity.3

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        final /* synthetic */ File f50542b;

                        {
                            this.f50542b = file;
                            add(file.getAbsolutePath());
                        }
                    });
                    cVar.m(FileUtils.fileSize(file.getAbsolutePath()));
                    this.gameBeans.add(cVar);
                }
            }
            getArchieveGameInfo(index + 1);
        } catch (Exception e10) {
            e10.printStackTrace();
            initListData();
        }
    }

    @Background
    void getModGameArchievePath(List<String> modGameIds) {
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
            ArchievePathMultiArgs archievePathMultiArgs = new ArchievePathMultiArgs();
            archievePathMultiArgs.setUid(String.valueOf(accountData.getUid()));
            archievePathMultiArgs.setDownloadedGameIdList(modGameIds);
            requestModel.setArgs(archievePathMultiArgs);
            requestModel.setDefault(this);
            ResponseModel<ArchievePathMultiBean> responseModelK = this.rpcGameClient.k(requestModel.makeSign());
            if (responseModelK == null || responseModelK.getCode() != 200 || responseModelK.getData() == null) {
                return;
            }
            this.archivePathList = responseModelK.getData().getCloud_archive_path_list();
            updateData();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void initListData() {
        showMain();
        ArrayList<c> arrayList = this.gameBeans;
        if (arrayList == null || arrayList.size() <= 0) {
            this.groupMyGame.setVisibility(8);
        } else {
            this.groupMyGame.setVisibility(0);
            this.tvTitleMyGame.setText("我的游戏(" + this.gameBeans.size() + ")");
        }
        com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
        aVar.f64116f = 0;
        aVar.f64120d = (int) getResources().getDimension(R.dimen.wdp20);
        this.rvMyGame.setLayoutManager(new LinearLayoutManager(this));
        this.rvMyGame.setAdapter(new d(this.gameBeans, 0));
        if (this.rvMyGame.getItemDecorationCount() <= 0) {
            this.rvMyGame.addItemDecoration(new a(aVar));
        }
        this.rvSimulator.setLayoutManager(new LinearLayoutManager(this));
        this.rvSimulator.setAdapter(new d(this.simulatorBeans, 1));
        if (this.rvSimulator.getItemDecorationCount() <= 0) {
            this.rvSimulator.addItemDecoration(new b(aVar));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finishForResult();
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.papa.sim.statistic.t.l(this.mContext).R1(Event.visitMemoryClearPage, new Ext());
    }

    void refresh() {
        this.cleanPaths = new ArrayList<>();
        this.uninstallGameList = new ArrayList<>();
        this.cleanCount = 0;
        this.tvTotalData.setText("未选中");
        this.tvClean.setBackgroundResource(R.drawable.shape_e6e6e6_r8);
        this.gameList = new ArrayList<>();
        this.simulatorList = new ArrayList<>();
        this.gameBeans = new ArrayList<>();
        this.simulatorBeans = new ArrayList<>();
        this.onlyArchieveGameIdList = new ArrayList<>();
        afterviews();
    }

    @Click
    void relodingimag() {
        getModGameArchievePath(this.modGameIds);
    }

    @UiThread
    void removeCleanPath(String path) {
        ArrayList<String> arrayList = this.cleanPaths;
        if (arrayList != null) {
            arrayList.remove(path);
            calculateSpace();
        }
    }

    void saveGameArchieveFiles(DownloadTask task) {
        try {
            c cVar = null;
            for (c cVar2 : this.gameBeans) {
                if (TextUtils.equals(cVar2.e().getCrc_link_type_val(), task.getCrc_link_type_val())) {
                    cVar = cVar2;
                }
            }
            if (cVar == null) {
                return;
            }
            String str = getExternalFilesDir("backup") + File.separator + cVar.e().getCrc_link_type_val();
            for (String str2 : cVar.a()) {
                File file = new File(str2);
                if (file.exists()) {
                    String strSubstring = str2.substring(str2.lastIndexOf(net.lingala.zip4j.util.e.F0));
                    if (file.isFile()) {
                        com.join.mgps.Util.o0.f(str2, str + File.separator + strSubstring);
                    } else if (file.isDirectory()) {
                        com.join.mgps.Util.o0.g(str2, str);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            cleanGame(task);
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.mContext);
    }

    @UiThread
    void showLoding() {
        com.join.mgps.Util.g1.c("显示加载中");
        LinearLayout linearLayout = this.loding_layout;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_faile;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        Group group = this.groupContent;
        if (group != null) {
            group.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.empty_layout;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        Group group = this.groupContent;
        if (group != null) {
            group.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.empty_layout;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showMain() {
        com.join.mgps.Util.g1.c("显示主界面main");
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        Group group = this.groupContent;
        if (group != null) {
            group.setVisibility(0);
        }
        LinearLayout linearLayout3 = this.empty_layout;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    @UiThread
    void showNoData() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        Group group = this.groupContent;
        if (group != null) {
            group.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.empty_layout;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
    }

    @Click
    void tvClean() {
        if (!this.isCleanListContainsArchieve) {
            clean();
            return;
        }
        if (this.confirmDialog == null) {
            this.confirmDialog = new com.join.mgps.dialog.m2(this);
        }
        this.confirmDialog.e(new com.join.mgps.dialog.m2.a() { // from class: com.join.mgps.activity.n
            @Override // com.join.mgps.dialog.m2.a
            public final void a() {
                this.f57770a.clean();
            }
        });
        this.confirmDialog.show();
    }

    @UiThread
    void updateData() {
        String strReplace;
        if (this.archivePathList != null) {
            for (DownloadTask downloadTask : this.archieveGameList) {
                Iterator<ModGameArchivePathDataV2> it2 = this.archivePathList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        strReplace = null;
                        break;
                    }
                    ModGameArchivePathDataV2 next = it2.next();
                    if (TextUtils.equals(downloadTask.getCrc_link_type_val(), next.getGameId())) {
                        strReplace = next.getMainLocalPath();
                        break;
                    }
                }
                c cVar = new c();
                String strK0 = com.join.mgps.va.overmind.k.f73277a.k0();
                String packageName = "";
                if (strReplace != null) {
                    if (strReplace.startsWith("/data/data")) {
                        strReplace = strReplace.replace("/data/data", "/data/user/0");
                        strK0 = strK0.replace("/sdcard", "");
                    }
                    String str = strK0 + strReplace;
                    File file = new File(str);
                    if (file.exists()) {
                        cVar.m(FileUtils.fileSize(file.getAbsolutePath()));
                    } else {
                        cVar.m(0L);
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str);
                    cVar.j(arrayList);
                }
                if (downloadTask.isMod() || downloadTask.isSingleGame()) {
                    if (strK0.endsWith("sdcard")) {
                        strK0 = strK0.replace("/sdcard", "");
                    }
                    if (downloadTask.isMod() && downloadTask.getModInfoBean() != null) {
                        packageName = downloadTask.getModInfoBean().getMod_package_name();
                    } else if (downloadTask.isSingleGame()) {
                        packageName = downloadTask.getPackageName();
                    }
                    if (!TextUtils.isEmpty(packageName)) {
                        String str2 = strK0 + "/data/user/0/" + packageName;
                        String str3 = strK0 + "/data/app/" + packageName;
                        String str4 = strK0 + "/data/user_de/0/" + packageName;
                        String str5 = strK0 + "/sdcard/Android/data/" + packageName;
                        String str6 = strK0 + "/sdcard/Android/obb/" + packageName;
                        cVar.o(FileUtils.fileSize(str2) + FileUtils.fileSize(str3) + FileUtils.fileSize(str4) + FileUtils.fileSize(str5) + FileUtils.fileSize(str6));
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(str2);
                        arrayList2.add(str3);
                        arrayList2.add(str4);
                        arrayList2.add(str5);
                        arrayList2.add(str6);
                        cVar.n(arrayList2);
                    }
                }
                cVar.p(downloadTask);
                this.gameBeans.add(cVar);
            }
        }
        for (DownloadTask downloadTask2 : this.archieveGameList) {
            String plugin_num = downloadTask2.getPlugin_num();
            if (TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.FC.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.GBA.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.FBA.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.MD.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.SFC.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.PSP.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.PS.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.WSC.value())) || TextUtils.equals(plugin_num, String.valueOf(ConstantIntEnum.GBC.value()))) {
                List<String> localSimulatorArchieveStorage = getLocalSimulatorArchieveStorage(downloadTask2);
                for (c cVar2 : this.gameBeans) {
                    if (TextUtils.equals(cVar2.e().getCrc_link_type_val(), downloadTask2.getCrc_link_type_val())) {
                        cVar2.j(localSimulatorArchieveStorage);
                        cVar2.m(getArchieveFilesStorage(localSimulatorArchieveStorage));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(getExternalFilesDir("wufan91"));
                        String str7 = File.separator;
                        sb2.append(str7);
                        sb2.append(downloadTask2.getPlugin_num());
                        sb2.append(str7);
                        sb2.append("roms");
                        sb2.append(str7);
                        sb2.append(downloadTask2.getPackageName());
                        String string = sb2.toString();
                        cVar2.o(FileUtils.fileSize(string));
                        cVar2.n(new ArrayList<String>(string) { // from class: com.join.mgps.activity.CleanSpaceActivity.1

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            final /* synthetic */ String f50538b;

                            {
                                this.f50538b = string;
                                add(string);
                            }
                        });
                    }
                }
            }
        }
        for (DownloadTask downloadTask3 : this.simulatorList) {
            c cVar3 = new c();
            cVar3.q(1);
            cVar3.p(downloadTask3);
            String plugin_num2 = downloadTask3.getPlugin_num();
            if (TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.FC.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.GBA.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.FBA.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.MD.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.SFC.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.PSP.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.PS.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.WSC.value())) || TextUtils.equals(plugin_num2, String.valueOf(ConstantIntEnum.GBC.value()))) {
                cVar3.n(new ArrayList<String>(downloadTask3) { // from class: com.join.mgps.activity.CleanSpaceActivity.2

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    final /* synthetic */ DownloadTask f50540b;

                    {
                        this.f50540b = downloadTask3;
                        add(downloadTask3.getPath());
                    }
                });
                cVar3.o(FileUtils.fileSize(downloadTask3.getPath()));
            }
            this.simulatorBeans.add(cVar3);
        }
        File externalFilesDir = getExternalFilesDir("backup");
        if (!externalFilesDir.exists() || !externalFilesDir.isDirectory() || externalFilesDir.listFiles() == null || externalFilesDir.listFiles().length <= 0) {
            initListData();
            return;
        }
        for (File file2 : externalFilesDir.listFiles()) {
            if (file2.exists() && file2.isDirectory()) {
                this.onlyArchieveGameIdList.add(file2.getName());
            }
        }
        ArrayList<String> arrayList3 = this.onlyArchieveGameIdList;
        if (arrayList3 == null || arrayList3.size() <= 0) {
            initListData();
        } else {
            getArchieveGameInfo(0);
        }
    }
}
