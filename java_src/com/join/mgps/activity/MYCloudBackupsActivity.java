package com.join.mgps.activity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import com.join.mgps.dto.CloudBackupsListBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.sql.Date;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.mycloud_backups_layout)
public class MYCloudBackupsActivity extends BaseActivity {
    com.join.mgps.rpc.b RpcClient;
    private UserInfo accountBean;

    @ViewById
    ListView backupsList;
    private Context context;

    @ViewById
    ImageView share;

    @ViewById
    TextView title_textview;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ b f54698b;

        a(final b val$adapter) {
            this.f54698b = val$adapter;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            CloudBackupsDetialActivity_.intent(MYCloudBackupsActivity.this.context).a(this.f54698b.getItem(position)).start();
        }
    }

    class b extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<CloudBackupsCanUseBean> f54700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LayoutInflater f54701c;

        public b(List<CloudBackupsCanUseBean> datas) {
            this.f54700b = datas;
            this.f54701c = LayoutInflater.from(MYCloudBackupsActivity.this.context);
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CloudBackupsCanUseBean getItem(int position) {
            return this.f54700b.get(position);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f54700b.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = this.f54701c.inflate(R.layout.cloudbackups_can_list, (ViewGroup) null);
            }
            TextView textView = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.phoneType);
            TextView textView2 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.upTime);
            TextView textView3 = (TextView) com.join.mgps.Util.m3.a(convertView, R.id.handOrAuto);
            textView.setText(this.f54700b.get(position).getBrand_name());
            textView2.setText(com.join.mgps.Util.e0.e(new Date(Long.parseLong(this.f54700b.get(position).getAdd_time()) * 1000), "yyyy-MM.dd HH:mm:ss"));
            textView3.setText("自动");
            return convertView;
        }
    }

    @AfterViews
    void afterview() {
        this.RpcClient = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        this.title_textview.setText("我的云备份");
        this.share.setImageResource(R.drawable.settingicon);
        this.share.setVisibility(0);
        getAllCanbackupData();
    }

    @Click
    void back_image() {
        finish();
    }

    @Background
    void getAllCanbackupData() {
        File file = new File(com.join.mgps.pref.h.n(this.context).g() + "recoverdata");
        if (!file.exists()) {
            file.mkdirs();
        }
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        AccountResultMainBean<CloudBackupsListBean> accountResultMainBeanD = this.RpcClient.D(this.accountBean.getUid() + "", this.accountBean.getToken());
        if (accountResultMainBeanD == null || accountResultMainBeanD.getError() != 0) {
            return;
        }
        showAllCanRecoverData(accountResultMainBeanD.getData().getBackup_list());
    }

    @Click
    void share() {
    }

    @UiThread
    void showAllCanRecoverData(List<CloudBackupsCanUseBean> datas) {
        b bVar = new b(datas);
        this.backupsList.setAdapter((ListAdapter) bVar);
        this.backupsList.setOnItemClickListener(new a(bVar));
    }

    @Click
    void startBackups() {
    }
}
