package com.join.mgps.adapter;

import android.content.Context;
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
public class n extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f62781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f62782c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<CollectionBeanSub> f62783d = new ArrayList(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f62784e = true;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SimpleDraweeView f62785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ImageView f62786b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        TextView f62787c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        DownloadNormalView f62788d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        View f62789e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public TextView f62790f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        LinearLayout f62791g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        LinearLayout f62792h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public TextView f62793i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public TextView f62794j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public ProgressBar f62795k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public ProgressBar f62796l;

        public a() {
        }
    }

    public n(Context context) {
        this.f62781b = context;
        this.f62782c = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CollectionBeanSub getItem(int i10) {
        return this.f62783d.get(i10);
    }

    public List<CollectionBeanSub> b() {
        return this.f62783d;
    }

    public boolean c() {
        return this.f62784e;
    }

    public void d(boolean showDownButton) {
        this.f62784e = showDownButton;
    }

    void e(a holder, Boolean isNormal, Boolean isZip) {
        if (isNormal.booleanValue()) {
            holder.f62791g.setVisibility(8);
            holder.f62795k.setVisibility(8);
            holder.f62796l.setVisibility(8);
            holder.f62792h.setVisibility(0);
            holder.f62790f.setVisibility(0);
            return;
        }
        holder.f62791g.setVisibility(0);
        if (isZip.booleanValue()) {
            holder.f62795k.setVisibility(8);
            holder.f62796l.setVisibility(0);
        } else {
            holder.f62796l.setVisibility(8);
            holder.f62795k.setVisibility(0);
        }
        holder.f62792h.setVisibility(8);
        holder.f62790f.setVisibility(8);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f62783d.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i10) {
        return i10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:51:0x0269  */
    /* JADX WARN: Code duplicated, block: B:52:0x0270  */
    /* JADX WARN: Code duplicated, block: B:55:0x027d A[Catch: Exception -> 0x02cf, TryCatch #0 {Exception -> 0x02cf, blocks: (B:53:0x0275, B:55:0x027d, B:57:0x02c4, B:56:0x02a1), top: B:70:0x0275 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x02a1 A[Catch: Exception -> 0x02cf, TryCatch #0 {Exception -> 0x02cf, blocks: (B:53:0x0275, B:55:0x027d, B:57:0x02c4, B:56:0x02a1), top: B:70:0x0275 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0360 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Instruction removed from duplicated block: B:55:0x027d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:56:0x02a1, please report this as an issue */
    @Override // android.widget.Adapter
    public View getView(final int i10, View convertView, ViewGroup viewGroup) {
        a aVar;
        View view;
        long j10;
        if (convertView == null) {
            View viewInflate = this.f62782c.inflate(R.layout.app_listview_item, (ViewGroup) null);
            a aVar2 = new a();
            aVar2.f62785a = (SimpleDraweeView) viewInflate.findViewById(R.id.mgListviewItemIcon);
            aVar2.f62786b = (ImageView) viewInflate.findViewById(R.id.giftPackageSwich);
            aVar2.f62787c = (TextView) viewInflate.findViewById(R.id.mgListviewItemAppname);
            aVar2.f62788d = (DownloadNormalView) viewInflate.findViewById(R.id.dv_view);
            aVar2.f62790f = (TextView) viewInflate.findViewById(R.id.mgListviewItemDescribe);
            aVar2.f62791g = (LinearLayout) viewInflate.findViewById(R.id.linearLayout2);
            aVar2.f62792h = (LinearLayout) viewInflate.findViewById(R.id.tipsLayout);
            aVar2.f62793i = (TextView) viewInflate.findViewById(R.id.appSize);
            aVar2.f62794j = (TextView) viewInflate.findViewById(R.id.loding_info);
            aVar2.f62795k = (ProgressBar) viewInflate.findViewById(R.id.progressBar);
            aVar2.f62796l = (ProgressBar) viewInflate.findViewById(R.id.progressBarZip);
            aVar2.f62789e = viewInflate.findViewById(R.id.line);
            viewInflate.setTag(aVar2);
            aVar = aVar2;
            view = viewInflate;
        } else {
            aVar = (a) convertView.getTag();
            view = convertView;
        }
        aVar.f62789e.setVisibility(0);
        CollectionBeanSub collectionBeanSub = this.f62783d.get(i10);
        DownloadTask downloadTask = collectionBeanSub.getDownloadTask();
        if (collectionBeanSub.getGift_package_switch() == 1) {
            aVar.f62786b.setVisibility(0);
        } else {
            aVar.f62786b.setVisibility(8);
        }
        aVar.f62787c.setText(collectionBeanSub.getGame_name());
        aVar.f62790f.setText(collectionBeanSub.getInfo());
        try {
            j10 = (long) (Double.parseDouble(collectionBeanSub.getSize()) * 1024.0d * 1024.0d);
        } catch (Exception e10) {
            e10.printStackTrace();
            j10 = 0;
        }
        com.join.android.app.common.utils.l.h(aVar.f62785a, collectionBeanSub.getIco_remote().trim());
        UtilsMy.K(collectionBeanSub.getScore(), collectionBeanSub.getDown_count(), collectionBeanSub.getSize(), collectionBeanSub.getSp_tag_info(), collectionBeanSub.getTag_info(), aVar.f62792h, this.f62781b);
        aVar.f62788d.f(new m6.c(this.f62781b, collectionBeanSub));
        if (collectionBeanSub.isH5Game()) {
            aVar.f62792h.setVisibility(8);
            aVar.f62786b.setVisibility(8);
        } else if (downloadTask == null) {
            e(aVar, Boolean.TRUE, Boolean.FALSE);
        } else {
            com.join.mgps.Util.g1.d("infoo", downloadTask.getStatus() + " dd " + downloadTask.getShowName());
            int status = downloadTask.getStatus();
            if (UtilsMy.x0(collectionBeanSub.getPay_tag_info(), collectionBeanSub.getCrc_sign_id()) > 0) {
                status = 43;
            }
            if (status == 0 || status == 48) {
                e(aVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 2) {
                UtilsMy.U4(downloadTask);
                Boolean bool = Boolean.FALSE;
                e(aVar, bool, bool);
                if (downloadTask.getSize() == 0) {
                    aVar.f62793i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    aVar.f62793i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                aVar.f62795k.setProgress((int) downloadTask.getProgress());
                String speed = downloadTask.getSpeed();
                aVar.f62794j.setText(speed + "/S");
            } else if (status == 3) {
                Boolean bool2 = Boolean.FALSE;
                e(aVar, bool2, bool2);
                try {
                    if (downloadTask.getSize() == 0) {
                        aVar.f62793i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    } else {
                        aVar.f62793i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                    }
                    aVar.f62795k.setProgress((int) downloadTask.getProgress());
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                aVar.f62794j.setText("暂停中");
            } else if (status == 5) {
                Boolean bool3 = Boolean.TRUE;
                e(aVar, bool3, bool3);
            } else if (status == 6) {
                Boolean bool4 = Boolean.FALSE;
                e(aVar, bool4, bool4);
                if (downloadTask.getSize() == 0) {
                    aVar.f62793i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                } else {
                    aVar.f62793i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                }
                aVar.f62795k.setProgress((int) downloadTask.getProgress());
                aVar.f62794j.setText("暂停中");
            } else if (status == 7) {
                e(aVar, Boolean.TRUE, Boolean.FALSE);
            } else if (status == 42) {
                Boolean bool5 = Boolean.TRUE;
                e(aVar, bool5, bool5);
            } else if (status != 43) {
                switch (status) {
                    case 9:
                        e(aVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 10:
                        Boolean bool6 = Boolean.FALSE;
                        e(aVar, bool6, bool6);
                        aVar.f62793i.setText(UtilsMy.c(downloadTask.getCurrentSize()) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        try {
                            aVar.f62795k.setProgress((int) downloadTask.getProgress());
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                        aVar.f62794j.setText("等待中");
                        break;
                    case 11:
                        e(aVar, Boolean.TRUE, Boolean.FALSE);
                        break;
                    case 12:
                        e(aVar, Boolean.FALSE, Boolean.TRUE);
                        aVar.f62793i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar.f62794j.setText("解压中..");
                        aVar.f62796l.setProgress((int) downloadTask.getProgress());
                        break;
                    case 13:
                        e(aVar, Boolean.FALSE, Boolean.TRUE);
                        aVar.f62793i.setText(UtilsMy.c(j10) + net.lingala.zip4j.util.e.F0 + UtilsMy.c(j10));
                        aVar.f62794j.setText("点击重新解压");
                        aVar.f62796l.setProgress((int) downloadTask.getProgress());
                        break;
                }
            } else {
                e(aVar, Boolean.TRUE, Boolean.FALSE);
            }
        }
        return view;
    }
}
