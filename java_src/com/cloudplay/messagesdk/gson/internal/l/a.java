package com.cloudplay.messagesdk.gson.internal.l;

import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.h;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes9.dex */
final class a extends h<Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final TypeAdapterFactory f23917b = new C0524a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f23918a;

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.gson.internal.l.a$a, reason: collision with other inner class name */
    static class C0524a implements TypeAdapterFactory {
        C0524a() {
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            C0524a c0524a = null;
            if (aVar.a() == Date.class) {
                return new a(c0524a);
            }
            return null;
        }
    }

    /* synthetic */ a(C0524a c0524a) {
        this();
    }

    private a() {
        this.f23918a = new SimpleDateFormat("MMM d, yyyy");
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    public synchronized Date a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        if (aVar.q() == JsonToken.NULL) {
            aVar.o();
            return null;
        }
        try {
            return new Date(this.f23918a.parse(aVar.p()).getTime());
        } catch (ParseException e10) {
            throw new JsonSyntaxException(e10);
        }
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public synchronized void a(com.cloudplay.messagesdk.gson.stream.b bVar, Date date) throws IOException {
        bVar.c(date == null ? null : this.f23918a.format((java.util.Date) date));
    }
}
