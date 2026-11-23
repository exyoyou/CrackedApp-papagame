.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 8
    .line 9
    iget v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->W:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->a(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
