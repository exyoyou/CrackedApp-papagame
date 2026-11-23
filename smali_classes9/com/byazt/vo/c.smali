.class public Lcom/byazt/vo/c;
.super Lcom/byazt/nc/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x167,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/vo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/vo/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/vo/c;->c:Lcom/byazt/vo/tt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getFilterWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/nc/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vo/c;->c:Lcom/byazt/vo/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/vo/tt;->c()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
