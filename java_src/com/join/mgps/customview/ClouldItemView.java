package com.join.mgps.customview;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
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
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.db.tables.CloudDownRecoderTable;
import com.join.mgps.dto.CloudListDataBean;
import com.papa.sim.statistic.Event;
import com.papa91.arc.CContext;
import java.io.File;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class ClouldItemView extends LinearLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    CloudDownButn f64543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LinearLayout f64544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    SimpleDraweeView f64545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    TextView f64546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    TextView f64547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    TextView f64548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f64549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    TextView f64550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    TextView f64551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    Context f64552k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    View f64553l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    com.facebook.imagepipeline.core.h f64554m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    DownloadTask f64555n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    CloudListDataBean f64556o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    String f64557p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f64558q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f64559r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    w6.c f64560s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    String[] f64561t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f64562u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f64563v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f64564w;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f64565b;

        a(final boolean val$isLast) {
            this.f64565b = val$isLast;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView.this.setPoPoWindow2(this.f64565b);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f64567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f64568c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f64569d;

        b(final boolean val$isSelecter, final int val$type, final int val$tabtype) {
            this.f64567b = val$isSelecter;
            this.f64568c = val$type;
            this.f64569d = val$tabtype;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f64567b) {
                return;
            }
            int i10 = this.f64568c;
            if (i10 == 1 || i10 == 2) {
                ClouldItemView.this.c();
                return;
            }
            if (i10 == 3) {
                if (this.f64569d == 4) {
                    ClouldItemView.this.c();
                }
            } else if (i10 == 4) {
                ClouldItemView.this.c();
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64571b;

        c(final PopupWindow val$popupWindow) {
            this.f64571b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f64571b.dismiss();
            ClouldItemView clouldItemView = ClouldItemView.this;
            int i10 = clouldItemView.f64558q;
            if (i10 == 1) {
                clouldItemView.f64560s.k(clouldItemView.f64556o, 1);
                return;
            }
            if (i10 == 2) {
                clouldItemView.f64560s.k(clouldItemView.f64556o, 2);
            } else if (i10 == 3) {
                clouldItemView.f64560s.k(clouldItemView.f64556o, 3);
            } else if (i10 == 4) {
                clouldItemView.f64560s.G(clouldItemView.f64556o, 4);
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64573b;

        d(final PopupWindow val$popupWindow) {
            this.f64573b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView clouldItemView = ClouldItemView.this;
            clouldItemView.f64560s.G(clouldItemView.f64556o, 1);
            this.f64573b.dismiss();
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64575b;

        e(final PopupWindow val$popupWindow) {
            this.f64575b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView clouldItemView = ClouldItemView.this;
            clouldItemView.f64560s.G(clouldItemView.f64556o, 2);
            this.f64575b.dismiss();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PopupWindow f64577b;

        f(final PopupWindow val$popupWindow) {
            this.f64577b = val$popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ClouldItemView clouldItemView = ClouldItemView.this;
            clouldItemView.f64560s.G(clouldItemView.f64556o, 3);
            this.f64577b.dismiss();
        }
    }

    public ClouldItemView(Context context) {
        super(context);
        this.f64559r = false;
        this.f64561t = new String[]{"ftsc3", "lkrexe2"};
        this.f64562u = false;
        this.f64563v = true;
        this.f64564w = true;
        b(context);
    }

    private String a(String path) {
        if (Build.VERSION.SDK_INT >= 23 || path.endsWith("kdygmyhbs3")) {
            return "VBA";
        }
        if (path.startsWith("kdyg")) {
            return CContext.SCENE_GBA;
        }
        for (String str : this.f64561t) {
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

    private void b(Context context) {
        this.f64553l = LayoutInflater.from(context).inflate(R.layout.cloud_list_item, this);
        this.f64552k = context;
        this.f64554m = Fresco.getImagePipeline();
        this.f64543b = (CloudDownButn) this.f64553l.findViewById(R.id.downButton);
        this.f64544c = (LinearLayout) this.f64553l.findViewById(R.id.iv_more);
        this.f64545d = (SimpleDraweeView) this.f64553l.findViewById(R.id.simv);
        this.f64546e = (TextView) this.f64553l.findViewById(R.id.tv_name);
        this.f64547f = (TextView) this.f64553l.findViewById(R.id.tv_time);
        this.f64548g = (TextView) this.f64553l.findViewById(R.id.shape);
        this.f64549h = (TextView) this.f64553l.findViewById(R.id.backUp);
        this.f64550i = (TextView) this.f64553l.findViewById(R.id.tv_good);
        this.f64551j = (TextView) this.f64553l.findViewById(R.id.tv_evalute);
    }

    void c() {
        View viewInflate = LayoutInflater.from(this.f64552k).inflate(R.layout.popuwin_localarchive, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_delect);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        popupWindow.showAsDropDown(this.f64544c, (int) (-this.f64552k.getResources().getDimension(R.dimen.wdp150)), (int) (-this.f64552k.getResources().getDimension(R.dimen.wdp80)));
        textView.setOnClickListener(new c(popupWindow));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.backUp) {
            if (!this.f64559r) {
                this.f64560s.w(this.f64556o);
            }
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.backupLocalArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64557p);
            return;
        }
        if (id2 != R.id.downButton) {
            if (id2 != R.id.shape) {
                return;
            }
            if (!this.f64559r) {
                this.f64560s.t(this.f64556o);
            }
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.shareArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64557p);
            return;
        }
        if (this.f64559r) {
            return;
        }
        int status = this.f64556o.getStatus();
        if (status != 0) {
            switch (status) {
                case 2:
                    Intent intent = new Intent("com.wufun.cloud.showUploadDialog");
                    intent.putExtra("fileMd5", this.f64556o.getFileMd5());
                    getContext().sendBroadcast(intent);
                    break;
                case 3:
                    Intent intent2 = new Intent("com.wufun.cloud.showDownDialog");
                    intent2.putExtra("fileMd5", this.f64556o.getFileMd5());
                    getContext().sendBroadcast(intent2);
                    break;
                case 6:
                    DownloadTask downloadTaskG = q5.f.M().G(this.f64557p);
                    String archiveFileName = this.f64556o.getArchiveFileName();
                    if (downloadTaskG.getPlugin_num().equals("33")) {
                        String strA = a(downloadTaskG.getPackageName());
                        if (strA == null) {
                            if (this.f64562u && !archiveFileName.contains("vba")) {
                                a3.b(getContext()).d("当前系统版本无法运行该存档");
                            } else if (!this.f64562u && archiveFileName.contains("vba")) {
                                a3.b(getContext()).d("当前系统版本无法运行该存档");
                            }
                        } else if (strA.equals("VBA") && !archiveFileName.contains("vba")) {
                            a3.b(getContext()).d("当前系统版本无法运行该存档");
                        } else if (strA.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                            a3.b(getContext()).d("当前系统版本无法运行该存档");
                        }
                    }
                    int i10 = this.f64558q;
                    if (i10 == 3 || i10 == 4) {
                        com.papa.sim.statistic.t.l(getContext()).Y0(Event.makeStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64557p);
                    } else {
                        com.papa.sim.statistic.t.l(getContext()).Y0(Event.downloadCloudArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64557p);
                    }
                    int i11 = this.f64558q;
                    if (i11 == 3 || i11 == 4) {
                        if (!this.f64563v) {
                            a3.b(getContext()).d("本地为v1核心不能下载v2核心存档");
                        } else if (!this.f64564w) {
                            a3.b(getContext()).d("本地有双核心PGM游戏不能下载存档");
                        }
                    }
                    if (i11 != 1) {
                        this.f64560s.B(this.f64556o, true);
                    } else {
                        this.f64560s.B(this.f64556o, false);
                    }
                    break;
            }
            return;
        }
        String archiveFilePath = this.f64556o.getArchiveFilePath();
        if (this.f64555n.getPlugin_num().equals("33")) {
            String strA2 = a(this.f64555n.getPackageName());
            if (strA2 != null) {
                if (strA2.equals("VBA") && !archiveFilePath.contains("vba")) {
                    a3.b(getContext()).d("当前系统版本无法运行该存档");
                    return;
                } else if (strA2.equals(CContext.SCENE_GBA) && archiveFilePath.contains("vba")) {
                    a3.b(getContext()).d("当前系统版本无法运行该存档");
                    return;
                }
            } else if (this.f64562u && !archiveFilePath.contains("vba")) {
                a3.b(getContext()).d("当前系统版本无法运行该存档");
                return;
            } else if (!this.f64562u && archiveFilePath.contains("vba")) {
                a3.b(getContext()).d("当前系统版本无法运行该存档");
                return;
            }
        }
        UtilsMy.v4(this.f64555n, getContext(), archiveFilePath);
        int i12 = this.f64558q;
        if (i12 == 3 || i12 == 4) {
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.startStoreArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64557p);
        } else {
            com.papa.sim.statistic.t.l(getContext()).Y0(Event.startMeArchive, AccountUtil_.getInstance_(getContext()).getUid(), this.f64557p);
        }
        this.f64560s.x(this.f64556o);
    }

    public void setCloudItemListener(w6.c listener) {
        this.f64560s = listener;
    }

    public void setData(final String gamId, CloudListDataBean data, final int type, final int tabtype, final boolean isSelecter, final boolean isLast, w6.c listener) {
        this.f64557p = gamId;
        this.f64558q = type;
        this.f64559r = isSelecter;
        this.f64555n = q5.f.M().G(gamId);
        this.f64556o = data;
        if (data.getArchiveCover().startsWith("file://")) {
            Uri uri = Uri.parse(data.getArchiveCover());
            this.f64554m.h(uri);
            this.f64554m.f(uri);
            this.f64554m.e(uri);
            this.f64545d.setImageURI(uri);
        } else {
            com.join.android.app.common.utils.l.h(this.f64545d, data.getArchiveCover());
        }
        if (type == 3 && tabtype == 4) {
            this.f64547f.setText(data.getAddTime() + "上传");
        } else {
            this.f64547f.setText(data.getAddTime());
        }
        if (type == 2) {
            this.f64549h.setVisibility(0);
        } else {
            this.f64549h.setVisibility(8);
        }
        if (type == 3 || type == 4) {
            this.f64548g.setVisibility(8);
            this.f64546e.setText(data.getArchiveDesc());
            this.f64550i.setVisibility(0);
            this.f64550i.setText(data.getHighRate() + "%好评");
            if (this.f64555n.getPlugin_num().equals("33")) {
                String archiveFileName = data.getArchiveFileName();
                String strA = a(this.f64555n.getPackageName());
                if (strA != null) {
                    if (strA.equals("VBA") && !archiveFileName.contains("vba")) {
                        this.f64547f.setText(data.getAddTime() + " 不兼容");
                    } else if (strA.equals(CContext.SCENE_GBA) && archiveFileName.contains("vba")) {
                        this.f64547f.setText(data.getAddTime() + " 不兼容");
                    }
                } else if (this.f64562u && !archiveFileName.contains("vba")) {
                    this.f64547f.setText(data.getAddTime() + " 不兼容");
                } else if (!this.f64562u && archiveFileName.contains("vba")) {
                    this.f64547f.setText(data.getAddTime() + " 不兼容");
                }
            }
        } else {
            this.f64550i.setVisibility(8);
            this.f64546e.setText(data.getArchiveName());
            this.f64550i.setVisibility(8);
            this.f64548g.setVisibility(0);
        }
        this.f64551j.setVisibility(8);
        if (type == 3) {
            if (tabtype != 4) {
                this.f64544c.setVisibility(4);
            } else {
                this.f64544c.setVisibility(0);
            }
            this.f64551j.setVisibility(8);
        } else if (type == 4) {
            this.f64551j.setVisibility(0);
        } else {
            this.f64544c.setVisibility(0);
        }
        this.f64551j.setOnClickListener(new a(isLast));
        this.f64544c.setOnClickListener(new b(isSelecter, type, tabtype));
        if (!isSelecter) {
            this.f64543b.setOnClickListener(this);
            this.f64549h.setOnClickListener(this);
            this.f64548g.setOnClickListener(this);
        }
        boolean z10 = true;
        if (type == 1) {
            this.f64543b.setStatu(data.getStatus());
            return;
        }
        if (type == 3 || type == 4) {
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
                    this.f64556o.setArchiveFilePath(next.getFilePath());
                    break;
                }
            }
            if (!z10) {
                this.f64543b.setStatu(this.f64556o.getStatus());
                return;
            } else {
                this.f64543b.setStatu(0);
                this.f64556o.setStatus(0);
                return;
            }
        }
        if (type != 2) {
            this.f64543b.setStatu(6);
            return;
        }
        this.f64543b.setStatu(0);
        int status = this.f64556o.getStatus();
        if (status != 0) {
            if (status == 7) {
                this.f64549h.setText("备份中");
                this.f64549h.setClickable(true);
                return;
            } else if (status != 4) {
                if (status != 5) {
                    return;
                }
                this.f64549h.setText("已备份");
                this.f64549h.setClickable(false);
                return;
            }
        }
        this.f64549h.setText("备份");
        this.f64549h.setClickable(true);
    }

    public void setGBAType(boolean isVBA) {
        this.f64562u = isVBA;
    }

    public void setPGN(boolean marcketDownEnable, boolean marcketPGNEnable) {
        this.f64563v = marcketDownEnable;
        this.f64564w = marcketPGNEnable;
    }

    void setPoPoWindow2(boolean islast) {
        View viewInflate = LayoutInflater.from(this.f64552k).inflate(R.layout.popuwin_localarchive2, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2, true);
        TextView textView = (TextView) viewInflate.findViewById(R.id.good);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.introduce);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.plagiarize);
        popupWindow.setFocusable(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.popuwinlocal)));
        int[] iArr = new int[2];
        this.f64544c.getLocationOnScreen(iArr);
        if (islast) {
            popupWindow.showAtLocation(this.f64544c, 0, iArr[0] - ((int) this.f64552k.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        } else {
            popupWindow.showAtLocation(this.f64544c, 0, iArr[0] - ((int) this.f64552k.getResources().getDimension(R.dimen.wdp250)), iArr[1]);
        }
        textView.setOnClickListener(new d(popupWindow));
        textView2.setOnClickListener(new e(popupWindow));
        textView3.setOnClickListener(new f(popupWindow));
    }

    public ClouldItemView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f64559r = false;
        this.f64561t = new String[]{"ftsc3", "lkrexe2"};
        this.f64562u = false;
        this.f64563v = true;
        this.f64564w = true;
        b(context);
    }

    public ClouldItemView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64559r = false;
        this.f64561t = new String[]{"ftsc3", "lkrexe2"};
        this.f64562u = false;
        this.f64563v = true;
        this.f64564w = true;
        b(context);
    }
}
