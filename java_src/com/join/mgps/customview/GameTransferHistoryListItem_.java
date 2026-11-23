package com.join.mgps.customview;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public final class GameTransferHistoryListItem_ extends GameTransferHistoryListItem implements zc.a, zc.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f65006i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zc.c f65007j;

    public GameTransferHistoryListItem_(Context context) {
        super(context);
        this.f65006i = false;
        this.f65007j = new zc.c();
        f();
    }

    public static GameTransferHistoryListItem e(Context context) {
        GameTransferHistoryListItem_ gameTransferHistoryListItem_ = new GameTransferHistoryListItem_(context);
        gameTransferHistoryListItem_.onFinishInflate();
        return gameTransferHistoryListItem_;
    }

    private void f() {
        zc.c cVarC = zc.c.c(this.f65007j);
        zc.c.b(this);
        zc.c.c(cVarC);
    }

    @Override // zc.a
    public <T extends View> T internalFindViewById(int i10) {
        return (T) findViewById(i10);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        if (!this.f65006i) {
            this.f65006i = true;
            View.inflate(getContext(), R.layout.game_transfer_list_item, this);
            this.f65007j.a(this);
        }
        super.onFinishInflate();
    }

    @Override // zc.b
    public void onViewChanged(zc.a hasViews) {
        this.f64999b = (TextView) hasViews.internalFindViewById(R.id.game_transfer_item_game_name_txt);
        this.f65000c = (TextView) hasViews.internalFindViewById(R.id.game_transfer_item_game_size_txt);
        this.f65001d = (TextView) hasViews.internalFindViewById(R.id.game_transfer_list_item_transfer_status_txt);
        this.f65002e = (SimpleDraweeView) hasViews.internalFindViewById(R.id.game_transfer_item_game_icon_img);
    }
}
