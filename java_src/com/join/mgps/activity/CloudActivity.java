package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseActivity;
import com.czhj.sdk.common.Constants;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.CloudCreateInfo;
import com.join.mgps.dto.CloudInfo;
import com.join.mgps.dto.CloudStatus;
import com.join.mgps.dto.CloudUploadInfo;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.RomArchived;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.cloud)
public class CloudActivity extends BaseActivity {
    i adapter;
    List<CloudInfo> cloudInfos;
    com.join.mgps.dialog.z cloudPassDialog;
    List<DownloadTask> downloadTasks;
    boolean isRunning;

    @ViewById
    ListView listview;
    List<CloudInfo> result;
    int rid;
    com.join.mgps.rpc.l rpcAccountClient;

    @ViewById
    TextView select_txt;
    boolean showFirst;

    @ViewById
    Button sub;
    Map<Long, File> map = new HashMap();
    List<Long> noUpdateRom = new ArrayList();
    Map<String, File> updataFiles = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f50589i = 0;
    int ok = 0;
    boolean breakUpload = false;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f50590b;

        a(final ImageView val$cloud_select_img) {
            this.f50590b = val$cloud_select_img;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (CloudActivity.this.showFirst) {
                this.f50590b.setImageResource(R.drawable.cloud_select_no);
            } else {
                this.f50590b.setImageResource(R.drawable.cloud_select_yes);
            }
            CloudActivity cloudActivity = CloudActivity.this;
            cloudActivity.showFirst = !cloudActivity.showFirst;
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.v f50592b;

        b(final com.join.mgps.dialog.v val$cloudFirstDialog) {
            this.f50592b = val$cloudFirstDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f50592b.dismiss();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.dialog.v f50594b;

        c(final com.join.mgps.dialog.v val$cloudFirstDialog) {
            this.f50594b = val$cloudFirstDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CloudActivity cloudActivity = CloudActivity.this;
            com.join.mgps.Util.r2.j(cloudActivity, "showFirst", Boolean.valueOf(cloudActivity.showFirst));
            this.f50594b.dismiss();
            CloudActivity.this.zip();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CloudActivity.this.breakUpload = true;
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CloudActivity.this.cloudPassDialog.dismiss();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            CloudActivity.this.cloudPassDialog.dismiss();
        }
    }

    class g implements com.join.android.app.common.http.b {
        g() {
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object o10) {
            com.join.mgps.Util.g1.g("onFailed----------");
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object o10) {
            try {
                if (new JSONObject((String) o10).optJSONObject("data").optString("status").equals("ok")) {
                    CloudActivity.this.ok++;
                    com.join.mgps.Util.g1.g("ok------------" + CloudActivity.this.ok);
                    CloudActivity cloudActivity = CloudActivity.this;
                    cloudActivity.showUploadDialogNum(cloudActivity.ok, cloudActivity.updataFiles.size());
                    CloudActivity cloudActivity2 = CloudActivity.this;
                    if (cloudActivity2.ok == cloudActivity2.updataFiles.size()) {
                        CloudActivity.this.uploadSuccess();
                    }
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
    }

    class h implements com.join.android.app.common.http.b {
        h() {
        }

        @Override // com.join.android.app.common.http.b
        public void a(Object o10) {
        }

        @Override // com.join.android.app.common.http.b
        public void onSuccess(Object o10) {
        }
    }

    class i extends BaseAdapter {

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f50602b;

            a(final int val$position) {
                this.f50602b = val$position;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                CloudRomListActivity_.intent(CloudActivity.this).a(CloudActivity.this.cloudInfos.get(this.f50602b).getDownloadTask()).start();
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f50604b;

            b(final int val$position) {
                this.f50604b = val$position;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                CloudInfo cloudInfo = CloudActivity.this.cloudInfos.get(this.f50604b);
                if (cloudInfo.isSelect()) {
                    cloudInfo.setSelect(false);
                    CloudActivity.this.f50589i--;
                } else {
                    cloudInfo.setSelect(true);
                    CloudActivity.this.f50589i++;
                }
                CloudActivity.this.updateBtn();
            }
        }

        i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return CloudActivity.this.downloadTasks.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            return CloudActivity.this.downloadTasks.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = LayoutInflater.from(CloudActivity.this).inflate(R.layout.cloud_item, (ViewGroup) null);
            }
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) convertView.findViewById(R.id.img);
            TextView textView = (TextView) convertView.findViewById(R.id.name);
            TextView textView2 = (TextView) convertView.findViewById(R.id.number);
            textView.setText(CloudActivity.this.cloudInfos.get(position).getDownloadTask().getShowName());
            textView2.setText("共" + CloudActivity.this.cloudInfos.get(position).getRomArchivedNum() + "个存档，" + CloudActivity.this.downloadTasks.get(position).getRomArchivedSize() + "MB");
            ImageView imageView = (ImageView) convertView.findViewById(R.id.select);
            ((LinearLayout) convertView.findViewById(R.id.main_lay)).setOnClickListener(new a(position));
            if (CloudActivity.this.cloudInfos.get(position).isSelect()) {
                imageView.setImageResource(R.drawable.cloud_select_yes);
            } else {
                imageView.setImageResource(R.drawable.cloud_select_no);
            }
            imageView.setOnClickListener(new b(position));
            com.join.android.app.common.utils.l.h(simpleDraweeView, CloudActivity.this.downloadTasks.get(position).getPortraitURL());
            return convertView;
        }
    }

    public class j implements Comparator {
        public j() {
        }

        @Override // java.util.Comparator
        public int compare(Object o10, Object o11) {
            CloudInfo cloudInfo = (CloudInfo) o10;
            CloudInfo cloudInfo2 = (CloudInfo) o11;
            if (cloudInfo.getDownloadTask().getFinishTime() > cloudInfo2.getDownloadTask().getFinishTime()) {
                return 1;
            }
            return cloudInfo.getDownloadTask().getFinishTime() == cloudInfo2.getDownloadTask().getFinishTime() ? 0 : -1;
        }
    }

    @AfterViews
    void afterView() {
        this.rpcAccountClient = com.join.mgps.rpc.impl.l.n0();
        updateBtn();
        this.result = new ArrayList();
        this.cloudInfos = new ArrayList();
        this.downloadTasks = q5.f.M().u();
        for (int i10 = 0; i10 < this.downloadTasks.size(); i10++) {
            DownloadTask downloadTask = this.downloadTasks.get(i10);
            CloudInfo cloudInfo = new CloudInfo();
            cloudInfo.setDownloadTask(downloadTask);
            List<RomArchived> listM = com.join.mgps.Util.o3.m(downloadTask.getPlugin_num(), downloadTask.getGameZipPath());
            cloudInfo.setRomArchiveds(listM);
            cloudInfo.setRomArchivedNum(listM.size());
            Iterator<RomArchived> it2 = listM.iterator();
            long size = 0;
            while (it2.hasNext()) {
                size += it2.next().getSize();
            }
            cloudInfo.setRomArchivedSize(size);
            this.cloudInfos.add(cloudInfo);
        }
        Collections.sort(this.cloudInfos, new j());
        i iVar = new i();
        this.adapter = iVar;
        this.listview.setAdapter((ListAdapter) iVar);
    }

    public String myPercent(int y10, int z10) {
        return new DecimalFormat("##%").format((((double) y10) * 1.0d) / (((double) z10) * 1.0d));
    }

    @Click
    void select_txt() {
        this.f50589i = 0;
        if (this.select_txt.getText().toString().trim().equals("选择")) {
            Iterator<CloudInfo> it2 = this.cloudInfos.iterator();
            while (it2.hasNext()) {
                it2.next().setSelect(true);
                this.f50589i++;
            }
            this.select_txt.setText("取消");
        } else if (this.select_txt.getText().toString().trim().equals("取消")) {
            Iterator<CloudInfo> it3 = this.cloudInfos.iterator();
            while (it3.hasNext()) {
                it3.next().setSelect(false);
            }
            this.f50589i = 0;
            this.select_txt.setText("选择");
        }
        updateBtn();
    }

    void showFirstDialog() {
        this.isRunning = true;
        boolean zBooleanValue = com.join.mgps.Util.r2.f(this, "showFirst", Boolean.FALSE).booleanValue();
        this.showFirst = zBooleanValue;
        if (!zBooleanValue) {
            zip();
            return;
        }
        com.join.mgps.dialog.v vVar = new com.join.mgps.dialog.v(this, R.style.MyDialog);
        vVar.show();
        TextView textView = (TextView) vVar.findViewById(R.id.cancel);
        TextView textView2 = (TextView) vVar.findViewById(R.id.ok);
        ImageView imageView = (ImageView) vVar.findViewById(R.id.cloud_select_img);
        if (this.showFirst) {
            imageView.setImageResource(R.drawable.cloud_select_yes);
        } else {
            imageView.setImageResource(R.drawable.cloud_select_no);
        }
        imageView.setOnClickListener(new a(imageView));
        textView.setOnClickListener(new b(vVar));
        textView2.setOnClickListener(new c(vVar));
    }

    void showUploadDialog() {
        com.join.mgps.dialog.z zVar = new com.join.mgps.dialog.z(this, R.style.MyDialog);
        this.cloudPassDialog = zVar;
        zVar.show();
        this.cloudPassDialog.a("80%");
        this.cloudPassDialog.d("中断下载");
        this.cloudPassDialog.f("存档下载中，请勿中断网络");
        this.cloudPassDialog.c(R.drawable.cloud_progress_icon);
    }

    @UiThread
    void showUploadDialogNum(int i10, int count) {
        com.join.mgps.dialog.z zVar = this.cloudPassDialog;
        if (zVar == null || !zVar.isShowing()) {
            com.join.mgps.dialog.z zVar2 = new com.join.mgps.dialog.z(this, R.style.MyDialog);
            this.cloudPassDialog = zVar2;
            zVar2.show();
        }
        this.cloudPassDialog.a(myPercent(i10, count));
        this.cloudPassDialog.d("中断备份");
        this.cloudPassDialog.f("存档备份中，请勿中断网络");
        this.cloudPassDialog.c(R.drawable.cloud_progress_icon);
        this.cloudPassDialog.e(new d());
    }

    @UiThread
    void showUploadDialogStop(int count, int all) {
        com.join.mgps.dialog.z zVar = this.cloudPassDialog;
        if (zVar == null || !zVar.isShowing()) {
            com.join.mgps.dialog.z zVar2 = new com.join.mgps.dialog.z(this, R.style.MyDialog);
            this.cloudPassDialog = zVar2;
            zVar2.show();
        }
        this.cloudPassDialog.a(myPercent(count, all));
        this.cloudPassDialog.d("完成");
        this.cloudPassDialog.f("传输中断，已传输" + count + "个存档");
        this.cloudPassDialog.c(R.drawable.cloud_pass_icon_fail);
        this.cloudPassDialog.e(new e());
    }

    @UiThread
    void showUploadDialogSuccess() {
        this.cloudPassDialog.b(8);
        this.cloudPassDialog.c(R.drawable.cloud_pass_icon_ok);
        this.cloudPassDialog.f("成功备份存档");
        this.cloudPassDialog.d("完成");
        this.cloudPassDialog.e(new f());
    }

    @Click
    void sub() {
        if (this.isRunning) {
            return;
        }
        showFirstDialog();
    }

    @Background
    public void syncUpLoadInfo(final Context context, final CloudUploadInfo cloudUploadInfo, final File file) {
        if (file.exists()) {
            com.join.android.app.common.http.h.b().e(context, cloudUploadInfo, file, new h());
        }
    }

    void upLoad() {
        this.ok = 0;
        showUploadDialogNum(0, this.updataFiles.size());
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
        linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(getApplicationContext()).getToken());
        linkedMultiValueMap.add("brand_name", System.currentTimeMillis() + "");
        GameWorldResponse<CloudCreateInfo> gameWorldResponseZ = this.rpcAccountClient.z(linkedMultiValueMap);
        if (gameWorldResponseZ.getError() == 0) {
            CloudCreateInfo data = gameWorldResponseZ.getData();
            this.rid = data.getRid();
            for (String str : this.updataFiles.keySet()) {
                if (this.breakUpload) {
                    showUploadDialogStop(this.ok, this.updataFiles.size());
                    return;
                }
                File file = this.updataFiles.get(str);
                CloudUploadInfo cloudUploadInfo = new CloudUploadInfo();
                cloudUploadInfo.setUid(Integer.parseInt(AccountUtil_.getInstance_(getApplicationContext()).getUid()));
                cloudUploadInfo.setRid(data.getRid());
                cloudUploadInfo.setToken(AccountUtil_.getInstance_(getApplicationContext()).getToken());
                cloudUploadInfo.setGame_id(str);
                com.join.android.app.common.http.h.b().e(this, cloudUploadInfo, file, new g());
            }
        }
    }

    @UiThread
    void updateBtn() {
        this.adapter.notifyDataSetChanged();
        int i10 = 0;
        if (this.f50589i == 0) {
            this.sub.setEnabled(false);
            this.sub.setText("未选中任何存档");
            return;
        }
        this.sub.setEnabled(true);
        Iterator<CloudInfo> it2 = this.cloudInfos.iterator();
        while (it2.hasNext()) {
            if (it2.next().isSelect()) {
                i10++;
            }
        }
        this.sub.setText("备份存档（已选中" + i10 + "款游戏)");
    }

    @Background
    void uploadSuccess() {
        LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
        linkedMultiValueMap.add("uid", AccountUtil_.getInstance_(getApplicationContext()).getUid());
        linkedMultiValueMap.add(Constants.TOKEN, AccountUtil_.getInstance_(getApplicationContext()).getToken());
        linkedMultiValueMap.add("rid", this.rid + "");
        CloudStatus data = this.rpcAccountClient.u(linkedMultiValueMap).getData();
        if (data.getStatus().equals("ok")) {
            showUploadDialogSuccess();
        }
        com.join.mgps.Util.g1.g("status----" + data.getStatus());
    }

    @Background
    void zip() {
        this.result.clear();
        for (CloudInfo cloudInfo : this.cloudInfos) {
            if (cloudInfo.isSelect()) {
                this.result.add(cloudInfo);
            }
        }
        this.updataFiles.clear();
        Iterator<CloudInfo> it2 = this.result.iterator();
        while (it2.hasNext()) {
            DownloadTask downloadTask = it2.next().getDownloadTask();
            List<RomArchived> listM = com.join.mgps.Util.o3.m(downloadTask.getPlugin_num(), downloadTask.getGameZipPath());
            ArrayList arrayList = new ArrayList();
            File file = null;
            for (RomArchived romArchived : listM) {
                File file2 = new File(romArchived.getArchivedPath());
                File file3 = new File(romArchived.getArchivedImagePath());
                if (!this.noUpdateRom.contains(Long.valueOf(com.join.mgps.Util.r.a(file2)))) {
                    arrayList.add(file2);
                    arrayList.add(file3);
                }
                if (file == null) {
                    file = new File(file2.getParent() + File.separator + file2.getParentFile().getName() + ".zip");
                }
            }
            if (file != null) {
                if (file.exists()) {
                    file.delete();
                }
                try {
                    if (arrayList.size() > 0) {
                        com.join.mgps.Util.s3.m(arrayList, file, "");
                        this.updataFiles.put(downloadTask.getCrc_link_type_val(), file);
                    }
                    upLoad();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            }
        }
        this.isRunning = false;
    }
}
