.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;
.super Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->b2()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->m1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->n1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Z)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 20
    .line 21
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->o1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroidx/lifecycle/Lifecycle$State;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 37
    .line 38
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
