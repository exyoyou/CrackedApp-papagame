.class Lcom/kongzue/dialogx/dialogs/n$h$a;
.super Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/n$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/n$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

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
    .locals 3

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 9
    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    sput-object v1, Lcom/kongzue/dialogx/dialogs/n;->v1:Ljava/util/List;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {v0, v2}, Lcom/kongzue/dialogx/dialogs/n;->K1(Lcom/kongzue/dialogx/dialogs/n;Z)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n;->l1:Ljava/util/Timer;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->d2()Lcom/kongzue/dialogx/interfaces/f;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/interfaces/f;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 62
    .line 63
    iget-object v2, v0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Lcom/kongzue/dialogx/dialogs/n;->B2(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 71
    .line 72
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 73
    .line 74
    invoke-static {v0, v2}, Lcom/kongzue/dialogx/dialogs/n;->L1(Lcom/kongzue/dialogx/dialogs/n;Landroidx/lifecycle/Lifecycle$State;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 80
    .line 81
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->P:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 82
    .line 83
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->C1(Lcom/kongzue/dialogx/dialogs/n;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->H1(Lcom/kongzue/dialogx/dialogs/n;Z)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 20
    .line 21
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->I1(Lcom/kongzue/dialogx/dialogs/n;Landroidx/lifecycle/Lifecycle$State;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->a:Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/n;->J1(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/n;->d2()Lcom/kongzue/dialogx/interfaces/f;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/f;->b(Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$a;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/dialogs/n;->D2(Lcom/kongzue/dialogx/dialogs/n;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
