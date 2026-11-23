package com.cloudplay.messagesdk.gson;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes9.dex */
public interface JsonSerializer<T> {
    d serialize(T t10, Type type, JsonSerializationContext jsonSerializationContext);
}
