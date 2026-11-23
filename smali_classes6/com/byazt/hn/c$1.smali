.class public Lcom/byazt/hn/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x19,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/hn/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hn/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hn/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hn/c$1;->c:Lcom/byazt/hn/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/hn/c$1;->c:Lcom/byazt/hn/c;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/hn/c;->c(Lcom/byazt/hn/c;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/byazt/hn/c$1;->c:Lcom/byazt/hn/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/hn/c$1;->c:Lcom/byazt/hn/c;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/hn/c;->c(Lcom/byazt/hn/c;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/hn/c$1;->c:Lcom/byazt/hn/c;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/byazt/hn/c;->tt(Lcom/byazt/hn/c;)Landroid/view/Choreographer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/byazt/hn/c$1;->c:Lcom/byazt/hn/c;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/byazt/hn/c;->tt(Lcom/byazt/hn/c;)Landroid/view/Choreographer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method
