.class public Lcom/byazt/zwg/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zh/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x425,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zwg/c;->setDownloadListener(Lcom/byazt/ocd/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ocd/ve;

.field public final synthetic tt:Lcom/byazt/zwg/c;


# direct methods
.method public constructor <init>(Lcom/byazt/zwg/c;Lcom/byazt/ocd/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zwg/c$2;->tt:Lcom/byazt/zwg/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/zwg/c$2;->c:Lcom/byazt/ocd/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zwg/c$2;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/ocd/ve;->c()V

    :cond_0
    return-void
.end method

.method public c(JJIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/byazt/zwg/c$2;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p7

    move-object v6, p8

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/ocd/ve;->c(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/byazt/zwg/c$2;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/ocd/ve;->tt(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    iget-object v0, p0, Lcom/byazt/zwg/c$2;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ocd/ve;->c(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lcom/byazt/zwg/c$2;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ocd/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 0

    .line 1
    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/byazt/zwg/c$2;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/ocd/ve;->ve(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
