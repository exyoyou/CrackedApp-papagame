.class public Lcom/byazt/ts/uj$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x165,
        0x76
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ts/uj;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ts/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ts/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ts/uj$9;->c:Lcom/byazt/ts/uj;

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
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ts/uj$9;->c:Lcom/byazt/ts/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;)Lcom/byazt/ts/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/byazt/ts/ve;->sp()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/ts/uj$9;->c:Lcom/byazt/ts/uj;

    .line 11
    .line 12
    const/16 v1, 0xcf

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/byazt/ts/uj;->c(Lcom/byazt/ts/uj;I)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/ts/uj$9;->c:Lcom/byazt/ts/uj;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/byazt/ts/uj;->ve(Lcom/byazt/ts/uj;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :catchall_0
    return-void
.end method
