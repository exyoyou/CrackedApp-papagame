package com.join.mgps.Util;

import android.content.Context;
import android.content.Intent;
import com.MApplication;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EBean;

/* JADX INFO: loaded from: classes4.dex */
@EBean(scope = EBean.Scope.Singleton)
public class m2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f49802a = "m2";

    public void a(Context context, StartGameMeta startGameMeta) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method startGame() called.");
        sb2.append(startGameMeta.toString());
        d(context, startGameMeta.getGameID());
        try {
            com.join.android.app.common.utils.g.t0(context).R(context, startGameMeta);
        } catch (Exception unused) {
        }
    }

    public void b(Context context, StartGameMeta startGameMeta) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method startNetBattleGame() called.gameId=");
        sb2.append(startGameMeta.getGameID());
        MApplication.Y = startGameMeta.getGroupId();
        com.join.android.app.common.utils.g.t0(context).Y(context, startGameMeta);
        d(context, startGameMeta.getGameID());
    }

    @Background
    void c(Context context, String gameId) {
    }

    @Background
    void d(Context context, String gameId) {
        q5.f.M().l0(gameId, true);
        Intent intent = new Intent(p5.a.f96203k);
        intent.putExtra("gameId", gameId);
        context.sendBroadcast(intent);
    }
}
