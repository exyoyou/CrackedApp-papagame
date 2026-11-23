.class Lcom/cloudplay/messagesdk/gson/internal/l/c;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/h<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# static fields
.field static final b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/gson/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/l/c$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/l/c$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloudplay/messagesdk/gson/internal/l/c;->b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/cloudplay/messagesdk/gson/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/l/c;->a:Lcom/cloudplay/messagesdk/gson/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloudplay/messagesdk/gson/h;Lcom/cloudplay/messagesdk/gson/internal/l/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/l/c;-><init>(Lcom/cloudplay/messagesdk/gson/h;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/l/c;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/sql/Timestamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/l/c;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/l/c;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/l/c;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    return-void
.end method
