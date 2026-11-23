.class Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;->registerSuccess(Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/AccountBean;

.field final synthetic c:Lcom/join/mgps/dto/RewardBean;

.field final synthetic d:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$user_info",
            "val$rewardBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->d:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->b:Lcom/join/mgps/dto/AccountBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->c:Lcom/join/mgps/dto/RewardBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->d:Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->b:Lcom/join/mgps/dto/AccountBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_$k;->c:Lcom/join/mgps/dto/RewardBean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;->access$401(Lcom/join/mgps/activity/MyAccountMMSCodeReginFinish_;Lcom/join/mgps/dto/AccountBean;Lcom/join/mgps/dto/RewardBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
