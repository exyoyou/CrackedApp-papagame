.class Lcom/kongzue/dialogx/dialogs/a$e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/util/views/DialogXBaseRelativeLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/a$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/a$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/a$e$h;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$h;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/a;->Z:Lcom/kongzue/dialogx/interfaces/p;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a;->d2:Lcom/kongzue/dialogx/dialogs/a;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Lcom/kongzue/dialogx/interfaces/p;->a(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$h;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->f0()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/a$e$h;->a:Lcom/kongzue/dialogx/dialogs/a$e;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->w:Lcom/kongzue/dialogx/dialogs/a;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 39
    return v0
.end method
