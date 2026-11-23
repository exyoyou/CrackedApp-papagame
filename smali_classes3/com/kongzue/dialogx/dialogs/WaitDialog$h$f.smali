.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;->b:Landroid/view/View;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d()Lcom/kongzue/dialogx/interfaces/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f$a;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f$a;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$f;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->f(Landroid/view/animation/Animation;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->I1(Ljava/lang/Runnable;J)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
