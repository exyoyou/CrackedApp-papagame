.class Lcom/kongzue/dialogx/interfaces/BaseDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/interfaces/BaseDialog;->N0(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/interfaces/BaseDialog;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->a:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->a:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->h:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->a:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/kongzue/dialogx/interfaces/BaseDialog;->h:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d;->a:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->N()Landroid/app/Activity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->setFromActivity(Landroid/app/Activity;)Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->z(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog$d$a;-><init>(Lcom/kongzue/dialogx/interfaces/BaseDialog$d;Landroid/widget/FrameLayout;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->C0(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
