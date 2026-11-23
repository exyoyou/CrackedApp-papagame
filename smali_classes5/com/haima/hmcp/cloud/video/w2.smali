.class public final synthetic Lcom/haima/hmcp/cloud/video/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/listeners/SearchCallback;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/SearchCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/video/w2;->b:Lcom/haima/hmcp/listeners/SearchCallback;

    iput-object p2, p0, Lcom/haima/hmcp/cloud/video/w2;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/video/w2;->b:Lcom/haima/hmcp/listeners/SearchCallback;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/video/w2;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/haima/hmcp/cloud/video/DownloadTask$5;->a(Lcom/haima/hmcp/listeners/SearchCallback;Ljava/util/List;)V

    return-void
.end method
