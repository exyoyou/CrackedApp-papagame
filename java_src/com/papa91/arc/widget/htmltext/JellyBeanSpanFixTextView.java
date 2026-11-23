package com.papa91.arc.widget.htmltext;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class JellyBeanSpanFixTextView extends TextView {

    private static class FixingResult {
        public final boolean fixed;
        public final List<Object> spansWithSpacesAfter;
        public final List<Object> spansWithSpacesBefore;

        private FixingResult(boolean z10, List<Object> list, List<Object> list2) {
            this.fixed = z10;
            this.spansWithSpacesBefore = list;
            this.spansWithSpacesAfter = list2;
        }

        public static FixingResult fixed(List<Object> list, List<Object> list2) {
            return new FixingResult(true, list, list2);
        }

        public static FixingResult notFixed() {
            return new FixingResult(false, null, null);
        }
    }

    public JellyBeanSpanFixTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    private FixingResult addSpacesAroundSpansUntilFixed(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
        Object[] spans = spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), Object.class);
        ArrayList arrayList = new ArrayList(spans.length);
        ArrayList arrayList2 = new ArrayList(spans.length);
        for (Object obj : spans) {
            int spanStart = spannableStringBuilder.getSpanStart(obj);
            if (isNotSpace(spannableStringBuilder, spanStart - 1)) {
                spannableStringBuilder.insert(spanStart, " ");
                arrayList.add(obj);
            }
            int spanEnd = spannableStringBuilder.getSpanEnd(obj);
            if (isNotSpace(spannableStringBuilder, spanEnd)) {
                spannableStringBuilder.insert(spanEnd, " ");
                arrayList2.add(obj);
            }
            try {
                continue;
                setTextAndMeasure(spannableStringBuilder, i10, i11);
                return FixingResult.fixed(arrayList, arrayList2);
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        return FixingResult.notFixed();
    }

    private void fallbackToString(int i10, int i11) {
        setTextAndMeasure(getText().toString(), i10, i11);
    }

    private void fixOnMeasure(int i10, int i11) {
        CharSequence text = getText();
        if (text instanceof Spanned) {
            fixSpannedWithSpaces(new SpannableStringBuilder(text), i10, i11);
        } else {
            fallbackToString(i10, i11);
        }
    }

    private void fixSpannedWithSpaces(SpannableStringBuilder spannableStringBuilder, int i10, int i11) {
        System.currentTimeMillis();
        FixingResult fixingResultAddSpacesAroundSpansUntilFixed = addSpacesAroundSpansUntilFixed(spannableStringBuilder, i10, i11);
        if (fixingResultAddSpacesAroundSpansUntilFixed.fixed) {
            removeUnneededSpaces(i10, i11, spannableStringBuilder, fixingResultAddSpacesAroundSpansUntilFixed);
        } else {
            fallbackToString(i10, i11);
        }
    }

    private boolean isNotSpace(CharSequence charSequence, int i10) {
        return i10 < 0 || i10 >= charSequence.length() || charSequence.charAt(i10) != ' ';
    }

    @SuppressLint({"WrongCall"})
    private void removeUnneededSpaces(int i10, int i11, SpannableStringBuilder spannableStringBuilder, FixingResult fixingResult) {
        boolean z10;
        Iterator<Object> it2 = fixingResult.spansWithSpacesAfter.iterator();
        while (it2.hasNext()) {
            int spanEnd = spannableStringBuilder.getSpanEnd(it2.next());
            spannableStringBuilder.delete(spanEnd, spanEnd + 1);
            try {
                setTextAndMeasure(spannableStringBuilder, i10, i11);
            } catch (IndexOutOfBoundsException unused) {
                spannableStringBuilder.insert(spanEnd, " ");
            }
        }
        Iterator<Object> it3 = fixingResult.spansWithSpacesBefore.iterator();
        loop1: while (true) {
            z10 = true;
            while (it3.hasNext()) {
                int spanStart = spannableStringBuilder.getSpanStart(it3.next());
                int i12 = spanStart - 1;
                spannableStringBuilder.delete(i12, spanStart);
                try {
                    setTextAndMeasure(spannableStringBuilder, i10, i11);
                    z10 = false;
                } catch (IndexOutOfBoundsException unused2) {
                    spannableStringBuilder.insert(i12, " ");
                }
            }
            break loop1;
        }
        if (z10) {
            setText(spannableStringBuilder);
            super.onMeasure(i10, i11);
        }
    }

    @SuppressLint({"WrongCall"})
    private void setTextAndMeasure(CharSequence charSequence, int i10, int i11) {
        setText(charSequence);
        super.onMeasure(i10, i11);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        try {
            super.onMeasure(i10, i11);
        } catch (IndexOutOfBoundsException unused) {
            fixOnMeasure(i10, i11);
        }
    }

    public JellyBeanSpanFixTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public JellyBeanSpanFixTextView(Context context) {
        super(context);
    }
}
