package com.cloudplay.messagesdk.gson;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes9.dex */
public abstract class d {
    public c a() {
        if (d()) {
            return (c) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public f b() {
        if (f()) {
            return (f) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public g c() {
        if (g()) {
            return (g) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public boolean d() {
        return this instanceof c;
    }

    public boolean e() {
        return this instanceof e;
    }

    public boolean f() {
        return this instanceof f;
    }

    public boolean g() {
        return this instanceof g;
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            com.cloudplay.messagesdk.gson.stream.b bVar = new com.cloudplay.messagesdk.gson.stream.b(stringWriter);
            bVar.b(true);
            com.cloudplay.messagesdk.gson.internal.h.a(this, bVar);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
