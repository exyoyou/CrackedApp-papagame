.class public Lcom/byazt/jx/u;
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
        0x43
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final tt:Lcom/byazt/kd/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/kd/u<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/byazt/kd/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/byazt/kd/u<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/jx/u;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/jx/u;->tt:Lcom/byazt/kd/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ga/x;Lcom/byazt/ga/a;Lcom/byazt/zk/ve;)Lcom/byazt/zy/ve;
    .locals 0

    .line 2
    new-instance p2, Lcom/byazt/zy/nu;

    invoke-direct {p2, p1, p3, p0}, Lcom/byazt/zy/nu;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/u;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public tt()Lcom/byazt/kd/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/kd/u<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jx/u;->tt:Lcom/byazt/kd/u;

    .line 2
    .line 3
    return-object v0
.end method
