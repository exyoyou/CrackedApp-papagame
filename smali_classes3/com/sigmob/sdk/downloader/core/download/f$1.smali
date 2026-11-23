.class Lcom/sigmob/sdk/downloader/core/download/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/downloader/core/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/core/download/f;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/downloader/core/download/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/download/f$1;->a:Lcom/sigmob/sdk/downloader/core/download/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/download/f$1;->a:Lcom/sigmob/sdk/downloader/core/download/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/download/f;->m()V

    return-void
.end method
