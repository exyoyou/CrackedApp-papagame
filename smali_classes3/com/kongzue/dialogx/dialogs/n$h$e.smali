.class Lcom/kongzue/dialogx/dialogs/n$h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/n$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/n$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h$e;->b:Lcom/kongzue/dialogx/dialogs/n$h;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$e;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/dialogs/n;->W0(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$e;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/n;->T:Lcom/kongzue/dialogx/interfaces/t;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v0, v1, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 17
    .line 18
    invoke-interface {v2, v0, p1}, Lcom/kongzue/dialogx/interfaces/t;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$e;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/n$h;->a(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/dialogs/n$h;->a(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method
