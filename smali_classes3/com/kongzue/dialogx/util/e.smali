.class public Lcom/kongzue/dialogx/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kongzue/dialogx/interfaces/BaseDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;Lcom/kongzue/dialogx/interfaces/BaseDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kongzue/dialogx/util/e;->a:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/kongzue/dialogx/util/e;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/kongzue/dialogx/interfaces/BaseDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/e;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kongzue/dialogx/interfaces/BaseDialog;

    .line 12
    .line 13
    return-object v0
.end method

.method public b()Lcom/kongzue/dialogx/DialogX$IMPL_MODE;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/e;->a:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/e;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kongzue/dialogx/util/e;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/kongzue/dialogx/util/e;->a:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 12
    .line 13
    return-void
.end method

.method public d(Lcom/kongzue/dialogx/interfaces/BaseDialog;)Lcom/kongzue/dialogx/util/e;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/util/e;->b:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-object p0
.end method

.method public e(Lcom/kongzue/dialogx/DialogX$IMPL_MODE;)Lcom/kongzue/dialogx/util/e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/e;->a:Lcom/kongzue/dialogx/DialogX$IMPL_MODE;

    .line 2
    .line 3
    return-object p0
.end method
