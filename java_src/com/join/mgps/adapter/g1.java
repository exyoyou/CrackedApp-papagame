package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class g1 extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f62156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LayoutInflater f62157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<CollectionBeanSub> f62158g = new ArrayList();

    public class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        TextView f62159d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f62160e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ImageView f62161f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        SimpleDraweeView f62162g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        TextView f62163h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        DownloadNormalView f62164i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f62165j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        TextView f62166k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        LinearLayout f62167l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public TextView f62168m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public TextView f62169n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public ProgressBar f62170o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public ProgressBar f62171p;

        public a(View itemView) {
            super(itemView);
            this.f62160e = itemView;
        }
    }

    public g1(Context context) {
        this.f62156e = context;
        this.f62157f = LayoutInflater.from(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(CollectionBeanSub collectionBeanSub, View view) {
        if (collectionBeanSub.getCrc_sign_id() != null) {
            IntentUtil.getInstance().intentActivity(this.f62156e, collectionBeanSub.getIntentDataBean());
        }
    }

    void c(a holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f62167l.setVisibility(8);
            holder.f62170o.setVisibility(8);
            holder.f62171p.setVisibility(8);
            holder.f62165j.setVisibility(0);
            holder.f62166k.setVisibility(0);
            return;
        }
        holder.f62167l.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f62170o.setVisibility(8);
            holder.f62171p.setVisibility(0);
        } else {
            holder.f62171p.setVisibility(8);
            holder.f62170o.setVisibility(0);
        }
        holder.f62165j.setVisibility(8);
        holder.f62166k.setVisibility(8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f62158g.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    public List<CollectionBeanSub> getItems() {
        return this.f62158g;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0203  */
    /* JADX WARN: Code duplicated, block: B:53:0x028f  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holderx, int i10) {
        a aVar = (a) holderx;
        final CollectionBeanSub collectionBeanSub = this.f62158g.get(i10);
        DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
        int i11 = i10 + 1;
        if (i11 == 1 || i11 == 2 || i11 == 3) {
            aVar.f62159d.setText(i11 + "");
            aVar.f62159d.setTextColor(Color.parseColor("#ff9f15"));
            aVar.f62159d.setTextSize(14.0f);
            aVar.f62159d.getPaint().setFakeBoldText(true);
        } else {
            aVar.f62159d.setText(i11 + "");
            aVar.f62159d.setTextColor(-16777216);
            aVar.f62159d.setTextSize(12.0f);
            aVar.f62159d.getPaint().setFakeBoldText(false);
        }
        aVar.f62163h.setText(collectionBeanSub.getGame_name());
        aVar.f62166k.setText(collectionBeanSub.getInfo());
        aVar.f62162g.setImageDrawable(this.f62156e.getResources().getDrawable(R.drawable.main_normal_icon));
        if (collectionBeanSub.getGift_package_switch() == 1) {
            aVar.f62161f.setVisibility(0);
        } else {
            aVar.f62161f.setVisibility(8);
        }
        com.join.android.app.common.utils.l.h(aVar.f62162g, collectionBeanSub.getIco_remote());
        CollectionBeanSub collectionBeanSub2 = this.f62158g.get(i10);
        long j10 = (long) (Double.parseDouble(collectionBeanSub2.getSize()) * 1024.0d * 1024.0d);
        UtilsMy.K(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), aVar.f62165j, this.f62156e);
        aVar.f62164i.f(new m6.c(this.f62156e, collectionBeanSub2));
        if (collectionBeanSub2.isH5Game()) {
            aVar.f62165j.setVisibility(8);
            aVar.f62161f.setVisibility(8);
        } else if (downloadTask == null) {
            c(aVar, Boolean.TRUE, Boolean.FALSE);
        } else {
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(collectionBeanSub2.getPay_tag_info(), collectionBeanSub2.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0 || status == 48) {
                c(aVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 2) {
                Boolean bool = Boolean.FALSE;
                c(aVar, bool, bool);
                aVar.f62168m.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                aVar.f62169n.setText(downloadTask.getSpeed() + "/S");
                aVar.f62170o.setProgress((int) downloadTask.getProgress());
            } else if (status == 3) {
                Boolean bool2 = Boolean.FALSE;
                c(aVar, bool2, bool2);
                try {
                    aVar.f62168m.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    aVar.f62170o.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                aVar.f62169n.setText("暂停中");
            } else if (status == 5) {
                c(aVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 6) {
                Boolean bool3 = Boolean.FALSE;
                c(aVar, bool3, bool3);
                aVar.f62168m.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                aVar.f62170o.setProgress((int) downloadTask.getProgress());
                aVar.f62169n.setText("暂停中");
            } else if (status != 7 && status != 42 && status != 43) {
                switch (status) {
                    case 9:
                    case 11:
                        c(aVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 10:
                        Boolean bool4 = Boolean.FALSE;
                        c(aVar, bool4, bool4);
                        try {
                            aVar.f62168m.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            aVar.f62170o.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        aVar.f62169n.setText("等待中");
                        break;
                    case 12:
                        c(aVar, Boolean.FALSE, Boolean.TRUE);
                        aVar.f62168m.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar.f62169n.setText("解压中..");
                        aVar.f62171p.setProgress((int) downloadTask.getProgress());
                        break;
                    case 13:
                        c(aVar, Boolean.FALSE, Boolean.TRUE);
                        aVar.f62168m.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar.f62169n.setText("点击重新解压");
                        aVar.f62171p.setProgress((int) downloadTask.getProgress());
                        break;
                }
            } else {
                c(aVar, Boolean.TRUE, Boolean.FALSE);
            }
        }
        aVar.f62160e.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.adapter.f1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f62075b.b(collectionBeanSub, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View viewInflate = this.f62157f.inflate(R.layout.classify_listview_item, parent, false);
        a aVar = new a(viewInflate);
        aVar.f62159d = (TextView) viewInflate.findViewById(R.id.tvNumber);
        aVar.f62161f = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
        aVar.f62162g = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
        aVar.f62163h = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
        aVar.f62164i = (DownloadNormalView) viewInflate.findViewById(R.id.dv_view);
        aVar.f62165j = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
        aVar.f62166k = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
        aVar.f62167l = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
        aVar.f62168m = (TextView) viewInflate.findViewById(R.id.appSize);
        aVar.f62169n = (TextView) viewInflate.findViewById(R.id.loding_info);
        aVar.f62170o = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
        aVar.f62171p = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
        return aVar;
    }
}
