.class Lcom/kongzue/dialogx/interfaces/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/interfaces/r;->c(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/kongzue/dialogx/interfaces/r;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/interfaces/r;Lcom/kongzue/dialogx/interfaces/BaseDialog;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/interfaces/r$c;->d:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kongzue/dialogx/interfaces/r$c;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kongzue/dialogx/interfaces/r$c;->c:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$c;->d:Lcom/kongzue/dialogx/interfaces/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/r;->getCustomView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$c;->b:Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kongzue/dialogx/interfaces/r$c;->d:Lcom/kongzue/dialogx/interfaces/r;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$c;->c:Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/kongzue/dialogx/interfaces/r$c;->d:Lcom/kongzue/dialogx/interfaces/r;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/kongzue/dialogx/interfaces/r$c;->c:Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/kongzue/dialogx/interfaces/r;->bindParent(Landroid/view/ViewGroup;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method
