.class Lcom/join/mgps/activity/EndGameActivity$g;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/EndGameActivity;->createEndGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/EndGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/EndGameActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameActivity$g;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$g;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/CreateEndGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CreateEndGameActivity_$n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity$g;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/join/mgps/activity/EndGameActivity;->configBean:Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity_$n;->a(Lcom/join/mgps/dto/GameMainV4DataBean$EndGameConfigBean;)Lcom/join/mgps/activity/CreateEndGameActivity_$n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    .line 17
    .line 18
    return-void
.end method
