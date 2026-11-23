package com.cloudplay.messagesdk.gson;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes9.dex */
public interface JsonSerializationContext {
    d serialize(Object obj);

    d serialize(Object obj, Type type);
}
