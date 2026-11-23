package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f30519a = "UTC";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static AtomicReference<u> f30520b = new AtomicReference<>();

    private a0() {
    }

    @TargetApi(24)
    static DateFormat A(Locale locale) {
        return d("yMMMM", locale);
    }

    @TargetApi(24)
    static DateFormat B(Locale locale) {
        return d("yMMMMEEEEd", locale);
    }

    @NonNull
    private static String C(@NonNull String str) {
        int iB = b(str, "yY", 1, 0);
        if (iB >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int iB2 = b(str, "EMd", 1, iB);
        if (iB2 < str.length()) {
            str2 = "EMd,";
        }
        return str.replace(str.substring(b(str, str2, -1, iB) + 1, iB2), " ").trim();
    }

    static void D(@Nullable u uVar) {
        f30520b.set(uVar);
    }

    static long a(long j10) {
        Calendar calendarX = x();
        calendarX.setTimeInMillis(j10);
        return f(calendarX).getTimeInMillis();
    }

    private static int b(@NonNull String str, @NonNull String str2, int i10, int i11) {
        while (i11 >= 0 && i11 < str.length() && str2.indexOf(str.charAt(i11)) == -1) {
            if (str.charAt(i11) == '\'') {
                do {
                    i11 += i10;
                    if (i11 < 0 || i11 >= str.length()) {
                        break;
                    }
                } while (str.charAt(i11) != '\'');
            }
            i11 += i10;
        }
        return i11;
    }

    @TargetApi(24)
    static DateFormat c(Locale locale) {
        return d("MMMd", locale);
    }

    @TargetApi(24)
    private static DateFormat d(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(w());
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        return instanceForSkeleton;
    }

    @NonNull
    static String e(@NonNull String str) {
        return str.replaceAll("[^dMy/\\-.]", "").replaceAll("d{1,2}", "dd").replaceAll("M{1,2}", "MM").replaceAll("y{1,4}", "yyyy").replaceAll("\\.$", "").replaceAll("My", "M/y");
    }

    static Calendar f(Calendar calendar) {
        Calendar calendarY = y(calendar);
        Calendar calendarX = x();
        calendarX.set(calendarY.get(1), calendarY.get(2), calendarY.get(5));
        return calendarX;
    }

    static SimpleDateFormat g() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(e(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toPattern()), Locale.getDefault());
        simpleDateFormat.setTimeZone(u());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    static String h(Resources resources, SimpleDateFormat simpleDateFormat) {
        String pattern = simpleDateFormat.toPattern();
        String string = resources.getString(R.string.mtrl_picker_text_input_year_abbr);
        String string2 = resources.getString(R.string.mtrl_picker_text_input_month_abbr);
        String string3 = resources.getString(R.string.mtrl_picker_text_input_day_abbr);
        if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage())) {
            pattern = pattern.replaceAll("d+", com.kuaishou.weapon.p0.t.f74895t).replaceAll("M+", "M").replaceAll("y+", "y");
        }
        return pattern.replace(com.kuaishou.weapon.p0.t.f74895t, string3).replace("M", string2).replace("y", string);
    }

    private static java.text.DateFormat i(int i10, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i10, locale);
        dateInstance.setTimeZone(u());
        return dateInstance;
    }

    static java.text.DateFormat j() {
        return k(Locale.getDefault());
    }

    static java.text.DateFormat k(Locale locale) {
        return i(0, locale);
    }

    static java.text.DateFormat l() {
        return m(Locale.getDefault());
    }

    static java.text.DateFormat m(Locale locale) {
        return i(2, locale);
    }

    static java.text.DateFormat n() {
        return o(Locale.getDefault());
    }

    static java.text.DateFormat o(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) m(locale);
        simpleDateFormat.applyPattern(C(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    @TargetApi(24)
    static DateFormat p(Locale locale) {
        return d("MMMMEEEEd", locale);
    }

    static java.text.DateFormat q(@NonNull java.text.DateFormat dateFormat) {
        java.text.DateFormat dateFormat2 = (java.text.DateFormat) dateFormat.clone();
        dateFormat2.setTimeZone(u());
        return dateFormat2;
    }

    static SimpleDateFormat r(String str) {
        return s(str, Locale.getDefault());
    }

    private static SimpleDateFormat s(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(u());
        return simpleDateFormat;
    }

    static u t() {
        u uVar = f30520b.get();
        return uVar == null ? u.e() : uVar;
    }

    private static TimeZone u() {
        return TimeZone.getTimeZone(f30519a);
    }

    static Calendar v() {
        Calendar calendarC = t().c();
        calendarC.set(11, 0);
        calendarC.set(12, 0);
        calendarC.set(13, 0);
        calendarC.set(14, 0);
        calendarC.setTimeZone(u());
        return calendarC;
    }

    @TargetApi(24)
    private static android.icu.util.TimeZone w() {
        return android.icu.util.TimeZone.getTimeZone(f30519a);
    }

    static Calendar x() {
        return y(null);
    }

    static Calendar y(@Nullable Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(u());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    static DateFormat z(Locale locale) {
        return d("yMMMd", locale);
    }
}
