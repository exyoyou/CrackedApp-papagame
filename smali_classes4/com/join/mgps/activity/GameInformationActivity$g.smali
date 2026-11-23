.class Lcom/join/mgps/activity/GameInformationActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->showMain(Lcom/join/mgps/dto/GameInformationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameInformationActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->b:Lcom/join/mgps/activity/GameInformationActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->b:Lcom/join/mgps/activity/GameInformationActivity;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/join/mgps/activity/GameInformationActivity;->access$200(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->b:Lcom/join/mgps/activity/GameInformationActivity;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->access$200(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$g;->b:Lcom/join/mgps/activity/GameInformationActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->access$200(Lcom/join/mgps/activity/GameInformationActivity;)Lcom/join/mgps/dto/DetailResultBean;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tpl_two_position()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/16 v5, 0x74

    .line 36
    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
