.class public Lcom/byazt/ogz/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a6,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ogz/x;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ogz/x;


# direct methods
.method public constructor <init>(Lcom/byazt/ogz/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ogz/x$1;->c:Lcom/byazt/ogz/x;

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
    iget-object v0, p0, Lcom/byazt/ogz/x$1;->c:Lcom/byazt/ogz/x;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ogz/x$1;->c:Lcom/byazt/ogz/x;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v0, v1, v2}, Lcom/byazt/ogz/x;->c(Lcom/byazt/ogz/x;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
