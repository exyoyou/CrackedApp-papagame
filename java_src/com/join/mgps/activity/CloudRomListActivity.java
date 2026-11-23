package com.join.mgps.activity;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.RomArchived;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.cloud_rom_list)
public class CloudRomListActivity extends BaseActivity {

    @Extra
    DownloadTask downloadTask;

    @ViewById
    ListView listview;
    List<RomArchived> romArchiveds;

    class a extends BaseAdapter {
        a() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return CloudRomListActivity.this.romArchiveds.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return CloudRomListActivity.this.romArchiveds.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(CloudRomListActivity.this).inflate(R.layout.cloud_rom_item, (ViewGroup) null);
            }
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) convertView.findViewById(R.id.img);
            TextView textView = (TextView) convertView.findViewById(R.id.name);
            textView.setText("存档 " + (position + 1));
            com.join.android.app.common.utils.l.h(simpleDraweeView, CloudRomListActivity.this.romArchiveds.get(position).getArchivedImagePath());
            return convertView;
        }
    }

    public class b implements Comparator {
        public b() {
        }

        @Override // java.util.Comparator
        public int compare(Object o10, Object o11) {
            RomArchived romArchived = (RomArchived) o10;
            RomArchived romArchived2 = (RomArchived) o11;
            if (Long.parseLong(romArchived.getArchivedTime()) > Long.parseLong(romArchived2.getArchivedTime())) {
                return 1;
            }
            return Long.parseLong(romArchived.getArchivedTime()) == Long.parseLong(romArchived2.getArchivedTime()) ? 0 : -1;
        }
    }

    @AfterViews
    void afterView() {
        List<RomArchived> listM = com.join.mgps.Util.o3.m(this.downloadTask.getPlugin_num(), this.downloadTask.getGameZipPath());
        this.romArchiveds = listM;
        Collections.sort(listM, new b());
        this.listview.setAdapter((ListAdapter) new a());
    }
}
