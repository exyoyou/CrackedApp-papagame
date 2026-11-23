.class public final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1;
.super Lm6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->performClickSign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1",
        "Lcom/join/mgps/callbacks/impl/BindAccountCallbackImpl;",
        "onBindSuccess",
        "",
        "userInfo",
        "Lcom/wufan/user/service/protobuf/UserInfo;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1;->$it:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Lm6/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onBindSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V
    .locals 3

    .line 1
    const-string v0, "userInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lm6/b;->onBindSuccess(Lcom/wufan/user/service/protobuf/UserInfo;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1;->this$0:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel$performClickSign$1$1;->$it:Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-static {p1, v0, v1, v2, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;->showCloudSign$default(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
