.class public final Lcom/byazt/rgb/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x33a,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rgb/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:I

.field public final synthetic uj:I

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rgb/ve$1;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/rgb/ve$1;->tt:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/rgb/ve$1;->ve:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/rgb/ve$1;->uj:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/uj;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/rgb/ve$1;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iget v0, p0, Lcom/byazt/rgb/ve$1;->tt:I

    .line 12
    .line 13
    iput v0, p1, Lcom/byazt/ip/c;->sp:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/rgb/ve$1;->ve:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 18
    .line 19
    iget v0, p0, Lcom/byazt/rgb/ve$1;->uj:I

    .line 20
    .line 21
    iput v0, p1, Lcom/byazt/ha/uj;->c:I

    .line 22
    .line 23
    :cond_0
    return-void
.end method
