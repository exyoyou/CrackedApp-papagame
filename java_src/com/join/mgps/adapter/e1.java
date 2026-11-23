package com.join.mgps.adapter;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e1 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62033c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CollectionBeanSub> f62034d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62035e = 0;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        View f62036a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f62037b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        ImageView f62038c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ImageView f62039d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        SimpleDraweeView f62040e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f62041f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        DownloadNormalView f62042g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f62043h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        TextView f62044i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        LinearLayout f62045j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public TextView f62046k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public TextView f62047l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public ProgressBar f62048m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public ProgressBar f62049n;

        public a() {
        }
    }

    public e1(Context context) {
        this.f62032b = context;
        this.f62033c = LayoutInflater.from(context);
    }

    public List<CollectionBeanSub> a() {
        return this.f62034d;
    }

    public void b(int uiType) {
        this.f62035e = uiType;
    }

    void c(a holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f62045j.setVisibility(8);
            holder.f62048m.setVisibility(8);
            holder.f62049n.setVisibility(8);
            holder.f62043h.setVisibility(0);
            holder.f62044i.setVisibility(0);
            return;
        }
        holder.f62045j.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f62048m.setVisibility(8);
            holder.f62049n.setVisibility(0);
        } else {
            holder.f62049n.setVisibility(8);
            holder.f62048m.setVisibility(0);
        }
        holder.f62043h.setVisibility(8);
        holder.f62044i.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62034d.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i10) {
        if (this.f62034d.size() == 0) {
            return null;
        }
        return this.f62034d.get(i10);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:67:0x0325  */
    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        a aVar;
        View viewInflate;
        CollectionBeanSub collectionBeanSub = this.f62034d.get(i10);
        DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
        if (convertView == null) {
            viewInflate = this.f62033c.inflate(R.layout.classify_listview_item, (ViewGroup) null);
            aVar = new a();
            aVar.f62036a = viewInflate.findViewById(R.id.lineTop);
            aVar.f62037b = (TextView) viewInflate.findViewById(R.id.tvNumber);
            aVar.f62038c = (ImageView) viewInflate.findViewById(R.id.ivNumber);
            aVar.f62039d = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
            aVar.f62040e = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
            aVar.f62041f = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
            aVar.f62042g = (DownloadNormalView) viewInflate.findViewById(R.id.dv_view);
            aVar.f62043h = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
            aVar.f62044i = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
            aVar.f62045j = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
            aVar.f62046k = (TextView) viewInflate.findViewById(R.id.appSize);
            aVar.f62047l = (TextView) viewInflate.findViewById(R.id.loding_info);
            aVar.f62048m = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
            aVar.f62049n = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
            viewInflate.setTag(aVar);
        } else {
            aVar = (a) convertView.getTag();
            viewInflate = convertView;
        }
        if (i10 != 0 || this.f62035e <= 0) {
            aVar.f62036a.setVisibility(8);
        } else {
            aVar.f62036a.setVisibility(0);
        }
        int i11 = i10 + 1;
        if (i11 != 1 && i11 != 2 && i11 != 3) {
            aVar.f62037b.setVisibility(0);
            aVar.f62038c.setVisibility(8);
            aVar.f62037b.setText(i11 + "");
            aVar.f62037b.setTextColor(-16777216);
            aVar.f62037b.setTextSize(12.0f);
            aVar.f62037b.getPaint().setFakeBoldText(false);
        } else if (this.f62035e > 0) {
            aVar.f62037b.setVisibility(8);
            aVar.f62038c.setVisibility(0);
            if (i11 == 1) {
                aVar.f62038c.setImageResource(R.drawable.ic_standalone_one);
            } else if (i11 == 2) {
                aVar.f62038c.setImageResource(R.drawable.ic_standalone_two);
            } else if (i11 == 3) {
                aVar.f62038c.setImageResource(R.drawable.ic_standalone_three);
            }
        } else {
            aVar.f62037b.setVisibility(0);
            aVar.f62038c.setVisibility(8);
            aVar.f62037b.setText(i11 + "");
            aVar.f62037b.setTextColor(Color.parseColor("#ff9f15"));
            aVar.f62037b.setTextSize(14.0f);
            aVar.f62037b.getPaint().setFakeBoldText(true);
        }
        aVar.f62041f.setText(collectionBeanSub.getGame_name());
        aVar.f62044i.setText(collectionBeanSub.getInfo());
        aVar.f62040e.setImageDrawable(this.f62032b.getResources().getDrawable(R.drawable.main_normal_icon));
        if (collectionBeanSub.getGift_package_switch() == 1) {
            aVar.f62039d.setVisibility(0);
        } else {
            aVar.f62039d.setVisibility(8);
        }
        com.join.android.app.common.utils.l.h(aVar.f62040e, collectionBeanSub.getIco_remote());
        CollectionBeanSub collectionBeanSub2 = this.f62034d.get(i10);
        long j10 = (long) (Double.parseDouble(collectionBeanSub2.getSize()) * 1024.0d * 1024.0d);
        UtilsMy.K(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub2.getTag_info(), aVar.f62043h, this.f62032b);
        aVar.f62042g.f(new m6.c(this.f62032b, collectionBeanSub2));
        if (collectionBeanSub2.isH5Game()) {
            aVar.f62043h.setVisibility(8);
            aVar.f62039d.setVisibility(8);
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
                UtilsMy.U4(downloadTask);
                Boolean bool = Boolean.FALSE;
                c(aVar, bool, bool);
                aVar.f62046k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                aVar.f62047l.setText(downloadTask.getSpeed() + "/S");
                aVar.f62048m.setProgress((int) downloadTask.getProgress());
            } else if (status == 3) {
                Boolean bool2 = Boolean.FALSE;
                c(aVar, bool2, bool2);
                try {
                    aVar.f62046k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    aVar.f62048m.setProgress((int) downloadTask.getProgress());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                aVar.f62047l.setText("暂停中");
            } else if (status == 5) {
                c(aVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 6) {
                Boolean bool3 = Boolean.FALSE;
                c(aVar, bool3, bool3);
                aVar.f62046k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                aVar.f62048m.setProgress((int) downloadTask.getProgress());
                aVar.f62047l.setText("暂停中");
            } else if (status != 7 && status != 42 && status != 43) {
                switch (status) {
                    case 9:
                        c(aVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 10:
                        Boolean bool4 = Boolean.FALSE;
                        c(aVar, bool4, bool4);
                        try {
                            aVar.f62046k.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                            aVar.f62048m.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                        aVar.f62047l.setText("等待中");
                        break;
                    case 11:
                        c(aVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 12:
                        c(aVar, Boolean.FALSE, Boolean.TRUE);
                        aVar.f62046k.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar.f62047l.setText("解压中..");
                        aVar.f62049n.setProgress((int) downloadTask.getProgress());
                        break;
                    case 13:
                        c(aVar, Boolean.FALSE, Boolean.TRUE);
                        aVar.f62046k.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar.f62047l.setText("点击重新解压");
                        aVar.f62049n.setProgress((int) downloadTask.getProgress());
                        break;
                }
            } else {
                c(aVar, Boolean.TRUE, Boolean.FALSE);
            }
        }
        return viewInflate;
    }
}
