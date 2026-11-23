package io.netty.handler.codec.smtp;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class SmtpUtils {
    private SmtpUtils() {
    }

    static List<CharSequence> toUnmodifiableList(CharSequence... charSequenceArr) {
        return (charSequenceArr == null || charSequenceArr.length == 0) ? Collections.emptyList() : Collections.unmodifiableList(Arrays.asList(charSequenceArr));
    }
}
