.class public final synthetic Lcom/haima/hmcp/cloud/video/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/listeners/SearchCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/h1;->b:Lcom/haima/hmcp/listeners/SearchCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/h1;->b:Lcom/haima/hmcp/listeners/SearchCallback;

    invoke-static {v0}, Lcom/haima/hmcp/cloud/video/DownloadTask;->D(Lcom/haima/hmcp/listeners/SearchCallback;)V

    return-void
.end method
