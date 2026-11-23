package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final u f30585c = new u(null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final Long f30586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final TimeZone f30587b;

    private u(@Nullable Long l10, @Nullable TimeZone timeZone) {
        this.f30586a = l10;
        this.f30587b = timeZone;
    }

    static u a(long j10) {
        return new u(Long.valueOf(j10), null);
    }

    static u b(long j10, @Nullable TimeZone timeZone) {
        return new u(Long.valueOf(j10), timeZone);
    }

    static u e() {
        return f30585c;
    }

    Calendar c() {
        return d(this.f30587b);
    }

    Calendar d(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l10 = this.f30586a;
        if (l10 != null) {
            calendar.setTimeInMillis(l10.longValue());
        }
        return calendar;
    }
}
