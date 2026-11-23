package m6;

import android.content.Context;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.impl.Downloadable;
import com.join.kotlin.base.impl.GInfo;
import com.join.kotlin.utils.DlTaskManager;
import com.join.mgps.Util.d1;
import com.join.mgps.Util.w0;
import com.join.mgps.callbacks.f;
import com.join.mgps.customview.DownloadNormalView;
import com.join.mgps.dto.TipNew;

/* JADX INFO: loaded from: classes3.dex */
public class c implements f {
    private Downloadable downInfo;
    private Context mContext;

    public c(Context ctx, Downloadable info) {
        this.mContext = ctx;
        this.downInfo = info;
    }

    private void a(DownloadNormalView downView, TipNew showTip) {
        try {
            DownloadTask downloadTask = this.downInfo.getDownloadTask();
            if (downloadTask != null && downloadTask.getStatus() != 0) {
                downView.h("", false);
            } else if (showTip == null || showTip.getCoin() == null) {
                downView.h("", false);
            } else {
                downView.h(showTip.getCoin().getName(), true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void onButtonClicked(DownloadNormalView downView) {
        DlTaskManager.INSTANCE.performDownloadClick(this.mContext, this.downInfo);
    }

    @Override // com.join.mgps.callbacks.f
    public void onViewAttached(DownloadNormalView downView) {
        onViewUpdate(downView);
    }

    @Override // com.join.mgps.callbacks.f
    public void onViewClicked(DownloadNormalView downView) {
        onButtonClicked(downView);
    }

    @Override // com.join.mgps.callbacks.f
    public void onViewDetached() {
    }

    @Override // com.join.mgps.callbacks.f
    public void onViewUpdate(DownloadNormalView downView) {
        if (this.downInfo.isHmCloud() && this.downInfo.hasGInfo()) {
            GInfo gInfo = this.downInfo.getGInfo();
            if (w0.m(gInfo.getTagInfo()) || w0.k(gInfo.getTagInfo())) {
                downView.p(R.drawable.ic_hm_cloud_play);
                return;
            }
        }
        if (this.downInfo.isCpsGame() && d1.a(this.downInfo.getGInfo().getTagInfo())) {
            downView.i(5);
            return;
        }
        downView.b(this.downInfo);
        if (this.downInfo.hasGInfo()) {
            a(downView, this.downInfo.getGInfo().getSpTagInfo());
        }
    }
}
