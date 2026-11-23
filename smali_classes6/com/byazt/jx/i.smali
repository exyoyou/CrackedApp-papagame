.class public Lcom/byazt/jx/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jx/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd6,
        0x2a
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/jx/i$c;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final tt:Lcom/byazt/jx/i$c;

.field public final ve:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/jx/i$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/i;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/jx/i;->tt:Lcom/byazt/jx/i$c;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/byazt/jx/i;->ve:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 2
    new-instance p1, Lcom/byazt/zy/t;

    invoke-direct {p1, p0}, Lcom/byazt/zy/t;-><init>(Lcom/byazt/jx/i;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MergePaths{mode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/jx/i;->tt:Lcom/byazt/jx/i$c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public tt()Lcom/byazt/jx/i$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/i;->tt:Lcom/byazt/jx/i$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/jx/i;->ve:Z

    .line 2
    .line 3
    return v0
.end method
