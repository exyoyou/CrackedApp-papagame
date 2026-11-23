.class public Lcom/byazt/zk/n$1;
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
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zk/n;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/x;Landroid/content/Context;Lcom/byazt/ga/i$c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zk/n;


# direct methods
.method public constructor <init>(Lcom/byazt/zk/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zk/n$1;->c:Lcom/byazt/zk/n;

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
    iget-object v0, p0, Lcom/byazt/zk/n$1;->c:Lcom/byazt/zk/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zk/n;->c(Lcom/byazt/zk/n;)Lcom/byazt/ga/LottieAnimationView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/zk/n$1;->c:Lcom/byazt/zk/n;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/zk/n;->tt(Lcom/byazt/zk/n;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
