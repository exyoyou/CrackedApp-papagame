package cn.sharesdk.framework.a.b;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class i extends j {
    @Override // cn.sharesdk.framework.a.b.j, cn.sharesdk.framework.a.b.e
    protected String a() {
        return "[SHE]";
    }

    @Override // cn.sharesdk.framework.a.b.j, cn.sharesdk.framework.a.b.e
    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2544m)) {
            sb2.append(this.f2544m);
        }
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2545n)) {
            sb2.append(this.f2545n);
        }
        return sb2.toString();
    }
}
