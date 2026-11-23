.class Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;->onBirthdayUI(Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/wufan/user/service/protobuf/SetBirthdayResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

.field final synthetic val$dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

.field final synthetic val$result:Lcom/wufan/user/service/protobuf/SetBirthdayResponse;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/wufan/user/service/protobuf/SetBirthdayResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$14;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$14;->val$dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$14;->val$result:Lcom/wufan/user/service/protobuf/SetBirthdayResponse;

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
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$14;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$14;->val$dialog:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$14;->val$result:Lcom/wufan/user/service/protobuf/SetBirthdayResponse;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;->access$601(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;Lcom/kongzue/dialogx/dialogs/CustomDialog;Lcom/wufan/user/service/protobuf/SetBirthdayResponse;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
