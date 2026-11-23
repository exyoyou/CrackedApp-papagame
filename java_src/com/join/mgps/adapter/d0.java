package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.FightMainTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dto.LoadWarCenterBean;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class d0 extends BaseAdapter {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f61395c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f61394b = getClass().getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, DownloadTask> f61396d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<FightMainTable> f61397e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f61398f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f61399g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f61400h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f61401i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f61402j = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f61403k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<WarMatchAndLocalTable> f61404l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private LoadWarCenterBean f61405m = new LoadWarCenterBean();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f61406n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f61407o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f61408p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f61409q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f61410r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f61411s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f61412t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f61413u = 0;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61415c;

        a(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61414b = val$downloadTask;
            this.f61415c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61414b, this.f61415c.getDown_status());
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61417b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61418c;

        b(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61417b = val$downloadTask;
            this.f61418c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61417b, this.f61418c.getDown_status());
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61421c;

        c(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61420b = val$downloadTask;
            this.f61421c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61420b, this.f61421c.getDown_status());
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61423b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61424c;

        d(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61423b = val$downloadTask;
            this.f61424c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61423b, this.f61424c.getDown_status());
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61426b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ FightMainTable f61427c;

        e(final DownloadTask val$downloadTask, final FightMainTable val$fightMainTable) {
            this.f61426b = val$downloadTask;
            this.f61427c = val$fightMainTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f61426b;
            if (downloadTask != null) {
                if (downloadTask.getStatus() == 5) {
                    d0.this.d(this.f61426b, this.f61427c.getDown_status());
                } else {
                    IntentUtil.getInstance().goGameDetialActivity(d0.this.f61395c, this.f61426b.getCrc_link_type_val(), this.f61426b.getGame_info_tpl_type(), this.f61426b.getSp_tpl_two_position(), 0);
                }
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FightMainTable f61429b;

        f(final FightMainTable val$fightMainTable) {
            this.f61429b = val$fightMainTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(this.f61429b.getJump_type());
            intentDateBean.setLink_type(this.f61429b.getLink_type());
            intentDateBean.setLink_type_val(this.f61429b.getLink_type_val());
            intentDateBean.setTpl_type(this.f61429b.getTpl_type());
            intentDateBean.setCrc_link_type_val(this.f61429b.getCrc_link_type_val());
            IntentUtil.getInstance().intentActivity(d0.this.f61395c, intentDateBean);
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61431b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ FightMainTable f61432c;

        g(final DownloadTask val$downloadTask, final FightMainTable val$fightMainTable) {
            this.f61431b = val$downloadTask;
            this.f61432c = val$fightMainTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadTask downloadTask = this.f61431b;
            if (downloadTask != null) {
                if (downloadTask.getStatus() == 5) {
                    d0.this.d(this.f61431b, this.f61432c.getDown_status());
                } else {
                    IntentUtil.getInstance().goGameDetialActivity(d0.this.f61395c, this.f61431b.getCrc_link_type_val(), this.f61431b.getGame_info_tpl_type(), this.f61431b.getSp_tpl_two_position(), 0);
                }
            }
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ FightMainTable f61434b;

        h(final FightMainTable val$fightMainTableRight) {
            this.f61434b = val$fightMainTableRight;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setJump_type(this.f61434b.getJump_type());
            intentDateBean.setLink_type(this.f61434b.getLink_type());
            intentDateBean.setLink_type_val(this.f61434b.getLink_type_val());
            intentDateBean.setTpl_type(this.f61434b.getTpl_type());
            intentDateBean.setCrc_link_type_val(this.f61434b.getCrc_link_type_val());
            IntentUtil.getInstance().intentActivity(d0.this.f61395c, intentDateBean);
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61436b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61437c;

        i(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61436b = val$downloadTask;
            this.f61437c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61436b, this.f61437c.getDown_status());
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61440c;

        j(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61439b = val$downloadTask;
            this.f61440c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61439b, this.f61440c.getDown_status());
        }
    }

    class k implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61442b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61443c;

        k(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61442b = val$downloadTask;
            this.f61443c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61442b, this.f61443c.getDown_status());
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61446c;

        l(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61445b = val$downloadTask;
            this.f61446c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61445b, this.f61446c.getDown_status());
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f61448b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WarMatchAndLocalTable f61449c;

        m(final DownloadTask val$downloadTask, final WarMatchAndLocalTable val$fightSubGameInfoDataBean) {
            this.f61448b = val$downloadTask;
            this.f61449c = val$fightSubGameInfoDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d0.this.g(this.f61448b, this.f61449c.getDown_status());
        }
    }

    public class n {
        public ProgressBar A;
        public ProgressBar B;
        public ProgressBar C;
        public ProgressBar D;
        TextView E;
        TextView F;
        TextView G;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f61451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        LinearLayout f61452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        LinearLayout f61453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f61454d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f61455e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SimpleDraweeView f61456f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ImageView f61457g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        ImageView f61458h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        ImageView f61459i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        ImageView f61460j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        ImageView f61461k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        ImageView f61462l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        LinearLayout f61463m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        LinearLayout f61464n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        LinearLayout f61465o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        TextView f61466p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        TextView f61467q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        TextView f61468r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public TextView f61469s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public TextView f61470t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public TextView f61471u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public TextView f61472v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public TextView f61473w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public TextView f61474x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public ProgressBar f61475y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public ProgressBar f61476z;

        public n() {
        }
    }

    class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f61477a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        SimpleDraweeView f61478b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f61479c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f61480d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        RelativeLayout f61481e;

        o() {
        }
    }

    class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        LinearLayout f61483a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f61484b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f61485c;

        p() {
        }
    }

    public d0(Fragment _context) {
        this.f61395c = _context.getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(DownloadTask downloadTask, int down_status) {
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (UtilsMy.y0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            status = 43;
        }
        if (status != 0 && status != 43) {
            if (status != 2) {
                if (status != 3) {
                    if (status == 5) {
                        UtilsMy.k4(this.f61395c, downloadTask);
                        return;
                    }
                    if (status != 6) {
                        if (status != 7) {
                            switch (status) {
                                case 9:
                                    int downloadType = downloadTask.getDownloadType();
                                    if (downloadType == 0 || downloadType == 1) {
                                        if (!com.join.android.app.common.utils.m.j(this.f61395c)) {
                                            com.join.mgps.Util.a3.b(this.f61395c).d("无网络连接");
                                        } else {
                                            UtilsMy.X2(this.f61395c, downloadTask);
                                        }
                                        break;
                                    } else if (downloadType == 2) {
                                        UtilsMy.R4(downloadTask);
                                        break;
                                    }
                                    break;
                                case 11:
                                    UtilsMy.w4(downloadTask, this.f61395c);
                                    break;
                            }
                            return;
                        }
                    }
                }
                com.php25.PDownload.d.c(downloadTask, this.f61395c);
                return;
            }
            com.join.mgps.Util.a3.b(this.f61395c).d(downloadTask.getShowName() + "正在下载");
            return;
        }
        com.join.mgps.Util.a3.b(this.f61395c).d(downloadTask.getShowName() + "开始下载");
        if (UtilsMy.y0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(this.f61395c, downloadTask.getCrc_link_type_val());
        } else {
            if (UtilsMy.o1(this.f61395c, downloadTask)) {
                return;
            }
            if (down_status == 5) {
                UtilsMy.l1(this.f61395c, downloadTask);
            } else {
                UtilsMy.U0(this.f61395c, downloadTask, downloadTask.getTp_down_url(), downloadTask.getOther_down_switch(), downloadTask.getCdn_down_switch());
            }
        }
    }

    private Map<String, DownloadTask> e(int k10, int titlePos, List<WarMatchAndLocalTable> fightSubGameInfoDataBeans) {
        DownloadTask downloadTask;
        DownloadTask downloadTask2;
        DownloadTask downloadTask3;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        int i10 = (k10 - (titlePos + 1)) * 3;
        try {
            WarMatchAndLocalTable warMatchAndLocalTable = fightSubGameInfoDataBeans.get(i10);
            if (this.f61396d.containsKey(warMatchAndLocalTable.getCrc_link_type_val()) && (downloadTask3 = this.f61396d.get(warMatchAndLocalTable.getCrc_link_type_val())) != null) {
                concurrentHashMap.put("Left", downloadTask3);
            }
            int i11 = i10 + 1;
            if (i11 < fightSubGameInfoDataBeans.size()) {
                WarMatchAndLocalTable warMatchAndLocalTable2 = fightSubGameInfoDataBeans.get(i11);
                if (this.f61396d.containsKey(warMatchAndLocalTable2.getCrc_link_type_val()) && (downloadTask2 = this.f61396d.get(warMatchAndLocalTable2.getCrc_link_type_val())) != null) {
                    concurrentHashMap.put("Mid", downloadTask2);
                }
            }
            int i12 = i10 + 2;
            if (i12 < fightSubGameInfoDataBeans.size()) {
                WarMatchAndLocalTable warMatchAndLocalTable3 = fightSubGameInfoDataBeans.get(i12);
                if (this.f61396d.containsKey(warMatchAndLocalTable3.getCrc_link_type_val()) && (downloadTask = this.f61396d.get(warMatchAndLocalTable3.getCrc_link_type_val())) != null) {
                    concurrentHashMap.put("Right", downloadTask);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return concurrentHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(DownloadTask downloadTask, int down_status) {
        if (downloadTask != null) {
            int status = downloadTask.getStatus();
            if (UtilsMy.y0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
                status = 43;
            }
            switch (status) {
                case 0:
                    if (UtilsMy.y0(downloadTask.getPay_game_amount(), downloadTask.getCrc_link_type_val()) > 0) {
                        UtilsMy.z4(this.f61395c, downloadTask.getCrc_link_type_val());
                        break;
                    } else if (!UtilsMy.o1(this.f61395c, downloadTask)) {
                        if (down_status != 5) {
                            UtilsMy.U0(this.f61395c, downloadTask, downloadTask.getTp_down_url(), downloadTask.getOther_down_switch(), downloadTask.getCdn_down_switch());
                        } else {
                            UtilsMy.l1(this.f61395c, downloadTask);
                        }
                        break;
                    }
                    break;
                case 1:
                case 3:
                case 6:
                    com.php25.PDownload.d.c(downloadTask, this.f61395c);
                    break;
                case 2:
                case 10:
                    com.php25.PDownload.d.i(downloadTask);
                    break;
                case 5:
                    if (downloadTask.getGameZipPath() != null) {
                        if (!new File(downloadTask.getGameZipPath()).exists()) {
                            com.php25.PDownload.d.a(downloadTask);
                            com.php25.PDownload.d.c(downloadTask, this.f61395c);
                            downloadTask.setStatus(3);
                        } else {
                            UtilsMy.k4(this.f61395c, downloadTask);
                        }
                    }
                    break;
                case 7:
                    com.php25.PDownload.d.c(downloadTask, this.f61395c);
                    break;
                case 9:
                    int downloadType = downloadTask.getDownloadType();
                    if (downloadType == 0 || downloadType == 1) {
                        if (!com.join.android.app.common.utils.m.j(this.f61395c)) {
                            com.join.mgps.Util.a3.b(this.f61395c).d("无网络连接");
                        } else {
                            UtilsMy.X2(this.f61395c, downloadTask);
                        }
                        break;
                    } else if (downloadType == 2) {
                        UtilsMy.R4(downloadTask);
                        break;
                    }
                    break;
                case 11:
                    UtilsMy.w4(downloadTask, this.f61395c);
                    break;
            }
        }
    }

    public LoadWarCenterBean f() {
        return this.f61405m;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f61413u;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        if (getItemViewType(i10) == 2) {
            int i11 = this.f61407o;
            if (i11 > 0 && i10 <= i11 + ((this.f61399g.size() + 2) / 3)) {
                return e(i10, this.f61407o, this.f61399g);
            }
            int i12 = this.f61408p;
            if (i12 > 0 && i10 <= i12 + ((this.f61400h.size() + 2) / 3)) {
                return e(i10, this.f61408p, this.f61400h);
            }
            int i13 = this.f61409q;
            if (i13 > 0 && i10 <= i13 + ((this.f61401i.size() + 2) / 3)) {
                return e(i10, this.f61409q, this.f61401i);
            }
            int i14 = this.f61410r;
            if (i14 > 0 && i10 <= i14 + ((this.f61402j.size() + 2) / 3)) {
                return e(i10, this.f61410r, this.f61402j);
            }
            int i15 = this.f61411s;
            if (i15 > 0 && i10 <= i15 + ((this.f61403k.size() + 2) / 3)) {
                return e(i10, this.f61411s, this.f61403k);
            }
            int i16 = this.f61412t;
            if (i16 > 0 && i10 <= i16 + ((this.f61404l.size() + 2) / 3)) {
                return e(i10, this.f61412t, this.f61404l);
            }
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        int i10 = this.f61407o;
        if (position < i10) {
            return 0;
        }
        return (position == i10 || position == this.f61408p || position == this.f61409q || position == this.f61410r || position == this.f61411s || position == this.f61412t) ? 1 : 2;
    }

    @Override // android.widget.Adapter
    public View getView(final int i10, View view, ViewGroup viewGroup) {
        o oVar;
        n nVar;
        o oVar2;
        n nVar2;
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            sb2.append(";total=");
            sb2.append(getCount());
            int itemViewType = getItemViewType(i10);
            p pVar = null;
            if (view == null) {
                if (itemViewType == 0) {
                    o oVar3 = new o();
                    view = LayoutInflater.from(this.f61395c).inflate(R.layout.fight_hot_game_item, (ViewGroup) null);
                    oVar3.f61477a = (SimpleDraweeView) view.findViewById(R.id.fightImgLeft);
                    oVar3.f61478b = (SimpleDraweeView) view.findViewById(R.id.fightImgRight);
                    oVar3.f61479c = (ImageView) view.findViewById(R.id.fightIconLeft);
                    oVar3.f61480d = (ImageView) view.findViewById(R.id.fightIconRight);
                    oVar3.f61481e = (RelativeLayout) view.findViewById(R.id.fightLayoutRight);
                    view.setTag(oVar3);
                    oVar2 = oVar3;
                    nVar2 = null;
                } else if (itemViewType == 1) {
                    p pVar2 = new p();
                    view = LayoutInflater.from(this.f61395c).inflate(R.layout.fight_type_title, (ViewGroup) null);
                    pVar2.f61484b = (TextView) view.findViewById(R.id.fightTitle);
                    pVar2.f61485c = (TextView) view.findViewById(R.id.fightSubTitle);
                    pVar2.f61483a = (LinearLayout) view.findViewById(R.id.linearLayoutMFight);
                    view.setTag(pVar2);
                    nVar2 = null;
                    pVar = pVar2;
                    oVar2 = null;
                } else if (itemViewType != 2) {
                    oVar2 = null;
                    nVar2 = null;
                } else {
                    nVar2 = new n();
                    view = LayoutInflater.from(this.f61395c).inflate(R.layout.fight_game_item, (ViewGroup) null);
                    nVar2.f61451a = (LinearLayout) view.findViewById(R.id.fightLayoutLeft);
                    nVar2.f61452b = (LinearLayout) view.findViewById(R.id.fightLayoutMid);
                    nVar2.f61453c = (LinearLayout) view.findViewById(R.id.fightLayoutRight);
                    nVar2.f61454d = (SimpleDraweeView) view.findViewById(R.id.fightImgLeft);
                    nVar2.f61455e = (SimpleDraweeView) view.findViewById(R.id.fightImgMid);
                    nVar2.f61456f = (SimpleDraweeView) view.findViewById(R.id.fightImgRight);
                    nVar2.f61457g = (ImageView) view.findViewById(R.id.statusImgLeft);
                    nVar2.f61458h = (ImageView) view.findViewById(R.id.statusImgMid);
                    nVar2.f61459i = (ImageView) view.findViewById(R.id.statusImgRight);
                    nVar2.f61460j = (ImageView) view.findViewById(R.id.tagImgLeft);
                    nVar2.f61461k = (ImageView) view.findViewById(R.id.tagImgMid);
                    nVar2.f61462l = (ImageView) view.findViewById(R.id.tagImgRight);
                    nVar2.f61463m = (LinearLayout) view.findViewById(R.id.downloadStatusLeft);
                    nVar2.f61464n = (LinearLayout) view.findViewById(R.id.downloadStatusMid);
                    nVar2.f61465o = (LinearLayout) view.findViewById(R.id.downloadStatusRight);
                    nVar2.f61466p = (TextView) view.findViewById(R.id.statusBtnLeft);
                    nVar2.f61467q = (TextView) view.findViewById(R.id.statusBtnMid);
                    nVar2.f61468r = (TextView) view.findViewById(R.id.statusBtnRight);
                    nVar2.f61469s = (TextView) view.findViewById(R.id.appSizeTvLeft);
                    nVar2.f61470t = (TextView) view.findViewById(R.id.appSizeTvMid);
                    nVar2.f61471u = (TextView) view.findViewById(R.id.appSizeTvRight);
                    nVar2.f61472v = (TextView) view.findViewById(R.id.speedTvLeft);
                    nVar2.f61473w = (TextView) view.findViewById(R.id.speedTvMid);
                    nVar2.f61474x = (TextView) view.findViewById(R.id.speedTvRight);
                    nVar2.E = (TextView) view.findViewById(R.id.fightNameTvLeft);
                    nVar2.F = (TextView) view.findViewById(R.id.fightNameTvMid);
                    nVar2.G = (TextView) view.findViewById(R.id.fightNameIvRight);
                    nVar2.f61475y = (ProgressBar) view.findViewById(R.id.progressBarZipLeft);
                    nVar2.f61476z = (ProgressBar) view.findViewById(R.id.progressBarZipMid);
                    nVar2.A = (ProgressBar) view.findViewById(R.id.progressBarZipRight);
                    nVar2.B = (ProgressBar) view.findViewById(R.id.progressBarLeft);
                    nVar2.C = (ProgressBar) view.findViewById(R.id.progressBarMid);
                    nVar2.D = (ProgressBar) view.findViewById(R.id.progressBarRight);
                    view.setTag(nVar2);
                    oVar2 = null;
                }
                oVar = oVar2;
                nVar = nVar2;
            } else if (itemViewType == 0) {
                oVar = (o) view.getTag();
                nVar = null;
            } else if (itemViewType == 1) {
                oVar = null;
                pVar = (p) view.getTag();
                nVar = null;
            } else if (itemViewType != 2) {
                nVar = null;
                oVar = null;
            } else {
                nVar = (n) view.getTag();
                oVar = null;
            }
            if (itemViewType == 0) {
                List<FightMainTable> list = this.f61397e;
                if (list != null && list.size() > 0) {
                    int i11 = i10 * 2;
                    FightMainTable fightMainTable = this.f61397e.get(i11);
                    if (com.join.mgps.Util.t2.i(fightMainTable.getPic_remote())) {
                        com.join.android.app.common.utils.l.f(oVar.f61477a, R.drawable.main_normal_icon, fightMainTable.getPic_remote(), com.join.android.app.common.utils.l.E(this.f61395c));
                    } else {
                        oVar.f61477a.setImageDrawable(this.f61395c.getResources().getDrawable(R.drawable.main_normal_icon));
                    }
                    if (fightMainTable.getLink_type() != 1) {
                        oVar.f61477a.setOnClickListener(new f(fightMainTable));
                    } else if (this.f61396d.containsKey(fightMainTable.getCrc_link_type_val())) {
                        DownloadTask downloadTask = this.f61396d.get(fightMainTable.getCrc_link_type_val());
                        if (downloadTask == null || downloadTask.getStatus() != 5) {
                            oVar.f61479c.setVisibility(8);
                        } else {
                            oVar.f61479c.setVisibility(0);
                        }
                        UtilsMy.w1(downloadTask, fightMainTable);
                        oVar.f61477a.setOnClickListener(new e(downloadTask, fightMainTable));
                    } else {
                        oVar.f61479c.setVisibility(8);
                    }
                    int i12 = i11 + 1;
                    if (i12 < this.f61397e.size()) {
                        oVar.f61481e.setVisibility(0);
                        oVar.f61478b.setImageDrawable(this.f61395c.getResources().getDrawable(R.drawable.main_normal_icon));
                        FightMainTable fightMainTable2 = this.f61397e.get(i12);
                        if (com.join.mgps.Util.t2.i(fightMainTable2.getPic_remote())) {
                            com.join.android.app.common.utils.l.f(oVar.f61478b, R.drawable.main_normal_icon, fightMainTable2.getPic_remote(), com.join.android.app.common.utils.l.E(this.f61395c));
                        } else {
                            oVar.f61477a.setImageDrawable(this.f61395c.getResources().getDrawable(R.drawable.main_normal_icon));
                        }
                        if (fightMainTable2.getLink_type() == 1) {
                            DownloadTask downloadTask2 = this.f61396d.get(fightMainTable2.getCrc_link_type_val());
                            if (downloadTask2 == null || downloadTask2.getStatus() != 5) {
                                oVar.f61480d.setVisibility(8);
                            } else {
                                oVar.f61480d.setVisibility(0);
                            }
                            UtilsMy.w1(downloadTask2, fightMainTable);
                            oVar.f61478b.setOnClickListener(new g(downloadTask2, fightMainTable));
                        } else {
                            oVar.f61478b.setOnClickListener(new h(fightMainTable2));
                        }
                    } else {
                        oVar.f61481e.setVisibility(4);
                    }
                }
            } else if (itemViewType == 1) {
                int i13 = this.f61407o;
                if (i13 == i10) {
                    pVar.f61483a.setVisibility(0);
                    List<WarMatchAndLocalTable> list2 = this.f61399g;
                    if (list2 != null && list2.size() > 0) {
                        pVar.f61484b.setText(this.f61399g.get(0).getMain_title());
                        pVar.f61485c.setText(this.f61399g.get(0).getMain_sub_title());
                    }
                } else {
                    int i14 = this.f61408p;
                    if (i14 == i10) {
                        pVar.f61483a.setVisibility(0);
                        List<WarMatchAndLocalTable> list3 = this.f61400h;
                        if (list3 != null && list3.size() > 0) {
                            pVar.f61484b.setText(this.f61400h.get(0).getMain_title());
                            pVar.f61485c.setText(this.f61400h.get(0).getMain_sub_title());
                        }
                    } else {
                        int i15 = this.f61409q;
                        if (i15 == i10) {
                            pVar.f61483a.setVisibility(0);
                            List<WarMatchAndLocalTable> list4 = this.f61401i;
                            if (list4 != null && list4.size() > 0) {
                                pVar.f61484b.setText(this.f61401i.get(0).getMain_title());
                                pVar.f61485c.setText(this.f61401i.get(0).getMain_sub_title());
                            }
                        } else {
                            int i16 = this.f61410r;
                            if (i16 == i10) {
                                pVar.f61483a.setVisibility(0);
                                List<WarMatchAndLocalTable> list5 = this.f61402j;
                                if (list5 != null && list5.size() > 0) {
                                    pVar.f61484b.setText(this.f61402j.get(0).getMain_title());
                                    pVar.f61485c.setText(this.f61402j.get(0).getMain_sub_title());
                                }
                            } else {
                                int i17 = this.f61411s;
                                if (i17 == i10) {
                                    pVar.f61483a.setVisibility(0);
                                    List<WarMatchAndLocalTable> list6 = this.f61403k;
                                    if (list6 != null && list6.size() > 0) {
                                        pVar.f61484b.setText(this.f61403k.get(0).getMain_title());
                                        pVar.f61485c.setText(this.f61403k.get(0).getMain_sub_title());
                                    }
                                } else {
                                    int i18 = this.f61412t;
                                    if (i18 == i10) {
                                        pVar.f61483a.setVisibility(0);
                                        List<WarMatchAndLocalTable> list7 = this.f61404l;
                                        if (list7 != null && list7.size() > 0) {
                                            pVar.f61484b.setText(this.f61404l.get(0).getMain_title());
                                            pVar.f61485c.setText(this.f61404l.get(0).getMain_sub_title());
                                        }
                                    } else if (i13 == 0 || i14 == 0 || i15 == 0 || i16 == 0 || i17 == 0 || i18 == 0) {
                                        pVar.f61483a.setVisibility(8);
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (itemViewType == 2) {
                int i19 = this.f61407o;
                if (i19 > 0 && i10 <= i19 + ((this.f61399g.size() + 2) / 3)) {
                    i(i10, this.f61407o, this.f61399g, nVar);
                }
                int i20 = this.f61408p;
                if (i20 > 0 && i10 <= i20 + ((this.f61400h.size() + 2) / 3)) {
                    i(i10, this.f61408p, this.f61400h, nVar);
                }
                int i21 = this.f61409q;
                if (i21 > 0 && i10 <= i21 + ((this.f61401i.size() + 2) / 3)) {
                    i(i10, this.f61409q, this.f61401i, nVar);
                }
                int i22 = this.f61410r;
                if (i22 > 0 && i10 <= i22 + ((this.f61402j.size() + 2) / 3)) {
                    i(i10, this.f61410r, this.f61402j, nVar);
                }
                int i23 = this.f61411s;
                if (i23 > 0 && i10 <= i23 + ((this.f61403k.size() + 2) / 3)) {
                    i(i10, this.f61411s, this.f61403k, nVar);
                }
                int i24 = this.f61412t;
                if (i24 > 0 && i10 <= i24 + ((this.f61404l.size() + 2) / 3)) {
                    i(i10, this.f61412t, this.f61404l, nVar);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 4;
    }

    public void h(LoadWarCenterBean loadWarCenterBean) {
        this.f61405m = loadWarCenterBean;
        this.f61396d = loadWarCenterBean.getDownloadTasksMap();
        this.f61397e = this.f61405m.getFightMainTables();
        this.f61398f = this.f61405m.getWaradInfoDataBeans();
        this.f61399g = this.f61405m.getHotGameInfoDataBeans();
        this.f61400h = this.f61405m.getPkGameInfoDataBeans();
        this.f61401i = this.f61405m.getPkPassInfoDataBeans();
        this.f61402j = this.f61405m.getPkMatchingInfoDataBeans();
        this.f61403k = this.f61405m.getPkLocalInfoDataBeans();
        this.f61404l = this.f61405m.getPkRoomInfoDataBeans();
        this.f61413u = 0;
        for (int i10 = 0; i10 < 7; i10++) {
            switch (i10) {
                case 0:
                    List<FightMainTable> list = this.f61397e;
                    if (list != null && list.size() > 0) {
                        int size = this.f61413u + ((this.f61397e.size() + 1) / 2);
                        this.f61407o = size;
                        this.f61406n = size;
                        this.f61413u = size;
                    }
                    break;
                case 1:
                    List<WarMatchAndLocalTable> list2 = this.f61399g;
                    if (list2 == null || list2.size() <= 0) {
                        this.f61407o = 0;
                    } else {
                        int size2 = this.f61413u + 1 + ((this.f61399g.size() + 2) / 3);
                        this.f61408p = size2;
                        this.f61413u = size2;
                    }
                    break;
                case 2:
                    List<WarMatchAndLocalTable> list3 = this.f61400h;
                    if (list3 == null || list3.size() <= 0) {
                        this.f61408p = 0;
                    } else {
                        int size3 = this.f61413u + 1 + ((this.f61400h.size() + 2) / 3);
                        this.f61409q = size3;
                        this.f61413u = size3;
                    }
                    break;
                case 3:
                    List<WarMatchAndLocalTable> list4 = this.f61401i;
                    if (list4 == null || list4.size() <= 0) {
                        this.f61409q = 0;
                    } else {
                        int size4 = this.f61413u + 1 + ((this.f61401i.size() + 2) / 3);
                        this.f61410r = size4;
                        this.f61413u = size4;
                    }
                    break;
                case 4:
                    List<WarMatchAndLocalTable> list5 = this.f61402j;
                    if (list5 == null || list5.size() <= 0) {
                        this.f61410r = 0;
                    } else {
                        int size5 = this.f61413u + 1 + ((this.f61402j.size() + 2) / 3);
                        this.f61411s = size5;
                        this.f61413u = size5;
                    }
                    break;
                case 5:
                    List<WarMatchAndLocalTable> list6 = this.f61403k;
                    if (list6 == null || list6.size() <= 0) {
                        this.f61411s = 0;
                    } else {
                        int size6 = this.f61413u + 1 + ((this.f61403k.size() + 2) / 3);
                        this.f61412t = size6;
                        this.f61413u = size6;
                    }
                    break;
                case 6:
                    List<WarMatchAndLocalTable> list7 = this.f61404l;
                    if (list7 == null || list7.size() <= 0) {
                        this.f61412t = 0;
                    } else {
                        this.f61413u = this.f61413u + 1 + ((this.f61404l.size() + 2) / 3);
                    }
                    break;
            }
        }
        notifyDataSetChanged();
    }

    void i(int k10, int titlePos, List<WarMatchAndLocalTable> fightSubGameInfoDataBeans, n viewHolderFight) {
        DownloadTask downloadTask;
        int i10 = titlePos + 1;
        if (k10 < i10) {
            return;
        }
        int i11 = (k10 - i10) * 3;
        WarMatchAndLocalTable warMatchAndLocalTable = fightSubGameInfoDataBeans.get(i11);
        if (this.f61396d.containsKey(warMatchAndLocalTable.getCrc_link_type_val()) && (downloadTask = this.f61396d.get(warMatchAndLocalTable.getCrc_link_type_val())) != null) {
            UtilsMy.x1(downloadTask, warMatchAndLocalTable);
            if (com.join.mgps.Util.t2.i(downloadTask.getFight_screenshot_pic())) {
                com.join.android.app.common.utils.l.f(viewHolderFight.f61454d, R.drawable.main_normal_icon, downloadTask.getFight_screenshot_pic(), com.join.android.app.common.utils.l.E(this.f61395c));
            } else {
                com.join.android.app.common.utils.l.f(viewHolderFight.f61454d, R.drawable.main_normal_icon, downloadTask.getScreenshot_pic(), com.join.android.app.common.utils.l.E(this.f61395c));
            }
            viewHolderFight.E.setText(downloadTask.getShowName());
            if (downloadTask.getStatus() == 5) {
                viewHolderFight.f61463m.setVisibility(8);
                viewHolderFight.f61457g.setVisibility(8);
                viewHolderFight.f61460j.setVisibility(0);
                viewHolderFight.f61451a.setOnClickListener(new i(downloadTask, warMatchAndLocalTable));
            } else if (downloadTask.getStatus() == 7 || downloadTask.getStatus() == 0) {
                viewHolderFight.f61463m.setVisibility(8);
                viewHolderFight.f61457g.setVisibility(8);
                viewHolderFight.f61460j.setVisibility(8);
                viewHolderFight.f61451a.setOnClickListener(new j(downloadTask, warMatchAndLocalTable));
            } else {
                viewHolderFight.f61463m.setVisibility(0);
                viewHolderFight.f61457g.setVisibility(0);
                viewHolderFight.f61460j.setVisibility(8);
                viewHolderFight.f61466p.setOnClickListener(new k(downloadTask, warMatchAndLocalTable));
                long j10 = (long) (Double.parseDouble(warMatchAndLocalTable.getAppSize()) * 1024.0d * 1024.0d);
                int status = downloadTask.getStatus();
                if (status == 2) {
                    viewHolderFight.f61466p.setBackgroundResource(R.drawable.fight_blue_butn);
                    viewHolderFight.f61466p.setText("暂停");
                    viewHolderFight.f61469s.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    viewHolderFight.f61472v.setText(downloadTask.getSpeed() + "/S");
                    viewHolderFight.B.setVisibility(0);
                    viewHolderFight.f61475y.setVisibility(8);
                    viewHolderFight.B.setProgress((int) downloadTask.getProgress());
                } else if (status == 3 || status == 6) {
                    viewHolderFight.f61466p.setBackgroundResource(R.drawable.fight_blue_butn);
                    viewHolderFight.f61466p.setText("继续");
                    viewHolderFight.f61469s.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    viewHolderFight.f61472v.setText("暂停中");
                    viewHolderFight.B.setVisibility(0);
                    viewHolderFight.f61475y.setVisibility(8);
                    viewHolderFight.B.setProgress((int) downloadTask.getProgress());
                } else if (status == 27) {
                    viewHolderFight.f61466p.setText("暂停中");
                } else if (status == 9) {
                    viewHolderFight.f61466p.setBackgroundResource(R.drawable.fight_green_butn);
                    viewHolderFight.f61466p.setText("更新");
                    viewHolderFight.f61469s.setVisibility(8);
                    viewHolderFight.f61472v.setVisibility(8);
                    viewHolderFight.B.setVisibility(8);
                    viewHolderFight.f61475y.setVisibility(8);
                } else if (status == 10) {
                    viewHolderFight.f61466p.setBackgroundResource(R.drawable.fight_blue_butn);
                    viewHolderFight.f61466p.setText("等待");
                    viewHolderFight.f61469s.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    viewHolderFight.f61472v.setText("等待中");
                    viewHolderFight.B.setVisibility(0);
                    viewHolderFight.f61475y.setVisibility(8);
                    viewHolderFight.B.setProgress((int) downloadTask.getProgress());
                } else if (status == 12) {
                    viewHolderFight.f61466p.setBackgroundResource(R.drawable.fight_grey_butn);
                    viewHolderFight.f61466p.setText("解压中");
                    viewHolderFight.f61469s.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    viewHolderFight.f61472v.setText("解压中..");
                    viewHolderFight.B.setVisibility(8);
                    viewHolderFight.f61475y.setVisibility(0);
                    viewHolderFight.f61475y.setProgress((int) downloadTask.getProgress());
                } else if (status == 13) {
                    viewHolderFight.f61466p.setBackgroundResource(R.drawable.fight_blue_butn);
                    viewHolderFight.f61466p.setText("解压");
                    viewHolderFight.f61469s.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    viewHolderFight.f61472v.setText("点击重新解压");
                    viewHolderFight.B.setVisibility(8);
                    viewHolderFight.f61475y.setVisibility(0);
                    viewHolderFight.f61475y.setProgress((int) downloadTask.getProgress());
                }
            }
        }
        int i12 = i11 + 1;
        if (i12 < fightSubGameInfoDataBeans.size()) {
            viewHolderFight.f61452b.setVisibility(0);
            WarMatchAndLocalTable warMatchAndLocalTable2 = fightSubGameInfoDataBeans.get(i12);
            DownloadTask downloadTask2 = this.f61396d.get(warMatchAndLocalTable2.getCrc_link_type_val());
            if (downloadTask2 != null) {
                if (com.join.mgps.Util.t2.i(downloadTask2.getFight_screenshot_pic())) {
                    com.join.android.app.common.utils.l.f(viewHolderFight.f61455e, R.drawable.main_normal_icon, downloadTask2.getFight_screenshot_pic(), com.join.android.app.common.utils.l.E(this.f61395c));
                } else {
                    com.join.android.app.common.utils.l.f(viewHolderFight.f61455e, R.drawable.main_normal_icon, downloadTask2.getScreenshot_pic(), com.join.android.app.common.utils.l.E(this.f61395c));
                }
                long j11 = (long) (Double.parseDouble(warMatchAndLocalTable2.getAppSize()) * 1024.0d * 1024.0d);
                viewHolderFight.F.setText(downloadTask2.getShowName());
                if (downloadTask2.getStatus() == 5) {
                    viewHolderFight.f61464n.setVisibility(8);
                    viewHolderFight.f61458h.setVisibility(8);
                    viewHolderFight.f61461k.setVisibility(0);
                    viewHolderFight.f61452b.setOnClickListener(new l(downloadTask2, warMatchAndLocalTable));
                } else if (downloadTask2.getStatus() == 7 || downloadTask2.getStatus() == 0) {
                    viewHolderFight.f61464n.setVisibility(8);
                    viewHolderFight.f61458h.setVisibility(8);
                    viewHolderFight.f61461k.setVisibility(8);
                    viewHolderFight.f61452b.setOnClickListener(new m(downloadTask2, warMatchAndLocalTable));
                } else {
                    viewHolderFight.f61464n.setVisibility(0);
                    viewHolderFight.f61458h.setVisibility(0);
                    viewHolderFight.f61461k.setVisibility(8);
                    viewHolderFight.f61467q.setOnClickListener(new a(downloadTask2, warMatchAndLocalTable));
                    int status2 = downloadTask2.getStatus();
                    if (status2 == 2) {
                        viewHolderFight.f61467q.setBackgroundResource(R.drawable.fight_blue_butn);
                        viewHolderFight.f61467q.setText("暂停");
                        viewHolderFight.f61470t.setText(UtilsMy.c(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                        viewHolderFight.f61473w.setText(downloadTask2.getSpeed() + "/S");
                        viewHolderFight.C.setVisibility(0);
                        viewHolderFight.f61476z.setVisibility(8);
                        viewHolderFight.C.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 3 || status2 == 6) {
                        viewHolderFight.f61467q.setBackgroundResource(R.drawable.fight_blue_butn);
                        viewHolderFight.f61467q.setText("继续");
                        viewHolderFight.f61470t.setText(UtilsMy.c(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                        viewHolderFight.f61473w.setText("暂停中");
                        viewHolderFight.C.setVisibility(0);
                        viewHolderFight.f61476z.setVisibility(8);
                        viewHolderFight.C.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 27) {
                        viewHolderFight.f61467q.setText("暂停中");
                    } else if (status2 == 9) {
                        viewHolderFight.f61467q.setBackgroundResource(R.drawable.fight_green_butn);
                        viewHolderFight.f61467q.setText("更新");
                        viewHolderFight.f61470t.setVisibility(8);
                        viewHolderFight.f61473w.setVisibility(8);
                        viewHolderFight.C.setVisibility(8);
                        viewHolderFight.f61476z.setVisibility(8);
                    } else if (status2 == 10) {
                        viewHolderFight.f61467q.setBackgroundResource(R.drawable.fight_blue_butn);
                        viewHolderFight.f61467q.setText("等待");
                        viewHolderFight.f61470t.setText(UtilsMy.c(downloadTask2.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                        viewHolderFight.f61473w.setText("等待中");
                        viewHolderFight.C.setVisibility(0);
                        viewHolderFight.f61476z.setVisibility(8);
                        viewHolderFight.C.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 12) {
                        viewHolderFight.f61467q.setBackgroundResource(R.drawable.fight_grey_butn);
                        viewHolderFight.f61467q.setText("解压中");
                        viewHolderFight.f61470t.setText(UtilsMy.c(j11) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                        viewHolderFight.f61473w.setText("解压中..");
                        viewHolderFight.C.setVisibility(8);
                        viewHolderFight.f61476z.setVisibility(0);
                        viewHolderFight.f61476z.setProgress((int) downloadTask2.getProgress());
                    } else if (status2 == 13) {
                        viewHolderFight.f61467q.setBackgroundResource(R.drawable.fight_blue_butn);
                        viewHolderFight.f61467q.setText("解压");
                        viewHolderFight.f61470t.setText(UtilsMy.c(j11) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j11));
                        viewHolderFight.f61473w.setText("点击重新解压");
                        viewHolderFight.C.setVisibility(8);
                        viewHolderFight.f61476z.setVisibility(0);
                        viewHolderFight.f61476z.setProgress((int) downloadTask2.getProgress());
                    }
                }
            }
        } else {
            viewHolderFight.f61452b.setVisibility(4);
        }
        int i13 = i11 + 2;
        if (i13 >= fightSubGameInfoDataBeans.size()) {
            viewHolderFight.f61453c.setVisibility(4);
            return;
        }
        viewHolderFight.f61453c.setVisibility(0);
        WarMatchAndLocalTable warMatchAndLocalTable3 = fightSubGameInfoDataBeans.get(i13);
        DownloadTask downloadTask3 = this.f61396d.get(warMatchAndLocalTable3.getCrc_link_type_val());
        if (downloadTask3 != null) {
            if (com.join.mgps.Util.t2.i(downloadTask3.getFight_screenshot_pic())) {
                com.join.android.app.common.utils.l.f(viewHolderFight.f61456f, R.drawable.main_normal_icon, downloadTask3.getFight_screenshot_pic(), com.join.android.app.common.utils.l.E(this.f61395c));
            } else {
                com.join.android.app.common.utils.l.f(viewHolderFight.f61456f, R.drawable.main_normal_icon, downloadTask3.getScreenshot_pic(), com.join.android.app.common.utils.l.E(this.f61395c));
            }
            long j12 = (long) (Double.parseDouble(warMatchAndLocalTable3.getAppSize()) * 1024.0d * 1024.0d);
            viewHolderFight.G.setText(downloadTask3.getShowName());
            if (downloadTask3.getStatus() == 5) {
                viewHolderFight.f61465o.setVisibility(8);
                viewHolderFight.f61459i.setVisibility(8);
                viewHolderFight.f61462l.setVisibility(0);
                viewHolderFight.f61453c.setOnClickListener(new b(downloadTask3, warMatchAndLocalTable));
                return;
            }
            if (downloadTask3.getStatus() == 7 || downloadTask3.getStatus() == 0) {
                viewHolderFight.f61465o.setVisibility(8);
                viewHolderFight.f61459i.setVisibility(8);
                viewHolderFight.f61462l.setVisibility(8);
                viewHolderFight.f61453c.setOnClickListener(new c(downloadTask3, warMatchAndLocalTable));
                return;
            }
            viewHolderFight.f61465o.setVisibility(0);
            viewHolderFight.f61459i.setVisibility(0);
            viewHolderFight.f61462l.setVisibility(8);
            viewHolderFight.f61468r.setOnClickListener(new d(downloadTask3, warMatchAndLocalTable));
            int status3 = downloadTask3.getStatus();
            if (status3 == 2) {
                viewHolderFight.f61468r.setBackgroundResource(R.drawable.fight_blue_butn);
                viewHolderFight.f61468r.setText("暂停");
                viewHolderFight.f61471u.setText(UtilsMy.c(downloadTask3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j12));
                viewHolderFight.f61474x.setText(downloadTask3.getSpeed() + "/S");
                viewHolderFight.D.setVisibility(0);
                viewHolderFight.A.setVisibility(8);
                viewHolderFight.D.setProgress((int) downloadTask3.getProgress());
                return;
            }
            if (status3 == 3 || status3 == 6) {
                viewHolderFight.f61468r.setBackgroundResource(R.drawable.fight_blue_butn);
                viewHolderFight.f61468r.setText("继续");
                viewHolderFight.f61471u.setText(UtilsMy.c(downloadTask3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j12));
                viewHolderFight.f61474x.setText("暂停中");
                viewHolderFight.D.setVisibility(0);
                viewHolderFight.A.setVisibility(8);
                viewHolderFight.D.setProgress((int) downloadTask3.getProgress());
                return;
            }
            if (status3 == 27) {
                viewHolderFight.f61468r.setText("暂停中");
                return;
            }
            if (status3 == 9) {
                viewHolderFight.f61468r.setBackgroundResource(R.drawable.fight_green_butn);
                viewHolderFight.f61468r.setText("更新");
                viewHolderFight.f61471u.setVisibility(8);
                viewHolderFight.f61474x.setVisibility(8);
                viewHolderFight.D.setVisibility(8);
                viewHolderFight.A.setVisibility(8);
                return;
            }
            if (status3 == 10) {
                viewHolderFight.f61468r.setBackgroundResource(R.drawable.fight_blue_butn);
                viewHolderFight.f61468r.setText("等待");
                viewHolderFight.f61471u.setText(UtilsMy.c(downloadTask3.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j12));
                viewHolderFight.f61474x.setText("等待中");
                viewHolderFight.D.setVisibility(0);
                viewHolderFight.A.setVisibility(8);
                viewHolderFight.D.setProgress((int) downloadTask3.getProgress());
                return;
            }
            if (status3 == 12) {
                viewHolderFight.f61468r.setBackgroundResource(R.drawable.fight_grey_butn);
                viewHolderFight.f61468r.setText("解压中");
                viewHolderFight.f61471u.setText(UtilsMy.c(j12) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j12));
                viewHolderFight.f61474x.setText("解压中..");
                viewHolderFight.D.setVisibility(8);
                viewHolderFight.A.setVisibility(0);
                viewHolderFight.A.setProgress((int) downloadTask3.getProgress());
                return;
            }
            if (status3 != 13) {
                return;
            }
            viewHolderFight.f61468r.setBackgroundResource(R.drawable.fight_blue_butn);
            viewHolderFight.f61468r.setText("解压");
            viewHolderFight.f61471u.setText(UtilsMy.c(j12) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j12));
            viewHolderFight.f61474x.setText("点击重新解压");
            viewHolderFight.D.setVisibility(8);
            viewHolderFight.A.setVisibility(0);
            viewHolderFight.A.setProgress((int) downloadTask3.getProgress());
        }
    }
}
