.class Lcom/kongzue/dialogx/dialogs/l$h$g;
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
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$g;->b:Lcom/kongzue/dialogx/dialogs/l$h;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$g;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->h1(Lcom/kongzue/dialogx/dialogs/l;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p1, "skip click @ A"

    .line 12
    .line 13
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->i1(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$g;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/dialogs/l;->j1(Lcom/kongzue/dialogx/dialogs/l;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$g;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l;->U:Lcom/kongzue/dialogx/interfaces/t;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 33
    .line 34
    invoke-interface {v1, v0, p1}, Lcom/kongzue/dialogx/interfaces/t;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$g;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l;->e2()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method
