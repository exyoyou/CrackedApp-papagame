.class public final Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;->startMenuAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1",
        "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
        "onAnimationStart",
        "",
        "animation",
        "Lcom/nineoldandroids/animation/Animator;",
        "onAnimationEnd",
        "onAnimationCancel",
        "onAnimationRepeat",
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
.field final synthetic $newFold:Z

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1;->this$0:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1;->$newFold:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1;->this$0:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;->setAnimating(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1;->this$0:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1;->$newFold:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;->setFold(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog$startMenuAnimation$1;->this$0:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyCombineAddDialog;->setAnimating(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
