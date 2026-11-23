package com.ta.utdid2.device;

import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Random f83010b = new Random();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83011a;

    public f() {
        this.f83011a = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
        this.f83011a = com.ta.utdid2.android.utils.b.f("XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H".getBytes(), 2);
    }

    public static String b() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i10 = 0; i10 < 24; i10++) {
            stringBuffer.append((char) (f83010b.nextInt(25) + 65));
        }
        return stringBuffer.toString();
    }

    public String a(String str) {
        return com.ta.utdid2.android.utils.a.b(this.f83011a, str);
    }

    public String c(byte[] bArr) {
        return com.ta.utdid2.android.utils.a.d(this.f83011a, com.ta.utdid2.android.utils.b.f(bArr, 2));
    }

    public String d(String str) {
        return com.ta.utdid2.android.utils.a.d(this.f83011a, str);
    }
}
