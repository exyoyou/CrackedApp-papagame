.class Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;
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

.field final synthetic val$paths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$paths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->val$paths:Ljava/util/List;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->val$paths:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/dto/Filepath;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->isIslocal()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/Filepath;->getPathHome()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v2, v1}, Lcom/join/mgps/pref/h;->V(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_$IntentBuilder_;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->gameId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/dialog/AppZipFailed2DialogAcitivity_$IntentBuilder_;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/dialog/UnzipFailedDialog;->finish()V

    .line 63
    .line 64
    .line 65
    return-void
.end method
