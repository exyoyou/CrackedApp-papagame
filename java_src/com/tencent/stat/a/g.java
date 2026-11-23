package com.tencent.stat.a;

import android.content.Context;
import com.tencent.stat.StatGameUser;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private StatGameUser f83853a;

    public g(Context context, int i10, StatGameUser statGameUser) {
        super(context, i10);
        this.f83853a = null;
        this.f83853a = statGameUser.m43clone();
    }

    @Override // com.tencent.stat.a.e
    public f a() {
        return f.MTA_GAME_USER;
    }

    @Override // com.tencent.stat.a.e
    public boolean a(JSONObject jSONObject) {
        StatGameUser statGameUser = this.f83853a;
        if (statGameUser == null) {
            return false;
        }
        com.tencent.stat.common.k.a(jSONObject, "wod", statGameUser.getWorldName());
        com.tencent.stat.common.k.a(jSONObject, "gid", this.f83853a.getAccount());
        com.tencent.stat.common.k.a(jSONObject, "lev", this.f83853a.getLevel());
        return true;
    }
}
