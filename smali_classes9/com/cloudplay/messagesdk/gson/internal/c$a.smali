.class Lcom/cloudplay/messagesdk/gson/internal/c$a;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/gson/internal/c;->create(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/cloudplay/messagesdk/gson/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/cloudplay/messagesdk/gson/b;

.field final synthetic e:Lcom/cloudplay/messagesdk/gson/j/a;

.field final synthetic f:Lcom/cloudplay/messagesdk/gson/internal/c;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/c;ZZLcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->f:Lcom/cloudplay/messagesdk/gson/internal/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->b:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->d:Lcom/cloudplay/messagesdk/gson/b;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->e:Lcom/cloudplay/messagesdk/gson/j/a;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private b()Lcom/cloudplay/messagesdk/gson/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->d:Lcom/cloudplay/messagesdk/gson/b;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->f:Lcom/cloudplay/messagesdk/gson/internal/c;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->e:Lcom/cloudplay/messagesdk/gson/j/a;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    .line 17
    .line 18
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/c$a;->b()Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/b;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/gson/internal/c$a;->c:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/c$a;->b()Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    return-void
.end method
