.class Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog;->k2()Lcom/kongzue/dialogx/interfaces/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->b()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 32
    .line 33
    iget-wide v1, v1, Lcom/kongzue/dialogx/dialogs/WaitDialog;->U:J

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    cmp-long v5, v1, v3

    .line 38
    .line 39
    if-lez v5, :cond_0

    .line 40
    .line 41
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->e:Lcom/kongzue/dialogx/interfaces/b0;

    .line 42
    .line 43
    check-cast v0, Landroid/view/View;

    .line 44
    .line 45
    new-instance v1, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a$a;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a$a;-><init>(Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h$a;->b:Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/WaitDialog$h$h;->c:Lcom/kongzue/dialogx/dialogs/WaitDialog$h;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/WaitDialog$h;->j:Lcom/kongzue/dialogx/dialogs/WaitDialog;

    .line 55
    .line 56
    iget-wide v2, v2, Lcom/kongzue/dialogx/dialogs/WaitDialog;->U:J

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
