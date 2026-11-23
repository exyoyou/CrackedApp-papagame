.class Lcom/sigmob/sdk/downloader/core/file/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/core/file/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/core/file/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/downloader/core/file/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/file/d$2;->a:Lcom/sigmob/sdk/downloader/core/file/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/file/d$2;->a:Lcom/sigmob/sdk/downloader/core/file/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/downloader/core/file/d;->b()V

    return-void
.end method
