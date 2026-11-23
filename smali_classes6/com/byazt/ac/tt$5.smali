.class public Lcom/byazt/ac/tt$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vv/tt$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x5a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ac/tt;->c(Lcom/byazt/xl/yp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:D

.field public final synthetic n:Lcom/byazt/ac/tt;

.field public final synthetic tt:D

.field public final synthetic uj:D

.field public final synthetic ve:D


# direct methods
.method public constructor <init>(Lcom/byazt/ac/tt;DDDD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/tt$5;->n:Lcom/byazt/ac/tt;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/ac/tt$5;->c:D

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/ac/tt$5;->tt:D

    .line 6
    .line 7
    iput-wide p6, p0, Lcom/byazt/ac/tt$5;->ve:D

    .line 8
    .line 9
    iput-wide p8, p0, Lcom/byazt/ac/tt$5;->uj:D

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    iget-object v0, p0, Lcom/byazt/ac/tt$5;->n:Lcom/byazt/ac/tt;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/ac/tt;->sp(Lcom/byazt/ac/tt;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/ac/tt$5;->n:Lcom/byazt/ac/tt;

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/byazt/ac/tt$5;->c:D

    .line 23
    .line 24
    iget-wide v4, p0, Lcom/byazt/ac/tt$5;->tt:D

    .line 25
    .line 26
    iget-wide v6, p0, Lcom/byazt/ac/tt$5;->ve:D

    .line 27
    .line 28
    iget-wide v8, p0, Lcom/byazt/ac/tt$5;->uj:D

    .line 29
    .line 30
    invoke-virtual/range {v1 .. v10}, Lcom/byazt/ac/tt;->c(DDDDLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
