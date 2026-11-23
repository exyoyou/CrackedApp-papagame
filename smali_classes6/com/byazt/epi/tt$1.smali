.class public Lcom/byazt/epi/tt$1;
.super Lcom/byazt/ke/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x675,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/epi/tt;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vb/uj;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/epi/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/epi/tt;Ljava/lang/String;Lcom/byazt/vb/uj;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/epi/tt$1;->ve:Lcom/byazt/epi/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/epi/tt$1;->c:Lcom/byazt/vb/uj;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/byazt/epi/tt$1;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/ke/tt;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/epi/tt$1;->ve:Lcom/byazt/epi/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/epi/tt;->c(Lcom/byazt/epi/tt;)Lcom/byazt/vb/n;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/epi/tt$1;->ve:Lcom/byazt/epi/tt;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/epi/tt$1;->c:Lcom/byazt/vb/uj;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/byazt/vb/uj;->da()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-boolean v2, p0, Lcom/byazt/epi/tt$1;->tt:Z

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/byazt/epi/tt;->c(Lcom/byazt/epi/tt;IZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
