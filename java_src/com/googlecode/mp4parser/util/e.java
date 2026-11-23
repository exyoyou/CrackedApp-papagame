package com.googlecode.mp4parser.util;

import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    public static long a(Date date) {
        return (date.getTime() / 1000) + 2082844800;
    }

    public static Date b(long j10) {
        return new Date((j10 - 2082844800) * 1000);
    }
}
