package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface DateSelector<S> extends Parcelable {
    @StringRes
    int g();

    @Nullable
    String getError();

    @StyleRes
    int h(Context context);

    void i(@NonNull S s10);

    @NonNull
    View j(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, @NonNull CalendarConstraints calendarConstraints, @NonNull r<S> rVar);

    void k(@Nullable SimpleDateFormat simpleDateFormat);

    boolean l();

    @NonNull
    Collection<Long> o();

    @Nullable
    S p();

    void q(long j10);

    @NonNull
    String r(@NonNull Context context);

    @NonNull
    String s(Context context);

    @NonNull
    Collection<Pair<Long, Long>> v();
}
