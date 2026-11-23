.class public Lcom/alibaba/fastjson/serializer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/f;->a:Lcom/alibaba/fastjson/serializer/f;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const-string p2, "true"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p2, "false"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
