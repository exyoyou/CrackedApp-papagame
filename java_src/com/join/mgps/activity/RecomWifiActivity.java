package com.join.mgps.activity;

import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RecomeWifiDatabean;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.recom_wifi_activity_layout)
public class RecomWifiActivity extends BaseActivity implements v6.e {

    @ViewById
    ImageView close;

    @ViewById
    Button downloadButn;

    @ViewById
    GridView gridviewShowRecomed;
    List<CollectionBeanSub> lists;

    @ViewById
    LinearLayout recomWifiLayout;

    @ViewById
    TextView titleTextview;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            RecomWifiActivity.this.finish();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.adapter.n6 f55542b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f55543c;

        b(final com.join.mgps.adapter.n6 val$adapter, final List val$downloadTasks) {
            this.f55542b = val$adapter;
            this.f55543c = val$downloadTasks;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            boolean z10;
            RecomWifiActivity.this.finish();
            for (CollectionBeanSub collectionBeanSub : this.f55542b.b()) {
                List list = this.f55543c;
                if (list == null) {
                    z10 = true;
                    break;
                }
                Iterator it2 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (((DownloadTask) it2.next()).getCrc_link_type_val().equals(collectionBeanSub.getGame_id())) {
                            z10 = false;
                            break;
                        }
                    } else {
                        z10 = true;
                        break;
                    }
                }
                if (z10) {
                    com.php25.PDownload.d.c(collectionBeanSub.getDownloadTask(), RecomWifiActivity.this);
                }
            }
        }
    }

    @AfterViews
    void afterview() {
        RecomeWifiDatabean recomeWifiDatabean = (RecomeWifiDatabean) getIntent().getSerializableExtra("data");
        this.lists = recomeWifiDatabean.getGame_list();
        String title = recomeWifiDatabean.getTitle();
        if (com.join.mgps.Util.t2.i(title)) {
            this.titleTextview.setText(title);
        }
        this.recomWifiLayout.setVisibility(0);
        List<DownloadTask> listD = q5.f.M().d();
        this.close.setOnClickListener(new a());
        com.join.mgps.adapter.n6 n6Var = new com.join.mgps.adapter.n6(this, this.lists);
        Iterator<CollectionBeanSub> it2 = this.lists.iterator();
        float f10 = 0.0f;
        while (it2.hasNext()) {
            f10 += Float.parseFloat(it2.next().getSize());
        }
        String str = new DecimalFormat(".00").format(f10);
        this.downloadButn.setText("下载（" + this.lists.size() + "个，共" + str + "MB)");
        this.gridviewShowRecomed.setAdapter((ListAdapter) n6Var);
        this.downloadButn.setOnClickListener(new b(n6Var, listD));
    }

    @Override // v6.e
    public void getDownData(List<CollectionBeanSub> collectionBeanSubs) {
        Iterator<CollectionBeanSub> it2 = collectionBeanSubs.iterator();
        float f10 = 0.0f;
        while (it2.hasNext()) {
            f10 += Float.parseFloat(it2.next().getSize());
        }
        String str = new DecimalFormat(".00").format(f10);
        this.downloadButn.setText("下载（" + collectionBeanSubs.size() + "个，共" + str + "MB)");
    }

    public v6.e getInterface() {
        return this;
    }
}
