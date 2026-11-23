package com.join.mgps.customview;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameTransferBean;
import org.androidannotations.annotations.EViewGroup;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EViewGroup(R.layout.game_transfer_list_item)
public class GameTransferListItem extends RelativeLayout {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f65008m = "GameTransferListItem";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @ViewById(R.id.game_transfer_item_game_name_txt)
    TextView f65009b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById(R.id.game_transfer_item_game_size_txt)
    TextView f65010c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById(R.id.game_transfer_list_item_transfer_status_txt)
    TextView f65011d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @ViewById(R.id.game_transfer_list_item_transfer_status_chk)
    CheckBox f65012e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @ViewById
    FrameLayout f65013f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @ViewById(R.id.game_transfer_item_game_icon_img)
    SimpleDraweeView f65014g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    GameTransferBean f65015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f65016i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f65017j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    SparseArray<GameTransferBean> f65018k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Context f65019l;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            boolean z10 = !GameTransferListItem.this.f65012e.isChecked();
            GameTransferListItem.this.f65012e.setChecked(z10);
            String unused = GameTransferListItem.f65008m;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("changeCheckboxStatus: ");
            sb2.append(z10);
            sb2.append("位置");
            sb2.append(GameTransferListItem.this.f65016i);
            GameTransferListItem.this.f65015h.setSelectedTransfer(z10);
            GameTransferListItem gameTransferListItem = GameTransferListItem.this;
            gameTransferListItem.f65018k.setValueAt(gameTransferListItem.f65016i, gameTransferListItem.f65015h);
            org.greenrobot.eventbus.c.f().q(GameTransferListItem.this.f65015h);
        }
    }

    public GameTransferListItem(Context context) {
        super(context);
        this.f65019l = context;
    }

    public void b(int position, SparseArray<GameTransferBean> array, boolean sending) {
        if (array == null) {
            return;
        }
        this.f65016i = position;
        this.f65018k = array;
        GameTransferBean gameTransferBeanValueAt = array.valueAt(position);
        this.f65015h = gameTransferBeanValueAt;
        this.f65009b.setText(gameTransferBeanValueAt.getGameName());
        this.f65010c.setText(this.f65015h.getSize() + "M");
        this.f65017j = this.f65015h.isSelectedTransfer();
        com.join.android.app.common.utils.l.d(this.f65014g, R.drawable.main_normal_icon, this.f65015h.getIconUrl());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("bind: 图片地址");
        sb2.append(this.f65015h.getIconUrl());
        this.f65012e.setEnabled(false);
        this.f65012e.setChecked(this.f65017j);
        this.f65013f.setOnClickListener(null);
        this.f65013f.setEnabled(!sending);
        setOnClickListener(null);
        a aVar = new a();
        this.f65013f.setClickable(false);
        if (this.f65015h.getTransferStatus() == -1) {
            setOnClickListener(aVar);
        }
        c();
    }

    void c() {
        int transferStatus = this.f65015h.getTransferStatus();
        if (transferStatus == -1) {
            this.f65013f.setVisibility(0);
        } else {
            this.f65013f.setVisibility(8);
            this.f65011d.setVisibility(0);
        }
        this.f65011d.setText("");
        if (transferStatus == 1) {
            this.f65011d.setText(R.string.waiting_status_game_transfer);
            return;
        }
        if (transferStatus == 2) {
            this.f65011d.setText(this.f65015h.getProgerss() + "%");
            return;
        }
        if (transferStatus == 3) {
            this.f65011d.setText(R.string.transfer_success_status_game_transfer);
            this.f65011d.setTextColor(this.f65019l.getResources().getColor(R.color.blue_game_transfer));
        } else if (transferStatus == 4) {
            this.f65011d.setTextColor(SupportMenu.CATEGORY_MASK);
            this.f65011d.setText(R.string.transfer_failed_status_game_transfer);
        } else {
            if (transferStatus != 5) {
                return;
            }
            this.f65011d.setText(R.string.transfer_zip_status_game_transfer);
        }
    }
}
