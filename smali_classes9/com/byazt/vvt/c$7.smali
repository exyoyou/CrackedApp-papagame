.class public Lcom/byazt/vvt/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x68
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/c;->c(Ljava/lang/String;Ljava/util/List;ZLcom/byazt/lq/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/lq/ve;

.field public final synthetic uj:Lcom/byazt/vvt/c;

.field public final synthetic ve:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/c;ZLcom/byazt/lq/ve;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/c$7;->uj:Lcom/byazt/vvt/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/vvt/c$7;->c:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vvt/c$7;->tt:Lcom/byazt/lq/ve;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/vvt/c$7;->ve:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/tt;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/vvt/c$7;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p1, Lcom/byazt/ha/tt;->ve:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/vvt/c$7;->tt:Lcom/byazt/lq/ve;

    .line 12
    .line 13
    iput-object v0, p1, Lcom/byazt/ha/tt;->uj:Lcom/byazt/lq/ve;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/vvt/c$7;->ve:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lcom/byazt/ha/tt;->n:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
