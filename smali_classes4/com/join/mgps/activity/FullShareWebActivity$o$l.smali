.class Lcom/join/mgps/activity/FullShareWebActivity$o$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$o;->jumpGameMatch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/FullShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$o;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$roomId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$l;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$l;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$l;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$000(Lcom/join/mgps/activity/FullShareWebActivity;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    const-string v2, "FIGHT_LOBBY"

    .line 12
    .line 13
    new-instance v3, Lcom/join/mgps/activity/FullShareWebActivity$o$l$a;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/FullShareWebActivity$o$l$a;-><init>(Lcom/join/mgps/activity/FullShareWebActivity$o$l;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x4

    .line 19
    invoke-static {v0, v4, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->A0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
