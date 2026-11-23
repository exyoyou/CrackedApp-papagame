package com.join.mgps.customview;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.CloudGameIndexActivity_;
import com.join.mgps.activity.ModGameIndexActivity_;

/* JADX INFO: loaded from: classes3.dex */
public class s extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SimpleDraweeView f66839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f66840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f66841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f66842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f66843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    DownloadTask f66844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f66845h;

    public s(Context context) {
        super(context);
        init();
    }

    private void e() {
        if (APKUtils.P(this.f66844g)) {
            APKUtils.w(this.mContext, this.f66844g);
            return;
        }
        if (!(com.join.android.app.common.utils.q.x() instanceof ModGameIndexActivity_) && !(com.join.android.app.common.utils.q.x() instanceof CloudGameIndexActivity_)) {
            ModGameIndexActivity_.intent(this.mContext).a("modStdDialog").b(this.f66843f).d(this.f66845h).start();
            return;
        }
        Intent intent = new Intent(p5.a.f96224u0);
        intent.putExtra("from", "modStdDialog");
        this.mContext.sendBroadcast(intent);
    }

    public void c(View parent, String gameId) {
        d(parent, gameId, gameId);
    }

    public void d(View parent, String gameId, String stdGameId) {
        this.f66843f = gameId;
        this.f66845h = stdGameId;
        showAtLocation(parent, 80, 0, 0);
        this.f66845h = gameId;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        this.f66844g = downloadTaskG;
        if (downloadTaskG == null) {
            return;
        }
        com.join.android.app.common.utils.l.h(this.f66839b, downloadTaskG.getPortraitURL());
        this.f66840c.setText("是否重新安装标准模式至本地？");
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_mod_stand_install, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f66839b = (SimpleDraweeView) this.parentView.findViewById(R.id.icon);
        this.f66840c = (TextView) this.parentView.findViewById(R.id.name);
        this.f66841d = this.parentView.findViewById(R.id.install);
        this.f66842e = this.parentView.findViewById(R.id.cancel);
        this.f66841d.setOnClickListener(this);
        this.f66842e.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.install) {
            dismiss();
            e();
        } else if (id2 == R.id.cancel) {
            dismiss();
        }
    }
}
