.class Lcom/join/mgps/activity/GameInformationActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity$c;->intentCommentList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GameInformationActivity$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$c$a;->b:Lcom/join/mgps/activity/GameInformationActivity$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$c$a;->b:Lcom/join/mgps/activity/GameInformationActivity$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->access$000(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationCommentActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GameInformationActivity$c$a;->b:Lcom/join/mgps/activity/GameInformationActivity$c;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/join/mgps/activity/GameInformationActivity;->info_id:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameInformationCommentActivity_$v;->b(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationCommentActivity_$v;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 24
    .line 25
    .line 26
    return-void
.end method
