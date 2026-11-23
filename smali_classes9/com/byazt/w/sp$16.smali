.class public final Lcom/byazt/w/sp$16;
.super Lcom/byazt/c/gt$c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3f9,
        0x73d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/w/sp;->c(Lcom/byazt/c/qy;)Lcom/byazt/c/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/c/qy;


# direct methods
.method public constructor <init>(Lcom/byazt/c/qy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/w/sp$16;->c:Lcom/byazt/c/qy;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/gt$c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/w/sp$16;->c:Lcom/byazt/c/qy;

    invoke-interface {v0, p1}, Lcom/byazt/c/qy;->c(Ljava/util/List;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/w/sp$16;->c:Lcom/byazt/c/qy;

    invoke-interface {v0}, Lcom/byazt/c/qy;->c()Z

    move-result v0

    return v0
.end method
