.class public Lcom/byazt/vvt/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vvt/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/tt;->c(ILjava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/n;Landroid/os/Bundle;Lcom/byazt/iu/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/vvt/tt$c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/iu/sp;

.field public final synthetic c:I

.field public final synthetic n:Lcom/byazt/iu/n;

.field public final synthetic sp:Lcom/byazt/vvt/tt;

.field public final synthetic tt:Lcom/byazt/dj/tt;

.field public final synthetic uj:Landroid/os/Bundle;

.field public final synthetic ve:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/tt;ILcom/byazt/dj/tt;Ljava/util/List;Landroid/os/Bundle;Lcom/byazt/iu/n;Lcom/byazt/iu/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/tt$1;->sp:Lcom/byazt/vvt/tt;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/vvt/tt$1;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vvt/tt$1;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/vvt/tt$1;->ve:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/vvt/tt$1;->uj:Landroid/os/Bundle;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/vvt/tt$1;->n:Lcom/byazt/iu/n;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/vvt/tt$1;->a:Lcom/byazt/iu/sp;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/vvt/tt$1;->sp:Lcom/byazt/vvt/tt;

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/vvt/tt$1;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/vvt/tt$1;->tt:Lcom/byazt/dj/tt;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/byazt/vvt/tt$1;->ve:Ljava/util/List;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/byazt/vvt/tt$1;->uj:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/byazt/vvt/tt$1;->n:Lcom/byazt/iu/n;

    .line 12
    .line 13
    move-object v3, p1

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/byazt/vvt/tt;->c(Lcom/byazt/vvt/tt;ILcom/byazt/dj/tt;Ljava/lang/Object;Ljava/util/List;Landroid/os/Bundle;Lcom/byazt/iu/n;)Lcom/byazt/iu/ve;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/byazt/vvt/tt$1;->a:Lcom/byazt/iu/sp;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/byazt/iu/sp;->c(Lcom/byazt/iu/ve;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
