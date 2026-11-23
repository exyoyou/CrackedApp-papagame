package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.internal.f0;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes5.dex */
abstract class e extends f0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final TextInputLayout f30537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f30538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DateFormat f30539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CalendarConstraints f30540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f30541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f30542g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Runnable f30543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f30544i = 0;

    e(final String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f30538c = str;
        this.f30539d = dateFormat;
        this.f30537b = textInputLayout;
        this.f30540e = calendarConstraints;
        this.f30541f = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.f30542g = new Runnable() { // from class: com.google.android.material.datepicker.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f30533b.e(str);
            }
        };
    }

    private Runnable c(final long j10) {
        return new Runnable() { // from class: com.google.android.material.datepicker.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f30535b.d(j10);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(long j10) {
        this.f30537b.setError(String.format(this.f30541f, i(j.c(j10))));
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(String str) {
        TextInputLayout textInputLayout = this.f30537b;
        DateFormat dateFormat = this.f30539d;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), i(str)) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), i(dateFormat.format(new Date(a0.v().getTimeInMillis())))));
        f();
    }

    private String i(String str) {
        return str.replace(' ', Typography.nbsp);
    }

    @Override // com.google.android.material.internal.f0, android.text.TextWatcher
    public void afterTextChanged(@NonNull Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0 && editable.length() < this.f30538c.length() && editable.length() >= this.f30544i) {
            char cCharAt = this.f30538c.charAt(editable.length());
            if (Character.isLetterOrDigit(cCharAt)) {
                return;
            }
            editable.append(cCharAt);
        }
    }

    @Override // com.google.android.material.internal.f0, android.text.TextWatcher
    public void beforeTextChanged(@NonNull CharSequence charSequence, int i10, int i11, int i12) {
        this.f30544i = charSequence.length();
    }

    void f() {
    }

    abstract void g(@Nullable Long l10);

    public void h(View view, Runnable runnable) {
        view.post(runnable);
    }

    @Override // com.google.android.material.internal.f0, android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i10, int i11, int i12) {
        this.f30537b.removeCallbacks(this.f30542g);
        this.f30537b.removeCallbacks(this.f30543h);
        this.f30537b.setError(null);
        g(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.f30538c.length()) {
            return;
        }
        try {
            Date date = this.f30539d.parse(charSequence.toString());
            this.f30537b.setError(null);
            long time = date.getTime();
            if (this.f30540e.w().e(time) && this.f30540e.I(time)) {
                g(Long.valueOf(date.getTime()));
                return;
            }
            Runnable runnableC = c(time);
            this.f30543h = runnableC;
            h(this.f30537b, runnableC);
        } catch (ParseException unused) {
            h(this.f30537b, this.f30542g);
        }
    }
}
