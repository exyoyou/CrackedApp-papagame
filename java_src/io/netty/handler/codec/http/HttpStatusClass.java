package io.netty.handler.codec.http;

import io.netty.util.AsciiString;

/* JADX INFO: loaded from: classes.dex */
public enum HttpStatusClass {
    INFORMATIONAL(100, 200, "Informational"),
    SUCCESS(200, 300, "Success"),
    REDIRECTION(300, 400, "Redirection"),
    CLIENT_ERROR(400, 500, "Client Error"),
    SERVER_ERROR(500, 600, "Server Error"),
    UNKNOWN(0, 0, "Unknown Status") { // from class: io.netty.handler.codec.http.HttpStatusClass.1
        @Override // io.netty.handler.codec.http.HttpStatusClass
        public boolean contains(int i10) {
            return i10 < 100 || i10 >= 600;
        }
    };

    private final AsciiString defaultReasonPhrase;
    private final int max;
    private final int min;

    private static int digit(char c10) {
        return c10 - '0';
    }

    private static boolean isDigit(char c10) {
        return c10 >= '0' && c10 <= '9';
    }

    public boolean contains(int i10) {
        return i10 >= this.min && i10 < this.max;
    }

    AsciiString defaultReasonPhrase() {
        return this.defaultReasonPhrase;
    }

    HttpStatusClass(int i10, int i11, String str) {
        this.min = i10;
        this.max = i11;
        this.defaultReasonPhrase = AsciiString.cached(str);
    }

    public static HttpStatusClass valueOf(int i10) {
        HttpStatusClass httpStatusClass = INFORMATIONAL;
        if (httpStatusClass.contains(i10)) {
            return httpStatusClass;
        }
        HttpStatusClass httpStatusClass2 = SUCCESS;
        if (httpStatusClass2.contains(i10)) {
            return httpStatusClass2;
        }
        HttpStatusClass httpStatusClass3 = REDIRECTION;
        if (httpStatusClass3.contains(i10)) {
            return httpStatusClass3;
        }
        HttpStatusClass httpStatusClass4 = CLIENT_ERROR;
        if (httpStatusClass4.contains(i10)) {
            return httpStatusClass4;
        }
        HttpStatusClass httpStatusClass5 = SERVER_ERROR;
        return httpStatusClass5.contains(i10) ? httpStatusClass5 : UNKNOWN;
    }

    public static HttpStatusClass valueOf(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() == 3) {
            char cCharAt = charSequence.charAt(0);
            return (isDigit(cCharAt) && isDigit(charSequence.charAt(1)) && isDigit(charSequence.charAt(2))) ? valueOf(digit(cCharAt) * 100) : UNKNOWN;
        }
        return UNKNOWN;
    }
}
