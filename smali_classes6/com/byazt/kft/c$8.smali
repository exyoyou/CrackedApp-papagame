.class public Lcom/byazt/kft/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x118,
        0x70
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kft/c;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kft/c;


# direct methods
.method public constructor <init>(Lcom/byazt/kft/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kft/c$8;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kft/c$8;->c:Lcom/byazt/kft/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kft/c;->ic(Lcom/byazt/kft/c;)Lcom/byazt/jr/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/byazt/jr/tt;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/kft/c$8;->c:Lcom/byazt/kft/c;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/kft/c;->n(Lcom/byazt/kft/c;)Lcom/byazt/kft/c$c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/byazt/kft/c$8;->c:Lcom/byazt/kft/c;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/kft/c;->rh(Lcom/byazt/kft/c;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/byazt/fk/sp$c;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/kft/c$8;->c:Lcom/byazt/kft/c;

    .line 51
    .line 52
    invoke-interface {v1, v2}, Lcom/byazt/fk/sp$c;->onRelease(Lcom/byazt/fk/sp;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method
