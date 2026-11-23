package com.ta.utdid2.device;

import com.ta.utdid2.android.utils.i;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f83009a;

    public e() {
        this.f83009a = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
        this.f83009a = com.ta.utdid2.android.utils.b.f("XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H".getBytes(), 0);
    }

    public String a(String str) {
        return com.ta.utdid2.android.utils.a.b(this.f83009a, str);
    }

    public String b(String str) {
        String strB = com.ta.utdid2.android.utils.a.b(this.f83009a, str);
        if (!i.c(strB)) {
            try {
                return new String(com.ta.utdid2.android.utils.b.a(strB, 0));
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }
}
