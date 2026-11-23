.class Lcom/join/mgps/va/service/MessengerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/listener/SendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/va/service/MessengerService;->g(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/va/service/MessengerService;


# direct methods
.method constructor <init>(Lcom/join/mgps/va/service/MessengerService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/va/service/MessengerService$1;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/va/service/MessengerService$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public synthetic getSchedulerObserveOn()Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;
    .locals 1

    .line 1
    invoke-static {p0}, Lw2/b;->a(Lcom/cloudplay/messagesdk/listener/SendListener;)Lcom/cloudplay/messagesdk/socket/websocket/schedulers/MessageSchedulerType;

    move-result-object v0

    return-object v0
.end method

.method public onResult(ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "errorMsg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$1;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "send cloud message result: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    filled-new-array {p2}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {v0, p2}, Lcom/join/mgps/va/service/MessengerService;->c(Lcom/join/mgps/va/service/MessengerService;[Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/va/service/MessengerService$1;->b:Lcom/join/mgps/va/service/MessengerService;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/join/mgps/service/CommonService_;->P2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$n0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "action"

    .line 44
    .line 45
    const-string v0, "sendHMMessage"

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    .line 52
    .line 53
    const-string p2, "message"

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/va/service/MessengerService$1;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/builder/e;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/join/mgps/service/CommonService_$n0;

    .line 62
    .line 63
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method
