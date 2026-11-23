.class Lcom/join/mgps/activity/recomend/RecommendActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecommendActivity;->enterGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecommendActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecommendActivity;->down()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    const p2, 0x8627

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

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

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/recomend/RecommendActivity;->downv2(Z)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecommendActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->isFirst35()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    const p2, 0x8627

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecommendActivity$4;->this$0:Lcom/join/mgps/activity/recomend/RecommendActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
