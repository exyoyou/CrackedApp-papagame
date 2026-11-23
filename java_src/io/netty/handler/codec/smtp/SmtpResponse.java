package io.netty.handler.codec.smtp;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface SmtpResponse {
    int code();

    List<CharSequence> details();
}
