.class public interface abstract Lcom/cloudplay/messagesdk/gson/JsonDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/d;",
            "Ljava/lang/reflect/Type;",
            "Lcom/cloudplay/messagesdk/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonParseException;
        }
    .end annotation
.end method
