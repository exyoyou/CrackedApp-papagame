.class Lcom/kongzue/dialogx/dialogs/a$e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/a$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/a$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$g;->b:Lcom/kongzue/dialogx/dialogs/a$e;

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
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$g;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/kongzue/dialogx/dialogs/a;->X0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$g;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 11
    .line 12
    sget-object v1, Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;->BUTTON_OK:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->p1:Lcom/kongzue/dialogx/interfaces/BaseDialog$BUTTON_SELECT_RESULT;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->W:Lcom/kongzue/dialogx/interfaces/a;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    instance-of v2, v1, Lcom/kongzue/dialogx/interfaces/t;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v1, Lcom/kongzue/dialogx/interfaces/t;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 27
    .line 28
    invoke-interface {v1, v0, p1}, Lcom/kongzue/dialogx/interfaces/t;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$g;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    instance-of v2, v1, Lcom/kongzue/dialogx/interfaces/w;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    check-cast v1, Lcom/kongzue/dialogx/interfaces/w;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 49
    .line 50
    invoke-interface {v1, v0, p1}, Lcom/kongzue/dialogx/interfaces/w;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$g;->b:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return-void
.end method
