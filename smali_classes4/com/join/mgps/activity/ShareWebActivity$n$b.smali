.class Lcom/join/mgps/activity/ShareWebActivity$n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n;->intentToCompletAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$b;->b:Lcom/join/mgps/activity/ShareWebActivity$n;

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
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$b;->b:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->access$1202(Lcom/join/mgps/activity/ShareWebActivity;Z)Z

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$b;->b:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/activity/ShareWebActivity;->access$000(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goAccountUpgradeActivity(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
