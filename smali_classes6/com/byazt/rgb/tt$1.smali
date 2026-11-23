.class public final Lcom/byazt/rgb/tt$1;
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
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rgb/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rgb/tt$1;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rgb/tt$1;->tt:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/rgb/tt$1;->ve:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/ve;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/rgb/tt$1;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/rgb/tt$1;->tt:Lcom/byazt/dj/tt;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lcom/byazt/rgb/tt$1;->ve:I

    .line 16
    .line 17
    iput v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    return-void
.end method
