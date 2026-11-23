.class Lcom/join/mgps/activity/ShareWebActivity$n$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n$u;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity$n$u;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n$u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$u$a;->a:Lcom/join/mgps/activity/ShareWebActivity$n$u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "duration"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$u$a;->a:Lcom/join/mgps/activity/ShareWebActivity$n$u;

    iget-object p2, p1, Lcom/join/mgps/activity/ShareWebActivity$n$u;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    iget-object p2, p2, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ShareWebActivity$n$u;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/ShareWebActivity;->loaclJumpGameMatch(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "duration",
            "buttonBean"
        }
    .end annotation

    .line 1
    return-void
.end method
