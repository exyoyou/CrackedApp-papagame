package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class o<S> extends s<S> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f30557g = "THEME_RES_ID_KEY";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f30558h = "DATE_SELECTOR_KEY";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f30559i = "CALENDAR_CONSTRAINTS_KEY";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @StyleRes
    private int f30560d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private DateSelector<S> f30561e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private CalendarConstraints f30562f;

    class a extends r<S> {
        a() {
        }

        @Override // com.google.android.material.datepicker.r
        public void a() {
            Iterator<r<S>> it2 = o.this.f30582c.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
        }

        @Override // com.google.android.material.datepicker.r
        public void b(S s10) {
            Iterator<r<S>> it2 = o.this.f30582c.iterator();
            while (it2.hasNext()) {
                it2.next().b(s10);
            }
        }
    }

    @NonNull
    static <T> o<T> Q(DateSelector<T> dateSelector, @StyleRes int i10, @NonNull CalendarConstraints calendarConstraints) {
        o<T> oVar = new o<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f30557g, i10);
        bundle.putParcelable(f30558h, dateSelector);
        bundle.putParcelable(f30559i, calendarConstraints);
        oVar.setArguments(bundle);
        return oVar;
    }

    @Override // com.google.android.material.datepicker.s
    @NonNull
    public DateSelector<S> O() {
        DateSelector<S> dateSelector = this.f30561e;
        if (dateSelector != null) {
            return dateSelector;
        }
        throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f30560d = bundle.getInt(f30557g);
        this.f30561e = (DateSelector) bundle.getParcelable(f30558h);
        this.f30562f = (CalendarConstraints) bundle.getParcelable(f30559i);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.f30561e.j(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f30560d)), viewGroup, bundle, this.f30562f, new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f30557g, this.f30560d);
        bundle.putParcelable(f30558h, this.f30561e);
        bundle.putParcelable(f30559i, this.f30562f);
    }
}
