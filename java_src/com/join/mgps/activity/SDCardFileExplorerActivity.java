package com.join.mgps.activity;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import java.io.File;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.sdcard_lay)
public class SDCardFileExplorerActivity extends BaseActivity {

    @ViewById
    Button btnParent;
    File[] currentFiles;
    File currentParent;

    @ViewById
    ListView lvFiles;

    @ViewById
    TextView tvpath;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int position, long id2) {
            if (SDCardFileExplorerActivity.this.currentFiles[position].isFile()) {
                if (new BigDecimal(SDCardFileExplorerActivity.this.currentFiles[position].length()).divide(new BigDecimal(1048576), 2, 0).floatValue() > 100.0f) {
                    Toast.makeText(SDCardFileExplorerActivity.this, "为了你的流量，上传文件不能超过100M哦", 1).show();
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("srcFile", SDCardFileExplorerActivity.this.currentFiles[position]);
                SDCardFileExplorerActivity.this.setResult(100, intent);
                SDCardFileExplorerActivity.this.finish();
                return;
            }
            File[] fileArrListFiles = SDCardFileExplorerActivity.this.currentFiles[position].listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                Toast.makeText(SDCardFileExplorerActivity.this, "当前路径不可访问或者该路径下没有文件", 1).show();
                return;
            }
            SDCardFileExplorerActivity sDCardFileExplorerActivity = SDCardFileExplorerActivity.this;
            sDCardFileExplorerActivity.currentParent = sDCardFileExplorerActivity.currentFiles[position];
            sDCardFileExplorerActivity.currentFiles = fileArrListFiles;
            sDCardFileExplorerActivity.inflateListView(fileArrListFiles);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            try {
                if (SDCardFileExplorerActivity.this.currentParent.getCanonicalPath().equals("/mnt/sdcard")) {
                    return;
                }
                SDCardFileExplorerActivity sDCardFileExplorerActivity = SDCardFileExplorerActivity.this;
                sDCardFileExplorerActivity.currentParent = sDCardFileExplorerActivity.currentParent.getParentFile();
                SDCardFileExplorerActivity sDCardFileExplorerActivity2 = SDCardFileExplorerActivity.this;
                sDCardFileExplorerActivity2.currentFiles = sDCardFileExplorerActivity2.currentParent.listFiles();
                SDCardFileExplorerActivity sDCardFileExplorerActivity3 = SDCardFileExplorerActivity.this;
                sDCardFileExplorerActivity3.inflateListView(sDCardFileExplorerActivity3.currentFiles);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void inflateListView(File[] files) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < files.length; i10++) {
            HashMap map = new HashMap();
            if (files[i10].isDirectory()) {
                map.put("iconFile", Integer.valueOf(R.drawable.folder));
            } else {
                map.put("iconFile", Integer.valueOf(R.drawable.file));
            }
            map.put(com.sigmob.sdk.downloader.core.breakpoint.f.f80402e, files[i10].getName());
            long jLastModified = new File(files[i10].getName()).lastModified();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            System.out.println(simpleDateFormat.format(new Date(jLastModified)));
            map.put("modify", "修改日期：" + simpleDateFormat.format(new Date(jLastModified)));
            arrayList.add(map);
        }
        this.lvFiles.setAdapter((ListAdapter) new SimpleAdapter(this, arrayList, R.layout.sdcard_list_item, new String[]{com.sigmob.sdk.downloader.core.breakpoint.f.f80402e, "iconFile"}, new int[]{R.id.file_name, R.id.icon}));
        try {
            this.tvpath.setText("当前路径为:" + this.currentParent.getCanonicalPath());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterViews() {
        File file = new File("/mnt/sdcard/");
        if (file.exists()) {
            this.currentParent = file;
            File[] fileArrListFiles = file.listFiles();
            this.currentFiles = fileArrListFiles;
            inflateListView(fileArrListFiles);
        }
        this.lvFiles.setOnItemClickListener(new a());
        this.btnParent.setOnClickListener(new b());
    }
}
