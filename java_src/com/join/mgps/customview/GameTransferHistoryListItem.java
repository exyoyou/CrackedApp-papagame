package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EViewGroup;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EViewGroup(R.layout.game_transfer_list_item)
public class GameTransferHistoryListItem extends RelativeLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f64998h = "GameTransferHistoryListItem";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById(R.id.game_transfer_item_game_name_txt)
    TextView f64999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById(R.id.game_transfer_item_game_size_txt)
    TextView f65000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById(R.id.game_transfer_list_item_transfer_status_txt)
    TextView f65001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById(R.id.game_transfer_item_game_icon_img)
    SimpleDraweeView f65002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    GameTransferBean f65003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Context f65004g;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GameTransferHistoryListItem gameTransferHistoryListItem = GameTransferHistoryListItem.this;
            GameTransferBean gameTransferBean = gameTransferHistoryListItem.f65003f;
            if (gameTransferBean != null) {
                String strC = gameTransferHistoryListItem.c(gameTransferBean.getId());
                if (t2.h(strC)) {
                    return;
                }
                GameTransferHistoryListItem.this.a(strC);
            }
        }
    }

    public GameTransferHistoryListItem(Context context) {
        super(context);
        this.f65004g = context;
    }

    void a(String apkpath) {
        com.join.android.app.common.utils.g.t0(this.f65004g).A(this.f65004g, apkpath);
    }

    public void b(GameTransferBean bean) {
        if (bean == null) {
            return;
        }
        this.f65003f = bean;
        this.f64999b.setText(bean.getGameName());
        this.f65000c.setText(bean.getSize() + "M");
        com.join.android.app.common.utils.l.d(this.f65002e, R.drawable.main_normal_icon, this.f65003f.getIconUrl());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bind:  gameName:::");
        sb2.append(this.f64999b.getText().toString());
        sb2.append("::gameSize:::");
        sb2.append(this.f65000c.getText().toString());
        this.f65001d.setOnClickListener(null);
        this.f65001d.setOnClickListener(new a());
        d();
    }

    String c(String id2) {
        DownloadTask downloadTaskG = q5.f.M().G(id2);
        if (downloadTaskG == null) {
            return null;
        }
        return downloadTaskG.getGameZipPath();
    }

    void d() {
        int transferStatus = this.f65003f.getTransferStatus();
        this.f65001d.setVisibility(0);
        this.f65001d.setClickable(false);
        TextView textView = this.f65001d;
        new Color();
        textView.setBackgroundColor(Color.alpha(0));
        switch (transferStatus) {
            case 1:
                this.f65001d.setText(R.string.waiting_status_game_transfer);
                this.f65001d.setTextColor(this.f65004g.getResources().getColor(R.color.black_game_transfer_game_size));
                break;
            case 2:
                this.f65001d.setText(this.f65003f.getProgerss() + "%");
                this.f65001d.setTextColor(this.f65004g.getResources().getColor(R.color.blue_game_transfer));
                break;
            case 3:
                this.f65001d.setText(R.string.game_transfer_success);
                this.f65001d.setTextColor(this.f65004g.getResources().getColor(R.color.blue_game_transfer));
                break;
            case 4:
                this.f65001d.setTextColor(SupportMenu.CATEGORY_MASK);
                this.f65001d.setText(R.string.transfer_failed_status_game_transfer);
                break;
            case 6:
                this.f65001d.setText(R.string.transfer_unzip_status_game_transfer);
                this.f65001d.setTextColor(this.f65004g.getResources().getColor(R.color.blue_game_transfer));
                break;
            case 7:
                this.f65001d.setBackgroundResource(R.drawable.bg_game_transfer_install_app_txt);
                this.f65001d.setText(R.string.transfer_install_status_game_transfer);
                this.f65001d.setTextColor(this.f65004g.getResources().getColor(R.color.app_green_color));
                this.f65001d.setClickable(true);
                break;
            case 8:
                this.f65001d.setTextColor(SupportMenu.CATEGORY_MASK);
                this.f65001d.setText(R.string.transfer_failed_status_game_transfer);
                break;
            case 9:
                this.f65001d.setText(R.string.transfer_success_status_game_transfer);
                this.f65001d.setTextColor(this.f65004g.getResources().getColor(R.color.blue_game_transfer));
                break;
        }
    }
}
