package com.join.mgps.Util;

import android.content.Context;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.widget.EditText;

/* JADX INFO: loaded from: classes4.dex */
public class t {

    class a implements InputFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f50026a;

        a(final Context val$context) {
            this.f50026a = val$context;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            StringBuffer stringBuffer = new StringBuffer();
            int i10 = start;
            while (i10 < end) {
                char cCharAt = source.charAt(i10);
                if (t.c(cCharAt)) {
                    a3.b(this.f50026a).d("昵称不能含有表情");
                    i10++;
                } else {
                    stringBuffer.append(cCharAt);
                }
                i10++;
            }
            if (!(source instanceof Spanned) || source.length() <= 0) {
                return stringBuffer;
            }
            SpannableString spannableString = new SpannableString(stringBuffer);
            TextUtils.copySpansFrom((Spanned) source, start, end, null, spannableString, 0);
            return spannableString;
        }
    }

    class b implements InputFilter {
        b() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i10 = start; i10 < end; i10++) {
                stringBuffer.append(source.charAt(i10));
            }
            if (!(source instanceof Spanned) || source.length() <= 0) {
                return stringBuffer;
            }
            SpannableString spannableString = new SpannableString(stringBuffer);
            TextUtils.copySpansFrom((Spanned) source, start, end, null, spannableString, 0);
            return spannableString;
        }
    }

    public static InputFilter a(final Context context) {
        return new a(context);
    }

    public static InputFilter b(final Context context) {
        return new b();
    }

    public static boolean c(char codePoint) {
        if (codePoint == 0 || codePoint == '\t' || codePoint == '\n' || codePoint == '\r') {
            return false;
        }
        if (codePoint >= ' ' && codePoint <= 55295) {
            return false;
        }
        if (codePoint < 57344 || codePoint > 65533) {
            return codePoint < 0 || codePoint > 65535;
        }
        return false;
    }

    public static boolean d(char codePoint) {
        return Character.getType(codePoint) > 10;
    }

    private static boolean e(char codePoint) {
        return (codePoint == 0 || codePoint == '\t' || codePoint == '\n' || codePoint == '\r' || (codePoint >= ' ' && codePoint <= 55295) || ((codePoint >= 57344 && codePoint <= 65533) || (codePoint >= 0 && codePoint <= 65535))) ? false : true;
    }

    public static boolean f(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (e(str.charAt(i10))) {
                return true;
            }
        }
        return false;
    }

    public static void g(EditText et) {
        et.setFilters(new InputFilter[]{a(et.getContext()), b(et.getContext())});
    }
}
