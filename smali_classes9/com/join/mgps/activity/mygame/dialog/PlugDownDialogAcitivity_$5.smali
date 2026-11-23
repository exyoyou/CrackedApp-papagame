.class Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;->updateUnzipRes(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;

.field final synthetic val$progress:I

.field final synthetic val$size:J

.field final synthetic val$unzipSize:J


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$size",
            "val$unzipSize",
            "val$progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->val$size:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->val$unzipSize:J

    .line 6
    .line 7
    iput p6, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->val$progress:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->val$size:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->val$unzipSize:J

    .line 6
    .line 7
    iget v5, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_$5;->val$progress:I

    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;->access$201(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity_;JJI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
