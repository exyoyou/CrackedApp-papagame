.class public Lcom/byazt/dbo/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dbo/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3c1,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dbo/c;->c(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/dbo/tt<",
        "Lcom/byazt/dbo/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Ljava/util/List;

.field public final synthetic ve:Lcom/byazt/dbo/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dbo/c;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dbo/c$2;->ve:Lcom/byazt/dbo/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/dbo/c$2;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/dbo/c$2;->tt:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/dbo/n;JJ)V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/dbo/c$2;->ve:Lcom/byazt/dbo/c;

    iget v1, p0, Lcom/byazt/dbo/c$2;->c:I

    iget-object v2, p0, Lcom/byazt/dbo/c$2;->tt:Ljava/util/List;

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/byazt/dbo/c;->c(Lcom/byazt/dbo/c;ILjava/util/List;Lcom/byazt/dbo/n;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;JJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/dbo/n;

    invoke-virtual/range {p0 .. p5}, Lcom/byazt/dbo/c$2;->c(Lcom/byazt/dbo/n;JJ)V

    return-void
.end method
