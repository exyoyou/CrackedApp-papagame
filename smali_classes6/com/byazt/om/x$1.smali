.class public Lcom/byazt/om/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ix/uj$ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/om/x;->c(Lcom/byazt/ll/tt;Ljava/lang/String;Lcom/byazt/nbs/tt;Lcom/byazt/iz/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:D

.field public final synthetic uj:Lcom/byazt/om/x;

.field public final synthetic ve:Lcom/byazt/iz/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/om/x;IDLcom/byazt/iz/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/om/x$1;->uj:Lcom/byazt/om/x;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/om/x$1;->c:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/om/x$1;->tt:D

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/om/x$1;->ve:Lcom/byazt/iz/tt;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;ZILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/om/x$1;->uj:Lcom/byazt/om/x;

    .line 2
    .line 3
    iget v5, p0, Lcom/byazt/om/x$1;->c:I

    .line 4
    .line 5
    iget-wide v6, p0, Lcom/byazt/om/x$1;->tt:D

    .line 6
    .line 7
    iget-object v8, p0, Lcom/byazt/om/x$1;->ve:Lcom/byazt/iz/tt;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    move v2, p2

    .line 11
    move v3, p3

    .line 12
    move-object v4, p4

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/byazt/om/x;->c(Lcom/byazt/om/x;Ljava/lang/String;ZILjava/util/List;IDLcom/byazt/iz/tt;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
