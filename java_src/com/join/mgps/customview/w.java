package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class w extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SimpleDraweeView f67004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f67006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f67007e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f67008f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    a f67009g;

    public interface a {
        void a(String id2);
    }

    public w(Context context) {
        super(context);
        init();
    }

    public a c() {
        return this.f67009g;
    }

    public void d(a l10) {
        this.f67009g = l10;
    }

    public void e(View parent, String gameId) {
        showAtLocation(parent, 80, 0, 0);
        this.f67008f = gameId;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null) {
            return;
        }
        com.join.android.app.common.utils.l.h(this.f67004b, downloadTaskG.getPortraitURL());
        this.f67005c.setText("是否删除“" + downloadTaskG.getShowName() + "”？");
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_delete_game, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f67004b = (SimpleDraweeView) this.parentView.findViewById(R.id.icon);
        this.f67005c = (TextView) this.parentView.findViewById(R.id.name);
        this.f67006d = this.parentView.findViewById(R.id.delete);
        this.f67007e = this.parentView.findViewById(R.id.cancel);
        this.f67006d.setOnClickListener(this);
        this.f67007e.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 != R.id.delete) {
            if (id2 == R.id.cancel) {
                dismiss();
            }
        } else {
            a aVar = this.f67009g;
            if (aVar != null) {
                aVar.a(this.f67008f);
            }
            dismiss();
        }
    }
}
