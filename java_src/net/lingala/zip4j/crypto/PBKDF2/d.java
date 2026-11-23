package net.lingala.zip4j.crypto.PBKDF2;

/* JADX INFO: loaded from: classes.dex */
class d {
    d() {
    }

    public boolean a(e eVar, String str) {
        String[] strArrSplit;
        if (eVar == null || str == null || (strArrSplit = str.split(":")) == null || strArrSplit.length != 3) {
            return true;
        }
        byte[] bArrC = a.c(strArrSplit[0]);
        int i10 = Integer.parseInt(strArrSplit[1]);
        byte[] bArrC2 = a.c(strArrSplit[2]);
        eVar.j(bArrC);
        eVar.i(i10);
        eVar.f(bArrC2);
        return false;
    }

    public String b(e eVar) {
        StringBuffer stringBuffer = new StringBuffer(String.valueOf(a.a(eVar.e())));
        stringBuffer.append(":");
        stringBuffer.append(String.valueOf(eVar.d()));
        stringBuffer.append(":");
        stringBuffer.append(a.a(eVar.a()));
        return stringBuffer.toString();
    }
}
