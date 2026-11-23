.class public final synthetic Lcom/join/kotlin/ui/hmcloud/viewmodel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;


# direct methods
.method public synthetic constructor <init>(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/d;->b:Z

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/d;->c:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/d;->b:Z

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/viewmodel/d;->c:Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;->b(ZLcom/join/kotlin/ui/hmcloud/viewmodel/CloudAssetRecordViewModel;Lcom/wufan/user/service/protobuf/MessageCloudGamingCoinResponse$MessageCloudGamingCoinLogResponseResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
