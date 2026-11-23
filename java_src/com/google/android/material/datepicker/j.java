package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import com.google.android.material.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class j {
    private j() {
    }

    static Pair<String, String> a(@Nullable Long l10, @Nullable Long l11) {
        return b(l10, l11, null);
    }

    static Pair<String, String> b(@Nullable Long l10, @Nullable Long l11, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l10 == null && l11 == null) {
            return Pair.create(null, null);
        }
        if (l10 == null) {
            return Pair.create(null, d(l11.longValue(), simpleDateFormat));
        }
        if (l11 == null) {
            return Pair.create(d(l10.longValue(), simpleDateFormat), null);
        }
        Calendar calendarV = a0.v();
        Calendar calendarX = a0.x();
        calendarX.setTimeInMillis(l10.longValue());
        Calendar calendarX2 = a0.x();
        calendarX2.setTimeInMillis(l11.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l10.longValue())), simpleDateFormat.format(new Date(l11.longValue())));
        }
        if (calendarX.get(1) == calendarX2.get(1)) {
            return calendarX.get(1) == calendarV.get(1) ? Pair.create(g(l10.longValue(), Locale.getDefault()), g(l11.longValue(), Locale.getDefault())) : Pair.create(g(l10.longValue(), Locale.getDefault()), n(l11.longValue(), Locale.getDefault()));
        }
        return Pair.create(n(l10.longValue(), Locale.getDefault()), n(l11.longValue(), Locale.getDefault()));
    }

    static String c(long j10) {
        return d(j10, null);
    }

    static String d(long j10, @Nullable SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            return simpleDateFormat.format(new Date(j10));
        }
        return q(j10) ? f(j10) : m(j10);
    }

    static String e(Context context, long j10, boolean z10, boolean z11, boolean z12) {
        String strJ = j(j10);
        if (z10) {
            strJ = String.format(context.getString(R.string.mtrl_picker_today_description), strJ);
        }
        if (z11) {
            return String.format(context.getString(R.string.mtrl_picker_start_date_description), strJ);
        }
        return z12 ? String.format(context.getString(R.string.mtrl_picker_end_date_description), strJ) : strJ;
    }

    static String f(long j10) {
        return g(j10, Locale.getDefault());
    }

    static String g(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? a0.c(locale).format(new Date(j10)) : a0.o(locale).format(new Date(j10));
    }

    static String h(long j10) {
        return i(j10, Locale.getDefault());
    }

    static String i(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? a0.p(locale).format(new Date(j10)) : a0.k(locale).format(new Date(j10));
    }

    static String j(long j10) {
        return q(j10) ? h(j10) : o(j10);
    }

    static String k(Context context, int i10) {
        return a0.v().get(1) == i10 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i10)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i10));
    }

    static String l(long j10) {
        return Build.VERSION.SDK_INT >= 24 ? a0.A(Locale.getDefault()).format(new Date(j10)) : DateUtils.formatDateTime(null, j10, 8228);
    }

    static String m(long j10) {
        return n(j10, Locale.getDefault());
    }

    static String n(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? a0.z(locale).format(new Date(j10)) : a0.m(locale).format(new Date(j10));
    }

    static String o(long j10) {
        return p(j10, Locale.getDefault());
    }

    static String p(long j10, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? a0.B(locale).format(new Date(j10)) : a0.k(locale).format(new Date(j10));
    }

    private static boolean q(long j10) {
        Calendar calendarV = a0.v();
        Calendar calendarX = a0.x();
        calendarX.setTimeInMillis(j10);
        return calendarV.get(1) == calendarX.get(1);
    }
}
