.class Lcom/kongzue/dialogx/dialogs/n$h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n$h;->b()V
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h$g;->b:Lcom/kongzue/dialogx/dialogs/n$h;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$g;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n;->U:Lcom/kongzue/dialogx/interfaces/t;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n;->O:Lcom/kongzue/dialogx/dialogs/n;

    .line 8
    .line 9
    invoke-interface {v1, v0, p1}, Lcom/kongzue/dialogx/interfaces/t;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$g;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/dialogs/n;->j1(Lcom/kongzue/dialogx/dialogs/n;Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h$g;->b:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/n;->W1()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
