package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dto.CloudListDataBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.CContext;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class ClouldItemView3 extends LinearLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    CloudDownButn f64617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    SimpleDraweeView f64618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f64619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f64620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f64621f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f64622g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f64623h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    TextView f64624i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Context f64625j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    View f64626k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    com.facebook.imagepipeline.core.h f64627l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    DownloadTask f64628m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    LinearLayout f64629n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    LinearLayout f64630o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private q.rorbin.badgeview.a f64631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    CloudListDataBean f64632q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f64633r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f64634s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f64635t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    w6.c f64636u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    String[] f64637v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f64638w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f64639x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f64640y;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64641b;

        a(final PopupWindow val$popupWindow) {
            this.f64641b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f64641b.dismiss();
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            int i10 = clouldItemView3.f64634s;
            if (i10 == 1) {
                clouldItemView3.f64636u.k(clouldItemView3.f64632q, 1);
                return;
            }
            if (i10 == 2) {
                clouldItemView3.f64636u.k(clouldItemView3.f64632q, 2);
            } else if (i10 == 3) {
                clouldItemView3.f64636u.k(clouldItemView3.f64632q, 3);
            } else if (i10 == 4) {
                clouldItemView3.f64636u.G(clouldItemView3.f64632q, 4);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64643b;

        b(final PopupWindow val$popupWindow) {
            this.f64643b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            clouldItemView3.f64636u.G(clouldItemView3.f64632q, 1);
            this.f64643b.dismiss();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64645b;

        c(final PopupWindow val$popupWindow) {
            this.f64645b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            clouldItemView3.f64636u.G(clouldItemView3.f64632q, 2);
            this.f64645b.dismiss();
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64647b;

        d(final PopupWindow val$popupWindow) {
            this.f64647b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView3 clouldItemView3 = ClouldItemView3.this;
            clouldItemView3.f64636u.G(clouldItemView3.f64632q, 3);
            this.f64647b.dismiss();
        }
    }

    class e implements com.join.mgps.dialog.y.e {
        e() {
        }

        @Override // com.join.mgps.dialog.y.e
        public void a(com.join.mgps.dialog.y dialog) {
            com.papa.sim.statistic.t.l(ClouldItemView3.this.getContext()).R1(Event.VipArchive_buy_page, new Ext().setGameId(ClouldItemView3.this.f64633r));
            IntentUtil.getInstance().goShareWebActivity(ClouldItemView3.this.getContext(), ClouldItemView3.this.getVipUrl());
            dialog.dismiss();
        }
    }

    public ClouldItemView3(Context context) {
        super(context);
        this.f64635t = false;
        this.f64637v = new String[]{"ftsc3", "lkrexe2"};
        this.f64638w = false;
        this.f64639x = true;
        this.f64640y = true;
        e(context);
    }

    private boolean b() {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        return accountData != null && (com.join.mgps.Util.b.piv(accountData) || accountData.getSVIPLevel() > 0);
    }

    private String c(String path) {
        if (Build.VERSION.SDK_INT >= 23 || path.endsWith("kdygmyhbs3")) {
            return "VBA";
        }
        if (path.startsWith("kdyg")) {
            return CContext.SCENE_GBA;
        }
        for (String str : this.f64637v) {
            if (path.endsWith(str)) {
                return CContext.SCENE_GBA;
            }
        }
        Date date = null;
        Date date2 = null;
        for (int i10 = 0; i10 <= 100; i10++) {
            File file = new File(path + com.join.mgps.Util.o0.f49827a + i10);
            if (file.exists()) {
                Date date3 = new Date(file.lastModified());
                if (date2 == null || date3.after(date2)) {
                    date2 = date3;
                }
            }
        }
        for (int i11 = 0; i11 <= 100; i11++) {
            File file2 = new File(path + "vba." + i11);
            if (file2.exists()) {
                Date date4 = new Date(file2.lastModified());
                if (date == null || date4.after(date)) {
                    date = date4;
                }
            }
        }
        if (date2 == null || date == null) {
            return date2 == null ? "VBA" : CContext.SCENE_GBA;
        }
        return date2.after(date) ? CContext.SCENE_GBA : "VBA";
    }

    @SuppressLint({"WrongViewCast"})
    private void e(Context context) {
        this.f64626k = LayoutInflater.from(context).inflate(R.layout.cloud_list_item3, this);
        this.f64625j = context;
        this.f64627l = Fresco.getImagePipeline();
        this.f64617b = (CloudDownButn) this.f64626k.findViewById(R.id.downButton);
        this.f64618c = (SimpleDraweeView) this.f64626k.findViewById(R.id.simv);
        this.f64619d = (TextView) this.f64626k.findViewById(R.id.tv_name);
        this.f64620e = (TextView) this.f64626k.findViewById(R.id.shape);
        this.f64621f = (TextView) this.f64626k.findViewById(R.id.backUp);
        this.f64622g = (TextView) this.f64626k.findViewById(R.id.authorname);
        this.f64623h = (TextView) this.f64626k.findViewById(R.id.tvcouldnum);
        this.f64629n = (LinearLayout) this.f64626k.findViewById(R.id.ll_vip);
        this.f64630o = (LinearLayout) this.f64626k.findViewById(R.id.ll_info);
        this.f64624i = (TextView) this.f64626k.findViewById(R.id.tvgoodpraisenum);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getVipUrl() {
        String str = "http://anv3btapi.5fun.com/user/activity/cloud_archive?gameId=" + this.f64633r;
        w6.c cVar = this.f64636u;
        if (cVar == null) {
            return str;
        }
        String strJ = cVar.j();
        if (!t2.i(strJ)) {
            return strJ;
        }
        if (strJ.contains("?")) {
            return strJ + "&gameId=" + this.f64633r;
        }
        return strJ + "?gameId=" + this.f64633r;
    }

    void d() {
        q.rorbin.badgeview.a aVar = this.f64631p;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    void f() {
        View viewInflate = LayoutInflater.from(this.f64625j).inflate(R.layout.popuwin_localarchive, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_delect);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        textView.setOnClickListener(new a(popupWindow));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.backUp) {
            if (!this.f64635t) {
                this.f64636u.w(this.f64632q);
            }
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.backupLocalArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64633r);
            return;
        }
        if (id2 != R.id.downButton) {
            if (id2 != R.id.shape) {
                return;
            }
            if (!this.f64635t) {
                this.f64636u.t(this.f64632q);
            }
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.shareArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64633r);
            return;
        }
        if (this.f64635t) {
            return;
        }
        int status = this.f64632q.getStatus();
        if (status != 0) {
            switch (status) {
                case 2:
                    Intent intent = new Intent("com.wufun.cloud.showUploadDialog");
                    intent.putExtra("fileMd5", this.f64632q.getFileMd5());
                    getContext().sendBroadcast(intent);
                    break;
                case 3:
                    Intent intent2 = new Intent("com.wufun.cloud.game.main.showDownDialog");
                    intent2.putExtra("fileMd5", this.f64632q.getFileMd5());
                    getContext().sendBroadcast(intent2);
                    break;
                case 6:
                    DownloadTask downloadTaskG = q5.f.M().G(this.f64633r);
                    String archiveFileName = this.f64632q.getArchiveFileName();
                    if (downloadTaskG.getPlugin_num().equals("33")) {
                        String strC = c(downloadTaskG.getPackageName());
                        if (strC == null) {
                            if (this.f64638w && !archiveFileName.contains("vba")) {
                                a3.b(getContext()).d("当前系统版本无法运行该存档");
                            } else if (!this.f64638w && archiveFileName.contains("vba")) {
                                a3.b(getContext()).d("当前系统版本无法运行该存档");
                            }
                        } else if (strC.equals("VBA") && !archiveFileName.contains("vba")) {
                            a3.b(getContext()).d("当前系统版本无法运行该存档");
                        } else if (strC.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                            a3.b(getContext()).d("当前系统版本无法运行该存档");
                        }
                    }
                    int i10 = this.f64634s;
                    if (i10 == 3 || i10 == 4) {
                        com.papa.sim.statistic.t.l(getContext()).Y0(Event.makeStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64633r);
                    } else {
                        com.papa.sim.statistic.t.l(getContext()).Y0(Event.downloadCloudArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64633r);
                    }
                    int i11 = this.f64634s;
                    if (i11 == 3 || i11 == 4) {
                        if (!this.f64639x) {
                            a3.b(getContext()).d("本地为v1核心不能下载v2核心存档");
                        } else if (!this.f64640y) {
                            a3.b(getContext()).d("本地有双核心PGM游戏不能下载存档");
                        }
                    }
                    if (i11 != 1) {
                        this.f64636u.B(this.f64632q, true);
                    } else {
                        this.f64636u.B(this.f64632q, false);
                    }
                    break;
            }
            return;
        }
        if (this.f64632q.getIsVip() == 1 && !b()) {
            new com.join.mgps.dialog.y(this.f64625j, R.style.HKDialogLoading).g("获取须知").d("本存档是悟饭平台VIP会员所享内容，请开通VIP会员后使用").b("开通VIP会员").a(new e()).show();
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_popup_page, new Ext().setGameId(this.f64633r));
            return;
        }
        String archiveFilePath = this.f64632q.getArchiveFilePath();
        if (this.f64628m.getPlugin_num().equals("33")) {
            String strC2 = c(this.f64628m.getPackageName());
            if (strC2 != null) {
                if (strC2.equals("VBA") && !archiveFilePath.contains("vba")) {
                    a3.b(getContext()).d("当前系统版本无法运行该存档");
                    return;
                } else if (strC2.equals(CContext.SCENE_GBA) && archiveFilePath.contains("vba")) {
                    a3.b(getContext()).d("当前系统版本无法运行该存档");
                    return;
                }
            } else if (this.f64638w && !archiveFilePath.contains("vba")) {
                a3.b(getContext()).d("当前系统版本无法运行该存档");
                return;
            } else if (!this.f64638w && archiveFilePath.contains("vba")) {
                a3.b(getContext()).d("当前系统版本无法运行该存档");
                return;
            }
        }
        UtilsMy.v4(this.f64628m, getContext(), archiveFilePath);
        int i12 = this.f64634s;
        if (i12 == 3 || i12 == 4) {
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.startStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64633r);
        } else {
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.startMeArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64633r);
        }
        this.f64636u.x(this.f64632q);
    }

    public void setCloudItemListener(w6.c listener) {
        this.f64636u = listener;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x019a  */
    public void setData(final String gamId, final CloudListDataBean data, final int type, final int tabtype, final boolean isSelecter, final boolean isLast, w6.c listener) {
        boolean z10;
        this.f64633r = gamId;
        this.f64634s = type;
        this.f64635t = isSelecter;
        this.f64628m = q5.f.M().G(gamId);
        this.f64632q = data;
        com.join.android.app.common.utils.l.h(this.f64618c, data.getAvatar());
        if (type == 2) {
            this.f64621f.setVisibility(0);
        } else {
            this.f64621f.setVisibility(8);
        }
        if (type == 3 || type == 4) {
            this.f64620e.setVisibility(8);
            this.f64619d.setText(data.getArchiveDesc());
            this.f64622g.setText(data.getNickname());
            this.f64623h.setText(data.getDownNum() + "");
            this.f64624i.setText(data.getHighComment() + "");
            if (this.f64628m.getPlugin_num().equals("33")) {
                String archiveFileName = data.getArchiveFileName();
                String strC = c(this.f64628m.getPackageName());
                if (strC != null) {
                    if (strC.equals("VBA") && !archiveFileName.contains("vba")) {
                        this.f64624i.setText(data.getHighComment() + " 不兼容");
                    } else if (strC.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                        this.f64624i.setText(data.getHighComment() + " 不兼容");
                    }
                } else if (this.f64638w && !archiveFileName.contains("vba")) {
                    this.f64624i.setText(data.getHighComment() + " 不兼容");
                } else if (!this.f64638w && archiveFileName.contains("vba")) {
                    this.f64624i.setText(data.getHighComment() + " 不兼容");
                }
            }
        } else {
            this.f64619d.setText(data.getArchiveName());
            this.f64620e.setVisibility(0);
        }
        if (!isSelecter) {
            this.f64617b.setOnClickListener(this);
            this.f64621f.setOnClickListener(this);
            this.f64620e.setOnClickListener(this);
        }
        if (type == 1) {
            this.f64617b.setStatu(data.getStatus());
        } else if (type == 3 || type == 4) {
            Iterator<CloudDownRecoderTable> it2 = t6.i.o().n(gamId).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = false;
                    break;
                }
                CloudDownRecoderTable next = it2.next();
                if (!new File(next.getFilePath()).exists()) {
                    t6.i.o().delete(next);
                } else if (next.getMd5().equals(data.getFileMd5())) {
                    this.f64632q.setArchiveFilePath(next.getFilePath());
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                this.f64617b.setStatu(0);
                this.f64632q.setStatus(0);
            } else {
                this.f64617b.setStatu(this.f64632q.getStatus());
            }
        } else if (type == 2) {
            this.f64617b.setStatu(0);
            int status = this.f64632q.getStatus();
            if (status == 0) {
                this.f64621f.setText("备份");
                this.f64621f.setClickable(true);
            } else if (status == 7) {
                this.f64621f.setText("备份中");
                this.f64621f.setClickable(true);
            } else if (status == 4) {
                this.f64621f.setText("备份");
                this.f64621f.setClickable(true);
            } else if (status == 5) {
                this.f64621f.setText("已备份");
                this.f64621f.setClickable(false);
            }
        } else {
            this.f64617b.setStatu(6);
        }
        if (this.f64632q.getIsVip() == 1) {
            setBackgroundResource(R.drawable.bg_cloud_list_item3);
            this.f64617b.setTextColor(Color.parseColor("#FFD5BC"));
            this.f64617b.setBackgroundResource(R.drawable.shape_cloud_down_vip);
            this.f64629n.setVisibility(0);
            this.f64630o.setVisibility(8);
            return;
        }
        setBackgroundColor(Color.parseColor("#8F0A1521"));
        this.f64617b.setTextColor(Color.parseColor("#FFFFFF"));
        this.f64617b.setBackgroundResource(R.drawable.shape_cloud_down_normal);
        this.f64629n.setVisibility(8);
        this.f64630o.setVisibility(0);
    }

    public void setGBAType(boolean isVBA) {
        this.f64638w = isVBA;
    }

    public void setPGN(boolean marcketDownEnable, boolean marcketPGNEnable) {
        this.f64639x = marcketDownEnable;
        this.f64640y = marcketPGNEnable;
    }

    void setPoPoWindow2(boolean islast) {
        View viewInflate = LayoutInflater.from(this.f64625j).inflate(R.layout.popuwin_localarchive2, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        TextView textView = (TextView) viewInflate.findViewById(R.id.good);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.introduce);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.plagiarize);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        textView.setOnClickListener(new b(popupWindow));
        textView2.setOnClickListener(new c(popupWindow));
        textView3.setOnClickListener(new d(popupWindow));
    }

    public ClouldItemView3(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f64635t = false;
        this.f64637v = new String[]{"ftsc3", "lkrexe2"};
        this.f64638w = false;
        this.f64639x = true;
        this.f64640y = true;
        e(context);
    }

    public ClouldItemView3(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64635t = false;
        this.f64637v = new String[]{"ftsc3", "lkrexe2"};
        this.f64638w = false;
        this.f64639x = true;
        this.f64640y = true;
        e(context);
    }
}
