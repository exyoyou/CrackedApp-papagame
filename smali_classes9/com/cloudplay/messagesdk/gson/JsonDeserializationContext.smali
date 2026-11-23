.class public interface abstract Lcom/cloudplay/messagesdk/gson/JsonDeserializationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract deserialize(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/d;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonParseException;
        }
    .end annotation
.end method
