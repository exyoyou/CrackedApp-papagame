.class Lcom/facebook/rebound/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/f$a;->c()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/rebound/f$a;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/f$a$b;->b:Lcom/facebook/rebound/f$a;

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
    iget-object v0, p0, Lcom/facebook/rebound/f$a$b;->b:Lcom/facebook/rebound/f$a;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/f$a;->a(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
