.class final Lcom/haima/hmcp/countly/CountlyUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/countly/CountlyUtil;->recordToDisk(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$segmentation:Ljava/util/Map;

.field final synthetic val$timeStamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/countly/CountlyUtil$2;->val$segmentation:Ljava/util/Map;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/countly/CountlyUtil$2;->val$eventId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/countly/CountlyUtil$2;->val$timeStamp:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyUtil;->access$000()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/countly/CountlyUtil$2;->val$segmentation:Ljava/util/Map;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/haima/hmcp/countly/CountlyDBInfo;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/haima/hmcp/countly/CountlyDBInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyUtil$2;->val$eventId:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/haima/hmcp/countly/CountlyDBInfo;->eventId:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyUtil$2;->val$timeStamp:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/haima/hmcp/countly/CountlyDBInfo;->timeStamp:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/countly/CountlyUtil$2;->val$segmentation:Ljava/util/Map;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lcom/haima/hmcp/countly/CountlyDBInfo;->json:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {}, Lcom/haima/hmcp/countly/CountlyUtil;->access$100()Lcom/haima/hmcp/countly/CountlyDiskPolicy;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, v0}, Lcom/haima/hmcp/countly/CountlyDiskPolicy;->recordToDisk(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
