.class public Lcom/byazt/ppf/ve$4$1$2$1;
.super Lcom/byazt/cr/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28a,
        0x3a9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ppf/ve$4$1$2;->c(Lcom/byazt/cq/c;Ljava/util/Map;Lcom/byazt/qb/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic uj:Lcom/byazt/ppf/ve$4$1$2;

.field public final synthetic ve:Lcom/byazt/qb/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ppf/ve$4$1$2;Lcom/byazt/qb/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ppf/ve$4$1$2$1;->uj:Lcom/byazt/ppf/ve$4$1$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ppf/ve$4$1$2$1;->ve:Lcom/byazt/qb/c;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/cr/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ppf/ve$4$1$2$1;->ve:Lcom/byazt/qb/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/qb/c;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ppf/ve$4$1$2$1;->ve:Lcom/byazt/qb/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/qb/c;->tt()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
