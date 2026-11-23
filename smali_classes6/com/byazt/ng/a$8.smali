.class public final Lcom/byazt/ng/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf8,
        0x18f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ng/a;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/ng/uj;


# direct methods
.method public constructor <init>(ZLcom/byazt/ng/uj;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ng/a$8;->c:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ng/a$8;->tt:Lcom/byazt/ng/uj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/rq/c;->c()Lcom/byazt/it/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "is_config_from_assert"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/byazt/ng/a$8;->c:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ng/a$8;->tt:Lcom/byazt/ng/uj;

    .line 22
    .line 23
    const-string v1, "get_config_start"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "reason"

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/byazt/ng/a$8;->tt:Lcom/byazt/ng/uj;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v1, v2}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
