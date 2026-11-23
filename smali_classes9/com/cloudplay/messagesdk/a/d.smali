.class public Lcom/cloudplay/messagesdk/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/cloudplay/messagesdk/gson/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloudplay/messagesdk/a/d;->a:Lcom/cloudplay/messagesdk/gson/b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/a/d;->a:Lcom/cloudplay/messagesdk/gson/b;

    invoke-virtual {v0, p0, p1}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/cloudplay/messagesdk/a/d;->a:Lcom/cloudplay/messagesdk/gson/b;

    invoke-virtual {v0, p0}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
