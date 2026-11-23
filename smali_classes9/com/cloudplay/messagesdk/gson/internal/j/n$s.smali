.class final Lcom/cloudplay/messagesdk/gson/internal/j/n$s;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/h<",
        "Lcom/cloudplay/messagesdk/gson/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Lcom/cloudplay/messagesdk/gson/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/cloudplay/messagesdk/gson/internal/j/f;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/cloudplay/messagesdk/gson/internal/j/f;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/internal/j/f;->s()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/cloudplay/messagesdk/gson/internal/j/n$z;->a:[I

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->q()Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7
    :pswitch_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/f;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/f;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->b()V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/n$s;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloudplay/messagesdk/gson/f;->a(Ljava/lang/String;Lcom/cloudplay/messagesdk/gson/d;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->e()V

    return-object v0

    .line 12
    :pswitch_1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/c;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/c;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->a()V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/n$s;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/gson/c;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->d()V

    return-object v0

    .line 17
    :pswitch_2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->o()V

    .line 18
    sget-object p1, Lcom/cloudplay/messagesdk/gson/e;->a:Lcom/cloudplay/messagesdk/gson/e;

    return-object p1

    .line 19
    :pswitch_3
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 20
    :pswitch_4
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 21
    :pswitch_5
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->p()Ljava/lang/String;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    new-instance v1, Lcom/cloudplay/messagesdk/gson/internal/LazilyParsedNumber;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/Number;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/n$s;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Lcom/cloudplay/messagesdk/gson/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 23
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/d;->c()Lcom/cloudplay/messagesdk/gson/g;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/g;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/g;->l()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Ljava/lang/Number;)Lcom/cloudplay/messagesdk/gson/stream/b;

    goto/16 :goto_3

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/g;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/g;->h()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->d(Z)Lcom/cloudplay/messagesdk/gson/stream/b;

    goto/16 :goto_3

    .line 30
    :cond_2
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/g;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->c(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/stream/b;

    goto/16 :goto_3

    .line 31
    :cond_3
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/d;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 33
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/d;->a()Lcom/cloudplay/messagesdk/gson/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/c;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/d;

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/n$s;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Lcom/cloudplay/messagesdk/gson/d;)V

    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->c()Lcom/cloudplay/messagesdk/gson/stream/b;

    goto :goto_3

    .line 36
    :cond_5
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/d;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 38
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/d;->b()Lcom/cloudplay/messagesdk/gson/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/gson/f;->h()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/d;

    invoke-virtual {p0, p1, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/n$s;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Lcom/cloudplay/messagesdk/gson/d;)V

    goto :goto_1

    .line 41
    :cond_6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->d()Lcom/cloudplay/messagesdk/gson/stream/b;

    goto :goto_3

    .line 42
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/cloudplay/messagesdk/gson/d;

    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/n$s;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Lcom/cloudplay/messagesdk/gson/d;)V

    return-void
.end method
