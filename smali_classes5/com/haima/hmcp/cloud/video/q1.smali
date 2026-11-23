.class public final synthetic Lcom/haima/hmcp/cloud/video/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/cloud/video/DownloadTask;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/cloud/video/DownloadTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/q1;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/q1;->b:Lcom/haima/hmcp/cloud/video/DownloadTask;

    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->h0(Lcom/haima/hmcp/cloud/video/DownloadTask;)V

    return-void
.end method
