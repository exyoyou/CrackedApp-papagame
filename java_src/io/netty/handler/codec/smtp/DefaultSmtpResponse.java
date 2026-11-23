package io.netty.handler.codec.smtp;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultSmtpResponse implements SmtpResponse {
    private final int code;
    private final List<CharSequence> details;

    public DefaultSmtpResponse(int i10) {
        this(i10, (List<CharSequence>) null);
    }

    @Override // io.netty.handler.codec.smtp.SmtpResponse
    public int code() {
        return this.code;
    }

    @Override // io.netty.handler.codec.smtp.SmtpResponse
    public List<CharSequence> details() {
        return this.details;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DefaultSmtpResponse)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        DefaultSmtpResponse defaultSmtpResponse = (DefaultSmtpResponse) obj;
        return code() == defaultSmtpResponse.code() && details().equals(defaultSmtpResponse.details());
    }

    public int hashCode() {
        return (this.code * 31) + this.details.hashCode();
    }

    public String toString() {
        return "DefaultSmtpResponse{code=" + this.code + ", details=" + this.details + '}';
    }

    public DefaultSmtpResponse(int i10, CharSequence... charSequenceArr) {
        this(i10, SmtpUtils.toUnmodifiableList(charSequenceArr));
    }

    DefaultSmtpResponse(int i10, List<CharSequence> list) {
        if (i10 >= 100 && i10 <= 599) {
            this.code = i10;
            if (list == null) {
                this.details = Collections.emptyList();
                return;
            } else {
                this.details = Collections.unmodifiableList(list);
                return;
            }
        }
        throw new IllegalArgumentException("code must be 100 <= code <= 599");
    }
}
