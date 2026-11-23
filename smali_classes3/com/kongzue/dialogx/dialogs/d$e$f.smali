.class Lcom/kongzue/dialogx/dialogs/d$e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/d$e;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/d$e;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/d$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$f;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/d$e$f;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/d$e;->i(Lcom/kongzue/dialogx/dialogs/d$e;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$f;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->d(Lcom/kongzue/dialogx/dialogs/d$e;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$f;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->e(Lcom/kongzue/dialogx/dialogs/d$e;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$f;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x0

    .line 30
    cmpl-float p1, p1, v0

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/d$e$f;->a:Lcom/kongzue/dialogx/dialogs/d$e;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/kongzue/dialogx/dialogs/d$e;->e:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/d$e;->m()F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;->setY(F)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
