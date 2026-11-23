.class public final synthetic Lcom/haima/hmcp/cloud/video/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/listeners/CancelCallback;

.field public final synthetic c:Lcom/haima/hmcp/beans/CloudFile;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/j;->b:Lcom/haima/hmcp/listeners/CancelCallback;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/j;->c:Lcom/haima/hmcp/beans/CloudFile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/j;->b:Lcom/haima/hmcp/listeners/CancelCallback;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/j;->c:Lcom/haima/hmcp/beans/CloudFile;

    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask;->Q0(Lcom/haima/hmcp/listeners/CancelCallback;Lcom/haima/hmcp/beans/CloudFile;)V

    return-void
.end method
