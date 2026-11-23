.class Lcom/kongzue/dialogx/dialogs/CustomDialog$f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b()V
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$f;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$f;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->X:Lcom/kongzue/dialogx/interfaces/q;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/CustomDialog;->P:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 10
    .line 11
    invoke-interface {v1, v0, p1}, Lcom/kongzue/dialogx/interfaces/q;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$f;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
