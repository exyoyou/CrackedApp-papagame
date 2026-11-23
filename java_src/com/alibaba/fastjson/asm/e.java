package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes7.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f6383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f6385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f6386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f6387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f6388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f6389g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f6390h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    e f6391i;

    e() {
    }

    boolean a(e eVar) {
        int i10 = this.f6384b;
        if (i10 != 1) {
            if (i10 != 15) {
                if (i10 == 12) {
                    return eVar.f6387e.equals(this.f6387e) && eVar.f6388f.equals(this.f6388f);
                }
                if (i10 != 13) {
                    switch (i10) {
                        case 3:
                        case 4:
                            return eVar.f6385c == this.f6385c;
                        case 5:
                        case 6:
                            break;
                        case 7:
                        case 8:
                            break;
                        default:
                            return eVar.f6387e.equals(this.f6387e) && eVar.f6388f.equals(this.f6388f) && eVar.f6389g.equals(this.f6389g);
                    }
                }
            }
            return eVar.f6386d == this.f6386d;
        }
        return eVar.f6387e.equals(this.f6387e);
    }

    void b(int i10) {
        this.f6384b = 3;
        this.f6385c = i10;
        this.f6390h = (3 + i10) & Integer.MAX_VALUE;
    }

    void c(int i10, String str, String str2, String str3) {
        this.f6384b = i10;
        this.f6387e = str;
        this.f6388f = str2;
        this.f6389g = str3;
        if (i10 != 1 && i10 != 7 && i10 != 8) {
            if (i10 == 12) {
                this.f6390h = (i10 + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
                return;
            } else if (i10 != 13) {
                this.f6390h = (i10 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
                return;
            }
        }
        this.f6390h = (i10 + str.hashCode()) & Integer.MAX_VALUE;
    }

    e(int i10, e eVar) {
        this.f6383a = i10;
        this.f6384b = eVar.f6384b;
        this.f6385c = eVar.f6385c;
        this.f6386d = eVar.f6386d;
        this.f6387e = eVar.f6387e;
        this.f6388f = eVar.f6388f;
        this.f6389g = eVar.f6389g;
        this.f6390h = eVar.f6390h;
    }
}
