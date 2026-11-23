package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.MyGameEditActivity;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class r4 extends BaseAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<DownloadTask> f63106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f63107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public HashMap<Integer, Boolean> f63108d = new HashMap<>();

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f63109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ b f63110c;

        a(final int val$position, final b val$finalMViewHolder) {
            this.f63109b = val$position;
            this.f63110c = val$finalMViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (r4.this.f63108d.get(Integer.valueOf(this.f63109b)).booleanValue()) {
                r4.this.f63108d.put(Integer.valueOf(this.f63109b), Boolean.FALSE);
                this.f63110c.f63112a.setSelected(false);
            } else {
                r4.this.f63108d.put(Integer.valueOf(this.f63109b), Boolean.TRUE);
                this.f63110c.f63112a.setSelected(true);
            }
            if (r4.this.f63107c instanceof MyGameEditActivity) {
                ((MyGameEditActivity) r4.this.f63107c).setDelTotal(r4.this.f63108d);
            }
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ImageView f63112a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SimpleDraweeView f63113b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f63114c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f63115d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public LinearLayout f63116e;

        public b(View mView) {
            this.f63113b = (SimpleDraweeView) mView.findViewById(R.id.img);
            this.f63112a = (ImageView) mView.findViewById(R.id.isSelector);
            this.f63114c = (TextView) mView.findViewById(R.id.name);
            this.f63115d = (TextView) mView.findViewById(R.id.appInfo);
            this.f63116e = (LinearLayout) mView.findViewById(R.id.status);
        }
    }

    public r4(Context mContext, List<DownloadTask> datas) {
        this.f63107c = mContext;
        this.f63106b = datas;
        b();
    }

    private void b() {
        this.f63108d = new HashMap<>();
        for (int i10 = 0; i10 < this.f63106b.size(); i10++) {
            this.f63108d.put(Integer.valueOf(i10), Boolean.FALSE);
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f63106b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) {
        return this.f63106b.get(position);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        return position;
    }

    @Override // android.widget.Adapter
    public View getView(final int position, View convertView, ViewGroup parent) {
        b bVar;
        if (convertView == null) {
            convertView = LayoutInflater.from(this.f63107c).inflate(R.layout.layout_mygame_edit_item, (ViewGroup) null);
            bVar = new b(convertView);
            convertView.setTag(bVar);
        } else {
            bVar = (b) convertView.getTag();
        }
        DownloadTask downloadTask = this.f63106b.get(position);
        com.join.android.app.common.utils.l.h(bVar.f63113b, downloadTask.getPortraitURL());
        Double.parseDouble(downloadTask.getShowSize());
        if (downloadTask.getExt1() == null || !downloadTask.getExt1().equals("h5")) {
            UtilsMy.K(downloadTask.getScore(), downloadTask.getDown_count(), downloadTask.getShowSize(), downloadTask.getSp_tag_info(), downloadTask.getTipBeans(), bVar.f63116e, this.f63107c);
        } else {
            bVar.f63116e.setVisibility(8);
        }
        bVar.f63114c.setText(downloadTask.getShowName());
        bVar.f63115d.setText(downloadTask.getDescribe());
        bVar.f63112a.setSelected(this.f63108d.get(Integer.valueOf(position)).booleanValue());
        convertView.setOnClickListener(new a(position, bVar));
        return convertView;
    }
}
