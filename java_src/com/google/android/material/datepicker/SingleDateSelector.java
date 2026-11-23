package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private CharSequence f30507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Long f30508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private SimpleDateFormat f30509d;

    class a extends e {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ r f30510j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f30511k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, r rVar, TextInputLayout textInputLayout2) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f30510j = rVar;
            this.f30511k = textInputLayout2;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            SingleDateSelector.this.f30507b = this.f30511k.getError();
            this.f30510j.a();
        }

        @Override // com.google.android.material.datepicker.e
        void g(@Nullable Long l10) {
            if (l10 == null) {
                SingleDateSelector.this.d();
            } else {
                SingleDateSelector.this.q(l10.longValue());
            }
            SingleDateSelector.this.f30507b = null;
            this.f30510j.b(SingleDateSelector.this.p());
        }
    }

    class b implements Parcelable.Creator<SingleDateSelector> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector createFromParcel(@NonNull Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.f30508c = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector[] newArray(int i10) {
            return new SingleDateSelector[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f30508c = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Long p() {
        return this.f30508c;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int g() {
        return R.string.mtrl_picker_date_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    public String getError() {
        if (TextUtils.isEmpty(this.f30507b)) {
            return null;
        }
        return this.f30507b.toString();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int h(Context context) {
        return com.google.android.material.resources.b.g(context, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View j(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull r<Long> rVar) {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (com.google.android.material.internal.k.b()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatG = this.f30509d;
        boolean z10 = simpleDateFormatG != null;
        if (!z10) {
            simpleDateFormatG = a0.g();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatG;
        String pattern = z10 ? simpleDateFormat.toPattern() : a0.h(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        Long l10 = this.f30508c;
        if (l10 != null) {
            editText.setText(simpleDateFormat.format(l10));
        }
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, rVar, textInputLayout));
        h.c(editText);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void k(@Nullable SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            simpleDateFormat = (SimpleDateFormat) a0.q(simpleDateFormat);
        }
        this.f30509d = simpleDateFormat;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean l() {
        return this.f30508c != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public void i(@Nullable Long l10) {
        this.f30508c = l10 == null ? null : Long.valueOf(a0.a(l10.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> o() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.f30508c;
        if (l10 != null) {
            arrayList.add(l10);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void q(long j10) {
        this.f30508c = Long.valueOf(j10);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String r(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f30508c;
        return resources.getString(R.string.mtrl_picker_announce_current_selection, l10 == null ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : j.m(l10.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String s(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f30508c;
        if (l10 == null) {
            return resources.getString(R.string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R.string.mtrl_picker_date_header_selected, j.m(l10.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> v() {
        return new ArrayList();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeValue(this.f30508c);
    }
}
