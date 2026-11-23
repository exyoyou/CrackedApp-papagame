.class public final synthetic Lcom/haima/hmcp/cloud/video/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/listeners/UpdateCallback;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/UpdateCallback;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/p2;->b:Lcom/haima/hmcp/listeners/UpdateCallback;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/p2;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/p2;->b:Lcom/haima/hmcp/listeners/UpdateCallback;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/p2;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->B0(Lcom/haima/hmcp/listeners/UpdateCallback;Ljava/util/ArrayList;)V

    return-void
.end method
