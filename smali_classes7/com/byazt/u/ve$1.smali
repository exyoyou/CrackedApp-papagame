.class public Lcom/byazt/u/ve$1;
.super Lcom/byazt/c/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x43,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/u/ve;->c(Lcom/byazt/m/BaseException;J)Lcom/byazt/m/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/u/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/u/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/u/ve$1;->c:Lcom/byazt/u/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/c/tt;-><init>()V

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
    invoke-super {p0, p1}, Lcom/byazt/c/tt;->c(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/u/ve$1;->c:Lcom/byazt/u/ve;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/byazt/u/ve;->c(Lcom/byazt/u/ve;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
