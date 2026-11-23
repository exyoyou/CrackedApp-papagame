.class public Lcom/byazt/fri/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x851,
        0x14
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/fri/c;->tt:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/fri/c;->c:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/fri/c;

    invoke-static {p0, v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/fri/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/byazt/fri/c;

    invoke-direct {v1, p0}, Lcom/byazt/fri/c;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p1}, Lcom/byazt/fri/c;->c(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v1, v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {v1, p1}, Lcom/byazt/fri/c;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/fri/c;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
