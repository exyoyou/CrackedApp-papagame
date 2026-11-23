.class Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;->onVipDaysUI(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

.field final synthetic val$info:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$15;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$15;->val$info:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$15;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$15;->val$info:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;->access$701(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$MessageCloudGamingPlaytimeVipDaysResponseResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
