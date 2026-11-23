package com.join.mgps.Util;

import android.content.Context;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes4.dex */
public final class AccountUtil_ extends b {
    private static AccountUtil_ instance_;
    private Context context_;
    private Object rootFragment_;

    private AccountUtil_(Context context) {
        this.context_ = context;
    }

    public static AccountUtil_ getInstance_(Context context) {
        if (instance_ == null) {
            zc.c cVarC = zc.c.c(null);
            AccountUtil_ accountUtil_ = new AccountUtil_(context.getApplicationContext());
            instance_ = accountUtil_;
            accountUtil_.init_();
            zc.c.c(cVarC);
        }
        return instance_;
    }

    private void init_() {
        this.prefDef = new PrefDef_(this.context_);
    }

    private AccountUtil_(Context context, Object rootFragment) {
        this.context_ = context;
        this.rootFragment_ = rootFragment;
    }
}
