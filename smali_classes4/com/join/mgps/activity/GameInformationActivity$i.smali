.class Lcom/join/mgps/activity/GameInformationActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->showComment()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->b:Lcom/join/mgps/activity/GameInformationActivity;

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
    .locals 1
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
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->b:Lcom/join/mgps/activity/GameInformationActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->access$000(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->b:Lcom/join/mgps/activity/GameInformationActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationActivity;->access$000(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$i;->b:Lcom/join/mgps/activity/GameInformationActivity;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
