.class Lcom/haima/hmcp/utils/HmcpInputConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/HmcpInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/utils/HmcpInputConnection;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/utils/HmcpInputConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/HmcpInputConnection$1;->this$0:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection$1;->this$0:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->access$000(Lcom/haima/hmcp/utils/HmcpInputConnection;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection$1;->this$0:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->access$100(Lcom/haima/hmcp/utils/HmcpInputConnection;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection$1;->this$0:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->access$200(Lcom/haima/hmcp/utils/HmcpInputConnection;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;->onKeyBoardHide()Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection$1;->this$0:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/HmcpInputConnection;->access$202(Lcom/haima/hmcp/utils/HmcpInputConnection;Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/HmcpInputConnection$1;->this$0:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/HmcpInputConnection;->access$302(Lcom/haima/hmcp/utils/HmcpInputConnection;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-static {}, Lcom/haima/hmcp/utils/HmcpInputConnection;->access$400()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "isRealHide() Exception:"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
