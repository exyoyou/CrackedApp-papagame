.class Lcom/kongzue/dialogx/dialogs/l$h$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/l$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/l$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/l$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$h;->b:Lcom/kongzue/dialogx/dialogs/l$h;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$h;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->k1(Lcom/kongzue/dialogx/dialogs/l;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$h;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/dialogs/l;->l1(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$h;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/l;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 28
    .line 29
    invoke-interface {v2, v0, p1}, Lcom/kongzue/dialogx/interfaces/t;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$h;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/l$h;->a(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/l$h;->a(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method
