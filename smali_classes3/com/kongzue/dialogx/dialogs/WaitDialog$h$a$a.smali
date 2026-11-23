.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->d()Lcom/kongzue/dialogx/interfaces/g;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->p1(Lcom/kongzue/dialogx/dialogs/WaitDialog;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$a;->a:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 66
    .line 67
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->r1(Lcom/kongzue/dialogx/dialogs/WaitDialog;Landroidx/lifecycle/Lifecycle$State;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
