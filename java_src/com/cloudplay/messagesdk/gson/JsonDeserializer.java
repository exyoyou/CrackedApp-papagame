package com.cloudplay.messagesdk.gson;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes9.dex */
public interface JsonDeserializer<T> {
    T deserialize(d dVar, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException;
}
