package com.join.mgps.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class CopyDialogActivity extends Activity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f51104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    DownloadTask f51105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Context f51106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Handler f51107e = new Handler(new a());

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message msg) {
            CopyDialogActivity copyDialogActivity = CopyDialogActivity.this;
            UtilsMy.k4(copyDialogActivity, copyDialogActivity.f51105c);
            CopyDialogActivity.this.finish();
            return false;
        }
    }

    class b extends Thread {
        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            File file = new File(CopyDialogActivity.this.f51105c.getGameZipPath());
            String strH = com.join.mgps.pref.h.n(CopyDialogActivity.this.f51106d).h();
            if (com.join.mgps.Util.t2.h(strH)) {
                UtilsMy.k3(new PrefDef_(CopyDialogActivity.this.f51106d), CopyDialogActivity.this.f51106d);
                strH = com.join.mgps.pref.h.n(CopyDialogActivity.this.f51106d).h();
            }
            String str = strH + CopyDialogActivity.this.f51105c.getPlugin_num() + File.separator + file.getParentFile().getName();
            if (str.contains(file.getAbsolutePath())) {
                CopyDialogActivity.this.f51107e.sendEmptyMessage(1);
                return;
            }
            try {
                File file2 = new File(str);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                com.join.mgps.Util.o3.c(file.getParent(), str);
            } catch (IOException e11) {
                e11.printStackTrace();
            }
            CopyDialogActivity.this.f51105c.setGameZipPath(str + File.separator + file.getName());
            q5.f.M().update(CopyDialogActivity.this.f51105c);
            try {
                com.join.mgps.Util.o3.E(".downloadTask", str, JsonMapper.getInstance().toJson(CopyDialogActivity.this.f51105c));
            } catch (IOException e12) {
                e12.printStackTrace();
            }
            CopyDialogActivity.this.f51107e.sendEmptyMessage(1);
        }
    }

    private void a() {
        new b().start();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        UtilsMy.J1(this);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.loding_layout);
        this.f51104b = getIntent().getStringExtra("gameid");
        this.f51106d = this;
        ((TextView) findViewById(R.id.textView)).setText("正在拷贝中请稍后");
        DownloadTask downloadTaskG = q5.f.M().G(this.f51104b);
        this.f51105c = downloadTaskG;
        if (downloadTaskG == null) {
            finish();
        } else {
            a();
        }
    }
}
