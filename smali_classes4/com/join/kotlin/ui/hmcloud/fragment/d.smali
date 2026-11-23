.class public final synthetic Lcom/join/kotlin/ui/hmcloud/fragment/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

.field public final synthetic c:Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

.field public final synthetic d:Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->b:Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->c:Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->d:Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    iput p4, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->b:Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;

    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->c:Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->d:Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;

    iget v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/d;->e:I

    check-cast p1, Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;->S(Lcom/join/kotlin/ui/hmcloud/model/MultiCloudRecordBean;Lcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$PropLog;Lcom/join/kotlin/ui/hmcloud/fragment/CloudAssetRecordFragment;ILcom/wufan/user/service/protobuf/MessageCloudGamingPropResponse$MessageCloudGamingPropUseResponse;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
