.class public Lcom/byazt/zk/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x38d,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zk/c;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zk/c;


# direct methods
.method public constructor <init>(Lcom/byazt/zk/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zk/c$1;->c:Lcom/byazt/zk/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/c$1;->c:Lcom/byazt/zk/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zk/c;->c(Lcom/byazt/zk/c;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/zk/c$1;->c:Lcom/byazt/zk/c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/zk/c;->tt(Lcom/byazt/zk/c;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zk/c$1;->c:Lcom/byazt/zk/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zk/c;->c(Lcom/byazt/zk/c;)Landroid/widget/ImageView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/zk/c$1;->c:Lcom/byazt/zk/c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/zk/c;->ve(Lcom/byazt/zk/c;)V

    .line 12
    .line 13
    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v0, 0x1c

    .line 17
    .line 18
    if-lt p1, v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/zk/c$1;->c:Lcom/byazt/zk/c;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/byazt/zk/c;->uj(Lcom/byazt/zk/c;)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/i/k;->a(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/byazt/zk/c$1;->c:Lcom/byazt/zk/c;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/byazt/zk/c;->uj(Lcom/byazt/zk/c;)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/i/l;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lz1/a;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
