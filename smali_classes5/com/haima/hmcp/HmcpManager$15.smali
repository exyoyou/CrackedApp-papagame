.class Lcom/haima/hmcp/HmcpManager$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netcheck/LDNetDiagnoService/LDNetDiagnoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/HmcpManager;->doTraceRoute(Landroid/content/Context;Ljava/lang/String;ILcom/haima/hmcp/listeners/OnTraceRouteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/HmcpManager;

.field final synthetic val$finalInstanceUrl:Ljava/lang/String;

.field final synthetic val$listener:Lcom/haima/hmcp/listeners/OnTraceRouteListener;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnTraceRouteListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager$15;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/HmcpManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnTraceRouteListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/HmcpManager$15;->val$finalInstanceUrl:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public OnNetDiagnoFinished(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$15;->val$listener:Lcom/haima/hmcp/listeners/OnTraceRouteListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p2}, Lcom/haima/hmcp/listeners/OnTraceRouteListener;->netFinished(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1}, Lcom/haima/hmcp/utils/StringUtils;->replaceSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$15;->val$finalInstanceUrl:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ":"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Lcom/haima/hmcp/beans/ReportTranceRoute;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$15;->val$finalInstanceUrl:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p2, v0, p1}, Lcom/haima/hmcp/beans/ReportTranceRoute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "10051"

    .line 46
    .line 47
    invoke-static {p2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public OnNetDiagnoUpdated(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
