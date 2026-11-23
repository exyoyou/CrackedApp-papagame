package com.join.mgps.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
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
import q.rorbin.badgeview.QBadgeView;

/* JADX INFO: loaded from: classes3.dex */
public class ClouldItemView2 extends LinearLayout implements View.OnClickListener {
    boolean A;
    boolean B;
    boolean C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    CloudDownButn f64579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LinearLayout f64580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SimpleDraweeView f64581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f64582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f64583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f64584g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f64585h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    TextView f64586i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    TextView f64587j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    TextView f64588k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ImageView f64589l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Context f64590m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    View f64591n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    TextView f64592o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    com.facebook.imagepipeline.core.h f64593p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    DownloadTask f64594q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    LinearLayout f64595r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    LinearLayout f64596s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private q.rorbin.badgeview.a f64597t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    CloudListDataBean f64598u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    String f64599v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f64600w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    boolean f64601x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    w6.c f64602y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    String[] f64603z;

    class a implements q.rorbin.badgeview.a.InterfaceC1236a {
        a() {
        }

        @Override // q.rorbin.badgeview.a.InterfaceC1236a
        public void a(int dragState, q.rorbin.badgeview.a badge, View targetView) {
            if (dragState == 4) {
                badge.hide(false);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f64605b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f64606c;

        b(final CloudListDataBean val$data, final boolean val$isLast) {
            this.f64605b = val$data;
            this.f64606c = val$isLast;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView2.this.e();
            this.f64605b.setIsComment(1);
            ClouldItemView2.this.setPoPoWindow2(this.f64606c);
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64608b;

        c(final PopupWindow val$popupWindow) {
            this.f64608b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f64608b.dismiss();
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            int i10 = clouldItemView2.f64600w;
            if (i10 == 1) {
                clouldItemView2.f64602y.k(clouldItemView2.f64598u, 1);
                return;
            }
            if (i10 == 2) {
                clouldItemView2.f64602y.k(clouldItemView2.f64598u, 2);
            } else if (i10 == 3) {
                clouldItemView2.f64602y.k(clouldItemView2.f64598u, 3);
            } else if (i10 == 4) {
                clouldItemView2.f64602y.G(clouldItemView2.f64598u, 4);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64610b;

        d(final PopupWindow val$popupWindow) {
            this.f64610b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            clouldItemView2.f64602y.G(clouldItemView2.f64598u, 1);
            this.f64610b.dismiss();
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64612b;

        e(final PopupWindow val$popupWindow) {
            this.f64612b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            clouldItemView2.f64602y.G(clouldItemView2.f64598u, 2);
            this.f64612b.dismiss();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64614b;

        f(final PopupWindow val$popupWindow) {
            this.f64614b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView2 clouldItemView2 = ClouldItemView2.this;
            clouldItemView2.f64602y.G(clouldItemView2.f64598u, 3);
            this.f64614b.dismiss();
        }
    }

    class g implements com.join.mgps.dialog.y.e {
        g() {
        }

        @Override // com.join.mgps.dialog.y.e
        public void a(com.join.mgps.dialog.y dialog) {
            com.papa.sim.statistic.t.l(ClouldItemView2.this.getContext()).R1(Event.VipArchive_buy_emulator, new Ext().setGameId(ClouldItemView2.this.f64599v));
            IntentUtil.getInstance().goShareWebActivity(ClouldItemView2.this.getContext(), ClouldItemView2.this.getVipUrl());
            dialog.dismiss();
        }
    }

    public ClouldItemView2(Context context) {
        super(context);
        this.f64601x = false;
        this.f64603z = new String[]{"ftsc3", "lkrexe2"};
        this.A = false;
        this.B = true;
        this.C = true;
        f(context);
    }

    private boolean c() {
        UserInfo accountData = AccountUtil_.getInstance_(getContext()).getAccountData();
        return accountData != null && (com.join.mgps.Util.b.piv(accountData) || accountData.getSVIPLevel() > 0);
    }

    private String d(String path) {
        if (Build.VERSION.SDK_INT >= 23 || path.endsWith("kdygmyhbs3")) {
            return "VBA";
        }
        if (path.startsWith("kdyg")) {
            return CContext.SCENE_GBA;
        }
        for (String str : this.f64603z) {
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
    private void f(Context context) {
        this.f64591n = LayoutInflater.from(context).inflate(R.layout.cloud_list_item2, this);
        this.f64590m = context;
        this.f64593p = Fresco.getImagePipeline();
        this.f64579b = (CloudDownButn) this.f64591n.findViewById(R.id.downButton);
        this.f64580c = (LinearLayout) this.f64591n.findViewById(R.id.iv_more);
        this.f64581d = (SimpleDraweeView) this.f64591n.findViewById(R.id.simv);
        this.f64582e = (TextView) this.f64591n.findViewById(R.id.tv_name);
        this.f64583f = (TextView) this.f64591n.findViewById(R.id.shape);
        this.f64584g = (TextView) this.f64591n.findViewById(R.id.backUp);
        this.f64585h = (TextView) this.f64591n.findViewById(R.id.authorname);
        this.f64589l = (ImageView) this.f64591n.findViewById(R.id.ivgoodauthor);
        this.f64592o = (TextView) this.f64591n.findViewById(R.id.goodauthor);
        this.f64587j = (TextView) this.f64591n.findViewById(R.id.tvcouldnum);
        this.f64588k = (TextView) this.f64591n.findViewById(R.id.tvgoodpraisenum);
        this.f64586i = (TextView) this.f64591n.findViewById(R.id.tv_evalute);
        this.f64595r = (LinearLayout) this.f64591n.findViewById(R.id.ll_vip);
        this.f64596s = (LinearLayout) this.f64591n.findViewById(R.id.ll_info);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(boolean z10, int i10, int i11, View view) {
        if (z10) {
            return;
        }
        if (i10 == 1 || i10 == 2) {
            h();
            return;
        }
        if (i10 == 3) {
            if (i11 == 4) {
                h();
            }
        } else if (i10 == 4) {
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getVipUrl() {
        String str = "http://anv3btapi.wufan88.com/user/activity/cloud_archive?gameId=" + this.f64599v;
        w6.c cVar = this.f64602y;
        if (cVar == null) {
            return str;
        }
        String strJ = cVar.j();
        if (!t2.i(strJ)) {
            return strJ;
        }
        if (strJ.contains("?")) {
            return strJ + "&gameId=" + this.f64599v;
        }
        return strJ + "?gameId=" + this.f64599v;
    }

    void e() {
        q.rorbin.badgeview.a aVar = this.f64597t;
        if (aVar != null) {
            aVar.hide(false);
        }
    }

    void h() {
        View viewInflate = LayoutInflater.from(this.f64590m).inflate(R.layout.popuwin_localarchive, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_delect);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        popupWindow.showAsDropDown(this.f64580c, (int) (-this.f64590m.getResources().getDimension(R.dimen.wdp150)), (int) (-this.f64590m.getResources().getDimension(R.dimen.wdp80)));
        textView.setOnClickListener(new c(popupWindow));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.backUp) {
            if (!this.f64601x) {
                this.f64602y.w(this.f64598u);
            }
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.backupLocalArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64599v);
            return;
        }
        if (id2 != R.id.downButton) {
            if (id2 != R.id.shape) {
                return;
            }
            if (!this.f64601x) {
                this.f64602y.t(this.f64598u);
            }
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.shareArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64599v);
            return;
        }
        if (this.f64601x) {
            return;
        }
        int status = this.f64598u.getStatus();
        if (status != 0) {
            switch (status) {
                case 2:
                    Intent intent = new Intent("com.wufun.cloud.showUploadDialog");
                    intent.putExtra("fileMd5", this.f64598u.getFileMd5());
                    getContext().sendBroadcast(intent);
                    break;
                case 3:
                    Intent intent2 = new Intent("com.wufun.cloud.showDownDialog");
                    intent2.putExtra("fileMd5", this.f64598u.getFileMd5());
                    getContext().sendBroadcast(intent2);
                    break;
                case 6:
                    DownloadTask downloadTaskG = q5.f.M().G(this.f64599v);
                    String archiveFileName = this.f64598u.getArchiveFileName();
                    if (downloadTaskG.getPlugin_num().equals("33")) {
                        String strD = d(downloadTaskG.getPackageName());
                        if (strD == null) {
                            if (this.A && !archiveFileName.contains("vba")) {
                                a3.b(getContext()).d("当前系统版本无法运行该存档");
                            } else if (!this.A && archiveFileName.contains("vba")) {
                                a3.b(getContext()).d("当前系统版本无法运行该存档");
                            }
                        } else if (strD.equals("VBA") && !archiveFileName.contains("vba")) {
                            a3.b(getContext()).d("当前系统版本无法运行该存档");
                        } else if (strD.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                            a3.b(getContext()).d("当前系统版本无法运行该存档");
                        }
                    }
                    int i10 = this.f64600w;
                    if (i10 == 3 || i10 == 4) {
                        com.papa.sim.statistic.t.l(getContext()).Y0(Event.makeStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64599v);
                    } else {
                        com.papa.sim.statistic.t.l(getContext()).Y0(Event.downloadCloudArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64599v);
                    }
                    int i11 = this.f64600w;
                    if (i11 == 3 || i11 == 4) {
                        if (!this.B) {
                            a3.b(getContext()).d("本地为v1核心不能下载v2核心存档");
                        } else if (!this.C) {
                            a3.b(getContext()).d("本地有双核心PGM游戏不能下载存档");
                        }
                    }
                    if (i11 != 1) {
                        this.f64602y.B(this.f64598u, true);
                    } else {
                        this.f64602y.B(this.f64598u, false);
                    }
                    break;
            }
            return;
        }
        if (this.f64598u.getIsVip() == 1 && !c()) {
            new com.join.mgps.dialog.y(this.f64590m, R.style.HKDialogLoading).g("获取须知").d("本存档是悟饭平台VIP会员所享内容，请开通VIP会员后使用").b("开通VIP会员").a(new g()).show();
            com.papa.sim.statistic.t.l(getContext()).R1(Event.VipArchive_popup_emulator, new Ext().setGameId(this.f64599v));
            return;
        }
        String archiveFilePath = this.f64598u.getArchiveFilePath();
        if (this.f64594q.getPlugin_num().equals("33")) {
            String strD2 = d(this.f64594q.getPackageName());
            if (strD2 != null) {
                if (strD2.equals("VBA") && !archiveFilePath.contains("vba")) {
                    a3.b(getContext()).d("当前系统版本无法运行该存档");
                    return;
                } else if (strD2.equals(CContext.SCENE_GBA) && archiveFilePath.contains("vba")) {
                    a3.b(getContext()).d("当前系统版本无法运行该存档");
                    return;
                }
            } else if (this.A && !archiveFilePath.contains("vba")) {
                a3.b(getContext()).d("当前系统版本无法运行该存档");
                return;
            } else if (!this.A && archiveFilePath.contains("vba")) {
                a3.b(getContext()).d("当前系统版本无法运行该存档");
                return;
            }
        }
        UtilsMy.v4(this.f64594q, getContext(), archiveFilePath);
        int i12 = this.f64600w;
        if (i12 == 3 || i12 == 4) {
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.startStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64599v);
        } else {
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.startMeArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64599v);
        }
        this.f64602y.x(this.f64598u);
    }

    public void setCloudItemListener(w6.c listener) {
        this.f64602y = listener;
    }

    /* JADX WARN: Code duplicated, block: B:81:0x029c  */
    public void setData(final String gamId, final CloudListDataBean data, final int type, final int tabtype, final boolean isSelecter, final boolean isLast, w6.c listener) {
        boolean z10;
        this.f64599v = gamId;
        this.f64600w = type;
        this.f64601x = isSelecter;
        this.f64598u = data;
        if (data.getArchiveCover().startsWith("file://")) {
            Uri uri = Uri.parse(data.getArchiveCover());
            this.f64593p.h(uri);
            this.f64593p.f(uri);
            this.f64593p.e(uri);
            this.f64581d.setImageURI(uri);
        } else {
            com.join.android.app.common.utils.l.h(this.f64581d, data.getArchiveCover());
        }
        if (type == 2) {
            this.f64584g.setVisibility(0);
        } else {
            this.f64584g.setVisibility(8);
        }
        if (type == 3 || type == 4) {
            this.f64583f.setVisibility(8);
            this.f64582e.setText(data.getArchiveDesc());
            this.f64585h.setText(data.getNickname());
            if (data.getTag() == null || data.getTag().isEmpty()) {
                this.f64589l.setVisibility(8);
                this.f64592o.setText(data.getTag());
                this.f64592o.setVisibility(8);
            } else {
                this.f64589l.setVisibility(0);
                this.f64592o.setText(data.getTag());
                this.f64592o.setVisibility(0);
            }
            this.f64587j.setText(data.getDownNum() + "");
            this.f64588k.setText(data.getHighComment() + "");
            DownloadTask downloadTaskG = q5.f.M().G(gamId);
            this.f64594q = downloadTaskG;
            if (downloadTaskG.getPlugin_num().equals("33")) {
                String archiveFileName = data.getArchiveFileName();
                String strD = d(this.f64594q.getPackageName());
                if (strD != null) {
                    if (strD.equals("VBA") && !archiveFileName.contains("vba")) {
                        this.f64588k.setText(data.getHighComment() + " 不兼容");
                    } else if (strD.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                        this.f64588k.setText(data.getHighComment() + " 不兼容");
                    }
                } else if (this.A && !archiveFileName.contains("vba")) {
                    this.f64588k.setText(data.getHighComment() + " 不兼容");
                } else if (!this.A && archiveFileName.contains("vba")) {
                    this.f64588k.setText(data.getHighComment() + " 不兼容");
                }
            }
        } else {
            this.f64582e.setText(data.getArchiveName());
            this.f64583f.setVisibility(0);
        }
        this.f64586i.setVisibility(8);
        if (type == 3) {
            if (tabtype != 4) {
                this.f64580c.setVisibility(4);
            } else {
                this.f64580c.setVisibility(0);
            }
            this.f64586i.setVisibility(8);
        } else if (type == 4) {
            this.f64586i.setVisibility(0);
            if (data.getIsComment() == 0) {
                q.rorbin.badgeview.a aVar = this.f64597t;
                if (aVar != null) {
                    aVar.hide(false);
                }
                this.f64597t = new QBadgeView(this.f64590m).n(this.f64586i).g(-1).k(3.0f, true).d(SupportMenu.CATEGORY_MASK).w(getResources().getDimensionPixelSize(R.dimen.wdp2), false).u(8388693).s(-1).q(new a());
            } else if (data.getIsComment() == 1) {
                e();
            }
        } else {
            this.f64580c.setVisibility(0);
        }
        this.f64586i.setOnClickListener(new b(data, isLast));
        this.f64580c.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f66295b.g(isSelecter, type, tabtype, view);
            }
        });
        if (!isSelecter) {
            this.f64579b.setOnClickListener(this);
            this.f64584g.setOnClickListener(this);
            this.f64583f.setOnClickListener(this);
        }
        if (type == 1) {
            this.f64579b.setStatu(data.getStatus());
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
                    this.f64598u.setArchiveFilePath(next.getFilePath());
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                this.f64579b.setStatu(0);
                this.f64598u.setStatus(0);
            } else {
                this.f64579b.setStatu(this.f64598u.getStatus());
            }
        } else if (type == 2) {
            this.f64579b.setStatu(0);
            int status = this.f64598u.getStatus();
            if (status == 0) {
                this.f64584g.setText("备份");
                this.f64584g.setClickable(true);
            } else if (status == 7) {
                this.f64584g.setText("备份中");
                this.f64584g.setClickable(true);
            } else if (status == 4) {
                this.f64584g.setText("备份");
                this.f64584g.setClickable(true);
            } else if (status == 5) {
                this.f64584g.setText("已备份");
                this.f64584g.setClickable(false);
            }
        } else {
            this.f64579b.setStatu(6);
        }
        if (this.f64598u.getIsVip() == 1) {
            setBackgroundResource(R.drawable.bg_cloud_list_item2);
            this.f64579b.setTextColor(Color.parseColor("#ADADF1"));
            this.f64595r.setVisibility(0);
            this.f64596s.setVisibility(8);
            return;
        }
        setBackgroundColor(Color.parseColor("#800A1521"));
        this.f64579b.setTextColor(Color.parseColor("#9FABB7"));
        this.f64595r.setVisibility(8);
        this.f64596s.setVisibility(0);
    }

    public void setGBAType(boolean isVBA) {
        this.A = isVBA;
    }

    public void setPGN(boolean marcketDownEnable, boolean marcketPGNEnable) {
        this.B = marcketDownEnable;
        this.C = marcketPGNEnable;
    }

    void setPoPoWindow2(boolean islast) {
        View viewInflate = LayoutInflater.from(this.f64590m).inflate(R.layout.popuwin_localarchive2, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        TextView textView = (TextView) viewInflate.findViewById(R.id.good);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.introduce);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.plagiarize);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        int[] iArr = new int[2];
        this.f64580c.getLocationOnScreen(iArr);
        if (islast) {
            popupWindow.showAtLocation(this.f64580c, 0, iArr[0] - ((int) this.f64590m.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        } else {
            popupWindow.showAtLocation(this.f64580c, 0, iArr[0] - ((int) this.f64590m.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        }
        textView.setOnClickListener(new d(popupWindow));
        textView2.setOnClickListener(new e(popupWindow));
        textView3.setOnClickListener(new f(popupWindow));
    }

    public ClouldItemView2(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f64601x = false;
        this.f64603z = new String[]{"ftsc3", "lkrexe2"};
        this.A = false;
        this.B = true;
        this.C = true;
        f(context);
    }

    public ClouldItemView2(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64601x = false;
        this.f64603z = new String[]{"ftsc3", "lkrexe2"};
        this.A = false;
        this.B = true;
        this.C = true;
        f(context);
    }
}
