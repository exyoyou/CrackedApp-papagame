package com.join.mgps.customview;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public final class GameTransferListItem_ extends GameTransferListItem implements zc.a, zc.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f65021n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zc.c f65022o;

    public GameTransferListItem_(Context context) {
        super(context);
        this.f65021n = false;
        this.f65022o = new zc.c();
        e();
    }

    public static GameTransferListItem d(Context context) {
        GameTransferListItem_ gameTransferListItem_ = new GameTransferListItem_(context);
        gameTransferListItem_.onFinishInflate();
        return gameTransferListItem_;
    }

    private void e() {
        zc.c cVarC = zc.c.c(this.f65022o);
        zc.c.b(this);
        zc.c.c(cVarC);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        if (!this.f65021n) {
            this.f65021n = true;
            View.inflate(getContext(), R.layout.game_transfer_list_item, this);
            this.f65022o.a(this);
        }
        super.onFinishInflate();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f65009b = (TextView) hasViews.internalFindViewById(R.id.game_transfer_item_game_name_txt);
        this.f65010c = (TextView) hasViews.internalFindViewById(R.id.game_transfer_item_game_size_txt);
        this.f65011d = (TextView) hasViews.internalFindViewById(R.id.game_transfer_list_item_transfer_status_txt);
        this.f65012e = (CheckBox) hasViews.internalFindViewById(R.id.game_transfer_list_item_transfer_status_chk);
        this.f65013f = (FrameLayout) hasViews.internalFindViewById(R.id.checkLayout);
        this.f65014g = (SimpleDraweeView) hasViews.internalFindViewById(R.id.game_transfer_item_game_icon_img);
    }
}
