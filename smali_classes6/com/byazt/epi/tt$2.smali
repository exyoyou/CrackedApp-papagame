.class public Lcom/byazt/epi/tt$2;
.super Lcom/byazt/ke/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x675,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/epi/tt;->tt(Lcom/byazt/vb/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/vb/tt;

.field public final synthetic tt:Lcom/byazt/vb/uj;

.field public final synthetic ve:Lcom/byazt/epi/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/epi/tt;Ljava/lang/String;Lcom/byazt/vb/tt;Lcom/byazt/vb/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/epi/tt$2;->ve:Lcom/byazt/epi/tt;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/epi/tt$2;->c:Lcom/byazt/vb/tt;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/epi/tt$2;->tt:Lcom/byazt/vb/uj;

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
    iget-object v0, p0, Lcom/byazt/epi/tt$2;->ve:Lcom/byazt/epi/tt;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/epi/tt$2;->c:Lcom/byazt/vb/tt;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/epi/tt$2;->tt:Lcom/byazt/vb/uj;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/byazt/vb/uj;->da()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1, v2}, Lcom/byazt/epi/tt;->c(Lcom/byazt/epi/tt;Lcom/byazt/vb/tt;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
