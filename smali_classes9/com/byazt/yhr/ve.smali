.class public Lcom/byazt/yhr/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/lz/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28d,
        0x36
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/je/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/je/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/ve;->n()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/ve;->ve()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCustomInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/ve;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/ve;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSubChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/ve;->uj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/ve;->tt()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUserValueGroup()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/ve;->c:Lcom/byazt/je/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/ve;->sp()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
