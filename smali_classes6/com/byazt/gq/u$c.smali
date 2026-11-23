.class public Lcom/byazt/gq/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x39
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/gq/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gq/u;

.field public final tt:Lcom/byazt/dd/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/u;Lcom/byazt/dd/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/u$c;->c:Lcom/byazt/gq/u;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/gq/u$c;->tt:Lcom/byazt/dd/tt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/gq/u$c;->tt:Lcom/byazt/dd/tt;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/byazt/dd/tt;->da(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/gq/u$c;->c:Lcom/byazt/gq/u;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/gq/u$c;->tt:Lcom/byazt/dd/tt;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/byazt/gq/u;->c(Lcom/byazt/gq/u;Lcom/byazt/dd/tt;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/byazt/gq/u$c;->tt:Lcom/byazt/dd/tt;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/byazt/dd/tt;->da(Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v1

    .line 24
    :try_start_1
    invoke-static {v1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    iget-object v2, p0, Lcom/byazt/gq/u$c;->tt:Lcom/byazt/dd/tt;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lcom/byazt/dd/tt;->da(Z)V

    .line 31
    .line 32
    .line 33
    throw v1
.end method
