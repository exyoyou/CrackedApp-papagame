.class Lcom/sigmob/sdk/downloader/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/downloader/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/downloader/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/downloader/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/a$2;->a:Lcom/sigmob/sdk/downloader/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/downloader/a$2;->a:Lcom/sigmob/sdk/downloader/a;

    iget-object v1, v0, Lcom/sigmob/sdk/downloader/a;->b:Lcom/sigmob/sdk/downloader/b;

    invoke-interface {v1, v0}, Lcom/sigmob/sdk/downloader/b;->a(Lcom/sigmob/sdk/downloader/a;)V

    return-void
.end method
