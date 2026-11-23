.class Lcom/join/mgps/activity/arena/GameRoomListActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/p0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;->showAdDialog(Lcom/join/mgps/dto/ArenaPopupInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/ArenaPopupInfoBean;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Lcom/join/mgps/dto/ArenaPopupInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$arenaPopupInfoBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->a:Lcom/join/mgps/dto/ArenaPopupInfoBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Lcom/join/mgps/dialog/p0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->a:Lcom/join/mgps/dto/ArenaPopupInfoBean;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ArenaPopupInfoBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$n;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "vsButton"

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->q2(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
