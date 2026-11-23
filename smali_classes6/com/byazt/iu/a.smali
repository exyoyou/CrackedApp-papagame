.class public Lcom/byazt/iu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/byazt/iu/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/iu/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/iu/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/iu/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/iu/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/iu/a;->c:Lcom/byazt/iu/n;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/byazt/iu/a;)Lcom/byazt/iu/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/iu/a;->c:Lcom/byazt/iu/n;

    return-object p0
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/byazt/iu/a$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/iu/a$3;-><init>(Lcom/byazt/iu/a;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/byazt/iu/a$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/iu/a$2;-><init>(Lcom/byazt/iu/a;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/Object;ZLcom/byazt/ete/ic;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Lcom/byazt/ete/ic;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/iu/a$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/byazt/iu/a$1;-><init>(Lcom/byazt/iu/a;Ljava/lang/Object;ZLcom/byazt/ete/ic;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method
