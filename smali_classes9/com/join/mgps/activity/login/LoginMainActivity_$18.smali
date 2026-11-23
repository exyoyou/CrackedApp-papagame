.class Lcom/join/mgps/activity/login/LoginMainActivity_$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity_;->loginSuccess(Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

.field final synthetic val$rewardBean:Lcom/join/mgps/dto/RewardBean;

.field final synthetic val$user_info:Lcom/wufan/user/service/protobuf/UserInfo;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;->val$user_info:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;->val$rewardBean:Lcom/join/mgps/dto/RewardBean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;->val$user_info:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/login/LoginMainActivity_$18;->val$rewardBean:Lcom/join/mgps/dto/RewardBean;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/login/LoginMainActivity_;->access$501(Lcom/join/mgps/activity/login/LoginMainActivity_;Lcom/wufan/user/service/protobuf/UserInfo;Lcom/join/mgps/dto/RewardBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
