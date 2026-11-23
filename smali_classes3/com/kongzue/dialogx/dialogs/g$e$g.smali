.class Lcom/kongzue/dialogx/dialogs/g$e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/g$e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/g$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/g$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/g$e$g;->b:Lcom/kongzue/dialogx/dialogs/g$e;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$g;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->p:Lcom/kongzue/dialogx/dialogs/g;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/g;->W:Lcom/kongzue/dialogx/interfaces/q;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g;->O:Lcom/kongzue/dialogx/dialogs/g;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/g$e$g;->b:Lcom/kongzue/dialogx/dialogs/g$e;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/g$e;->a(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
