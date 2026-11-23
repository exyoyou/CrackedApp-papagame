.class public final synthetic Lcom/join/kotlin/ui/hmcloud/fragment/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

.field public final synthetic c:I

.field public final synthetic d:Lcom/wufan/user/service/protobuf/NewMemberInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;ILcom/wufan/user/service/protobuf/NewMemberInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/u;->b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    iput p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/u;->c:I

    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/u;->d:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/u;->b:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;

    iget v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/u;->c:I

    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/u;->d:Lcom/wufan/user/service/protobuf/NewMemberInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;->a0(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment;ILcom/wufan/user/service/protobuf/NewMemberInfo;Landroid/view/View;)V

    return-void
.end method
