.class public Lcom/byazt/iu/uj$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x35e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->a(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/iu/uj;

.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic n:I

.field public final synthetic tt:Lcom/byazt/iuu/uj;

.field public final synthetic uj:Lcom/byazt/ete/x$uj;

.field public final synthetic ve:Lcom/byazt/vvt/a$c;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/iuu/uj;Lcom/byazt/vvt/a$c;Lcom/byazt/ete/x$uj;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$11;->a:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$11;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/uj$11;->tt:Lcom/byazt/iuu/uj;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/iu/uj$11;->ve:Lcom/byazt/vvt/a$c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/iu/uj$11;->uj:Lcom/byazt/ete/x$uj;

    .line 10
    .line 11
    iput p6, p0, Lcom/byazt/iu/uj$11;->n:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/iu/uj$11;->c:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/iu/uj$11;->tt:Lcom/byazt/iuu/uj;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/byazt/iuu/uj;->c(Z)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/iu/uj$11;->ve:Lcom/byazt/vvt/a$c;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/iu/uj$11;->a:Lcom/byazt/iu/uj;

    .line 16
    .line 17
    iget v2, p1, Lcom/byazt/iu/tt;->c:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/iu/uj$11;->c:Lcom/byazt/dj/tt;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/byazt/iu/uj$11;->uj:Lcom/byazt/ete/x$uj;

    .line 22
    .line 23
    const-string v5, "backup_cache"

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/byazt/iu/uj$11;->n:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/vvt/a$c;->c(ILcom/byazt/dj/tt;Lcom/byazt/ete/x$uj;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
