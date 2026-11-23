package com.join.mgps.activity;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.XListView2;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dto.TipBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.receiver.ShortcutReceiver;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_plug_manager)
public class MyGameUpdateManagerActivity extends BaseActivity implements com.join.mgps.adapter.i4.e, AbsListView.OnScrollListener {
    com.join.mgps.adapter.i4 adapter;

    @ViewById
    TextView forum_title_center;

    @ViewById
    XListView2 listView;

    @ViewById
    View root;
    List<DownloadTask> games = new ArrayList();
    HashMap<String, Boolean> shortCutMap = new HashMap<>();
    HashMap<String, Boolean> isNotShowIconAppMaps = new HashMap<>();
    private int lastVisibleIndex = 0;
    private int firstVisiblePosition = 0;

    class a implements com.join.mgps.customview.b0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f55151a;

        a(final String val$gameId) {
            this.f55151a = val$gameId;
        }

        @Override // com.join.mgps.customview.b0.a
        public void onAddShortCut(String id2) {
            MyGameUpdateManagerActivity.this.showAddShortcut(q5.f.M().G(id2));
        }

        @Override // com.join.mgps.customview.b0.a
        public void onDeleteArchieve(String id2) {
        }

        @Override // com.join.mgps.customview.b0.a
        public void onDeleteGame(String id2) {
            MyGameUpdateManagerActivity.this.onMoreDeleteGame(this.f55151a);
        }

        @Override // com.join.mgps.customview.b0.a
        public void onGameDetail(String id2) {
            DownloadTask downloadTaskG = q5.f.M().G(this.f55151a);
            if (downloadTaskG.getFileType() == null || !downloadTaskG.getFileType().equals(Dtype.chajian.name())) {
                IntentUtil.getInstance().goGameDetialActivityBYDownloadTAsk(MyGameUpdateManagerActivity.this.getContext(), downloadTaskG);
            }
        }

        @Override // com.join.mgps.customview.b0.a
        public void onStandMode(String id2) {
        }
    }

    class b implements com.join.mgps.customview.c0.a {
        b() {
        }

        @Override // com.join.mgps.customview.c0.a
        public void a(String id2) {
            MyGameUpdateManagerActivity.this.deletePlug(id2);
        }

        @Override // com.join.mgps.customview.c0.a
        public void b(String id2) {
            MyGameUpdateManagerActivity.this.reinstallPlug(id2);
        }
    }

    private void addShortcut(String s10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("s:");
        sb2.append(s10);
        DownloadTask downloadTaskG = q5.f.M().G(s10);
        if (downloadTaskG != null) {
            Bitmap bitmapM = ImageLoader.q().m(downloadTaskG.getPortraitURL());
            if (bitmapM == null) {
                bitmapM = returnBitmap(downloadTaskG.getPortraitURL());
            }
            com.join.mgps.Util.j2.c(this, downloadTaskG.getShowName(), s10, bitmapM);
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.games.iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
                break;
            }
        }
        notifyDataSetChanged();
    }

    private void receiveError(DownloadTask downloadTask) {
        List<DownloadTask> list = this.games;
        if (list == null || downloadTask == null) {
            return;
        }
        try {
            for (DownloadTask downloadTask2 : list) {
                if (downloadTask2.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    UtilsMy.U4(downloadTask2);
                    break;
                }
            }
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        boolean z10;
        if (downloadTask == null) {
            return;
        }
        UtilsMy.X4(this.games);
        Iterator<DownloadTask> it2 = this.games.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z10 = false;
                break;
            }
            DownloadTask next = it2.next();
            if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                next.setStatus(downloadTask.getStatus());
                z10 = true;
                break;
            }
        }
        if (!z10) {
            this.games.add(0, downloadTask);
        }
        notifyDataSetChanged();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        if (this.games == null || downloadTask == null) {
            return;
        }
        for (int i10 = 0; i10 < this.games.size(); i10++) {
            if (this.games.get(i10).getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                this.games.set(i10, downloadTask);
                break;
            }
        }
        notifyDataSetChanged();
    }

    private Bitmap returnBitmap(String imgUri) {
        if (com.join.mgps.Util.t2.h(imgUri)) {
            return null;
        }
        try {
            return BitmapFactory.decodeFile(((d3.c) Fresco.getImagePipelineFactory().n().c(new com.facebook.cache.common.j(Uri.parse(imgUri).toString()))).d().getPath());
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void updateProgressPartly() {
        DownloadTask downloadTask;
        View childAt;
        if (this.firstVisiblePosition < 0 || this.lastVisibleIndex >= this.listView.getCount()) {
            return;
        }
        for (int i10 = this.firstVisiblePosition; i10 <= this.lastVisibleIndex; i10++) {
            this.listView.getAdapter().getItemViewType(i10);
            if (this.listView.getItemAtPosition(i10) != null && (this.listView.getItemAtPosition(i10) instanceof DownloadTask) && (downloadTask = (DownloadTask) this.listView.getItemAtPosition(i10)) != null && ((downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12) && (childAt = this.listView.getChildAt(i10 - this.firstVisiblePosition)) != null && childAt.getTag() != null && (childAt.getTag() instanceof com.join.mgps.adapter.i4.h))) {
                com.join.mgps.adapter.i4.h hVar = (com.join.mgps.adapter.i4.h) childAt.getTag();
                try {
                    DownloadTask downloadTaskG = com.join.android.app.common.servcie.j.f().g(downloadTask.getCrc_link_type_val());
                    if (downloadTaskG == null) {
                        return;
                    }
                    if (!TextUtils.isEmpty(downloadTaskG.getShowSize())) {
                        long j10 = (long) (Double.parseDouble(downloadTaskG.getShowSize()) * 1024.0d * 1024.0d);
                        if (downloadTask.getSize() == 0) {
                            UtilsMy.c(downloadTaskG.getCurrentSize());
                            UtilsMy.c(j10);
                        } else {
                            UtilsMy.c(downloadTaskG.getCurrentSize());
                            UtilsMy.c(j10);
                        }
                    }
                    if (downloadTask.getStatus() == 12) {
                        hVar.f62399h.s((int) downloadTaskG.getProgress());
                    } else {
                        hVar.f62399h.s((int) downloadTaskG.getProgress());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    void addShortout(Context mContext, String name, String GameId, Bitmap bitmap) {
        if (bitmap == null) {
            bitmap = BitmapFactory.decodeResource(mContext.getResources(), R.drawable.icon);
        }
        if (bitmap == null) {
            com.join.mgps.Util.a3.b(mContext).d("创建失败！");
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ShortcutManager shortcutManagerA = androidx.core.content.pm.e1.a(mContext.getSystemService("shortcut"));
            if (shortcutManagerA.isRequestPinShortcutSupported()) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setClass(mContext, MGMainActivity_.class);
                intent.putExtra("shortcutGameId", GameId);
                intent.addFlags(67108864);
                shortcutManagerA.requestPinShortcut(androidx.core.content.pm.k.a(mContext, name).setIcon(Icon.createWithBitmap(bitmap)).setShortLabel(name).setIntent(intent).build(), PendingIntent.getBroadcast(mContext, 0, new Intent(mContext, (Class<?>) ShortcutReceiver.class), 134217728).getIntentSender());
                com.join.mgps.Util.j2.e(mContext, GameId);
            }
        } else {
            Intent intent2 = new Intent(com.join.mgps.Util.j2.f49767a);
            intent2.putExtra("duplicate", false);
            intent2.putExtra("android.intent.extra.shortcut.NAME", name);
            intent2.putExtra("android.intent.extra.shortcut.ICON", Bitmap.createScaledBitmap(bitmap, 142, 142, true));
            Intent intent3 = new Intent("android.intent.action.MAIN");
            intent3.setClass(mContext, MGMainActivity_.class);
            intent3.putExtra("shortcutGameId", GameId);
            intent3.addFlags(67108864);
            intent3.addCategory("android.intent.category.LAUNCHER");
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent3);
            mContext.sendBroadcast(intent2);
            com.join.mgps.Util.j2.e(mContext, GameId);
        }
        notifyDataSetChanged();
        showAddShortcutResultDialog(GameId);
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.Util.j0.a().d(this);
        this.forum_title_center.setVisibility(0);
        this.forum_title_center.setText("更新管理");
        com.join.mgps.Util.p2.r(this, Color.parseColor("#ffffff"), true);
        com.join.mgps.adapter.i4 i4Var = new com.join.mgps.adapter.i4(this);
        this.adapter = i4Var;
        i4Var.r0(this);
        this.listView.setAdapter((ListAdapter) this.adapter);
        this.listView.setOnScrollListener(this);
        loadData();
    }

    @Click
    void back_image() {
        finish();
    }

    boolean canShowAddShortcut(Context context, DownloadTask downloadTask) {
        if (downloadTask != null && downloadTask.getStatus() == 5 && (!isSingleGame(downloadTask) || !com.join.mgps.Util.j2.d(context, downloadTask.getCrc_link_type_val()))) {
            boolean z10 = !TextUtils.isEmpty(downloadTask.getFileType()) && downloadTask.getFileType().equals(Dtype.apk.name());
            if (downloadTask.getUrl().endsWith(".apk") || downloadTask.getRomType().equals("androidobb") || downloadTask.getRomType().equals("46")) {
                String packageName = downloadTask.getPackageName();
                if (!com.join.mgps.Util.t2.h(packageName) && isNotShowIconApp(context, packageName) && com.join.mgps.Util.t2.i(downloadTask.getTips()) && !downloadTask.getTips().contains("网游")) {
                    return true;
                }
            } else if (z10 && !com.join.mgps.Util.j2.d(context, downloadTask.getCrc_link_type_val())) {
                return true;
            }
        }
        return false;
    }

    void del(DownloadTask downloadTask) {
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
        Iterator<DownloadTask> it2 = this.games.iterator();
        while (it2.hasNext()) {
            if (it2.next().getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                it2.remove();
            }
        }
        notifyDataSetChanged();
    }

    public void delPlug(DownloadTask downloadTask) {
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

    void deleteGame(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        Context context = getContext();
        String fileType = downloadTaskG.getFileType();
        if (!(fileType != null && fileType.equals(Dtype.android.name()))) {
            del(downloadTaskG);
            UtilsMy.U4(downloadTaskG);
            notifyDataSetChanged();
        } else {
            if (com.join.android.app.common.utils.g.t0(context).e(context, downloadTaskG.getPackageName())) {
                com.join.android.app.common.utils.g.t0(context).o0(context, downloadTaskG.getPackageName());
                return;
            }
            del(downloadTaskG);
            UtilsMy.U4(downloadTaskG);
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deletePlug(String id2) {
        try {
            EMUApkTable eMUApkTableN = t6.p.o().n(id2);
            if (eMUApkTableN == null) {
                return;
            }
            DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(id2));
            if (downloadTaskC0 != null) {
                if (downloadTaskC0.getDown_type() == 2) {
                    com.join.mgps.Util.o0.l(downloadTaskC0.getGameZipPath(), true);
                    delPlug(downloadTaskC0);
                    if (com.join.android.app.common.utils.o.i(eMUApkTableN)) {
                        com.join.android.app.common.utils.o.delete(id2);
                    }
                    com.join.mgps.Util.o0.l(eMUApkTableN.getApkPath(), true);
                    eMUApkTableN.setApkPath("");
                    t6.p.o().m(eMUApkTableN);
                } else if (com.join.android.app.common.utils.g.t0(this).e(this, downloadTaskC0.getPackageName())) {
                    com.join.android.app.common.utils.g.t0(this).o0(this, downloadTaskC0.getPackageName());
                } else {
                    delPlug(downloadTaskC0);
                }
            }
            notifyDataSetChanged();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background(delay = me.relex.photodraweeview.d.S1)
    public void downloadPlug(String id2) {
        try {
            EMUApkTable eMUApkTableN = t6.p.o().n(id2);
            if (eMUApkTableN == null) {
                return;
            }
            UtilsMy.q1(eMUApkTableN, this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    Context getContext() {
        return this;
    }

    boolean isNotShowIconApp(Context context, String pkgName) {
        boolean zE = false;
        if (context == null || TextUtils.isEmpty(pkgName)) {
            return false;
        }
        if (this.isNotShowIconAppMaps.containsKey(pkgName)) {
            return this.isNotShowIconAppMaps.get(pkgName).booleanValue();
        }
        try {
            zE = com.join.mgps.Util.l.e(context, pkgName);
            this.isNotShowIconAppMaps.put(pkgName, Boolean.valueOf(zE));
            return zE;
        } catch (Exception e10) {
            e10.printStackTrace();
            return zE;
        }
    }

    boolean isSingleGame(DownloadTask task) {
        for (TipBean tipBean : task.getTipBeans()) {
            if (UtilsMy.w0(task.getPay_game_amount(), task.getCrc_link_type_val()) <= 0 && tipBean.getName().contains("单机")) {
                return true;
            }
        }
        return false;
    }

    protected void loadData() {
        this.games.clear();
        List<DownloadTask> listX = q5.f.M().x();
        if (listX != null && listX.size() > 0) {
            this.games.addAll(listX);
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyDataSetChanged() {
        this.adapter.y().clear();
        ArrayList arrayList = new ArrayList();
        List<DownloadTask> list = this.games;
        if (list != null && list.size() > 0) {
            for (DownloadTask downloadTask : this.games) {
                if (downloadTask.getStatus() != 5) {
                    if (TextUtils.isEmpty(downloadTask.getFileType()) || !downloadTask.getFileType().equals(Dtype.chajian.name())) {
                        arrayList.add(new com.join.mgps.adapter.i4.f(2, downloadTask, this.shortCutMap.containsKey(downloadTask.getCrc_link_type_val()) ? this.shortCutMap.get(downloadTask.getCrc_link_type_val()).booleanValue() : false));
                    } else {
                        arrayList.add(new com.join.mgps.adapter.i4.f(4, downloadTask));
                    }
                }
            }
        }
        this.adapter.q0(arrayList);
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyShortcutChanged(HashMap<String, Boolean> map) {
        DownloadTask downloadTask;
        com.join.mgps.adapter.i4 i4Var = this.adapter;
        if (i4Var == null || i4Var.y() == null || this.adapter.y().size() == 0) {
            return;
        }
        for (com.join.mgps.adapter.i4.f fVar : this.adapter.y()) {
            if (fVar.b() == 2 && fVar.a() != null && (downloadTask = (DownloadTask) fVar.a()) != null && !TextUtils.isEmpty(downloadTask.getCrc_link_type_val()) && map.containsKey(downloadTask.getCrc_link_type_val())) {
                fVar.d(map.get(downloadTask.getCrc_link_type_val()).booleanValue());
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onAddShortcutClick(DownloadTask downloadTask) {
        showAddShortcut(downloadTask);
        if (downloadTask == null || TextUtils.isEmpty(downloadTask.getCrc_link_type_val())) {
            return;
        }
        this.shortCutMap.put(downloadTask.getCrc_link_type_val(), Boolean.TRUE);
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onClick(String gameId, DownloadTask task) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || TextUtils.isEmpty(downloadTaskG.getFileType()) || !downloadTaskG.getFileType().equals(Dtype.chajian.name())) {
            onMore(gameId, task);
        } else {
            onClickPlug(gameId);
        }
    }

    public void onClickPlug(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() == 0) {
            return;
        }
        com.join.mgps.customview.c0 c0Var = new com.join.mgps.customview.c0(this);
        c0Var.d(new b());
        c0Var.f(this.root, gameId, downloadTaskG.getDown_type() != 2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.join.mgps.Util.j0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    void onDownloadSpeed(com.join.mgps.event.q event) {
        if (event == null || TextUtils.isEmpty(event.a())) {
            return;
        }
        notifyDataSetChanged();
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
        if (iC != 42) {
            if (iC != 48) {
                switch (iC) {
                    case 6:
                        updateUI(downloadTaskA, 6);
                        break;
                    case 7:
                        updateUI(downloadTaskA, 3);
                        break;
                    case 8:
                        List<DownloadTask> list = this.games;
                        if (list != null && list.size() > 0) {
                            updateProgressPartly();
                            break;
                        }
                        break;
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
            updateUI(downloadTaskA, 5);
            return;
        }
        loadData();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onLongClick(String gameId) {
        UninstallWufunGameActivity_.intent(this).a(gameId).start();
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onMore(String gameId, DownloadTask task) {
        com.join.mgps.customview.b0 b0Var = new com.join.mgps.customview.b0(getContext());
        b0Var.d(new a(gameId));
        b0Var.e(this.root, gameId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 100)
    public void onMoreDeleteGame(String id2) {
        onLongClick(id2);
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        refreshShortcutState();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        this.lastVisibleIndex = (visibleItemCount + firstVisibleItem) - 1;
        this.firstVisiblePosition = firstVisibleItem;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView view, int scrollState) {
    }

    @Override // com.join.mgps.adapter.i4.e
    public void onSpeedUp(String gameId) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void refreshShortcutState() {
        try {
            HashMap<String, Boolean> mapD = com.join.mgps.Util.l.d(getContext());
            this.isNotShowIconAppMaps.clear();
            if (mapD != null && mapD.size() != 0) {
                this.isNotShowIconAppMaps.putAll(mapD);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void reinstallPlug(String id2) {
        try {
            EMUApkTable eMUApkTableN = t6.p.o().n(id2);
            if (eMUApkTableN == null) {
                return;
            }
            DownloadTask downloadTaskC0 = q5.f.M().c0(Integer.parseInt(id2));
            if (downloadTaskC0 != null) {
                if (downloadTaskC0.getDown_type() != 2) {
                    del(downloadTaskC0);
                } else {
                    com.join.mgps.Util.o0.l(downloadTaskC0.getGameZipPath(), true);
                    del(downloadTaskC0);
                    if (com.join.android.app.common.utils.o.i(eMUApkTableN)) {
                        com.join.android.app.common.utils.o.delete(id2);
                    }
                    com.join.mgps.Util.o0.l(eMUApkTableN.getApkPath(), true);
                    eMUApkTableN.setApkPath("");
                    t6.p.o().m(eMUApkTableN);
                }
            }
            notifyDataSetChanged();
            downloadPlug(id2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void showAddShortcut(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        Bitmap bitmapM = ImageLoader.q().m(downloadTask.getPortraitURL());
        if (bitmapM == null) {
            bitmapM = returnBitmap(downloadTask.getPortraitURL());
        }
        addShortout(getContext(), downloadTask.getShowName(), downloadTask.getCrc_link_type_val(), bitmapM);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void showAddShortcutResultDialog(String gameId) {
        new com.join.android.app.common.dialog.d(this, gameId).show();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void refreshShortcutState(List<DownloadTask> downloadTasks) {
        if (downloadTasks == null || downloadTasks.size() == 0) {
            return;
        }
        HashMap<String, Boolean> map = new HashMap<>();
        for (DownloadTask downloadTask : downloadTasks) {
            map.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(canShowAddShortcut(getContext(), downloadTask)));
            this.shortCutMap.put(downloadTask.getCrc_link_type_val(), Boolean.valueOf(canShowAddShortcut(getContext(), downloadTask)));
        }
        notifyShortcutChanged(map);
    }
}
