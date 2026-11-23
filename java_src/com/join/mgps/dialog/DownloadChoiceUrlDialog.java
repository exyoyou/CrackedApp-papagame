package com.join.mgps.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.DownloadUrlBean;
import java.util.ArrayList;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;

/* JADX INFO: loaded from: classes3.dex */
@EActivity(R.layout.download_choice_url_layout)
public class DownloadChoiceUrlDialog extends BaseActivity {
    private Context context;

    @Extra
    DownloadTask downloadTask;

    @Extra
    ArrayList<DownloadUrlBean> downloadUrlBeans;

    @Extra
    boolean isLocalShow;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadChoiceUrlDialog.this.finish();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ArrayList<DownloadUrlBean> arrayList = DownloadChoiceUrlDialog.this.downloadUrlBeans;
            if (arrayList != null && arrayList.size() > 0) {
                for (DownloadUrlBean downloadUrlBean : DownloadChoiceUrlDialog.this.downloadUrlBeans) {
                    if (downloadUrlBean.getIs_confirm() == 1) {
                        DownloadChoiceUrlDialog.this.downloadTask.setUrl(downloadUrlBean.getDown_source_url());
                        DownloadChoiceUrlDialog downloadChoiceUrlDialog = DownloadChoiceUrlDialog.this;
                        com.php25.PDownload.d.c(downloadChoiceUrlDialog.downloadTask, downloadChoiceUrlDialog.context);
                    }
                }
            }
            DownloadChoiceUrlDialog.this.finish();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadUrlBean f67288b;

        c(final DownloadUrlBean val$downloadUrlBean) {
            this.f67288b = val$downloadUrlBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DownloadChoiceUrlDialog.this.downloadTask.setUrl(this.f67288b.getDown_source_url());
            DownloadChoiceUrlDialog downloadChoiceUrlDialog = DownloadChoiceUrlDialog.this;
            com.php25.PDownload.d.c(downloadChoiceUrlDialog.downloadTask, downloadChoiceUrlDialog.context);
            DownloadChoiceUrlDialog.this.finish();
        }
    }

    @AfterViews
    void afterview() {
        this.context = this;
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.allpath);
        ((TextView) findViewById(R.id.titleText)).setText("选择下载源");
        TextView textView = (TextView) findViewById(R.id.cancletext);
        TextView textView2 = (TextView) findViewById(R.id.ok);
        textView.setOnClickListener(new a());
        textView2.setOnClickListener(new b());
        if (this.downloadUrlBeans != null) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(this);
            for (DownloadUrlBean downloadUrlBean : this.downloadUrlBeans) {
                if (downloadUrlBean.getDown_url_type() != 1 || this.isLocalShow) {
                    View viewInflate = layoutInflaterFrom.inflate(R.layout.download_choice_item, (ViewGroup) null);
                    TextView textView3 = (TextView) viewInflate.findViewById(R.id.downUrlName);
                    RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.localPathLayout);
                    textView3.setText(downloadUrlBean.getDown_source_name());
                    relativeLayout.setOnClickListener(new c(downloadUrlBean));
                    linearLayout.addView(viewInflate);
                }
            }
        }
    }
}
