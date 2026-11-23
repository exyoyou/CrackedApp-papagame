package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private CharSequence f30491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f30492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f30493d = " ";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Long f30494e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Long f30495f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private Long f30496g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private Long f30497h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private SimpleDateFormat f30498i;

    class a extends e {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f30499j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f30500k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ r f30501l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, r rVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f30499j = textInputLayout2;
            this.f30500k = textInputLayout3;
            this.f30501l = rVar;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            RangeDateSelector.this.f30496g = null;
            RangeDateSelector.this.B(this.f30499j, this.f30500k, this.f30501l);
        }

        @Override // com.google.android.material.datepicker.e
        void g(@Nullable Long l10) {
            RangeDateSelector.this.f30496g = l10;
            RangeDateSelector.this.B(this.f30499j, this.f30500k, this.f30501l);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f30503j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f30504k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ r f30505l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, r rVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f30503j = textInputLayout2;
            this.f30504k = textInputLayout3;
            this.f30505l = rVar;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            RangeDateSelector.this.f30497h = null;
            RangeDateSelector.this.B(this.f30503j, this.f30504k, this.f30505l);
        }

        @Override // com.google.android.material.datepicker.e
        void g(@Nullable Long l10) {
            RangeDateSelector.this.f30497h = l10;
            RangeDateSelector.this.B(this.f30503j, this.f30504k, this.f30505l);
        }
    }

    class c implements Parcelable.Creator<RangeDateSelector> {
        c() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector createFromParcel(@NonNull Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.f30494e = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f30495f = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector[] newArray(int i10) {
            return new RangeDateSelector[i10];
        }
    }

    private void A(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (!TextUtils.isEmpty(textInputLayout.getError())) {
            this.f30491b = textInputLayout.getError();
        } else if (TextUtils.isEmpty(textInputLayout2.getError())) {
            this.f30491b = null;
        } else {
            this.f30491b = textInputLayout2.getError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull r<Pair<Long, Long>> rVar) {
        Long l10 = this.f30496g;
        if (l10 == null || this.f30497h == null) {
            m(textInputLayout, textInputLayout2);
            rVar.a();
        } else if (x(l10.longValue(), this.f30497h.longValue())) {
            this.f30494e = this.f30496g;
            this.f30495f = this.f30497h;
            rVar.b(p());
        } else {
            y(textInputLayout, textInputLayout2);
            rVar.a();
        }
        A(textInputLayout, textInputLayout2);
    }

    private void m(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.f30492c.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private boolean x(long j10, long j11) {
        return j10 <= j11;
    }

    private void y(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.f30492c);
        textInputLayout2.setError(" ");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int g() {
        return R.string.mtrl_picker_range_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    public String getError() {
        if (TextUtils.isEmpty(this.f30491b)) {
            return null;
        }
        return this.f30491b.toString();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int h(@NonNull Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return com.google.android.material.resources.b.g(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R.attr.materialCalendarTheme : R.attr.materialCalendarFullscreenTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View j(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull r<Pair<Long, Long>> rVar) {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (com.google.android.material.internal.k.b()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f30492c = viewInflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatG = this.f30498i;
        boolean z10 = simpleDateFormatG != null;
        if (!z10) {
            simpleDateFormatG = a0.g();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatG;
        Long l10 = this.f30494e;
        if (l10 != null) {
            editText.setText(simpleDateFormat.format(l10));
            this.f30496g = this.f30494e;
        }
        Long l11 = this.f30495f;
        if (l11 != null) {
            editText2.setText(simpleDateFormat.format(l11));
            this.f30497h = this.f30495f;
        }
        String pattern = z10 ? simpleDateFormat.toPattern() : a0.h(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        textInputLayout2.setPlaceholderText(pattern);
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, rVar));
        editText2.addTextChangedListener(new b(pattern, simpleDateFormat, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, rVar));
        h.c(editText, editText2);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void k(@Nullable SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            simpleDateFormat = (SimpleDateFormat) a0.q(simpleDateFormat);
        }
        this.f30498i = simpleDateFormat;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean l() {
        Long l10 = this.f30494e;
        return (l10 == null || this.f30495f == null || !x(l10.longValue(), this.f30495f.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> o() {
        ArrayList arrayList = new ArrayList();
        Long l10 = this.f30494e;
        if (l10 != null) {
            arrayList.add(l10);
        }
        Long l11 = this.f30495f;
        if (l11 != null) {
            arrayList.add(l11);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void q(long j10) {
        Long l10 = this.f30494e;
        if (l10 == null) {
            this.f30494e = Long.valueOf(j10);
        } else if (this.f30495f == null && x(l10.longValue(), j10)) {
            this.f30495f = Long.valueOf(j10);
        } else {
            this.f30495f = null;
            this.f30494e = Long.valueOf(j10);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String r(@NonNull Context context) {
        Resources resources = context.getResources();
        Pair<String, String> pairA = j.a(this.f30494e, this.f30495f);
        String str = pairA.first;
        String string = str == null ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : str;
        String str2 = pairA.second;
        return resources.getString(R.string.mtrl_picker_announce_current_range_selection, string, str2 == null ? resources.getString(R.string.mtrl_picker_announce_current_selection_none) : str2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String s(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l10 = this.f30494e;
        if (l10 == null && this.f30495f == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l11 = this.f30495f;
        if (l11 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, j.c(l10.longValue()));
        }
        if (l10 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, j.c(l11.longValue()));
        }
        Pair<String, String> pairA = j.a(l10, l11);
        return resources.getString(R.string.mtrl_picker_range_header_selected, pairA.first, pairA.second);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> v() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.f30494e, this.f30495f));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public Pair<Long, Long> p() {
        return new Pair<>(this.f30494e, this.f30495f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeValue(this.f30494e);
        parcel.writeValue(this.f30495f);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void i(@NonNull Pair<Long, Long> pair) {
        Long l10 = pair.first;
        if (l10 != null && pair.second != null) {
            Preconditions.checkArgument(x(l10.longValue(), pair.second.longValue()));
        }
        Long l11 = pair.first;
        this.f30494e = l11 == null ? null : Long.valueOf(a0.a(l11.longValue()));
        Long l12 = pair.second;
        this.f30495f = l12 != null ? Long.valueOf(a0.a(l12.longValue())) : null;
    }
}
