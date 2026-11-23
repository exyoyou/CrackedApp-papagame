package io.netty.handler.codec.http;

import io.netty.handler.codec.DefaultHeaders;
import io.netty.handler.codec.Headers;
import io.netty.handler.codec.ValueConverter;
import io.netty.util.AsciiString;
import io.netty.util.HashingStrategy;
import io.netty.util.internal.StringUtil;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CombinedHttpHeaders extends DefaultHttpHeaders {

    private static final class CombinedHttpHeadersImpl extends DefaultHeaders<CharSequence, CharSequence, CombinedHttpHeadersImpl> {
        private static final int VALUE_LENGTH_ESTIMATE = 10;
        private CsvValueEscaper<CharSequence> charSequenceEscaper;
        private CsvValueEscaper<Object> objectEscaper;

        private interface CsvValueEscaper<T> {
            CharSequence escape(T t10);
        }

        CombinedHttpHeadersImpl(HashingStrategy<CharSequence> hashingStrategy, ValueConverter<CharSequence> valueConverter, DefaultHeaders.NameValidator<CharSequence> nameValidator) {
            super(hashingStrategy, valueConverter, nameValidator);
        }

        private CombinedHttpHeadersImpl addEscapedValue(CharSequence charSequence, CharSequence charSequence2) {
            CharSequence charSequence3 = (CharSequence) super.get(charSequence);
            if (charSequence3 == null || cannotBeCombined(charSequence)) {
                super.add(charSequence, charSequence2);
            } else {
                super.set(charSequence, commaSeparateEscapedValues(charSequence3, charSequence2));
            }
            return this;
        }

        private static boolean cannotBeCombined(CharSequence charSequence) {
            return HttpHeaderNames.SET_COOKIE.contentEqualsIgnoreCase(charSequence);
        }

        private CsvValueEscaper<CharSequence> charSequenceEscaper() {
            if (this.charSequenceEscaper == null) {
                this.charSequenceEscaper = new CsvValueEscaper<CharSequence>() { // from class: io.netty.handler.codec.http.CombinedHttpHeaders.CombinedHttpHeadersImpl.2
                    @Override // io.netty.handler.codec.http.CombinedHttpHeaders.CombinedHttpHeadersImpl.CsvValueEscaper
                    public CharSequence escape(CharSequence charSequence) {
                        return StringUtil.escapeCsv(charSequence, true);
                    }
                };
            }
            return this.charSequenceEscaper;
        }

        private static <T> CharSequence commaSeparate(CsvValueEscaper<T> csvValueEscaper, T... tArr) {
            StringBuilder sb2 = new StringBuilder(tArr.length * 10);
            if (tArr.length > 0) {
                int length = tArr.length - 1;
                for (int i10 = 0; i10 < length; i10++) {
                    sb2.append(csvValueEscaper.escape(tArr[i10]));
                    sb2.append(StringUtil.COMMA);
                }
                sb2.append(csvValueEscaper.escape(tArr[length]));
            }
            return sb2;
        }

        private static CharSequence commaSeparateEscapedValues(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb2 = new StringBuilder(charSequence.length() + 1 + charSequence2.length());
            sb2.append(charSequence);
            sb2.append(StringUtil.COMMA);
            sb2.append(charSequence2);
            return sb2;
        }

        private CsvValueEscaper<Object> objectEscaper() {
            if (this.objectEscaper == null) {
                this.objectEscaper = new CsvValueEscaper<Object>() { // from class: io.netty.handler.codec.http.CombinedHttpHeaders.CombinedHttpHeadersImpl.1
                    @Override // io.netty.handler.codec.http.CombinedHttpHeaders.CombinedHttpHeadersImpl.CsvValueEscaper
                    public CharSequence escape(Object obj) {
                        return StringUtil.escapeCsv((CharSequence) CombinedHttpHeadersImpl.this.valueConverter().convertObject(obj), true);
                    }
                };
            }
            return this.objectEscaper;
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public /* bridge */ /* synthetic */ Headers add(Headers headers) {
            return add((Headers<? extends CharSequence, ? extends CharSequence, ?>) headers);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public /* bridge */ /* synthetic */ Headers addObject(Object obj, Iterable iterable) {
            return addObject((CharSequence) obj, (Iterable<?>) iterable);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public /* bridge */ /* synthetic */ Headers set(Headers headers) {
            return set((Headers<? extends CharSequence, ? extends CharSequence, ?>) headers);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public /* bridge */ /* synthetic */ Headers setAll(Headers headers) {
            return setAll((Headers<? extends CharSequence, ? extends CharSequence, ?>) headers);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public /* bridge */ /* synthetic */ Headers setObject(Object obj, Iterable iterable) {
            return setObject((CharSequence) obj, (Iterable<?>) iterable);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public /* bridge */ /* synthetic */ Headers add(Object obj, Iterable iterable) {
            return add((CharSequence) obj, (Iterable<? extends CharSequence>) iterable);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public List<CharSequence> getAll(CharSequence charSequence) {
            List<CharSequence> all = super.getAll(charSequence);
            if (all.isEmpty() || cannotBeCombined(charSequence)) {
                return all;
            }
            if (all.size() == 1) {
                return StringUtil.unescapeCsvFields(all.get(0));
            }
            throw new IllegalStateException("CombinedHttpHeaders should only have one value");
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public /* bridge */ /* synthetic */ Headers set(Object obj, Iterable iterable) {
            return set((CharSequence) obj, (Iterable<? extends CharSequence>) iterable);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl setAll(Headers<? extends CharSequence, ? extends CharSequence, ?> headers) {
            if (headers == this) {
                return this;
            }
            Iterator<? extends CharSequence> it2 = headers.names().iterator();
            while (it2.hasNext()) {
                remove(it2.next());
            }
            return add(headers);
        }

        @Override // io.netty.handler.codec.DefaultHeaders
        public Iterator<CharSequence> valueIterator(CharSequence charSequence) {
            Iterator<CharSequence> itValueIterator = super.valueIterator(charSequence);
            if (!itValueIterator.hasNext() || cannotBeCombined(charSequence)) {
                return itValueIterator;
            }
            Iterator<CharSequence> it2 = StringUtil.unescapeCsvFields(itValueIterator.next()).iterator();
            if (itValueIterator.hasNext()) {
                throw new IllegalStateException("CombinedHttpHeaders should only have one value");
            }
            return it2;
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl addObject(CharSequence charSequence, Object obj) {
            return addEscapedValue(charSequence, commaSeparate(objectEscaper(), obj));
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl set(Headers<? extends CharSequence, ? extends CharSequence, ?> headers) {
            if (headers == this) {
                return this;
            }
            clear();
            return add(headers);
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl setObject(CharSequence charSequence, Object obj) {
            super.set(charSequence, commaSeparate(objectEscaper(), obj));
            return this;
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl add(Headers<? extends CharSequence, ? extends CharSequence, ?> headers) {
            if (headers != this) {
                if (headers instanceof CombinedHttpHeadersImpl) {
                    if (isEmpty()) {
                        addImpl(headers);
                    } else {
                        for (Map.Entry<? extends CharSequence, ? extends CharSequence> entry : headers) {
                            addEscapedValue(entry.getKey(), entry.getValue());
                        }
                    }
                } else {
                    for (Map.Entry<? extends CharSequence, ? extends CharSequence> entry2 : headers) {
                        add(entry2.getKey(), entry2.getValue());
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("can't add to itself.");
        }

        public CombinedHttpHeadersImpl addObject(CharSequence charSequence, Iterable<?> iterable) {
            return addEscapedValue(charSequence, commaSeparate(objectEscaper(), iterable));
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl setObject(CharSequence charSequence, Object... objArr) {
            super.set(charSequence, commaSeparate(objectEscaper(), objArr));
            return this;
        }

        private static <T> CharSequence commaSeparate(CsvValueEscaper<T> csvValueEscaper, Iterable<? extends T> iterable) {
            StringBuilder sb2 = iterable instanceof Collection ? new StringBuilder(((Collection) iterable).size() * 10) : new StringBuilder();
            Iterator<? extends T> it2 = iterable.iterator();
            if (it2.hasNext()) {
                T next = it2.next();
                while (it2.hasNext()) {
                    sb2.append(csvValueEscaper.escape(next));
                    sb2.append(StringUtil.COMMA);
                    next = it2.next();
                }
                sb2.append(csvValueEscaper.escape(next));
            }
            return sb2;
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl addObject(CharSequence charSequence, Object... objArr) {
            return addEscapedValue(charSequence, commaSeparate(objectEscaper(), objArr));
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl set(CharSequence charSequence, CharSequence... charSequenceArr) {
            super.set(charSequence, commaSeparate(charSequenceEscaper(), charSequenceArr));
            return this;
        }

        public CombinedHttpHeadersImpl setObject(CharSequence charSequence, Iterable<?> iterable) {
            super.set(charSequence, commaSeparate(objectEscaper(), iterable));
            return this;
        }

        public CombinedHttpHeadersImpl set(CharSequence charSequence, Iterable<? extends CharSequence> iterable) {
            super.set(charSequence, commaSeparate(charSequenceEscaper(), iterable));
            return this;
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl add(CharSequence charSequence, CharSequence charSequence2) {
            return addEscapedValue(charSequence, charSequenceEscaper().escape(charSequence2));
        }

        @Override // io.netty.handler.codec.DefaultHeaders, io.netty.handler.codec.Headers
        public CombinedHttpHeadersImpl add(CharSequence charSequence, CharSequence... charSequenceArr) {
            return addEscapedValue(charSequence, commaSeparate(charSequenceEscaper(), charSequenceArr));
        }

        public CombinedHttpHeadersImpl add(CharSequence charSequence, Iterable<? extends CharSequence> iterable) {
            return addEscapedValue(charSequence, commaSeparate(charSequenceEscaper(), iterable));
        }
    }

    public CombinedHttpHeaders(boolean z10) {
        super(new CombinedHttpHeadersImpl(AsciiString.CASE_INSENSITIVE_HASHER, DefaultHttpHeaders.valueConverter(z10), DefaultHttpHeaders.nameValidator(z10)));
    }

    @Override // io.netty.handler.codec.http.HttpHeaders
    public boolean containsValue(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        return super.containsValue(charSequence, StringUtil.trimOws(charSequence2), z10);
    }
}
