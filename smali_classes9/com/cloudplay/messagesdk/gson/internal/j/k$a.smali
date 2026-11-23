.class Lcom/cloudplay/messagesdk/gson/internal/j/k$a;
.super Lcom/cloudplay/messagesdk/gson/internal/j/k$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/k;->a(Lcom/cloudplay/messagesdk/gson/b;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/cloudplay/messagesdk/gson/j/a;ZZ)Lcom/cloudplay/messagesdk/gson/internal/j/k$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/cloudplay/messagesdk/gson/h;

.field final synthetic g:Lcom/cloudplay/messagesdk/gson/b;

.field final synthetic h:Lcom/cloudplay/messagesdk/gson/j/a;

.field final synthetic i:Z


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/j/k;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/cloudplay/messagesdk/gson/h;Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;Z)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->d:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    iput-boolean p6, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->e:Z

    .line 4
    .line 5
    iput-object p7, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->f:Lcom/cloudplay/messagesdk/gson/h;

    .line 6
    .line 7
    iput-object p8, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->g:Lcom/cloudplay/messagesdk/gson/b;

    .line 8
    .line 9
    iput-object p9, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->h:Lcom/cloudplay/messagesdk/gson/j/a;

    .line 10
    .line 11
    iput-boolean p10, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->i:Z

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p4}, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;-><init>(Ljava/lang/String;ZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method a(Lcom/cloudplay/messagesdk/gson/stream/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->f:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->i:Z

    if-nez v0, :cond_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->f:Lcom/cloudplay/messagesdk/gson/h;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/m;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->g:Lcom/cloudplay/messagesdk/gson/b;

    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->f:Lcom/cloudplay/messagesdk/gson/h;

    iget-object v3, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->h:Lcom/cloudplay/messagesdk/gson/j/a;

    .line 3
    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/gson/j/a;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/cloudplay/messagesdk/gson/internal/j/m;-><init>(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/h;Ljava/lang/reflect/Type;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
