package io.netty.handler.codec.smtp;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface SmtpRequest {
    SmtpCommand command();

    List<CharSequence> parameters();
}
