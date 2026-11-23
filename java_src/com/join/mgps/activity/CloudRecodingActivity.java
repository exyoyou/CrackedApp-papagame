package com.join.mgps.activity;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.db.tables.CloudBackupsDataTable;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.CloudBackupsCanUseBean;
import com.join.mgps.dto.CloudBackupsDataBean;
import com.join.mgps.dto.CloudBackupsRecoverListBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.cloud_recoding_layout)
public class CloudRecodingActivity extends BaseActivity {
    private UserInfo accountBean;

    @Extra
    CloudBackupsCanUseBean bean;
    private Context context;

    @ViewById
    LinearLayout gameHistory;

    @ViewById
    ImageView gameHistoryFinishImage;

    @ViewById
    ProgressBar gameHistoryLoding;

    @ViewById
    TextView gameHistoryinfo;

    @ViewById
    LinearLayout gameList;

    @ViewById
    ImageView gameListFinish;

    @ViewById
    TextView gameListInfo;

    @ViewById
    ProgressBar gameListloding;

    @ViewById
    LinearLayout gamekey;

    @ViewById
    ImageView gamekeyFinish;

    @ViewById
    ProgressBar gamekeyLoding;

    @ViewById
    TextView gamekeyinfo;

    @Extra
    boolean isrecoder;

    @ViewById
    TextView recoverinfo;
    com.join.mgps.rpc.b rpcClient;

    private void downloadCloudBackups(CloudBackupsDataBean dataBean, String pathhome) {
        File file = new File(pathhome);
        if (!file.exists()) {
            file.mkdir();
        }
        String str = pathhome + File.separator + dataBean.getGame_id() + ".zip";
        File file2 = new File(str);
        if (file2.exists()) {
            UtilsMy.delete(file2);
        }
        try {
            URLConnection uRLConnectionOpenConnection = new URL(dataBean.getFile()).openConnection();
            uRLConnectionOpenConnection.getContentLength();
            InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
            byte[] bArr = new byte[com.sigmob.sdk.archives.tar.d.f78732b];
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    fileOutputStream.close();
                    inputStream.close();
                    CloudBackupsDataTable cloudBackupsDataTable = new CloudBackupsDataTable();
                    cloudBackupsDataTable.setDownFinish(true);
                    cloudBackupsDataTable.setFilePath(str);
                    cloudBackupsDataTable.setGameId(dataBean.getGame_id());
                    t6.h.o().m(cloudBackupsDataTable);
                    return;
                }
                fileOutputStream.write(bArr, 0, i10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @AfterViews
    void afterview() {
        this.rpcClient = com.join.mgps.rpc.impl.a.c0();
        this.context = this;
        startRecoder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void startRecoder() {
        String str = com.join.mgps.pref.h.n(this.context).g() + "recoverdata";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.accountBean = AccountUtil_.getInstance_(this.context).getAccountData();
        AccountResultMainBean<CloudBackupsRecoverListBean> accountResultMainBeanW = this.rpcClient.w(this.accountBean.getUid() + "", this.accountBean.getToken(), this.bean.getRid());
        if (accountResultMainBeanW == null || accountResultMainBeanW.getError() != 0) {
            return;
        }
        for (CloudBackupsDataBean cloudBackupsDataBean : accountResultMainBeanW.getData().getGame_list()) {
            String game_id = cloudBackupsDataBean.getGame_id();
            cloudBackupsDataBean.getFile();
            if (q5.f.M().G(game_id) == null) {
                downloadCloudBackups(cloudBackupsDataBean, str);
                Intent intent = new Intent();
                intent.setAction(p5.a.f96213p);
                intent.putExtra("gameId", game_id);
                this.context.sendBroadcast(intent);
            }
        }
    }
}
