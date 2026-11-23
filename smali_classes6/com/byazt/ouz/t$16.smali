.class public Lcom/byazt/ouz/t$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x859
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/t;->da()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/t;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/t$16;->c:Lcom/byazt/ouz/t;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t$16;->c:Lcom/byazt/ouz/t;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ouz/t;->c(Lcom/byazt/ouz/t;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/t$16;->c:Lcom/byazt/ouz/t;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ouz/t;->c(Lcom/byazt/ouz/t;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/ouz/t$16;->c:Lcom/byazt/ouz/t;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/ouz/t;->c(Lcom/byazt/ouz/t;)Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->da()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
