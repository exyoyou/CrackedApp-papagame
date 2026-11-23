package com.cloudplay.messagesdk.gson.internal.l;

import com.cloudplay.messagesdk.gson.JsonSyntaxException;
import com.cloudplay.messagesdk.gson.TypeAdapterFactory;
import com.cloudplay.messagesdk.gson.h;
import com.cloudplay.messagesdk.gson.stream.JsonToken;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
final class b extends h<Time> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final TypeAdapterFactory f23919b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DateFormat f23920a;

    static class a implements TypeAdapterFactory {
        a() {
        }

        @Override // com.cloudplay.messagesdk.gson.TypeAdapterFactory
        public <T> h<T> create(com.cloudplay.messagesdk.gson.b bVar, com.cloudplay.messagesdk.gson.j.a<T> aVar) {
            a aVar2 = null;
            if (aVar.a() == Time.class) {
                return new b(aVar2);
            }
            return null;
        }
    }

    /* synthetic */ b(a aVar) {
        this();
    }

    private b() {
        this.f23920a = new SimpleDateFormat("hh:mm:ss a");
    }

    @Override // com.cloudplay.messagesdk.gson.h
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    public synchronized Time a2(com.cloudplay.messagesdk.gson.stream.a aVar) throws IOException {
        if (aVar.q() == JsonToken.NULL) {
            aVar.o();
            return null;
        }
        try {
            return new Time(this.f23920a.parse(aVar.p()).getTime());
        } catch (ParseException e10) {
            throw new JsonSyntaxException(e10);
        }
    }

    @Override // com.cloudplay.messagesdk.gson.h
    public synchronized void a(com.cloudplay.messagesdk.gson.stream.b bVar, Time time) throws IOException {
        bVar.c(time == null ? null : this.f23920a.format((Date) time));
    }
}
