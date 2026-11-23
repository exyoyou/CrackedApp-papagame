.class Lcom/haima/hmcp/HmcpManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnInitCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/HmcpManager;->initInternal(Landroid/content/Context;Lcom/haima/hmcp/listeners/OnInitCallBackListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/HmcpManager;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/HmcpManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/haima/hmcp/HmcpManager;->access$002(Lcom/haima/hmcp/HmcpManager;Z)Z

    .line 5
    .line 6
    .line 7
    sput-boolean v1, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/HmcpManager;->access$100(Lcom/haima/hmcp/HmcpManager;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/haima/hmcp/HmcpManager;->access$200(Lcom/haima/hmcp/HmcpManager;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "onInitCallBack fail"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/haima/hmcp/HmcpManager;->access$100(Lcom/haima/hmcp/HmcpManager;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->fail(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {p1, v0}, Lcom/haima/hmcp/HmcpManager;->access$102(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/haima/hmcp/HmcpManager;->access$200(Lcom/haima/hmcp/HmcpManager;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "onInitCallBack is null"

    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/haima/hmcp/HmcpManager;->access$002(Lcom/haima/hmcp/HmcpManager;Z)Z

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/HmcpManager;->access$100(Lcom/haima/hmcp/HmcpManager;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/HmcpManager;->access$200(Lcom/haima/hmcp/HmcpManager;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "onInitCallBack success"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/haima/hmcp/HmcpManager;->access$100(Lcom/haima/hmcp/HmcpManager;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/OnInitCallBackListener;->success()V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lcom/haima/hmcp/HmcpManager;->access$102(Lcom/haima/hmcp/HmcpManager;Lcom/haima/hmcp/listeners/OnInitCallBackListener;)Lcom/haima/hmcp/listeners/OnInitCallBackListener;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/HmcpManager$2;->this$0:Lcom/haima/hmcp/HmcpManager;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/haima/hmcp/HmcpManager;->access$200(Lcom/haima/hmcp/HmcpManager;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "onInitCallBack is null"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
