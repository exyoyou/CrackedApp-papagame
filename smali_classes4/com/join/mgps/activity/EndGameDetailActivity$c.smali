.class Lcom/join/mgps/activity/EndGameDetailActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/n0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/EndGameDetailActivity;->ivMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/EndGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/EndGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameDetailActivity$c;->a:Lcom/join/mgps/activity/EndGameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public report()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameDetailActivity$c;->a:Lcom/join/mgps/activity/EndGameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameReportActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/EndGameReportActivity_$h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameDetailActivity$c;->a:Lcom/join/mgps/activity/EndGameDetailActivity;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/join/mgps/activity/EndGameDetailActivity;->endGameId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/EndGameReportActivity_$h;->a(Ljava/lang/String;)Lcom/join/mgps/activity/EndGameReportActivity_$h;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/high16 v1, 0x30000000

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/join/mgps/activity/EndGameReportActivity_$h;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 24
    .line 25
    .line 26
    return-void
.end method
