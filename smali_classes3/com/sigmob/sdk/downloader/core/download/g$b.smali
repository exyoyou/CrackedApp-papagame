.class public Lcom/sigmob/sdk/downloader/core/download/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/download/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/sigmob/sdk/downloader/core/connection/a$a;

.field private b:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

.field private c:I


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/downloader/core/connection/a$a;ILcom/sigmob/sdk/downloader/core/breakpoint/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "connected",
            "blockIndex",
            "info"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->a:Lcom/sigmob/sdk/downloader/core/connection/a$a;

    iput-object p3, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iput p2, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    iget v1, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->c:I

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/downloader/core/breakpoint/c;->b(I)Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->a:Lcom/sigmob/sdk/downloader/core/connection/a$a;

    invoke-interface {v1}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->d()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->a:Lcom/sigmob/sdk/downloader/core/connection/a$a;

    const-string v3, "Etag"

    invoke-interface {v2, v3}, Lcom/sigmob/sdk/downloader/core/connection/a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sigmob/sdk/downloader/core/download/g$b;->b:Lcom/sigmob/sdk/downloader/core/breakpoint/c;

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/sigmob/sdk/downloader/core/download/g;->a(IZLcom/sigmob/sdk/downloader/core/breakpoint/c;Ljava/lang/String;)Lcom/sigmob/sdk/downloader/core/cause/b;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/downloader/g;->j()Lcom/sigmob/sdk/downloader/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/g;->g()Lcom/sigmob/sdk/downloader/core/download/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v2, v1, v6}, Lcom/sigmob/sdk/downloader/core/download/g;->a(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Lcom/sigmob/sdk/downloader/core/exception/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;->a()J

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lcom/sigmob/sdk/downloader/core/exception/i;-><init>(IJ)V

    throw v2

    :cond_3
    new-instance v0, Lcom/sigmob/sdk/downloader/core/exception/f;

    invoke-direct {v0, v2}, Lcom/sigmob/sdk/downloader/core/exception/f;-><init>(Lcom/sigmob/sdk/downloader/core/cause/b;)V

    throw v0
.end method
