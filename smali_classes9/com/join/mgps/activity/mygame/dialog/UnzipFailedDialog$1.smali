.class Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

.field final synthetic val$filepath:Lcom/join/mgps/dto/Filepath;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Lcom/join/mgps/dto/Filepath;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$filepath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->val$filepath:Lcom/join/mgps/dto/Filepath;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$1;->val$filepath:Lcom/join/mgps/dto/Filepath;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->access$000(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
