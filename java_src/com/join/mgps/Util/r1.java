package com.join.mgps.Util;

import android.content.Context;
import android.text.InputFilter;
import android.text.Spanned;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class r1 implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f50013a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Context f50016d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f50014b = "[\\u4e00-\\u9fa5]";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f50015c = "[\\ud83c\\udc00-\\ud83c\\udfff]|[\\ud83d\\udc00-\\ud83d\\udfff]|[\\u2600-\\u27ff]";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Pattern f50017e = Pattern.compile("[\\u4e00-\\u9fa5]");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Pattern f50018f = Pattern.compile(this.f50015c);

    public r1(int mAX_EN, Context context) {
        this.f50013a = mAX_EN;
        this.f50016d = context;
    }

    private int a(String str) {
        Matcher matcher = this.f50017e.matcher(str);
        int i10 = 0;
        while (matcher.find()) {
            for (int i11 = 0; i11 <= matcher.groupCount(); i11++) {
                i10++;
            }
        }
        return i10;
    }

    private boolean b(String source) {
        return Pattern.matches(this.f50014b, source);
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
        if (this.f50018f.matcher(source).find()) {
            a3.b(this.f50016d).d("不支持表情");
        }
        int length = dest.toString().length() + a(dest.toString());
        int length2 = source.toString().length() + a(source.toString());
        int i10 = length + length2;
        int i11 = this.f50013a;
        if (i10 <= i11) {
            return source;
        }
        int i12 = i11 - length;
        int i13 = 0;
        String str = "";
        while (i12 > 0) {
            char cCharAt = source.charAt(i13);
            if (b(cCharAt + "")) {
                if (length2 >= 2) {
                    str = str + cCharAt;
                }
                i12 -= 2;
            } else {
                str = str + cCharAt;
                i12--;
            }
            i13++;
        }
        return str;
    }
}
