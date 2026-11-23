.class Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->c()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->c()Lcom/kongzue/dialogx/interfaces/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->O1()Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$c;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 63
    .line 64
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->t1(Lcom/kongzue/dialogx/dialogs/CustomDialog;Landroidx/lifecycle/Lifecycle$State;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
