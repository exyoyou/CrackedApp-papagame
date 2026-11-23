.class public Lcom/sigmob/sdk/downloader/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/downloader/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/downloader/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$a;->a:Lcom/sigmob/sdk/downloader/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/f;)Lcom/sigmob/sdk/downloader/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldTask",
            "newTask"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$a;->a:Lcom/sigmob/sdk/downloader/a;

    invoke-static {v0}, Lcom/sigmob/sdk/downloader/a;->a(Lcom/sigmob/sdk/downloader/a;)[Lcom/sigmob/sdk/downloader/f;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    if-ne v2, p1, :cond_0

    aput-object p2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
