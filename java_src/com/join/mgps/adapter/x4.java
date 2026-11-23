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
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.PaPaBannerListActivity_;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.customview.InterceptEventHorizontalScrollView;
import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.CollectionInfo;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.dto.StandAloneListBean;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class x4 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<PaPaBean> f63861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f63862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f63863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View.OnClickListener f63864e;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StandAloneListBean.ListBean f63865b;

        a(final StandAloneListBean.ListBean val$data) {
            this.f63865b = val$data;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            TagGameListActivity_.intent(x4.this.f63862c).b(0).c(true).d(this.f63865b.getTitle()).e(Integer.parseInt(this.f63865b.getId())).start();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StandAloneListBean.ListBean f63867b;

        b(final StandAloneListBean.ListBean val$data) {
            this.f63867b = val$data;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            TagGameListActivity_.intent(x4.this.f63862c).b(0).c(true).d(this.f63867b.getTitle()).e(Integer.parseInt(this.f63867b.getId())).start();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ StandAloneListBean.ListBean f63869b;

        c(final StandAloneListBean.ListBean val$data) {
            this.f63869b = val$data;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            TagGameListActivity_.intent(x4.this.f63862c).b(0).c(true).d(this.f63869b.getTitle()).e(Integer.parseInt(this.f63869b.getId())).start();
        }
    }

    public class d extends RecyclerView.Adapter<e> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<AppBean> f63871e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Context f63872f;

        public d(Context context) {
            this.f63872f = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(e holder, int position) {
            c(holder, this.f63871e.get(position));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public e onCreateViewHolder(ViewGroup parent, int viewType) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_standalone_horizontal_item_view, (ViewGroup) null);
            e eVar = x4.this.new e(viewInflate);
            eVar.f63874d = (SimpleDraweeView) viewInflate.findViewById(R.id.image1);
            eVar.f63875e = (TextView) viewInflate.findViewById(R.id.appname1);
            eVar.f63876f = (DownloadNormalView) viewInflate.findViewById(R.id.dv_view);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.rootView);
            eVar.f63877g = linearLayout;
            linearLayout.setOnClickListener(x4.this.f63864e);
            return eVar;
        }

        public void c(e holder, AppBean gameInfoV2_2Bean) {
            holder.f63877g.setTag(gameInfoV2_2Bean);
            holder.f63875e.setText(gameInfoV2_2Bean.getGame_name());
            com.join.android.app.common.utils.l.h(holder.f63874d, gameInfoV2_2Bean.getIco_remote());
            gameInfoV2_2Bean.getDownloadTask();
            holder.f63876f.f(new m6.c(this.f63872f, gameInfoV2_2Bean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f63871e.size();
        }

        public void setListDatas(List<AppBean> datas) {
            this.f63871e.clear();
            this.f63871e.addAll(datas);
        }
    }

    public class e extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        SimpleDraweeView f63874d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f63875e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        DownloadNormalView f63876f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f63877g;

        public e(View itemView) {
            super(itemView);
        }
    }

    public class f extends RecyclerView.Adapter<g> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<StandAloneListBean.ListBean> f63879e = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Context f63880f;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ StandAloneListBean.ListBean f63882b;

            a(final StandAloneListBean.ListBean val$gameInfoV2_2Bean) {
                this.f63882b = val$gameInfoV2_2Bean;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                PaPaBannerListActivity_.intent(f.this.f63880f).e(1).a(true).b(true).c(this.f63882b.getId()).d(this.f63882b.getTitle()).start();
            }
        }

        public f(Context context) {
            this.f63880f = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(g holder, int position) {
            f(holder, this.f63879e.get(position), position);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public g onCreateViewHolder(ViewGroup parent, int viewType) {
            View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_standalone_company_item_view, (ViewGroup) null);
            g gVar = x4.this.new g(viewInflate);
            gVar.f63884d = viewInflate.findViewById(R.id.standAloneLeftVi);
            gVar.f63885e = (RelativeLayout) viewInflate.findViewById(R.id.standAloneCompanyRootRl);
            gVar.f63886f = (TextView) viewInflate.findViewById(R.id.standAloneCompanyTv);
            gVar.f63887g = (SimpleDraweeView) viewInflate.findViewById(R.id.standAloneCompanyIv);
            gVar.f63888h = viewInflate.findViewById(R.id.standAloneRightVi);
            return gVar;
        }

        public void f(g holder, final StandAloneListBean.ListBean gameInfoV2_2Bean, int position) {
            if (position == 0) {
                holder.f63884d.setVisibility(0);
                holder.f63888h.setVisibility(8);
            } else if (position == this.f63879e.size() - 1) {
                holder.f63884d.setVisibility(8);
                holder.f63888h.setVisibility(0);
            } else {
                holder.f63884d.setVisibility(8);
                holder.f63888h.setVisibility(8);
            }
            holder.f63886f.setText(gameInfoV2_2Bean.getTitle());
            holder.f63887g.setImageURI(gameInfoV2_2Bean.getPic());
            holder.f63885e.setOnClickListener(new a(gameInfoV2_2Bean));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f63879e.size();
        }

        public void setListDatas(List<StandAloneListBean.ListBean> datas) {
            this.f63879e.clear();
            this.f63879e.addAll(datas);
        }
    }

    public class g extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        View f63884d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        RelativeLayout f63885e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f63886f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        SimpleDraweeView f63887g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f63888h;

        public g(View itemView) {
            super(itemView);
        }
    }

    public class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RelativeLayout f63890a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SimpleDraweeView f63891b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ImageView f63892c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TextView f63893d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ProgressBar f63894e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ProgressBar f63895f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f63896g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private DownloadNormalView f63897h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private LinearLayout f63898i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f63899j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f63900k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private LinearLayout f63901l;

        public h() {
        }
    }

    static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        InterceptEventHorizontalScrollView f63903a;

        i() {
        }
    }

    public static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public InterceptEventHorizontalScrollView f63904a;
    }

    static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f63905a;

        k() {
        }
    }

    static class l {
        l() {
        }
    }

    public class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private LinearLayout f63906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SimpleDraweeView f63907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private TextView f63908c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinearLayout f63909d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private SimpleDraweeView f63910e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private TextView f63911f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private LinearLayout f63912g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private SimpleDraweeView f63913h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f63914i;

        public m() {
        }
    }

    static class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f63916a;

        n() {
        }
    }

    public x4(Context context, List<PaPaBean> datas) {
        this.f63863d = 1;
        this.f63862c = context;
        this.f63861b = datas;
        this.f63863d = PaPaBean.getTypes() + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(AppBean appBean, View view) {
        IntentUtil.getInstance().intentActivity(this.f63862c, appBean.getIntentDataBean());
    }

    private void f(h viewHolderListItem, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            viewHolderListItem.f63898i.setVisibility(8);
            viewHolderListItem.f63895f.setVisibility(8);
            viewHolderListItem.f63894e.setVisibility(8);
            viewHolderListItem.f63896g.setVisibility(0);
            return;
        }
        viewHolderListItem.f63898i.setVisibility(0);
        if (isZip.booleanValue()) {
            viewHolderListItem.f63895f.setVisibility(8);
            viewHolderListItem.f63894e.setVisibility(0);
        } else {
            viewHolderListItem.f63894e.setVisibility(8);
            viewHolderListItem.f63895f.setVisibility(0);
        }
        viewHolderListItem.f63896g.setVisibility(8);
    }

    private void g(View convertView, i standAloneCompanyHolder, PaPaBean paPaBean) {
        List<StandAloneListBean.ListBean> list = (List) paPaBean.getTypeValue();
        f fVar = (f) convertView.getTag(R.id.papa_company_recycleview_adapter);
        if (fVar == null) {
            fVar = new f(this.f63862c);
            convertView.setTag(R.id.papa_company_recycleview_adapter, fVar);
        }
        standAloneCompanyHolder.f63903a.setAdapter(fVar);
        fVar.setListDatas(list);
        fVar.notifyDataSetChanged();
    }

    private void h(View convertView, j standAloneHorizontalHolder, PaPaBean paPaBean) {
        List<AppBean> list = (List) paPaBean.getTypeValue();
        d dVar = (d) convertView.getTag(R.id.papa_recycleview_adapter);
        if (dVar == null) {
            dVar = new d(this.f63862c);
            convertView.setTag(R.id.papa_recycleview_adapter, dVar);
        }
        standAloneHorizontalHolder.f63904a.setAdapter(dVar);
        dVar.setListDatas(list);
        dVar.notifyDataSetChanged();
    }

    private void i(k standAloneLine20Holder, int position) {
        if (position == 0) {
            standAloneLine20Holder.f63905a.setVisibility(8);
        } else {
            standAloneLine20Holder.f63905a.setVisibility(0);
        }
    }

    private void j(l standAloneLine40Holder, PaPaBean paPaBean) {
    }

    private void k(m standAloneTagHolder, PaPaBean paPaBean) {
        List list = (List) paPaBean.getTypeValue();
        standAloneTagHolder.f63906a.setVisibility(4);
        standAloneTagHolder.f63909d.setVisibility(4);
        standAloneTagHolder.f63912g.setVisibility(4);
        for (int i10 = 0; i10 < list.size(); i10++) {
            StandAloneListBean.ListBean listBean = (StandAloneListBean.ListBean) list.get(i10);
            if (i10 == 0) {
                standAloneTagHolder.f63908c.setText(listBean.getTitle());
                standAloneTagHolder.f63907b.setImageURI(listBean.getPic());
                standAloneTagHolder.f63906a.setVisibility(0);
                standAloneTagHolder.f63906a.setOnClickListener(new a(listBean));
            } else if (i10 == 1) {
                standAloneTagHolder.f63911f.setText(listBean.getTitle());
                standAloneTagHolder.f63910e.setImageURI(listBean.getPic());
                standAloneTagHolder.f63909d.setVisibility(0);
                standAloneTagHolder.f63909d.setOnClickListener(new b(listBean));
            } else if (i10 == 2) {
                standAloneTagHolder.f63914i.setText(listBean.getTitle());
                standAloneTagHolder.f63913h.setImageURI(listBean.getPic());
                standAloneTagHolder.f63912g.setVisibility(0);
                standAloneTagHolder.f63912g.setOnClickListener(new c(listBean));
            }
        }
    }

    private void l(n standAloneTitleHolder, PaPaBean paPaBean) {
        standAloneTitleHolder.f63916a.setText(((CollectionInfo) paPaBean.getTypeValue()).getTitle());
    }

    /* JADX WARN: Code duplicated, block: B:38:0x018e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0195  */
    /* JADX WARN: Code duplicated, block: B:42:0x01a2 A[Catch: Exception -> 0x01f4, TryCatch #1 {Exception -> 0x01f4, blocks: (B:40:0x019a, B:42:0x01a2, B:44:0x01e9, B:43:0x01c6), top: B:60:0x019a }] */
    /* JADX WARN: Code duplicated, block: B:43:0x01c6 A[Catch: Exception -> 0x01f4, TryCatch #1 {Exception -> 0x01f4, blocks: (B:40:0x019a, B:42:0x01a2, B:44:0x01e9, B:43:0x01c6), top: B:60:0x019a }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0285 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x01a2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x01c6, please report this as an issue */
    private void m(h viewHolderListItem, PaPaBean paPaBean) {
        final AppBean appBean = (AppBean) paPaBean.getTypeValue();
        com.join.android.app.common.utils.l.d(viewHolderListItem.f63891b, R.drawable.main_normal_icon, appBean.getIco_remote());
        viewHolderListItem.f63892c.setVisibility(8);
        viewHolderListItem.f63893d.setText(appBean.getGame_name());
        viewHolderListItem.f63896g.setText(appBean.getInfo());
        long j10 = (long) (Double.parseDouble(appBean.getAppSize()) * 1048576.0d);
        UtilsMy.K(appBean.getScore(), appBean.getDown_count(), appBean.getAppSize(), appBean.getSp_tag_info(), appBean.getTag_info(), viewHolderListItem.f63901l, this.f63862c);
        DownloadTask downloadTask = appBean.getDownloadTask();
        viewHolderListItem.f63897h.f(new m6.c(this.f63862c, appBean));
        if (appBean.isH5Game()) {
            viewHolderListItem.f63901l.setVisibility(8);
            viewHolderListItem.f63892c.setVisibility(8);
        } else if (downloadTask == null) {
            f(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
        } else {
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(appBean.getPay_tag_info(), appBean.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0 || status == 48) {
                f(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 2) {
                UtilsMy.U4(downloadTask);
                Boolean bool = Boolean.FALSE;
                f(viewHolderListItem, bool, bool);
                if (downloadTask.getSize() == 0) {
                    viewHolderListItem.f63899j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    viewHolderListItem.f63899j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                viewHolderListItem.f63895f.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                viewHolderListItem.f63900k.setText(speed + "/S");
            } else if (status == 3) {
                Boolean bool2 = Boolean.FALSE;
                f(viewHolderListItem, bool2, bool2);
                try {
                    if (downloadTask.getSize() == 0) {
                        viewHolderListItem.f63899j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        viewHolderListItem.f63899j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    viewHolderListItem.f63895f.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                viewHolderListItem.f63900k.setText("暂停中");
            } else if (status == 5) {
                Boolean bool3 = Boolean.TRUE;
                f(viewHolderListItem, bool3, bool3);
            } else if (status == 6) {
                Boolean bool4 = Boolean.FALSE;
                f(viewHolderListItem, bool4, bool4);
                if (downloadTask.getSize() == 0) {
                    viewHolderListItem.f63899j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    viewHolderListItem.f63899j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                viewHolderListItem.f63895f.setProgress((int) downloadTask.getProgress());
                viewHolderListItem.f63900k.setText("暂停中");
            } else if (status == 7) {
                f(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 42) {
                Boolean bool5 = Boolean.TRUE;
                f(viewHolderListItem, bool5, bool5);
            } else if (status != 43) {
                switch (status) {
                    case 9:
                        f(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 10:
                        Boolean bool6 = Boolean.FALSE;
                        f(viewHolderListItem, bool6, bool6);
                        viewHolderListItem.f63899j.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        try {
                            viewHolderListItem.f63895f.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        viewHolderListItem.f63900k.setText("等待中");
                        break;
                    case 11:
                        f(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 12:
                        f(viewHolderListItem, Boolean.FALSE, Boolean.TRUE);
                        viewHolderListItem.f63899j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        viewHolderListItem.f63900k.setText("解压中..");
                        viewHolderListItem.f63894e.setProgress((int) downloadTask.getProgress());
                        break;
                    case 13:
                        f(viewHolderListItem, Boolean.FALSE, Boolean.TRUE);
                        viewHolderListItem.f63899j.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        viewHolderListItem.f63900k.setText("点击重新解压");
                        viewHolderListItem.f63894e.setProgress((int) downloadTask.getProgress());
                        break;
                }
            } else {
                f(viewHolderListItem, Boolean.TRUE, Boolean.FALSE);
            }
        }
        viewHolderListItem.f63890a.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.w4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f63353b.d(appBean, view);
            }
        });
    }

    public void e(View.OnClickListener listener) {
        this.f63864e = listener;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<PaPaBean> list = this.f63861b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f63861b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        return this.f63861b.get(position).getType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i10, View view, ViewGroup viewGroup) {
        i iVar;
        m mVar;
        h hVar;
        j jVar;
        n nVar;
        Object obj;
        Object obj2;
        Object obj3;
        l lVar;
        l lVar2;
        n nVar2;
        l lVar3;
        j jVar2;
        h hVar2;
        m mVar2;
        i iVar2;
        l lVar4;
        Object obj4;
        n nVar3;
        l lVar5;
        n nVar4;
        Object obj5;
        Object obj6;
        l lVar6;
        PaPaBean paPaBean = this.f63861b.get(i10);
        int itemViewType = getItemViewType(i10);
        k kVar = null;
        if (view == null) {
            if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_20.value()) {
                k kVar2 = new k();
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_line_20_view, (ViewGroup) null);
                kVar2.f63905a = viewInflate.findViewById(R.id.lineV);
                viewInflate.setTag(kVar2);
                nVar = null;
                obj = null;
                obj2 = null;
                obj3 = null;
                lVar = null;
                kVar = kVar2;
                view = viewInflate;
                lVar3 = lVar;
                jVar2 = obj;
                hVar2 = obj2;
                mVar2 = obj3;
                iVar2 = lVar;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_40.value()) {
                l lVar7 = new l();
                View viewInflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_line_40_view, (ViewGroup) null);
                viewInflate2.setTag(lVar7);
                nVar = null;
                jVar2 = 0;
                hVar2 = 0;
                mVar2 = 0;
                iVar2 = 0;
                lVar3 = lVar7;
                view = viewInflate2;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TITLE.value()) {
                n nVar5 = new n();
                View viewInflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_title_view, (ViewGroup) null);
                nVar5.f63916a = (TextView) viewInflate3.findViewById(R.id.titleTx);
                viewInflate3.setTag(nVar5);
                nVar = nVar5;
                view = viewInflate3;
                lVar6 = null;
                nVar2 = null;
                nVar4 = nVar2;
                obj6 = nVar2;
                lVar5 = lVar6;
                nVar3 = nVar4;
                obj4 = obj6;
                obj5 = nVar4;
                lVar4 = lVar5;
                iVar2 = nVar3;
                jVar2 = obj4;
                hVar2 = obj5;
                mVar2 = nVar3;
                lVar3 = lVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                j jVar3 = new j();
                View viewInflate4 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_horizontal_view, (ViewGroup) null);
                jVar3.f63904a = (InterceptEventHorizontalScrollView) viewInflate4.findViewById(R.id.mHorizontalScrollView);
                viewInflate4.setTag(jVar3);
                jVar = jVar3;
                view = viewInflate4;
                lVar5 = null;
                nVar = null;
                nVar4 = null;
                obj6 = jVar;
                nVar3 = nVar4;
                obj4 = obj6;
                obj5 = nVar4;
                lVar4 = lVar5;
                iVar2 = nVar3;
                jVar2 = obj4;
                hVar2 = obj5;
                mVar2 = nVar3;
                lVar3 = lVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                h hVar3 = new h();
                View viewInflate5 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_vertical_view, (ViewGroup) null);
                hVar3.f63890a = (RelativeLayout) viewInflate5.findViewById(R.id.relateLayoutApp);
                hVar3.f63891b = (SimpleDraweeView) viewInflate5.findViewById(R.id.mgListviewItemIcon);
                hVar3.f63892c = (ImageView) viewInflate5.findViewById(R.id.giftPackageSwich);
                hVar3.f63893d = (TextView) viewInflate5.findViewById(R.id.mgListviewItemAppname);
                hVar3.f63894e = (ProgressBar) viewInflate5.findViewById(R.id.progressBarZip);
                hVar3.f63895f = (ProgressBar) viewInflate5.findViewById(R.id.progressBar);
                hVar3.f63896g = (TextView) viewInflate5.findViewById(R.id.mgListviewItemDescribe);
                hVar3.f63897h = (DownloadNormalView) viewInflate5.findViewById(R.id.dv_view);
                hVar3.f63898i = (LinearLayout) viewInflate5.findViewById(R.id.linearLayout2);
                hVar3.f63899j = (TextView) viewInflate5.findViewById(R.id.appSize);
                hVar3.f63900k = (TextView) viewInflate5.findViewById(R.id.loding_info);
                hVar3.f63901l = (LinearLayout) viewInflate5.findViewById(R.id.tipsLayout);
                viewInflate5.setTag(hVar3);
                hVar = hVar3;
                view = viewInflate5;
                lVar4 = null;
                nVar = null;
                obj4 = null;
                nVar3 = null;
                obj5 = hVar;
                iVar2 = nVar3;
                jVar2 = obj4;
                hVar2 = obj5;
                mVar2 = nVar3;
                lVar3 = lVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TAG.value()) {
                m mVar3 = new m();
                View viewInflate6 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_tag_view, (ViewGroup) null);
                mVar3.f63906a = (LinearLayout) viewInflate6.findViewById(R.id.standAloneTagOneLl);
                mVar3.f63908c = (TextView) viewInflate6.findViewById(R.id.standAloneTagOneTv);
                mVar3.f63907b = (SimpleDraweeView) viewInflate6.findViewById(R.id.standAloneTagOneIv);
                mVar3.f63909d = (LinearLayout) viewInflate6.findViewById(R.id.standAloneTagTwoLl);
                mVar3.f63911f = (TextView) viewInflate6.findViewById(R.id.standAloneTagTwoTv);
                mVar3.f63910e = (SimpleDraweeView) viewInflate6.findViewById(R.id.standAloneTagTwoIv);
                mVar3.f63912g = (LinearLayout) viewInflate6.findViewById(R.id.standAloneTagThreeLl);
                mVar3.f63914i = (TextView) viewInflate6.findViewById(R.id.standAloneTagThreeTv);
                mVar3.f63913h = (SimpleDraweeView) viewInflate6.findViewById(R.id.standAloneTagThreeIv);
                viewInflate6.setTag(mVar3);
                mVar = mVar3;
                view = viewInflate6;
                lVar3 = null;
                nVar = null;
                jVar2 = 0;
                hVar2 = 0;
                iVar2 = 0;
                mVar2 = mVar;
            } else {
                if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_COMPANY.value()) {
                    i iVar3 = new i();
                    View viewInflate7 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_standalone_company_view, (ViewGroup) null);
                    iVar3.f63903a = (InterceptEventHorizontalScrollView) viewInflate7.findViewById(R.id.mHorizontalScrollView);
                    viewInflate7.setTag(iVar3);
                    iVar = iVar3;
                    view = viewInflate7;
                    lVar3 = null;
                    nVar = null;
                    jVar2 = 0;
                    hVar2 = 0;
                    mVar2 = 0;
                    iVar2 = iVar;
                }
                lVar2 = null;
                nVar = null;
                nVar2 = nVar;
                lVar6 = lVar2;
                nVar4 = nVar2;
                obj6 = nVar2;
                lVar5 = lVar6;
                nVar3 = nVar4;
                obj4 = obj6;
                obj5 = nVar4;
                lVar4 = lVar5;
                iVar2 = nVar3;
                jVar2 = obj4;
                hVar2 = obj5;
                mVar2 = nVar3;
                lVar3 = lVar4;
            }
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_20.value()) {
            nVar = null;
            obj = null;
            obj2 = null;
            obj3 = null;
            lVar = null;
            kVar = (k) view.getTag();
            lVar3 = lVar;
            jVar2 = obj;
            hVar2 = obj2;
            mVar2 = obj3;
            iVar2 = lVar;
        } else {
            if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_40.value()) {
                nVar = null;
                lVar2 = (l) view.getTag();
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TITLE.value()) {
                nVar = (n) view.getTag();
                lVar6 = null;
                nVar2 = null;
                nVar4 = nVar2;
                obj6 = nVar2;
                lVar5 = lVar6;
                nVar3 = nVar4;
                obj4 = obj6;
                obj5 = nVar4;
                lVar4 = lVar5;
                iVar2 = nVar3;
                jVar2 = obj4;
                hVar2 = obj5;
                mVar2 = nVar3;
                lVar3 = lVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
                jVar = (j) view.getTag();
                lVar5 = null;
                nVar = null;
                nVar4 = null;
                obj6 = jVar;
                nVar3 = nVar4;
                obj4 = obj6;
                obj5 = nVar4;
                lVar4 = lVar5;
                iVar2 = nVar3;
                jVar2 = obj4;
                hVar2 = obj5;
                mVar2 = nVar3;
                lVar3 = lVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
                hVar = (h) view.getTag();
                lVar4 = null;
                nVar = null;
                obj4 = null;
                nVar3 = null;
                obj5 = hVar;
                iVar2 = nVar3;
                jVar2 = obj4;
                hVar2 = obj5;
                mVar2 = nVar3;
                lVar3 = lVar4;
            } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TAG.value()) {
                mVar = (m) view.getTag();
                lVar3 = null;
                nVar = null;
                jVar2 = 0;
                hVar2 = 0;
                iVar2 = 0;
                mVar2 = mVar;
            } else {
                if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_COMPANY.value()) {
                    iVar = (i) view.getTag();
                    lVar3 = null;
                    nVar = null;
                    jVar2 = 0;
                    hVar2 = 0;
                    mVar2 = 0;
                    iVar2 = iVar;
                }
                lVar2 = null;
                nVar = null;
            }
            nVar2 = nVar;
            lVar6 = lVar2;
            nVar4 = nVar2;
            obj6 = nVar2;
            lVar5 = lVar6;
            nVar3 = nVar4;
            obj4 = obj6;
            obj5 = nVar4;
            lVar4 = lVar5;
            iVar2 = nVar3;
            jVar2 = obj4;
            hVar2 = obj5;
            mVar2 = nVar3;
            lVar3 = lVar4;
        }
        if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_20.value()) {
            i(kVar, i10);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_LINE_40.value()) {
            j(lVar3, paPaBean);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TITLE.value()) {
            l(nVar, paPaBean);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_HORIZONTAL.value()) {
            h(view, jVar2, paPaBean);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_VERTICAL.value()) {
            m(hVar2, paPaBean);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_TAG.value()) {
            k(mVar2, paPaBean);
        } else if (itemViewType == PaPaBean.PaPaBeanTypes.TYPE_STANDSALONE_COMPANY.value()) {
            g(view, iVar2, paPaBean);
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f63863d;
    }
}
