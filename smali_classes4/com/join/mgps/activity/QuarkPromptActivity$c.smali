.class Lcom/join/mgps/activity/QuarkPromptActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/QuarkPromptActivity;->v_quark_down()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/QuarkPromptActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/QuarkPromptActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 2
    .line 3
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSpeedDownQkButton:Lcom/papa/sim/statistic/Event;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v2, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 8
    .line 9
    const-string v3, "detail"

    .line 10
    .line 11
    const-string v4, "list"

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    move-object v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v2, v4

    .line 18
    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 22
    .line 23
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSpeedDownUpQk:Lcom/papa/sim/statistic/Event;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->gameId:Ljava/lang/String;

    .line 26
    .line 27
    iget-boolean v2, p1, Lcom/join/mgps/activity/QuarkPromptActivity;->fromDetail:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move-object v3, v4

    .line 33
    :goto_1
    invoke-static {p1, v0, v1, v3}, Lcom/join/mgps/Util/d2;->u(Landroid/content/Context;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/QuarkPromptActivity$c;->b:Lcom/join/mgps/activity/QuarkPromptActivity;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/activity/QuarkPromptActivity;->finish()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/QuarkPromptActivity$c$a;-><init>(Lcom/join/mgps/activity/QuarkPromptActivity$c;)V

    .line 49
    .line 50
    .line 51
    const-wide/16 v1, 0xc8

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/QuarkPromptActivity$c;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
