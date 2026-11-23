.class public Lcom/byazt/iu/uj$13;
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
        0x35a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->c(Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Lcom/byazt/ete/bm;ZJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:Lcom/byazt/iu/uj;

.field public final synthetic tt:Lcom/byazt/iuu/c;

.field public final synthetic uj:Lcom/byazt/ete/x$uj;

.field public final synthetic ve:Lcom/byazt/vvt/a$c;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/dj/tt;Lcom/byazt/iuu/c;Lcom/byazt/vvt/a$c;Lcom/byazt/ete/x$uj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$13;->sp:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$13;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/uj$13;->tt:Lcom/byazt/iuu/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/iu/uj$13;->ve:Lcom/byazt/vvt/a$c;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/iu/uj$13;->uj:Lcom/byazt/ete/x$uj;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/iu/uj$13;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/iu/uj$13;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/iu/uj$13;->c:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/iu/uj$13;->tt:Lcom/byazt/iuu/c;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lcom/byazt/iuu/c;->c(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/byazt/iu/uj$13;->ve:Lcom/byazt/vvt/a$c;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/byazt/iu/uj$13;->sp:Lcom/byazt/iu/uj;

    .line 18
    .line 19
    iget v2, p1, Lcom/byazt/iu/tt;->c:I

    .line 20
    .line 21
    iget-object v3, p0, Lcom/byazt/iu/uj$13;->c:Lcom/byazt/dj/tt;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/byazt/iu/uj$13;->uj:Lcom/byazt/ete/x$uj;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/byazt/iu/uj$13;->n:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v6, p0, Lcom/byazt/iu/uj$13;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/byazt/vvt/a$c;->c(ILcom/byazt/dj/tt;Lcom/byazt/ete/x$uj;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
