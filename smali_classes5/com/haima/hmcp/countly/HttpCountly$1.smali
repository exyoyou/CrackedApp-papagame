.class Lcom/haima/hmcp/countly/HttpCountly$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IHttp$OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/countly/HttpCountly;->postEventData(Ljava/lang/String;Ljava/util/concurrent/ConcurrentLinkedQueue;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/haima/hmcp/business/IHttp$OnResponseListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/countly/HttpCountly;

.field final synthetic val$eventData:Ljava/lang/String;

.field final synthetic val$isCache:Z

.field final synthetic val$segmentations:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/countly/HttpCountly;Ljava/lang/String;ZLjava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->this$0:Lcom/haima/hmcp/countly/HttpCountly;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$eventData:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$isCache:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$segmentations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->getInstance()Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$segmentations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->addEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/countly/HttpCountly$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "result"

    .line 3
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/haima/hmcp/countly/HttpCountly;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$eventData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean p1, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$isCache:Z

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/haima/hmcp/countly/HttpCountly;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===postEventData=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$segmentations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$segmentations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->deleteDiskCacheEvent(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->getInstance()Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/haima/hmcp/countly/HttpCountly$1;->val$segmentations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Lcom/haima/hmcp/countly/CountlyResendFailEventsManager;->addEvents(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/haima/hmcp/countly/HttpCountly;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postEventData error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
