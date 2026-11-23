.class public Lcom/byazt/hs/ve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x57c,
        0x15a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hs/ve;->tt(Ljava/lang/String;Lcom/byazt/hs/ve$c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hs/ve$c;

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/hs/ve;

.field public final synthetic ve:Lcom/byazt/hs/ve$tt;


# direct methods
.method public constructor <init>(Lcom/byazt/hs/ve;Lcom/byazt/hs/ve$c;Ljava/lang/String;Lcom/byazt/hs/ve$tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hs/ve$2;->uj:Lcom/byazt/hs/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hs/ve$2;->c:Lcom/byazt/hs/ve$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/hs/ve$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/hs/ve$2;->ve:Lcom/byazt/hs/ve$tt;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/hs/ve$2;->c:Lcom/byazt/hs/ve$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/hs/ve$2;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/hs/ve$2;->ve:Lcom/byazt/hs/ve$tt;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v2, v2, Lcom/byazt/hs/ve$tt;->c:Ljava/util/List;

    .line 14
    .line 15
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/byazt/hs/ve$c;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method
