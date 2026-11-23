.class final Lcom/cloudplay/messagesdk/gson/internal/j/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/i;->b(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/gson/internal/j/i;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/j/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/i$a;->a:Lcom/cloudplay/messagesdk/gson/internal/j/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/b;",
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "TT;>;)",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/j/a;->a()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-class p2, Ljava/lang/Number;

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/i$a;->a:Lcom/cloudplay/messagesdk/gson/internal/j/i;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method
