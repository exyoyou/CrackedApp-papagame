package com.byazt.kf;

import android.content.Context;
import com.byazt.xj.ve;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1176, 20})
public class c extends ve<PageWebView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f16186c;

    public c(Context context) {
        super(context);
    }

    @Override // com.byazt.xj.ve
    /* JADX INFO: renamed from: sp, reason: merged with bridge method [inline-methods] */
    public PageWebView c() {
        return new PageWebView(this.tt);
    }

    @Override // com.byazt.xj.ve
    public void tt() {
        super.tt();
        ((PageWebView) this.f21881n).setMeta(com.byazt.omf.c.c(da()));
        ((PageWebView) this.f21881n).tt(da());
        ((PageWebView) this.f21881n).setUGenContext(this.f21874i);
        ((PageWebView) this.f21881n).c();
        ((PageWebView) this.f21881n).c(this.f16186c);
    }

    @Override // com.byazt.xj.ve
    public void c(String str, String str2) {
        super.c(str, str2);
        str.hashCode();
        if (str.equals("src")) {
            this.f16186c = str2;
        }
    }
}
