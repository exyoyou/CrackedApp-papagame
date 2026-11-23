.class public Lcom/byazt/cc/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nat/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/i;->c(Ljava/lang/String;ILcom/byazt/cc/c;Lcom/byazt/ocd/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cc/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/i$1;->c:Lcom/byazt/cc/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/cc/i$1;->c:Lcom/byazt/cc/i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/cc/i;->c(Lcom/byazt/cc/i;)Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/byazt/cc/i$1;->c:Lcom/byazt/cc/i;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/byazt/cc/i;->c(Lcom/byazt/cc/i;)Ljava/lang/ref/SoftReference;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/byazt/cc/i$1;->c:Lcom/byazt/cc/i;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/byazt/cc/i;->c(Lcom/byazt/cc/i;)Ljava/lang/ref/SoftReference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/byazt/cc/c;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/byazt/cc/c;->tt()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/byazt/cc/i$1;->c:Lcom/byazt/cc/i;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/byazt/cc/i;->tt(Lcom/byazt/cc/i;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
