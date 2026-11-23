.class Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;->showSignDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

.field final synthetic val$freeTime:Ljava/lang/String;

.field final synthetic val$succ:Ljava/lang/Boolean;

.field final synthetic val$totalTime:Ljava/lang/String;

.field final synthetic val$vipTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$totalTime",
            "val$freeTime",
            "val$vipTime",
            "val$succ"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$totalTime:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$freeTime:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$vipTime:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$succ:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->this$0:Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$totalTime:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$freeTime:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$vipTime:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_$11;->val$succ:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;->access$301(Lcom/join/kotlin/ui/hmcloud/fragment/MyGamePapaCloudFragment_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
