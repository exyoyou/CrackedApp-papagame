.class public Lkwai/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkwai/a/e;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkwai/a/e;


# direct methods
.method public constructor <init>(Lkwai/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkwai/a/e$a;->b:Lkwai/a/e;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lkwai/a/e$a;->b:Lkwai/a/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkwai/a/e;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lkwai/a/e;->h:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v2, Lec/d;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Lec/d;-><init>(Lkwai/a/e;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v3, 0x1388

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lkwai/a/e;->f()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
