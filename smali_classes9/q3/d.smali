.class public Lq3/d;
.super Lj4/b;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lq3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq3/c;)V
    .locals 0
    .param p2    # Lq3/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "imageOriginLister"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj4/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lq3/d;->b:Lq3/c;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lq3/d;->l(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestId",
            "ultimateProducerName",
            "successful"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lq3/d;->b:Lq3/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq3/d;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p2}, Lq3/e;->a(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p1, v0, v1, p3, p2}, Lq3/c;->a(Ljava/lang/String;IZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
