.class Lcom/windmill/sdk/strategy/WMSdkConfig$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/strategy/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/WMSdkConfig;->loadConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/WMSdkConfig;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/WMSdkConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/windmill/sdk/models/SdkConfigResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkConfigResponse"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "SdkConfigResponse:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/windmill/sdk/models/SdkConfigResponse;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->dd(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$202(Z)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/windmill/sdk/models/SdkConfigResponse;->config:Lcom/windmill/sdk/models/SdkConfig;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/windmill/sdk/models/SdkConfigResponse;->code:Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$300(Lcom/windmill/sdk/strategy/WMSdkConfig;Lcom/windmill/sdk/models/SdkConfig;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$400(Lcom/windmill/sdk/strategy/WMSdkConfig;Lcom/windmill/sdk/models/SdkConfig;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "ConfigResponseError:"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Lcom/windmill/sdk/models/SdkConfigResponse;->error_message:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$500(Lcom/windmill/sdk/strategy/WMSdkConfig;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ConfigResponseError:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$700(Lcom/windmill/sdk/strategy/WMSdkConfig;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$200()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$500(Lcom/windmill/sdk/strategy/WMSdkConfig;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x1

    .line 47
    invoke-static {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$202(Z)Z

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$900(Lcom/windmill/sdk/strategy/WMSdkConfig;)Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/windmill/sdk/strategy/WMSdkConfig$3;->a:Lcom/windmill/sdk/strategy/WMSdkConfig;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/windmill/sdk/strategy/WMSdkConfig;->access$800(Lcom/windmill/sdk/strategy/WMSdkConfig;)Ljava/lang/Runnable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
