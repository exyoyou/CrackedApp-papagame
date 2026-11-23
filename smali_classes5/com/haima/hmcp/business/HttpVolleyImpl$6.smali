.class Lcom/haima/hmcp/business/HttpVolleyImpl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/business/HttpVolleyImpl;->download(Lcom/haima/hmcp/business/DownloadFileInfo;Lcom/haima/hmcp/business/DownloadResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

.field final synthetic val$responseListener:Lcom/haima/hmcp/business/DownloadResponseListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/DownloadResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$6;->this$0:Lcom/haima/hmcp/business/HttpVolleyImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$6;->val$responseListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl$6;->val$responseListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "volley error:"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v2, 0x3ec

    .line 29
    .line 30
    invoke-interface {v0, v2, v1, p1}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
