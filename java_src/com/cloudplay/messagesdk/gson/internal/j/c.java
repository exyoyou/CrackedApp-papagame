package com.cloudplay.messagesdk.gson.internal.j;

import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends com.cloudplay.messagesdk.gson.h<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TypeAdapterFactory f23814b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<DateFormat> f23815a;

    static class a implements TypeAdapterFactory {
        a() {
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> com.cloudplay.messagesdk.gson.h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new c();
            }
            return null;
        }
    }

    public c() {
        ArrayList arrayList = new ArrayList();
        this.f23815a = arrayList;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (com.cloudplay.messagesdk.gson.internal.d.c()) {
            arrayList.add(com.cloudplay.messagesdk.gson.internal.f.a(2, 2));
        }
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    public Date a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        if (aVar.q() == JsonToken.NULL) {
            aVar.o();
            return null;
        }
        return a(aVar.p());
    }

    private synchronized Date a(String str) {
        Iterator<DateFormat> it2 = this.f23815a.iterator();
        while (it2.hasNext()) {
            try {
                return it2.next().parse(str);
            } catch (ParseException unused) {
            }
        }
        try {
            return com.cloudplay.messagesdk.gson.internal.j.o.a.a(str, new ParsePosition(0));
        } catch (ParseException e10) {
            throw new JsonSyntaxException(str, e10);
        }
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public synchronized void a(com.cloudplay.messagesdk.gson.stream.b bVar, Date date) throws IOException {
        try {
            if (date == null) {
                bVar.h();
            } else {
                bVar.c(this.f23815a.get(0).format(date));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
