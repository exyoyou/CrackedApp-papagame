.class public final synthetic Lcom/haima/hmcp/cloud/video/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/l1;->b:Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/l1;->b:Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;

    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->x0(Lcom/haima/hmcp/cloud/video/listener/TransferDataCallback;)V

    return-void
.end method
